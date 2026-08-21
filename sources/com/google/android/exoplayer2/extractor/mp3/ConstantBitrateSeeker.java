package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;

/* JADX INFO: loaded from: classes.dex */
final class ConstantBitrateSeeker extends ConstantBitrateSeekMap implements Mp3Extractor.Seeker {
    public ConstantBitrateSeeker(long j2, long j3, MpegAudioHeader mpegAudioHeader) {
        super(j2, j3, mpegAudioHeader.bitrate, mpegAudioHeader.frameSize);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getDataEndPosition() {
        return -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j2) {
        return getTimeUsAtPosition(j2);
    }
}
