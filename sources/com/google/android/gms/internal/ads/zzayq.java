package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzayq implements Runnable {
    private final /* synthetic */ zzayh zzdxr;

    zzayq(zzayh zzayhVar) {
        this.zzdxr = zzayhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdxr.zzdxp != null) {
            this.zzdxr.zzdxp.onPaused();
            this.zzdxr.zzdxp.zzwy();
        }
    }
}
