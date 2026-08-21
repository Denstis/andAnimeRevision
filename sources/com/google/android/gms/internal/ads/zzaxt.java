package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzaxt implements zzdcz<Object> {
    private final /* synthetic */ String zzdwr;

    zzaxt(String str) {
        this.zzdwr = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void onSuccess(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        com.google.android.gms.ads.internal.zzq.zzkn().zzb(th, this.zzdwr);
    }
}
