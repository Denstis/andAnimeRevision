package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcdq implements zzdcz<zzcvz> {
    private final /* synthetic */ zzcdr zzfum;

    zzcdq(zzcdr zzcdrVar) {
        this.zzfum = zzcdrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzcvz zzcvzVar) {
        this.zzfum.zzfun.zza(zzcvzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
    }
}
