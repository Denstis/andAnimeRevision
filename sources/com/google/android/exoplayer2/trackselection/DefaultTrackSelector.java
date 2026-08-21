package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class DefaultTrackSelector extends MappingTrackSelector {
    private static final float FRACTION_TO_CONSIDER_FULLSCREEN = 0.98f;
    private static final int[] NO_TRACKS = new int[0];
    private static final int WITHIN_RENDERER_CAPABILITIES_BONUS = 1000;
    private final TrackSelection.Factory adaptiveTrackSelectionFactory;
    private final AtomicReference<Parameters> parametersReference;

    private static final class AudioConfigurationTuple {
        public final int channelCount;
        public final String mimeType;
        public final int sampleRate;

        public AudioConfigurationTuple(int i2, int i3, String str) {
            this.channelCount = i2;
            this.sampleRate = i3;
            this.mimeType = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || AudioConfigurationTuple.class != obj.getClass()) {
                return false;
            }
            AudioConfigurationTuple audioConfigurationTuple = (AudioConfigurationTuple) obj;
            return this.channelCount == audioConfigurationTuple.channelCount && this.sampleRate == audioConfigurationTuple.sampleRate && TextUtils.equals(this.mimeType, audioConfigurationTuple.mimeType);
        }

        public int hashCode() {
            int i2 = ((this.channelCount * 31) + this.sampleRate) * 31;
            String str = this.mimeType;
            return i2 + (str != null ? str.hashCode() : 0);
        }
    }

    protected static final class AudioTrackScore implements Comparable<AudioTrackScore> {
        private final int bitrate;
        private final int channelCount;
        private final int defaultSelectionFlagScore;
        private final int matchLanguageScore;
        private final Parameters parameters;
        private final int sampleRate;
        private final int withinRendererCapabilitiesScore;

        public AudioTrackScore(Format format, Parameters parameters, int i2) {
            this.parameters = parameters;
            this.withinRendererCapabilitiesScore = DefaultTrackSelector.isSupported(i2, false) ? 1 : 0;
            this.matchLanguageScore = DefaultTrackSelector.formatHasLanguage(format, parameters.preferredAudioLanguage) ? 1 : 0;
            this.defaultSelectionFlagScore = (format.selectionFlags & 1) == 0 ? 0 : 1;
            this.channelCount = format.channelCount;
            this.sampleRate = format.sampleRate;
            this.bitrate = format.bitrate;
        }

        @Override // java.lang.Comparable
        public int compareTo(AudioTrackScore audioTrackScore) {
            int i2 = this.withinRendererCapabilitiesScore;
            int i3 = audioTrackScore.withinRendererCapabilitiesScore;
            if (i2 != i3) {
                return DefaultTrackSelector.compareInts(i2, i3);
            }
            int i4 = this.matchLanguageScore;
            int i5 = audioTrackScore.matchLanguageScore;
            if (i4 != i5) {
                return DefaultTrackSelector.compareInts(i4, i5);
            }
            int i6 = this.defaultSelectionFlagScore;
            int i7 = audioTrackScore.defaultSelectionFlagScore;
            if (i6 != i7) {
                return DefaultTrackSelector.compareInts(i6, i7);
            }
            if (this.parameters.forceLowestBitrate) {
                return DefaultTrackSelector.compareInts(audioTrackScore.bitrate, this.bitrate);
            }
            int i8 = i2 != 1 ? -1 : 1;
            int i9 = this.channelCount;
            int i10 = audioTrackScore.channelCount;
            return i8 * ((i9 == i10 && (i9 = this.sampleRate) == (i10 = audioTrackScore.sampleRate)) ? DefaultTrackSelector.compareInts(this.bitrate, audioTrackScore.bitrate) : DefaultTrackSelector.compareInts(i9, i10));
        }
    }

    public static final class Parameters implements Parcelable {
        public final boolean allowMixedMimeAdaptiveness;
        public final boolean allowNonSeamlessAdaptiveness;
        public final int disabledTextTrackSelectionFlags;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;
        public final boolean forceHighestSupportedBitrate;
        public final boolean forceLowestBitrate;
        public final int maxVideoBitrate;
        public final int maxVideoFrameRate;
        public final int maxVideoHeight;
        public final int maxVideoWidth;
        public final String preferredAudioLanguage;
        public final String preferredTextLanguage;
        private final SparseBooleanArray rendererDisabledFlags;
        public final boolean selectUndeterminedTextLanguage;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        public final int tunnelingAudioSessionId;
        public final int viewportHeight;
        public final boolean viewportOrientationMayChange;
        public final int viewportWidth;
        public static final Parameters DEFAULT = new Parameters();
        public static final Parcelable.Creator<Parameters> CREATOR = new Parcelable.Creator<Parameters>() { // from class: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Parameters createFromParcel(Parcel parcel) {
                return new Parameters(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Parameters[] newArray(int i2) {
                return new Parameters[i2];
            }
        };

        private Parameters() {
            this(new SparseArray(), new SparseBooleanArray(), null, null, false, 0, false, false, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true, 0);
        }

        Parameters(Parcel parcel) {
            this.selectionOverrides = readSelectionOverrides(parcel);
            this.rendererDisabledFlags = parcel.readSparseBooleanArray();
            this.preferredAudioLanguage = parcel.readString();
            this.preferredTextLanguage = parcel.readString();
            this.selectUndeterminedTextLanguage = Util.readBoolean(parcel);
            this.disabledTextTrackSelectionFlags = parcel.readInt();
            this.forceLowestBitrate = Util.readBoolean(parcel);
            this.forceHighestSupportedBitrate = Util.readBoolean(parcel);
            this.allowMixedMimeAdaptiveness = Util.readBoolean(parcel);
            this.allowNonSeamlessAdaptiveness = Util.readBoolean(parcel);
            this.maxVideoWidth = parcel.readInt();
            this.maxVideoHeight = parcel.readInt();
            this.maxVideoFrameRate = parcel.readInt();
            this.maxVideoBitrate = parcel.readInt();
            this.exceedVideoConstraintsIfNecessary = Util.readBoolean(parcel);
            this.exceedRendererCapabilitiesIfNecessary = Util.readBoolean(parcel);
            this.viewportWidth = parcel.readInt();
            this.viewportHeight = parcel.readInt();
            this.viewportOrientationMayChange = Util.readBoolean(parcel);
            this.tunnelingAudioSessionId = parcel.readInt();
        }

        Parameters(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray, String str, String str2, boolean z, int i2, boolean z2, boolean z3, boolean z4, boolean z5, int i3, int i4, int i5, int i6, boolean z6, boolean z7, int i7, int i8, boolean z8, int i9) {
            this.selectionOverrides = sparseArray;
            this.rendererDisabledFlags = sparseBooleanArray;
            this.preferredAudioLanguage = Util.normalizeLanguageCode(str);
            this.preferredTextLanguage = Util.normalizeLanguageCode(str2);
            this.selectUndeterminedTextLanguage = z;
            this.disabledTextTrackSelectionFlags = i2;
            this.forceLowestBitrate = z2;
            this.forceHighestSupportedBitrate = z3;
            this.allowMixedMimeAdaptiveness = z4;
            this.allowNonSeamlessAdaptiveness = z5;
            this.maxVideoWidth = i3;
            this.maxVideoHeight = i4;
            this.maxVideoFrameRate = i5;
            this.maxVideoBitrate = i6;
            this.exceedVideoConstraintsIfNecessary = z6;
            this.exceedRendererCapabilitiesIfNecessary = z7;
            this.viewportWidth = i7;
            this.viewportHeight = i8;
            this.viewportOrientationMayChange = z8;
            this.tunnelingAudioSessionId = i9;
        }

        private static boolean areRendererDisabledFlagsEqual(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i2)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean areSelectionOverridesEqual(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i2 = 0; i2 < size; i2++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                if (iIndexOfKey < 0 || !areSelectionOverridesEqual(sparseArray.valueAt(i2), sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean areSelectionOverridesEqual(Map<TrackGroupArray, SelectionOverride> map, Map<TrackGroupArray, SelectionOverride> map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry<TrackGroupArray, SelectionOverride> entry : map.entrySet()) {
                TrackGroupArray key = entry.getKey();
                if (!map2.containsKey(key) || !Util.areEqual(entry.getValue(), map2.get(key))) {
                    return false;
                }
            }
            return true;
        }

        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> readSelectionOverrides(Parcel parcel) {
            int i2 = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = parcel.readInt();
                int i5 = parcel.readInt();
                HashMap map = new HashMap(i5);
                for (int i6 = 0; i6 < i5; i6++) {
                    map.put((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader()), (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
                }
                sparseArray.put(i4, map);
            }
            return sparseArray;
        }

        private static void writeSelectionOverridesToParcel(Parcel parcel, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = sparseArray.keyAt(i2);
                Map<TrackGroupArray, SelectionOverride> mapValueAt = sparseArray.valueAt(i2);
                int size2 = mapValueAt.size();
                parcel.writeInt(iKeyAt);
                parcel.writeInt(size2);
                for (Map.Entry<TrackGroupArray, SelectionOverride> entry : mapValueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
        }

        public ParametersBuilder buildUpon() {
            return new ParametersBuilder(this);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Parameters.class != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            return this.selectUndeterminedTextLanguage == parameters.selectUndeterminedTextLanguage && this.disabledTextTrackSelectionFlags == parameters.disabledTextTrackSelectionFlags && this.forceLowestBitrate == parameters.forceLowestBitrate && this.forceHighestSupportedBitrate == parameters.forceHighestSupportedBitrate && this.allowMixedMimeAdaptiveness == parameters.allowMixedMimeAdaptiveness && this.allowNonSeamlessAdaptiveness == parameters.allowNonSeamlessAdaptiveness && this.maxVideoWidth == parameters.maxVideoWidth && this.maxVideoHeight == parameters.maxVideoHeight && this.maxVideoFrameRate == parameters.maxVideoFrameRate && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.viewportOrientationMayChange == parameters.viewportOrientationMayChange && this.viewportWidth == parameters.viewportWidth && this.viewportHeight == parameters.viewportHeight && this.maxVideoBitrate == parameters.maxVideoBitrate && this.tunnelingAudioSessionId == parameters.tunnelingAudioSessionId && TextUtils.equals(this.preferredAudioLanguage, parameters.preferredAudioLanguage) && TextUtils.equals(this.preferredTextLanguage, parameters.preferredTextLanguage) && areRendererDisabledFlagsEqual(this.rendererDisabledFlags, parameters.rendererDisabledFlags) && areSelectionOverridesEqual(this.selectionOverrides, parameters.selectionOverrides);
        }

        public final boolean getRendererDisabled(int i2) {
            return this.rendererDisabledFlags.get(i2);
        }

        public final SelectionOverride getSelectionOverride(int i2, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i2);
            if (map != null) {
                return map.get(trackGroupArray);
            }
            return null;
        }

        public final boolean hasSelectionOverride(int i2, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i2);
            return map != null && map.containsKey(trackGroupArray);
        }

        public int hashCode() {
            int i2 = (((((((((((((((((((((((((((((((this.selectUndeterminedTextLanguage ? 1 : 0) * 31) + this.disabledTextTrackSelectionFlags) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + (this.allowMixedMimeAdaptiveness ? 1 : 0)) * 31) + (this.allowNonSeamlessAdaptiveness ? 1 : 0)) * 31) + this.maxVideoWidth) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.maxVideoBitrate) * 31) + this.tunnelingAudioSessionId) * 31;
            String str = this.preferredAudioLanguage;
            int iHashCode = (i2 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.preferredTextLanguage;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            writeSelectionOverridesToParcel(parcel, this.selectionOverrides);
            parcel.writeSparseBooleanArray(this.rendererDisabledFlags);
            parcel.writeString(this.preferredAudioLanguage);
            parcel.writeString(this.preferredTextLanguage);
            Util.writeBoolean(parcel, this.selectUndeterminedTextLanguage);
            parcel.writeInt(this.disabledTextTrackSelectionFlags);
            Util.writeBoolean(parcel, this.forceLowestBitrate);
            Util.writeBoolean(parcel, this.forceHighestSupportedBitrate);
            Util.writeBoolean(parcel, this.allowMixedMimeAdaptiveness);
            Util.writeBoolean(parcel, this.allowNonSeamlessAdaptiveness);
            parcel.writeInt(this.maxVideoWidth);
            parcel.writeInt(this.maxVideoHeight);
            parcel.writeInt(this.maxVideoFrameRate);
            parcel.writeInt(this.maxVideoBitrate);
            Util.writeBoolean(parcel, this.exceedVideoConstraintsIfNecessary);
            Util.writeBoolean(parcel, this.exceedRendererCapabilitiesIfNecessary);
            parcel.writeInt(this.viewportWidth);
            parcel.writeInt(this.viewportHeight);
            Util.writeBoolean(parcel, this.viewportOrientationMayChange);
            parcel.writeInt(this.tunnelingAudioSessionId);
        }
    }

    public static final class ParametersBuilder {
        private boolean allowMixedMimeAdaptiveness;
        private boolean allowNonSeamlessAdaptiveness;
        private int disabledTextTrackSelectionFlags;
        private boolean exceedRendererCapabilitiesIfNecessary;
        private boolean exceedVideoConstraintsIfNecessary;
        private boolean forceHighestSupportedBitrate;
        private boolean forceLowestBitrate;
        private int maxVideoBitrate;
        private int maxVideoFrameRate;
        private int maxVideoHeight;
        private int maxVideoWidth;
        private String preferredAudioLanguage;
        private String preferredTextLanguage;
        private final SparseBooleanArray rendererDisabledFlags;
        private boolean selectUndeterminedTextLanguage;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        private int tunnelingAudioSessionId;
        private int viewportHeight;
        private boolean viewportOrientationMayChange;
        private int viewportWidth;

        public ParametersBuilder() {
            this(Parameters.DEFAULT);
        }

        private ParametersBuilder(Parameters parameters) {
            this.selectionOverrides = cloneSelectionOverrides(parameters.selectionOverrides);
            this.rendererDisabledFlags = parameters.rendererDisabledFlags.clone();
            this.preferredAudioLanguage = parameters.preferredAudioLanguage;
            this.preferredTextLanguage = parameters.preferredTextLanguage;
            this.selectUndeterminedTextLanguage = parameters.selectUndeterminedTextLanguage;
            this.disabledTextTrackSelectionFlags = parameters.disabledTextTrackSelectionFlags;
            this.forceLowestBitrate = parameters.forceLowestBitrate;
            this.forceHighestSupportedBitrate = parameters.forceHighestSupportedBitrate;
            this.allowMixedMimeAdaptiveness = parameters.allowMixedMimeAdaptiveness;
            this.allowNonSeamlessAdaptiveness = parameters.allowNonSeamlessAdaptiveness;
            this.maxVideoWidth = parameters.maxVideoWidth;
            this.maxVideoHeight = parameters.maxVideoHeight;
            this.maxVideoFrameRate = parameters.maxVideoFrameRate;
            this.maxVideoBitrate = parameters.maxVideoBitrate;
            this.exceedVideoConstraintsIfNecessary = parameters.exceedVideoConstraintsIfNecessary;
            this.exceedRendererCapabilitiesIfNecessary = parameters.exceedRendererCapabilitiesIfNecessary;
            this.viewportWidth = parameters.viewportWidth;
            this.viewportHeight = parameters.viewportHeight;
            this.viewportOrientationMayChange = parameters.viewportOrientationMayChange;
            this.tunnelingAudioSessionId = parameters.tunnelingAudioSessionId;
        }

        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> cloneSelectionOverrides(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                sparseArray2.put(sparseArray.keyAt(i2), new HashMap(sparseArray.valueAt(i2)));
            }
            return sparseArray2;
        }

        public Parameters build() {
            return new Parameters(this.selectionOverrides, this.rendererDisabledFlags, this.preferredAudioLanguage, this.preferredTextLanguage, this.selectUndeterminedTextLanguage, this.disabledTextTrackSelectionFlags, this.forceLowestBitrate, this.forceHighestSupportedBitrate, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoFrameRate, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange, this.tunnelingAudioSessionId);
        }

        public final ParametersBuilder clearSelectionOverride(int i2, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i2);
            if (map != null && map.containsKey(trackGroupArray)) {
                map.remove(trackGroupArray);
                if (map.isEmpty()) {
                    this.selectionOverrides.remove(i2);
                }
            }
            return this;
        }

        public final ParametersBuilder clearSelectionOverrides() {
            if (this.selectionOverrides.size() == 0) {
                return this;
            }
            this.selectionOverrides.clear();
            return this;
        }

        public final ParametersBuilder clearSelectionOverrides(int i2) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i2);
            if (map != null && !map.isEmpty()) {
                this.selectionOverrides.remove(i2);
            }
            return this;
        }

        public ParametersBuilder clearVideoSizeConstraints() {
            return setMaxVideoSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }

        public ParametersBuilder clearViewportSizeConstraints() {
            return setViewportSize(Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        public ParametersBuilder setAllowMixedMimeAdaptiveness(boolean z) {
            this.allowMixedMimeAdaptiveness = z;
            return this;
        }

        public ParametersBuilder setAllowNonSeamlessAdaptiveness(boolean z) {
            this.allowNonSeamlessAdaptiveness = z;
            return this;
        }

        public ParametersBuilder setDisabledTextTrackSelectionFlags(int i2) {
            this.disabledTextTrackSelectionFlags = i2;
            return this;
        }

        public ParametersBuilder setExceedRendererCapabilitiesIfNecessary(boolean z) {
            this.exceedRendererCapabilitiesIfNecessary = z;
            return this;
        }

        public ParametersBuilder setExceedVideoConstraintsIfNecessary(boolean z) {
            this.exceedVideoConstraintsIfNecessary = z;
            return this;
        }

        public ParametersBuilder setForceHighestSupportedBitrate(boolean z) {
            this.forceHighestSupportedBitrate = z;
            return this;
        }

        public ParametersBuilder setForceLowestBitrate(boolean z) {
            this.forceLowestBitrate = z;
            return this;
        }

        public ParametersBuilder setMaxVideoBitrate(int i2) {
            this.maxVideoBitrate = i2;
            return this;
        }

        public ParametersBuilder setMaxVideoFrameRate(int i2) {
            this.maxVideoFrameRate = i2;
            return this;
        }

        public ParametersBuilder setMaxVideoSize(int i2, int i3) {
            this.maxVideoWidth = i2;
            this.maxVideoHeight = i3;
            return this;
        }

        public ParametersBuilder setMaxVideoSizeSd() {
            return setMaxVideoSize(1279, 719);
        }

        public ParametersBuilder setPreferredAudioLanguage(String str) {
            this.preferredAudioLanguage = str;
            return this;
        }

        public ParametersBuilder setPreferredTextLanguage(String str) {
            this.preferredTextLanguage = str;
            return this;
        }

        public final ParametersBuilder setRendererDisabled(int i2, boolean z) {
            if (this.rendererDisabledFlags.get(i2) == z) {
                return this;
            }
            if (z) {
                this.rendererDisabledFlags.put(i2, true);
            } else {
                this.rendererDisabledFlags.delete(i2);
            }
            return this;
        }

        public ParametersBuilder setSelectUndeterminedTextLanguage(boolean z) {
            this.selectUndeterminedTextLanguage = z;
            return this;
        }

        public final ParametersBuilder setSelectionOverride(int i2, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i2);
            if (map == null) {
                map = new HashMap<>();
                this.selectionOverrides.put(i2, map);
            }
            if (map.containsKey(trackGroupArray) && Util.areEqual(map.get(trackGroupArray), selectionOverride)) {
                return this;
            }
            map.put(trackGroupArray, selectionOverride);
            return this;
        }

        public ParametersBuilder setTunnelingAudioSessionId(int i2) {
            if (this.tunnelingAudioSessionId != i2) {
                this.tunnelingAudioSessionId = i2;
            }
            return this;
        }

        public ParametersBuilder setViewportSize(int i2, int i3, boolean z) {
            this.viewportWidth = i2;
            this.viewportHeight = i3;
            this.viewportOrientationMayChange = z;
            return this;
        }

        public ParametersBuilder setViewportSizeToPhysicalDisplaySize(Context context, boolean z) {
            Point physicalDisplaySize = Util.getPhysicalDisplaySize(context);
            return setViewportSize(physicalDisplaySize.x, physicalDisplaySize.y, z);
        }
    }

    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new Parcelable.Creator<SelectionOverride>() { // from class: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SelectionOverride createFromParcel(Parcel parcel) {
                return new SelectionOverride(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SelectionOverride[] newArray(int i2) {
                return new SelectionOverride[i2];
            }
        };
        public final int groupIndex;
        public final int length;
        public final int[] tracks;

        public SelectionOverride(int i2, int... iArr) {
            this.groupIndex = i2;
            this.tracks = Arrays.copyOf(iArr, iArr.length);
            this.length = iArr.length;
            Arrays.sort(this.tracks);
        }

        SelectionOverride(Parcel parcel) {
            this.groupIndex = parcel.readInt();
            this.length = parcel.readByte();
            this.tracks = new int[this.length];
            parcel.readIntArray(this.tracks);
        }

        public boolean containsTrack(int i2) {
            for (int i3 : this.tracks) {
                if (i3 == i2) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SelectionOverride.class != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            return this.groupIndex == selectionOverride.groupIndex && Arrays.equals(this.tracks, selectionOverride.tracks);
        }

        public int hashCode() {
            return (this.groupIndex * 31) + Arrays.hashCode(this.tracks);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.groupIndex);
            parcel.writeInt(this.tracks.length);
            parcel.writeIntArray(this.tracks);
        }
    }

    public DefaultTrackSelector() {
        this(new AdaptiveTrackSelection.Factory());
    }

    public DefaultTrackSelector(TrackSelection.Factory factory) {
        this.adaptiveTrackSelectionFactory = factory;
        this.parametersReference = new AtomicReference<>(Parameters.DEFAULT);
    }

    @Deprecated
    public DefaultTrackSelector(BandwidthMeter bandwidthMeter) {
        this(new AdaptiveTrackSelection.Factory(bandwidthMeter));
    }

    private static int compareFormatValues(int i2, int i3) {
        if (i2 == -1) {
            return i3 == -1 ? 0 : -1;
        }
        if (i3 == -1) {
            return 1;
        }
        return i2 - i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int compareInts(int i2, int i3) {
        if (i2 > i3) {
            return 1;
        }
        return i3 > i2 ? -1 : 0;
    }

    private static void filterAdaptiveVideoTrackCountForMimeType(TrackGroup trackGroup, int[] iArr, int i2, String str, int i3, int i4, int i5, int i6, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int iIntValue = list.get(size).intValue();
            if (!isSupportedAdaptiveVideoTrack(trackGroup.getFormat(iIntValue), str, iArr[iIntValue], i2, i3, i4, i5, i6)) {
                list.remove(size);
            }
        }
    }

    protected static boolean formatHasLanguage(Format format, String str) {
        return str != null && TextUtils.equals(str, Util.normalizeLanguageCode(format.language));
    }

    protected static boolean formatHasNoLanguage(Format format) {
        return TextUtils.isEmpty(format.language) || formatHasLanguage(format, C.LANGUAGE_UNDETERMINED);
    }

    private static int getAdaptiveAudioTrackCount(TrackGroup trackGroup, int[] iArr, AudioConfigurationTuple audioConfigurationTuple) {
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroup.length; i3++) {
            if (isSupportedAdaptiveAudioTrack(trackGroup.getFormat(i3), iArr[i3], audioConfigurationTuple)) {
                i2++;
            }
        }
        return i2;
    }

    private static int[] getAdaptiveAudioTracks(TrackGroup trackGroup, int[] iArr, boolean z) {
        int adaptiveAudioTrackCount;
        HashSet hashSet = new HashSet();
        AudioConfigurationTuple audioConfigurationTuple = null;
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroup.length; i3++) {
            Format format = trackGroup.getFormat(i3);
            AudioConfigurationTuple audioConfigurationTuple2 = new AudioConfigurationTuple(format.channelCount, format.sampleRate, z ? null : format.sampleMimeType);
            if (hashSet.add(audioConfigurationTuple2) && (adaptiveAudioTrackCount = getAdaptiveAudioTrackCount(trackGroup, iArr, audioConfigurationTuple2)) > i2) {
                i2 = adaptiveAudioTrackCount;
                audioConfigurationTuple = audioConfigurationTuple2;
            }
        }
        if (i2 <= 1) {
            return NO_TRACKS;
        }
        int[] iArr2 = new int[i2];
        int i4 = 0;
        for (int i5 = 0; i5 < trackGroup.length; i5++) {
            if (isSupportedAdaptiveAudioTrack(trackGroup.getFormat(i5), iArr[i5], (AudioConfigurationTuple) Assertions.checkNotNull(audioConfigurationTuple))) {
                iArr2[i4] = i5;
                i4++;
            }
        }
        return iArr2;
    }

    private static int getAdaptiveVideoTrackCountForMimeType(TrackGroup trackGroup, int[] iArr, int i2, String str, int i3, int i4, int i5, int i6, List<Integer> list) {
        int i7 = 0;
        for (int i8 = 0; i8 < list.size(); i8++) {
            int iIntValue = list.get(i8).intValue();
            if (isSupportedAdaptiveVideoTrack(trackGroup.getFormat(iIntValue), str, iArr[iIntValue], i2, i3, i4, i5, i6)) {
                i7++;
            }
        }
        return i7;
    }

    private static int[] getAdaptiveVideoTracksForGroup(TrackGroup trackGroup, int[] iArr, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
        String str;
        int adaptiveVideoTrackCountForMimeType;
        if (trackGroup.length < 2) {
            return NO_TRACKS;
        }
        List<Integer> viewportFilteredTrackIndices = getViewportFilteredTrackIndices(trackGroup, i7, i8, z2);
        if (viewportFilteredTrackIndices.size() < 2) {
            return NO_TRACKS;
        }
        if (z) {
            str = null;
        } else {
            HashSet hashSet = new HashSet();
            String str2 = null;
            int i9 = 0;
            for (int i10 = 0; i10 < viewportFilteredTrackIndices.size(); i10++) {
                String str3 = trackGroup.getFormat(viewportFilteredTrackIndices.get(i10).intValue()).sampleMimeType;
                if (hashSet.add(str3) && (adaptiveVideoTrackCountForMimeType = getAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i2, str3, i3, i4, i5, i6, viewportFilteredTrackIndices)) > i9) {
                    i9 = adaptiveVideoTrackCountForMimeType;
                    str2 = str3;
                }
            }
            str = str2;
        }
        filterAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i2, str, i3, i4, i5, i6, viewportFilteredTrackIndices);
        return viewportFilteredTrackIndices.size() < 2 ? NO_TRACKS : Util.toArray(viewportFilteredTrackIndices);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Point getMaxVideoSizeInViewport(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L10
            r3 = 1
            r0 = 0
            if (r6 <= r7) goto L8
            r1 = 1
            goto L9
        L8:
            r1 = 0
        L9:
            if (r4 <= r5) goto Lc
            goto Ld
        Lc:
            r3 = 0
        Ld:
            if (r1 == r3) goto L10
            goto L13
        L10:
            r2 = r5
            r5 = r4
            r4 = r2
        L13:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L23
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = com.google.android.exoplayer2.util.Util.ceilDivide(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L23:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = com.google.android.exoplayer2.util.Util.ceilDivide(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.getMaxVideoSizeInViewport(boolean, int, int, int, int):android.graphics.Point");
    }

    private static List<Integer> getViewportFilteredTrackIndices(TrackGroup trackGroup, int i2, int i3, boolean z) {
        int i4;
        ArrayList arrayList = new ArrayList(trackGroup.length);
        for (int i5 = 0; i5 < trackGroup.length; i5++) {
            arrayList.add(Integer.valueOf(i5));
        }
        if (i2 != Integer.MAX_VALUE && i3 != Integer.MAX_VALUE) {
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < trackGroup.length; i7++) {
                Format format = trackGroup.getFormat(i7);
                int i8 = format.width;
                if (i8 > 0 && (i4 = format.height) > 0) {
                    Point maxVideoSizeInViewport = getMaxVideoSizeInViewport(z, i2, i3, i8, i4);
                    int i9 = format.width;
                    int i10 = format.height;
                    int i11 = i9 * i10;
                    if (i9 >= ((int) (maxVideoSizeInViewport.x * FRACTION_TO_CONSIDER_FULLSCREEN)) && i10 >= ((int) (maxVideoSizeInViewport.y * FRACTION_TO_CONSIDER_FULLSCREEN)) && i11 < i6) {
                        i6 = i11;
                    }
                }
            }
            if (i6 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int pixelCount = trackGroup.getFormat(((Integer) arrayList.get(size)).intValue()).getPixelCount();
                    if (pixelCount == -1 || pixelCount > i6) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    protected static boolean isSupported(int i2, boolean z) {
        int i3 = i2 & 7;
        return i3 == 4 || (z && i3 == 3);
    }

    private static boolean isSupportedAdaptiveAudioTrack(Format format, int i2, AudioConfigurationTuple audioConfigurationTuple) {
        if (!isSupported(i2, false) || format.channelCount != audioConfigurationTuple.channelCount || format.sampleRate != audioConfigurationTuple.sampleRate) {
            return false;
        }
        String str = audioConfigurationTuple.mimeType;
        return str == null || TextUtils.equals(str, format.sampleMimeType);
    }

    private static boolean isSupportedAdaptiveVideoTrack(Format format, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (!isSupported(i2, false) || (i2 & i3) == 0) {
            return false;
        }
        if (str != null && !Util.areEqual(format.sampleMimeType, str)) {
            return false;
        }
        int i8 = format.width;
        if (i8 != -1 && i8 > i4) {
            return false;
        }
        int i9 = format.height;
        if (i9 != -1 && i9 > i5) {
            return false;
        }
        float f2 = format.frameRate;
        if (f2 != -1.0f && f2 > i6) {
            return false;
        }
        int i10 = format.bitrate;
        return i10 == -1 || i10 <= i7;
    }

    private static void maybeConfigureRenderersForTunneling(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, RendererConfiguration[] rendererConfigurationArr, TrackSelection[] trackSelectionArr, int i2) {
        boolean z;
        if (i2 == 0) {
            return;
        }
        boolean z2 = false;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < mappedTrackInfo.getRendererCount(); i5++) {
            int rendererType = mappedTrackInfo.getRendererType(i5);
            TrackSelection trackSelection = trackSelectionArr[i5];
            if ((rendererType == 1 || rendererType == 2) && trackSelection != null && rendererSupportsTunneling(iArr[i5], mappedTrackInfo.getTrackGroups(i5), trackSelection)) {
                if (rendererType == 1) {
                    if (i4 != -1) {
                        z = false;
                        break;
                    }
                    i4 = i5;
                } else {
                    if (i3 != -1) {
                        z = false;
                        break;
                    }
                    i3 = i5;
                }
            }
        }
        z = true;
        if (i4 != -1 && i3 != -1) {
            z2 = true;
        }
        if (z && z2) {
            RendererConfiguration rendererConfiguration = new RendererConfiguration(i2);
            rendererConfigurationArr[i4] = rendererConfiguration;
            rendererConfigurationArr[i3] = rendererConfiguration;
        }
    }

    private static boolean rendererSupportsTunneling(int[][] iArr, TrackGroupArray trackGroupArray, TrackSelection trackSelection) {
        if (trackSelection == null) {
            return false;
        }
        int iIndexOf = trackGroupArray.indexOf(trackSelection.getTrackGroup());
        for (int i2 = 0; i2 < trackSelection.length(); i2++) {
            if ((iArr[iIndexOf][trackSelection.getIndexInTrackGroup(i2)] & 32) != 32) {
                return false;
            }
        }
        return true;
    }

    private static TrackSelection selectAdaptiveVideoTrack(TrackGroupArray trackGroupArray, int[][] iArr, int i2, Parameters parameters, TrackSelection.Factory factory, BandwidthMeter bandwidthMeter) {
        TrackGroupArray trackGroupArray2 = trackGroupArray;
        int i3 = parameters.allowNonSeamlessAdaptiveness ? 24 : 16;
        boolean z = parameters.allowMixedMimeAdaptiveness && (i2 & i3) != 0;
        int i4 = 0;
        while (i4 < trackGroupArray2.length) {
            TrackGroup trackGroup = trackGroupArray2.get(i4);
            int[] adaptiveVideoTracksForGroup = getAdaptiveVideoTracksForGroup(trackGroup, iArr[i4], z, i3, parameters.maxVideoWidth, parameters.maxVideoHeight, parameters.maxVideoFrameRate, parameters.maxVideoBitrate, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            if (adaptiveVideoTracksForGroup.length > 0) {
                return ((TrackSelection.Factory) Assertions.checkNotNull(factory)).createTrackSelection(trackGroup, bandwidthMeter, adaptiveVideoTracksForGroup);
            }
            i4++;
            trackGroupArray2 = trackGroupArray;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.trackselection.TrackSelection selectFixedVideoTrack(com.google.android.exoplayer2.source.TrackGroupArray r19, int[][] r20, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r21) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.selectFixedVideoTrack(com.google.android.exoplayer2.source.TrackGroupArray, int[][], com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters):com.google.android.exoplayer2.trackselection.TrackSelection");
    }

    public ParametersBuilder buildUponParameters() {
        return getParameters().buildUpon();
    }

    @Deprecated
    public final void clearSelectionOverride(int i2, TrackGroupArray trackGroupArray) {
        setParameters(buildUponParameters().clearSelectionOverride(i2, trackGroupArray));
    }

    @Deprecated
    public final void clearSelectionOverrides() {
        setParameters(buildUponParameters().clearSelectionOverrides());
    }

    @Deprecated
    public final void clearSelectionOverrides(int i2) {
        setParameters(buildUponParameters().clearSelectionOverrides(i2));
    }

    public Parameters getParameters() {
        return this.parametersReference.get();
    }

    @Deprecated
    public final boolean getRendererDisabled(int i2) {
        return getParameters().getRendererDisabled(i2);
    }

    @Deprecated
    public final SelectionOverride getSelectionOverride(int i2, TrackGroupArray trackGroupArray) {
        return getParameters().getSelectionOverride(i2, trackGroupArray);
    }

    @Deprecated
    public final boolean hasSelectionOverride(int i2, TrackGroupArray trackGroupArray) {
        return getParameters().hasSelectionOverride(i2, trackGroupArray);
    }

    protected TrackSelection[] selectAllTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, Parameters parameters) {
        int i2;
        int i3;
        int i4;
        AudioTrackScore audioTrackScore;
        int i5;
        int i6;
        int rendererCount = mappedTrackInfo.getRendererCount();
        TrackSelection[] trackSelectionArr = new TrackSelection[rendererCount];
        int i7 = 0;
        boolean z = false;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i2 = 2;
            if (i8 >= rendererCount) {
                break;
            }
            if (2 == mappedTrackInfo.getRendererType(i8)) {
                if (!z) {
                    trackSelectionArr[i8] = selectVideoTrack(mappedTrackInfo.getTrackGroups(i8), iArr[i8], iArr2[i8], parameters, this.adaptiveTrackSelectionFactory);
                    z = trackSelectionArr[i8] != null;
                }
                i9 |= mappedTrackInfo.getTrackGroups(i8).length <= 0 ? 0 : 1;
            }
            i8++;
        }
        AudioTrackScore audioTrackScore2 = null;
        int i10 = -1;
        int i11 = -1;
        int iIntValue = Integer.MIN_VALUE;
        while (i7 < rendererCount) {
            int rendererType = mappedTrackInfo.getRendererType(i7);
            if (rendererType != i3) {
                if (rendererType != i2) {
                    if (rendererType != 3) {
                        trackSelectionArr[i7] = selectOtherTrack(rendererType, mappedTrackInfo.getTrackGroups(i7), iArr[i7], parameters);
                    } else {
                        Pair<TrackSelection, Integer> pairSelectTextTrack = selectTextTrack(mappedTrackInfo.getTrackGroups(i7), iArr[i7], parameters);
                        if (pairSelectTextTrack != null && ((Integer) pairSelectTextTrack.second).intValue() > iIntValue) {
                            if (i11 != -1) {
                                trackSelectionArr[i11] = null;
                            }
                            trackSelectionArr[i7] = (TrackSelection) pairSelectTextTrack.first;
                            iIntValue = ((Integer) pairSelectTextTrack.second).intValue();
                            i11 = i7;
                            i7++;
                            i2 = 2;
                            i3 = 1;
                        }
                    }
                }
                i4 = i10;
                audioTrackScore = audioTrackScore2;
                i5 = i11;
                i6 = iIntValue;
            } else {
                i4 = i10;
                audioTrackScore = audioTrackScore2;
                i5 = i11;
                i6 = iIntValue;
                Pair<TrackSelection, AudioTrackScore> pairSelectAudioTrack = selectAudioTrack(mappedTrackInfo.getTrackGroups(i7), iArr[i7], iArr2[i7], parameters, i9 != 0 ? null : this.adaptiveTrackSelectionFactory);
                if (pairSelectAudioTrack != null && (audioTrackScore == null || ((AudioTrackScore) pairSelectAudioTrack.second).compareTo(audioTrackScore) > 0)) {
                    if (i4 != -1) {
                        trackSelectionArr[i4] = null;
                    }
                    trackSelectionArr[i7] = (TrackSelection) pairSelectAudioTrack.first;
                    audioTrackScore2 = (AudioTrackScore) pairSelectAudioTrack.second;
                    i10 = i7;
                }
                i11 = i5;
                iIntValue = i6;
                i7++;
                i2 = 2;
                i3 = 1;
            }
            audioTrackScore2 = audioTrackScore;
            i10 = i4;
            i11 = i5;
            iIntValue = i6;
            i7++;
            i2 = 2;
            i3 = 1;
        }
        return trackSelectionArr;
    }

    protected Pair<TrackSelection, AudioTrackScore> selectAudioTrack(TrackGroupArray trackGroupArray, int[][] iArr, int i2, Parameters parameters, TrackSelection.Factory factory) {
        TrackSelection fixedTrackSelection = null;
        AudioTrackScore audioTrackScore = null;
        int i3 = 0;
        int i4 = -1;
        int i5 = -1;
        while (i3 < trackGroupArray.length) {
            TrackGroup trackGroup = trackGroupArray.get(i3);
            int[] iArr2 = iArr[i3];
            int i6 = i5;
            AudioTrackScore audioTrackScore2 = audioTrackScore;
            int i7 = i4;
            for (int i8 = 0; i8 < trackGroup.length; i8++) {
                if (isSupported(iArr2[i8], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    AudioTrackScore audioTrackScore3 = new AudioTrackScore(trackGroup.getFormat(i8), parameters, iArr2[i8]);
                    if (audioTrackScore2 == null || audioTrackScore3.compareTo(audioTrackScore2) > 0) {
                        i7 = i3;
                        i6 = i8;
                        audioTrackScore2 = audioTrackScore3;
                    }
                }
            }
            i3++;
            i4 = i7;
            audioTrackScore = audioTrackScore2;
            i5 = i6;
        }
        if (i4 == -1) {
            return null;
        }
        TrackGroup trackGroup2 = trackGroupArray.get(i4);
        if (!parameters.forceHighestSupportedBitrate && !parameters.forceLowestBitrate && factory != null) {
            int[] adaptiveAudioTracks = getAdaptiveAudioTracks(trackGroup2, iArr[i4], parameters.allowMixedMimeAdaptiveness);
            if (adaptiveAudioTracks.length > 0) {
                fixedTrackSelection = factory.createTrackSelection(trackGroup2, getBandwidthMeter(), adaptiveAudioTracks);
            }
        }
        if (fixedTrackSelection == null) {
            fixedTrackSelection = new FixedTrackSelection(trackGroup2, i5);
        }
        return Pair.create(fixedTrackSelection, Assertions.checkNotNull(audioTrackScore));
    }

    protected TrackSelection selectOtherTrack(int i2, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        TrackGroup trackGroup = null;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < trackGroupArray.length) {
            TrackGroup trackGroup2 = trackGroupArray.get(i3);
            int[] iArr2 = iArr[i3];
            int i6 = i5;
            int i7 = i4;
            TrackGroup trackGroup3 = trackGroup;
            for (int i8 = 0; i8 < trackGroup2.length; i8++) {
                if (isSupported(iArr2[i8], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    int i9 = (trackGroup2.getFormat(i8).selectionFlags & 1) != 0 ? 2 : 1;
                    if (isSupported(iArr2[i8], false)) {
                        i9 += WITHIN_RENDERER_CAPABILITIES_BONUS;
                    }
                    if (i9 > i6) {
                        i7 = i8;
                        trackGroup3 = trackGroup2;
                        i6 = i9;
                    }
                }
            }
            i3++;
            trackGroup = trackGroup3;
            i4 = i7;
            i5 = i6;
        }
        if (trackGroup == null) {
            return null;
        }
        return new FixedTrackSelection(trackGroup, i4);
    }

    protected Pair<TrackSelection, Integer> selectTextTrack(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        int i2 = 0;
        TrackGroup trackGroup = null;
        int i3 = 0;
        int i4 = 0;
        while (i2 < trackGroupArray.length) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            int i5 = i4;
            int i6 = i3;
            TrackGroup trackGroup3 = trackGroup;
            for (int i7 = 0; i7 < trackGroup2.length; i7++) {
                if (isSupported(iArr2[i7], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    Format format = trackGroup2.getFormat(i7);
                    int i8 = format.selectionFlags & (parameters.disabledTextTrackSelectionFlags ^ (-1));
                    int i9 = 1;
                    boolean z = (i8 & 1) != 0;
                    boolean z2 = (i8 & 2) != 0;
                    boolean hasLanguage = formatHasLanguage(format, parameters.preferredTextLanguage);
                    if (hasLanguage || (parameters.selectUndeterminedTextLanguage && formatHasNoLanguage(format))) {
                        i9 = (z ? 8 : !z2 ? 6 : 4) + (hasLanguage ? 1 : 0);
                    } else if (z) {
                        i9 = 3;
                    } else if (z2) {
                        if (formatHasLanguage(format, parameters.preferredAudioLanguage)) {
                            i9 = 2;
                        }
                    }
                    if (isSupported(iArr2[i7], false)) {
                        i9 += WITHIN_RENDERER_CAPABILITIES_BONUS;
                    }
                    if (i9 > i5) {
                        i6 = i7;
                        trackGroup3 = trackGroup2;
                        i5 = i9;
                    }
                }
            }
            i2++;
            trackGroup = trackGroup3;
            i3 = i6;
            i4 = i5;
        }
        if (trackGroup == null) {
            return null;
        }
        return Pair.create(new FixedTrackSelection(trackGroup, i3), Integer.valueOf(i4));
    }

    @Override // com.google.android.exoplayer2.trackselection.MappingTrackSelector
    protected final Pair<RendererConfiguration[], TrackSelection[]> selectTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2) {
        Parameters parameters = this.parametersReference.get();
        int rendererCount = mappedTrackInfo.getRendererCount();
        TrackSelection[] trackSelectionArrSelectAllTracks = selectAllTracks(mappedTrackInfo, iArr, iArr2, parameters);
        for (int i2 = 0; i2 < rendererCount; i2++) {
            if (parameters.getRendererDisabled(i2)) {
                trackSelectionArrSelectAllTracks[i2] = null;
            } else {
                TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i2);
                if (parameters.hasSelectionOverride(i2, trackGroups)) {
                    SelectionOverride selectionOverride = parameters.getSelectionOverride(i2, trackGroups);
                    if (selectionOverride == null) {
                        trackSelectionArrSelectAllTracks[i2] = null;
                    } else if (selectionOverride.length == 1) {
                        trackSelectionArrSelectAllTracks[i2] = new FixedTrackSelection(trackGroups.get(selectionOverride.groupIndex), selectionOverride.tracks[0]);
                    } else {
                        trackSelectionArrSelectAllTracks[i2] = ((TrackSelection.Factory) Assertions.checkNotNull(this.adaptiveTrackSelectionFactory)).createTrackSelection(trackGroups.get(selectionOverride.groupIndex), getBandwidthMeter(), selectionOverride.tracks);
                    }
                }
            }
        }
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[rendererCount];
        for (int i3 = 0; i3 < rendererCount; i3++) {
            rendererConfigurationArr[i3] = !parameters.getRendererDisabled(i3) && (mappedTrackInfo.getRendererType(i3) == 6 || trackSelectionArrSelectAllTracks[i3] != null) ? RendererConfiguration.DEFAULT : null;
        }
        maybeConfigureRenderersForTunneling(mappedTrackInfo, iArr, rendererConfigurationArr, trackSelectionArrSelectAllTracks, parameters.tunnelingAudioSessionId);
        return Pair.create(rendererConfigurationArr, trackSelectionArrSelectAllTracks);
    }

    protected TrackSelection selectVideoTrack(TrackGroupArray trackGroupArray, int[][] iArr, int i2, Parameters parameters, TrackSelection.Factory factory) {
        TrackSelection trackSelectionSelectAdaptiveVideoTrack = (parameters.forceHighestSupportedBitrate || parameters.forceLowestBitrate || factory == null) ? null : selectAdaptiveVideoTrack(trackGroupArray, iArr, i2, parameters, factory, getBandwidthMeter());
        return trackSelectionSelectAdaptiveVideoTrack == null ? selectFixedVideoTrack(trackGroupArray, iArr, parameters) : trackSelectionSelectAdaptiveVideoTrack;
    }

    public void setParameters(Parameters parameters) {
        Assertions.checkNotNull(parameters);
        if (this.parametersReference.getAndSet(parameters).equals(parameters)) {
            return;
        }
        invalidate();
    }

    public void setParameters(ParametersBuilder parametersBuilder) {
        setParameters(parametersBuilder.build());
    }

    @Deprecated
    public final void setRendererDisabled(int i2, boolean z) {
        setParameters(buildUponParameters().setRendererDisabled(i2, z));
    }

    @Deprecated
    public final void setSelectionOverride(int i2, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
        setParameters(buildUponParameters().setSelectionOverride(i2, trackGroupArray, selectionOverride));
    }

    @Deprecated
    public void setTunnelingAudioSessionId(int i2) {
        setParameters(buildUponParameters().setTunnelingAudioSessionId(i2));
    }
}
