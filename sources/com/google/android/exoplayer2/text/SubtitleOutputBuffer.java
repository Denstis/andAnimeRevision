package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.decoder.OutputBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class SubtitleOutputBuffer extends OutputBuffer implements Subtitle {
    private long subsampleOffsetUs;
    private Subtitle subtitle;

    @Override // com.google.android.exoplayer2.decoder.Buffer
    public void clear() {
        super.clear();
        this.subtitle = null;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j2) {
        return this.subtitle.getCues(j2 - this.subsampleOffsetUs);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i2) {
        return this.subtitle.getEventTime(i2) + this.subsampleOffsetUs;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.subtitle.getEventTimeCount();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j2) {
        return this.subtitle.getNextEventTimeIndex(j2 - this.subsampleOffsetUs);
    }

    @Override // com.google.android.exoplayer2.decoder.OutputBuffer
    public abstract void release();

    public void setContent(long j2, Subtitle subtitle, long j3) {
        this.timeUs = j2;
        this.subtitle = subtitle;
        if (j3 == Long.MAX_VALUE) {
            j3 = this.timeUs;
        }
        this.subsampleOffsetUs = j3;
    }
}
