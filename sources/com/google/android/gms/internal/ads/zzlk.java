package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzlk implements Runnable {
    private final /* synthetic */ zzli zzazs;

    zzlk(zzli zzliVar) {
        this.zzazs = zzliVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzazs.zzaei) {
            return;
        }
        this.zzazs.zzbaf.zza(this.zzazs);
    }
}
