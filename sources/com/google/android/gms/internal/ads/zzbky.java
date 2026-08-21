package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbky implements zzdcz<zzbkq> {
    private final /* synthetic */ zzdcz zzffs;
    private final /* synthetic */ zzbkv zzfft;

    zzbky(zzbkv zzbkvVar, zzdcz zzdczVar) {
        this.zzfft = zzbkvVar;
        this.zzffs = zzdczVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzbkq zzbkqVar) {
        this.zzfft.zza(zzbkqVar.zzffk, this.zzffs);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        this.zzffs.zzb(th);
        this.zzfft.zzafn();
    }
}
