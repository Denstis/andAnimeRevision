package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzayo implements Runnable {
    private final /* synthetic */ zzayh zzdxr;

    zzayo(zzayh zzayhVar) {
        this.zzdxr = zzayhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdxr.zzdxp != null) {
            this.zzdxr.zzdxp.zzwv();
        }
    }
}
