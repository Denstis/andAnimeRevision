package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [O] */
/* JADX INFO: loaded from: classes.dex */
final class zzcyb<O> implements zzdcz<O> {
    private final /* synthetic */ zzcxp zzglw;
    private final /* synthetic */ zzcxy zzglx;

    zzcyb(zzcxy zzcxyVar, zzcxp zzcxpVar) {
        this.zzglx = zzcxyVar;
        this.zzglw = zzcxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void onSuccess(O o) {
        this.zzglx.zzglr.zzglp.zzc(this.zzglw);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        this.zzglx.zzglr.zzglp.zza(this.zzglw, th);
    }
}
