package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzayj implements Runnable {
    private final /* synthetic */ zzayh zzdxr;

    zzayj(zzayh zzayhVar) {
        this.zzdxr = zzayhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdxr.zzdxp != null) {
            this.zzdxr.zzdxp.zzel();
        }
    }
}
