package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzex extends zzfl {
    private long zzaad;

    public zzex(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 12);
        this.zzaad = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        this.zzaaa.zzap(-1L);
        this.zzaaa.zzap(((Long) this.zzaal.invoke(null, this.zzvo.getContext())).longValue());
    }
}
