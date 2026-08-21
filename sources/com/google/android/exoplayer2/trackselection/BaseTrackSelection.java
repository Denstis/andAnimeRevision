package com.google.android.exoplayer2.trackselection;

import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseTrackSelection implements TrackSelection {
    private final long[] blacklistUntilTimes;
    private final Format[] formats;
    protected final TrackGroup group;
    private int hashCode;
    protected final int length;
    protected final int[] tracks;

    private static final class DecreasingBandwidthComparator implements Comparator<Format> {
        private DecreasingBandwidthComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Format format, Format format2) {
            return format2.bitrate - format.bitrate;
        }
    }

    public BaseTrackSelection(TrackGroup trackGroup, int... iArr) {
        int i2 = 0;
        Assertions.checkState(iArr.length > 0);
        this.group = (TrackGroup) Assertions.checkNotNull(trackGroup);
        this.length = iArr.length;
        this.formats = new Format[this.length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.formats[i3] = trackGroup.getFormat(iArr[i3]);
        }
        Arrays.sort(this.formats, new DecreasingBandwidthComparator());
        this.tracks = new int[this.length];
        while (true) {
            int i4 = this.length;
            if (i2 >= i4) {
                this.blacklistUntilTimes = new long[i4];
                return;
            } else {
                this.tracks[i2] = trackGroup.indexOf(this.formats[i2]);
                i2++;
            }
        }
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final boolean blacklist(int i2, long j2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zIsBlacklisted = isBlacklisted(i2, jElapsedRealtime);
        int i3 = 0;
        while (i3 < this.length && !zIsBlacklisted) {
            zIsBlacklisted = (i3 == i2 || isBlacklisted(i3, jElapsedRealtime)) ? false : true;
            i3++;
        }
        if (!zIsBlacklisted) {
            return false;
        }
        long[] jArr = this.blacklistUntilTimes;
        jArr[i2] = Math.max(jArr[i2], Util.addWithOverflowDefault(jElapsedRealtime, j2, Long.MAX_VALUE));
        return true;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public void disable() {
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public void enable() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BaseTrackSelection baseTrackSelection = (BaseTrackSelection) obj;
        return this.group == baseTrackSelection.group && Arrays.equals(this.tracks, baseTrackSelection.tracks);
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public int evaluateQueueSize(long j2, List<? extends MediaChunk> list) {
        return list.size();
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final Format getFormat(int i2) {
        return this.formats[i2];
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int getIndexInTrackGroup(int i2) {
        return this.tracks[i2];
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final Format getSelectedFormat() {
        return this.formats[getSelectedIndex()];
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int getSelectedIndexInTrackGroup() {
        return this.tracks[getSelectedIndex()];
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final TrackGroup getTrackGroup() {
        return this.group;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = (System.identityHashCode(this.group) * 31) + Arrays.hashCode(this.tracks);
        }
        return this.hashCode;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int indexOf(int i2) {
        for (int i3 = 0; i3 < this.length; i3++) {
            if (this.tracks[i3] == i2) {
                return i3;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int indexOf(Format format) {
        for (int i2 = 0; i2 < this.length; i2++) {
            if (this.formats[i2] == format) {
                return i2;
            }
        }
        return -1;
    }

    protected final boolean isBlacklisted(int i2, long j2) {
        return this.blacklistUntilTimes[i2] > j2;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int length() {
        return this.tracks.length;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public void onPlaybackSpeed(float f2) {
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    @Deprecated
    public /* synthetic */ void updateSelectedTrack(long j2, long j3, long j4) {
        a.$default$updateSelectedTrack(this, j2, j3, j4);
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public /* synthetic */ void updateSelectedTrack(long j2, long j3, long j4, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        updateSelectedTrack(j2, j3, j4);
    }
}
