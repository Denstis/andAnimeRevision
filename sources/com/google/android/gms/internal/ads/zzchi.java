package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzchi implements zzdcz<zzbio> {
    private final /* synthetic */ zzchh zzfyd;

    zzchi(zzchh zzchhVar) {
        this.zzfyd = zzchhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzbio zzbioVar) {
        zzbioVar.zzafa();
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        this.zzfyd.zzfht.onAdFailedToLoad(zzccu.zzd(th));
        zzcwj.zzc(th, "DelayedBannerAd.onFailure");
    }
}
