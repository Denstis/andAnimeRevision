package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.DefaultLoadControl;

/* JADX INFO: loaded from: classes.dex */
public final class zzg implements zzad {
    private int zzr;
    private int zzs;
    private final int zzt;
    private final float zzu;

    public zzg() {
        this(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, 1, 1.0f);
    }

    private zzg(int i2, int i3, float f2) {
        this.zzr = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS;
        this.zzt = 1;
        this.zzu = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final int zza() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final void zza(zzae zzaeVar) throws zzae {
        this.zzs++;
        int i2 = this.zzr;
        this.zzr = i2 + ((int) (i2 * this.zzu));
        if (!(this.zzs <= this.zzt)) {
            throw zzaeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final int zzb() {
        return this.zzs;
    }
}
