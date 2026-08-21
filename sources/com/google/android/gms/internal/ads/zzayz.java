package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzayz implements Runnable {
    private final /* synthetic */ zzayw zzdyr;
    private final /* synthetic */ boolean zzdyu;

    zzayz(zzayw zzaywVar, boolean z) {
        this.zzdyr = zzaywVar;
        this.zzdyu = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdyr.zzd("windowVisibilityChanged", "isVisible", String.valueOf(this.zzdyu));
    }
}
