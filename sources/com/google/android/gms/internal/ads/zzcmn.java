package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcmn implements zzdcz<zzbrs> {
    private final /* synthetic */ zzbso zzgcv;
    private final /* synthetic */ zzcmk zzgcw;

    zzcmn(zzcmk zzcmkVar, zzbso zzbsoVar) {
        this.zzgcw = zzcmkVar;
        this.zzgcv = zzbsoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzbrs zzbrsVar) {
        zzbrs zzbrsVar2 = zzbrsVar;
        synchronized (this.zzgcw) {
            zzcmk.zza(this.zzgcw, (zzddi) null);
            this.zzgcw.zzgcp = zzbrsVar2;
            zzbrsVar2.zzafa();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        synchronized (this.zzgcw) {
            zzcmk.zza(this.zzgcw, (zzddi) null);
            this.zzgcv.zzacb().onAdFailedToLoad(zzccu.zzd(th));
            zzcwj.zzc(th, "InterstitialAdManagerShim.onFailure");
        }
    }
}
