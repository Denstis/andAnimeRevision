package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzays implements Runnable {
    private final /* synthetic */ zzayh zzdxr;

    zzays(zzayh zzayhVar) {
        this.zzdxr = zzayhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdxr.zzdxp != null) {
            this.zzdxr.zzdxp.onPaused();
        }
    }
}
