package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzayl implements Runnable {
    private final /* synthetic */ zzayh zzdxr;
    private final /* synthetic */ String zzdxt;
    private final /* synthetic */ String zzdxu;

    zzayl(zzayh zzayhVar, String str, String str2) {
        this.zzdxr = zzayhVar;
        this.zzdxt = str;
        this.zzdxu = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdxr.zzdxp != null) {
            this.zzdxr.zzdxp.zzn(this.zzdxt, this.zzdxu);
        }
    }
}
