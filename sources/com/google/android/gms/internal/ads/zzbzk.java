package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbzk implements com.google.android.gms.ads.internal.zzi {
    private final /* synthetic */ zzbzl zzfqm;

    zzbzk(zzbzl zzbzlVar) {
        this.zzfqm = zzbzlVar;
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjp() {
        this.zzfqm.zzfqn.onPause();
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjq() {
        this.zzfqm.zzfqn.onResume();
    }
}
