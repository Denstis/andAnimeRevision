package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackParameters {
    public static final PlaybackParameters DEFAULT = new PlaybackParameters(1.0f);
    public final float pitch;
    private final int scaledUsPerMs;
    public final boolean skipSilence;
    public final float speed;

    public PlaybackParameters(float f2) {
        this(f2, 1.0f, false);
    }

    public PlaybackParameters(float f2, float f3) {
        this(f2, f3, false);
    }

    public PlaybackParameters(float f2, float f3, boolean z) {
        Assertions.checkArgument(f2 > 0.0f);
        Assertions.checkArgument(f3 > 0.0f);
        this.speed = f2;
        this.pitch = f3;
        this.skipSilence = z;
        this.scaledUsPerMs = Math.round(f2 * 1000.0f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PlaybackParameters.class != obj.getClass()) {
            return false;
        }
        PlaybackParameters playbackParameters = (PlaybackParameters) obj;
        return this.speed == playbackParameters.speed && this.pitch == playbackParameters.pitch && this.skipSilence == playbackParameters.skipSilence;
    }

    public long getMediaTimeUsForPlayoutTimeMs(long j2) {
        return j2 * ((long) this.scaledUsPerMs);
    }

    public int hashCode() {
        return ((((527 + Float.floatToRawIntBits(this.speed)) * 31) + Float.floatToRawIntBits(this.pitch)) * 31) + (this.skipSilence ? 1 : 0);
    }
}
