package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcvd implements zzdcz<zzbyz> {
    private final /* synthetic */ zzcms zzgdg;
    private final /* synthetic */ zzcvb zzgih;

    zzcvd(zzcvb zzcvbVar, zzcms zzcmsVar) {
        this.zzgih = zzcvbVar;
        this.zzgdg = zzcmsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzbyz zzbyzVar) {
        zzbyz zzbyzVar2 = zzbyzVar;
        synchronized (this.zzgih) {
            this.zzgdg.onSuccess(zzbyzVar2);
            this.zzgih.zzgid.onAdMetadataChanged();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        synchronized (this.zzgih) {
            ((zzbzc) this.zzgih.zzgie.zzamt()).zzacb().onAdFailedToLoad(zzccu.zzd(th));
            zzcwj.zzc(th, "RewardedAdLoader.onFailure");
            this.zzgdg.zzalq();
        }
    }
}
