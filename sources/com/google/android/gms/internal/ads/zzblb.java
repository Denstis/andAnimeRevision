package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzblb implements zzdcz<zzbkk> {
    private final /* synthetic */ zzdcz zzffs;
    private final /* synthetic */ zzbkv zzfft;

    zzblb(zzbkv zzbkvVar, zzdcz zzdczVar) {
        this.zzfft = zzbkvVar;
        this.zzffs = zzdczVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzbkk zzbkkVar) {
        this.zzfft.zzafn();
        this.zzffs.onSuccess(zzbkkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        this.zzfft.zzafn();
        this.zzffs.zzb(th);
    }
}
