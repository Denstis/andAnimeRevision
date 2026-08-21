package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdce;

/* JADX INFO: loaded from: classes.dex */
final class zzdcg implements Runnable {
    private final /* synthetic */ int zzgqx;
    private final /* synthetic */ zzddi zzgqy;
    private final /* synthetic */ zzdce.zza zzgqz;

    zzdcg(zzdce.zza zzaVar, int i2, zzddi zzddiVar) {
        this.zzgqz = zzaVar;
        this.zzgqx = i2;
        this.zzgqy = zzddiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzgqz.zza(this.zzgqx, this.zzgqy);
        } finally {
            this.zzgqz.zzapa();
        }
    }
}
