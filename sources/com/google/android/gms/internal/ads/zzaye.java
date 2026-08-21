package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
final class zzaye<T> implements zzdcz<T> {
    private final /* synthetic */ zzaxz zzdwx;
    private final /* synthetic */ zzaxx zzdwy;

    zzaye(zzayc zzaycVar, zzaxz zzaxzVar, zzaxx zzaxxVar) {
        this.zzdwx = zzaxzVar;
        this.zzdwy = zzaxxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void onSuccess(T t) {
        this.zzdwx.zzh(t);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        this.zzdwy.run();
    }
}
