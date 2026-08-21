package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcmp implements zzcms<zzbkk> {
    private final /* synthetic */ zzcmm zzgda;

    zzcmp(zzcmm zzcmmVar) {
        this.zzgda = zzcmmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcms
    public final /* synthetic */ void onSuccess(zzbkk zzbkkVar) {
        zzbkk zzbkkVar2 = zzbkkVar;
        synchronized (this.zzgda) {
            zzcmm.zza(this.zzgda, false);
            this.zzgda.zzgct = zzbkkVar2.getMediationAdapterClassName();
            this.zzgda.zzgcu = zzbkkVar2.zzju();
            zzbkkVar2.zzafa();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcms
    public final void zzalq() {
        synchronized (this.zzgda) {
            zzcmm.zza(this.zzgda, false);
        }
    }
}
