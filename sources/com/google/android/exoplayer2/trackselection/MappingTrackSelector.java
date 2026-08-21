package com.google.android.exoplayer2.trackselection;

import android.util.Pair;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class MappingTrackSelector extends TrackSelector {
    private MappedTrackInfo currentMappedTrackInfo;

    public static final class MappedTrackInfo {
        public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
        public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
        public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
        public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;

        @Deprecated
        public final int length;
        private final int rendererCount;
        private final int[][][] rendererFormatSupports;
        private final int[] rendererMixedMimeTypeAdaptiveSupports;
        private final TrackGroupArray[] rendererTrackGroups;
        private final int[] rendererTrackTypes;
        private final TrackGroupArray unmappedTrackGroups;

        MappedTrackInfo(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.rendererTrackTypes = iArr;
            this.rendererTrackGroups = trackGroupArrayArr;
            this.rendererFormatSupports = iArr3;
            this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
            this.unmappedTrackGroups = trackGroupArray;
            this.rendererCount = iArr.length;
            this.length = this.rendererCount;
        }

        public int getAdaptiveSupport(int i2, int i3, boolean z) {
            int i4 = this.rendererTrackGroups[i2].get(i3).length;
            int[] iArr = new int[i4];
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                int trackSupport = getTrackSupport(i2, i3, i6);
                if (trackSupport == 4 || (z && trackSupport == 3)) {
                    iArr[i5] = i6;
                    i5++;
                }
            }
            return getAdaptiveSupport(i2, i3, Arrays.copyOf(iArr, i5));
        }

        public int getAdaptiveSupport(int i2, int i3, int[] iArr) {
            int i4 = 0;
            String str = null;
            boolean z = false;
            int i5 = 0;
            int iMin = 16;
            while (i4 < iArr.length) {
                String str2 = this.rendererTrackGroups[i2].get(i3).getFormat(iArr[i4]).sampleMimeType;
                int i6 = i5 + 1;
                if (i5 == 0) {
                    str = str2;
                } else {
                    z |= !Util.areEqual(str, str2);
                }
                iMin = Math.min(iMin, this.rendererFormatSupports[i2][i3][i4] & 24);
                i4++;
                i5 = i6;
            }
            return z ? Math.min(iMin, this.rendererMixedMimeTypeAdaptiveSupports[i2]) : iMin;
        }

        public int getRendererCount() {
            return this.rendererCount;
        }

        public int getRendererSupport(int i2) {
            int i3;
            int[][] iArr = this.rendererFormatSupports[i2];
            int i4 = 0;
            int i5 = 0;
            while (i4 < iArr.length) {
                int iMax = i5;
                for (int i6 = 0; i6 < iArr[i4].length; i6++) {
                    int i7 = iArr[i4][i6] & 7;
                    if (i7 == 3) {
                        i3 = 2;
                    } else {
                        if (i7 == 4) {
                            return 3;
                        }
                        i3 = 1;
                    }
                    iMax = Math.max(iMax, i3);
                }
                i4++;
                i5 = iMax;
            }
            return i5;
        }

        public int getRendererType(int i2) {
            return this.rendererTrackTypes[i2];
        }

        @Deprecated
        public int getTrackFormatSupport(int i2, int i3, int i4) {
            return getTrackSupport(i2, i3, i4);
        }

        public TrackGroupArray getTrackGroups(int i2) {
            return this.rendererTrackGroups[i2];
        }

        public int getTrackSupport(int i2, int i3, int i4) {
            return this.rendererFormatSupports[i2][i3][i4] & 7;
        }

        @Deprecated
        public int getTrackTypeRendererSupport(int i2) {
            return getTypeSupport(i2);
        }

        public int getTypeSupport(int i2) {
            int iMax = 0;
            for (int i3 = 0; i3 < this.rendererCount; i3++) {
                if (this.rendererTrackTypes[i3] == i2) {
                    iMax = Math.max(iMax, getRendererSupport(i3));
                }
            }
            return iMax;
        }

        @Deprecated
        public TrackGroupArray getUnassociatedTrackGroups() {
            return getUnmappedTrackGroups();
        }

        public TrackGroupArray getUnmappedTrackGroups() {
            return this.unmappedTrackGroups;
        }
    }

    private static int findRenderer(RendererCapabilities[] rendererCapabilitiesArr, TrackGroup trackGroup) {
        int length = rendererCapabilitiesArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < rendererCapabilitiesArr.length) {
            RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i2];
            int i4 = i3;
            int i5 = length;
            for (int i6 = 0; i6 < trackGroup.length; i6++) {
                int iSupportsFormat = rendererCapabilities.supportsFormat(trackGroup.getFormat(i6)) & 7;
                if (iSupportsFormat > i4) {
                    if (iSupportsFormat == 4) {
                        return i2;
                    }
                    i5 = i2;
                    i4 = iSupportsFormat;
                }
            }
            i2++;
            length = i5;
            i3 = i4;
        }
        return length;
    }

    private static int[] getFormatSupport(RendererCapabilities rendererCapabilities, TrackGroup trackGroup) {
        int[] iArr = new int[trackGroup.length];
        for (int i2 = 0; i2 < trackGroup.length; i2++) {
            iArr[i2] = rendererCapabilities.supportsFormat(trackGroup.getFormat(i2));
        }
        return iArr;
    }

    private static int[] getMixedMimeTypeAdaptationSupports(RendererCapabilities[] rendererCapabilitiesArr) {
        int[] iArr = new int[rendererCapabilitiesArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = rendererCapabilitiesArr[i2].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    public final MappedTrackInfo getCurrentMappedTrackInfo() {
        return this.currentMappedTrackInfo;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public final void onSelectionActivated(Object obj) {
        this.currentMappedTrackInfo = (MappedTrackInfo) obj;
    }

    protected abstract Pair<RendererConfiguration[], TrackSelection[]> selectTracks(MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2);

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public final TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray) {
        int[] iArr = new int[rendererCapabilitiesArr.length + 1];
        TrackGroup[][] trackGroupArr = new TrackGroup[rendererCapabilitiesArr.length + 1][];
        int[][][] iArr2 = new int[rendererCapabilitiesArr.length + 1][][];
        for (int i2 = 0; i2 < trackGroupArr.length; i2++) {
            int i3 = trackGroupArray.length;
            trackGroupArr[i2] = new TrackGroup[i3];
            iArr2[i2] = new int[i3][];
        }
        int[] mixedMimeTypeAdaptationSupports = getMixedMimeTypeAdaptationSupports(rendererCapabilitiesArr);
        for (int i4 = 0; i4 < trackGroupArray.length; i4++) {
            TrackGroup trackGroup = trackGroupArray.get(i4);
            int iFindRenderer = findRenderer(rendererCapabilitiesArr, trackGroup);
            int[] formatSupport = iFindRenderer == rendererCapabilitiesArr.length ? new int[trackGroup.length] : getFormatSupport(rendererCapabilitiesArr[iFindRenderer], trackGroup);
            int i5 = iArr[iFindRenderer];
            trackGroupArr[iFindRenderer][i5] = trackGroup;
            iArr2[iFindRenderer][i5] = formatSupport;
            iArr[iFindRenderer] = iArr[iFindRenderer] + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[rendererCapabilitiesArr.length];
        int[] iArr3 = new int[rendererCapabilitiesArr.length];
        for (int i6 = 0; i6 < rendererCapabilitiesArr.length; i6++) {
            int i7 = iArr[i6];
            trackGroupArrayArr[i6] = new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[i6], i7));
            iArr2[i6] = (int[][]) Util.nullSafeArrayCopy(iArr2[i6], i7);
            iArr3[i6] = rendererCapabilitiesArr[i6].getTrackType();
        }
        MappedTrackInfo mappedTrackInfo = new MappedTrackInfo(iArr3, trackGroupArrayArr, mixedMimeTypeAdaptationSupports, iArr2, new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[rendererCapabilitiesArr.length], iArr[rendererCapabilitiesArr.length])));
        Pair<RendererConfiguration[], TrackSelection[]> pairSelectTracks = selectTracks(mappedTrackInfo, iArr2, mixedMimeTypeAdaptationSupports);
        return new TrackSelectorResult((RendererConfiguration[]) pairSelectTracks.first, (TrackSelection[]) pairSelectTracks.second, mappedTrackInfo);
    }
}
