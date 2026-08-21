package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(19)
final class zzht extends zzhq {
    private final AudioTimestamp zzajz;
    private long zzaka;
    private long zzakb;
    private long zzakc;

    public zzht() {
        super(null);
        this.zzajz = new AudioTimestamp();
    }

    @Override // com.google.android.gms.internal.ads.zzhq
    public final void zza(AudioTrack audioTrack, boolean z) {
        super.zza(audioTrack, z);
        this.zzaka = 0L;
        this.zzakb = 0L;
        this.zzakc = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzhq
    public final boolean zzfk() {
        boolean timestamp = this.zzahy.getTimestamp(this.zzajz);
        if (timestamp) {
            long j2 = this.zzajz.framePosition;
            if (this.zzakb > j2) {
                this.zzaka++;
            }
            this.zzakb = j2;
            this.zzakc = j2 + (this.zzaka << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.zzhq
    public final long zzfl() {
        return this.zzajz.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.zzhq
    public final long zzfm() {
        return this.zzakc;
    }
}
