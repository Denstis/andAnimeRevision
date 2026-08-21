package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzarz implements zzdcz<Void> {
    private final /* synthetic */ zzddi zzdou;

    zzarz(zzarv zzarvVar, zzddi zzddiVar) {
        this.zzdou = zzddiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(Void r2) {
        zzarv.zzdog.remove(this.zzdou);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        zzarv.zzdog.remove(this.zzdou);
    }
}
