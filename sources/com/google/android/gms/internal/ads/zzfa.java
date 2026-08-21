package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzfa extends zzfl {
    private final boolean zzaae;

    public zzfa(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3) {
        super(zzdxVar, str, str2, zzbVar, i2, 61);
        this.zzaae = zzdxVar.zzcl();
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        long jLongValue = ((Long) this.zzaal.invoke(null, this.zzvo.getContext(), Boolean.valueOf(this.zzaae))).longValue();
        synchronized (this.zzaaa) {
            this.zzaaa.zzbo(jLongValue);
        }
    }
}
