package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzayn implements Runnable {
    private final /* synthetic */ zzayh zzdxr;
    private final /* synthetic */ int zzdxv;
    private final /* synthetic */ int zzdxw;

    zzayn(zzayh zzayhVar, int i2, int i3) {
        this.zzdxr = zzayhVar;
        this.zzdxv = i2;
        this.zzdxw = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdxr.zzdxp != null) {
            this.zzdxr.zzdxp.zzj(this.zzdxv, this.zzdxw);
        }
    }
}
