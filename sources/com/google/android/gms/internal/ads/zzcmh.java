package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcmh implements zzdcz<zzbio> {
    private final /* synthetic */ zzbjn zzgck;
    private final /* synthetic */ zzcme zzgcl;

    zzcmh(zzcme zzcmeVar, zzbjn zzbjnVar) {
        this.zzgcl = zzcmeVar;
        this.zzgck = zzbjnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzbio zzbioVar) {
        zzbio zzbioVar2 = zzbioVar;
        synchronized (this.zzgcl) {
            zzcme.zza(this.zzgcl, (zzddi) null);
            if (this.zzgcl.zzgbk != null) {
                this.zzgcl.zzgbk.destroy();
            }
            this.zzgcl.zzgbk = zzbioVar2;
            this.zzgcl.zzfdl.removeAllViews();
            this.zzgcl.zzfdl.addView(zzbioVar2.zzaeu());
            zzbioVar2.zzafa();
            this.zzgcl.zzgcf.zzdd(zzbioVar2.zzaez());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        synchronized (this.zzgcl) {
            zzcme.zza(this.zzgcl, (zzddi) null);
            this.zzgck.zzacb().onAdFailedToLoad(zzccu.zzd(th));
            this.zzgcl.zzgcf.zzdd(60);
            zzcwj.zzc(th, "BannerAdManagerShim.onFailure");
        }
    }
}
