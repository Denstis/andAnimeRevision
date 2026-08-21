package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface TrackSelection {

    public interface Factory {
        TrackSelection createTrackSelection(TrackGroup trackGroup, BandwidthMeter bandwidthMeter, int... iArr);
    }

    boolean blacklist(int i2, long j2);

    void disable();

    void enable();

    int evaluateQueueSize(long j2, List<? extends MediaChunk> list);

    Format getFormat(int i2);

    int getIndexInTrackGroup(int i2);

    Format getSelectedFormat();

    int getSelectedIndex();

    int getSelectedIndexInTrackGroup();

    Object getSelectionData();

    int getSelectionReason();

    TrackGroup getTrackGroup();

    int indexOf(int i2);

    int indexOf(Format format);

    int length();

    void onPlaybackSpeed(float f2);

    @Deprecated
    void updateSelectedTrack(long j2, long j3, long j4);

    void updateSelectedTrack(long j2, long j3, long j4, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr);
}
