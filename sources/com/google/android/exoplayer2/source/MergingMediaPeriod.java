package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes.dex */
final class MergingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private MediaPeriod[] enabledPeriods;
    public final MediaPeriod[] periods;
    private TrackGroupArray trackGroups;
    private final ArrayList<MediaPeriod> childrenPendingPreparation = new ArrayList<>();
    private final IdentityHashMap<SampleStream, Integer> streamPeriodIndices = new IdentityHashMap<>();

    public MergingMediaPeriod(CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, MediaPeriod... mediaPeriodArr) {
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.periods = mediaPeriodArr;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(new SequenceableLoader[0]);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j2) {
        if (this.childrenPendingPreparation.isEmpty()) {
            return this.compositeSequenceableLoader.continueLoading(j2);
        }
        int size = this.childrenPendingPreparation.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.childrenPendingPreparation.get(i2).continueLoading(j2);
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j2, boolean z) {
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            mediaPeriod.discardBuffer(j2, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j2, SeekParameters seekParameters) {
        return this.enabledPeriods[0].getAdjustedSeekPositionUs(j2, seekParameters);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() {
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.childrenPendingPreparation.remove(mediaPeriod);
        if (this.childrenPendingPreparation.isEmpty()) {
            int i2 = 0;
            for (MediaPeriod mediaPeriod2 : this.periods) {
                i2 += mediaPeriod2.getTrackGroups().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            MediaPeriod[] mediaPeriodArr = this.periods;
            int length = mediaPeriodArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                TrackGroupArray trackGroups = mediaPeriodArr[i3].getTrackGroups();
                int i5 = trackGroups.length;
                int i6 = i4;
                int i7 = 0;
                while (i7 < i5) {
                    trackGroupArr[i6] = trackGroups.get(i7);
                    i7++;
                    i6++;
                }
                i3++;
                i4 = i6;
            }
            this.trackGroups = new TrackGroupArray(trackGroupArr);
            this.callback.onPrepared(this);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j2) {
        this.callback = callback;
        Collections.addAll(this.childrenPendingPreparation, this.periods);
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.prepare(this, j2);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        long discontinuity = this.periods[0].readDiscontinuity();
        int i2 = 1;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.periods;
            if (i2 >= mediaPeriodArr.length) {
                if (discontinuity != C.TIME_UNSET) {
                    for (MediaPeriod mediaPeriod : this.enabledPeriods) {
                        if (mediaPeriod != this.periods[0] && mediaPeriod.seekToUs(discontinuity) != discontinuity) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                }
                return discontinuity;
            }
            if (mediaPeriodArr[i2].readDiscontinuity() != C.TIME_UNSET) {
                throw new IllegalStateException("Child reported discontinuity.");
            }
            i2++;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j2) {
        this.compositeSequenceableLoader.reevaluateBuffer(j2);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j2) {
        long jSeekToUs = this.enabledPeriods[0].seekToUs(j2);
        int i2 = 1;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
            if (i2 >= mediaPeriodArr.length) {
                return jSeekToUs;
            }
            if (mediaPeriodArr[i2].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i2++;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2) {
        int[] iArr = new int[trackSelectionArr.length];
        int[] iArr2 = new int[trackSelectionArr.length];
        for (int i2 = 0; i2 < trackSelectionArr.length; i2++) {
            iArr[i2] = sampleStreamArr[i2] == null ? -1 : this.streamPeriodIndices.get(sampleStreamArr[i2]).intValue();
            iArr2[i2] = -1;
            if (trackSelectionArr[i2] != null) {
                TrackGroup trackGroup = trackSelectionArr[i2].getTrackGroup();
                int i3 = 0;
                while (true) {
                    MediaPeriod[] mediaPeriodArr = this.periods;
                    if (i3 >= mediaPeriodArr.length) {
                        break;
                    }
                    if (mediaPeriodArr[i3].getTrackGroups().indexOf(trackGroup) != -1) {
                        iArr2[i2] = i3;
                        break;
                    }
                    i3++;
                }
            }
        }
        this.streamPeriodIndices.clear();
        SampleStream[] sampleStreamArr2 = new SampleStream[trackSelectionArr.length];
        SampleStream[] sampleStreamArr3 = new SampleStream[trackSelectionArr.length];
        TrackSelection[] trackSelectionArr2 = new TrackSelection[trackSelectionArr.length];
        ArrayList arrayList = new ArrayList(this.periods.length);
        long j3 = j2;
        int i4 = 0;
        while (i4 < this.periods.length) {
            for (int i5 = 0; i5 < trackSelectionArr.length; i5++) {
                TrackSelection trackSelection = null;
                sampleStreamArr3[i5] = iArr[i5] == i4 ? sampleStreamArr[i5] : null;
                if (iArr2[i5] == i4) {
                    trackSelection = trackSelectionArr[i5];
                }
                trackSelectionArr2[i5] = trackSelection;
            }
            TrackSelection[] trackSelectionArr3 = trackSelectionArr2;
            ArrayList arrayList2 = arrayList;
            TrackSelection[] trackSelectionArr4 = trackSelectionArr2;
            int i6 = i4;
            long jSelectTracks = this.periods[i4].selectTracks(trackSelectionArr3, zArr, sampleStreamArr3, zArr2, j3);
            if (i6 == 0) {
                j3 = jSelectTracks;
            } else if (jSelectTracks != j3) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i7 = 0; i7 < trackSelectionArr.length; i7++) {
                if (iArr2[i7] == i6) {
                    Assertions.checkState(sampleStreamArr3[i7] != null);
                    sampleStreamArr2[i7] = sampleStreamArr3[i7];
                    this.streamPeriodIndices.put(sampleStreamArr3[i7], Integer.valueOf(i6));
                    z = true;
                } else if (iArr[i7] == i6) {
                    Assertions.checkState(sampleStreamArr3[i7] == null);
                }
            }
            if (z) {
                arrayList2.add(this.periods[i6]);
            }
            i4 = i6 + 1;
            arrayList = arrayList2;
            trackSelectionArr2 = trackSelectionArr4;
        }
        ArrayList arrayList3 = arrayList;
        System.arraycopy(sampleStreamArr2, 0, sampleStreamArr, 0, sampleStreamArr2.length);
        this.enabledPeriods = new MediaPeriod[arrayList3.size()];
        arrayList3.toArray(this.enabledPeriods);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(this.enabledPeriods);
        return j3;
    }
}
