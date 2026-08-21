package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
final class zzayb<T> implements zzdcz<T> {
    private final /* synthetic */ zzayc zzdwu;

    zzayb(zzayc zzaycVar) {
        this.zzdwu = zzaycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void onSuccess(T t) {
        this.zzdwu.zzdww.set(1);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        this.zzdwu.zzdww.set(-1);
    }
}
