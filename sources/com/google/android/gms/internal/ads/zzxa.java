package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzxa extends zzuu {
    private final /* synthetic */ zzxb zzcel;

    zzxa(zzxb zzxbVar) {
        this.zzcel = zzxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuu, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i2) {
        this.zzcel.zzcen.zza(this.zzcel.zzde());
        super.onAdFailedToLoad(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzuu, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
    }
}
