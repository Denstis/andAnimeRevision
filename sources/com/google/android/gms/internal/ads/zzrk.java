package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzrk implements Runnable {
    private final /* synthetic */ zzrh zzbrg;

    zzrk(zzrh zzrhVar) {
        this.zzbrg = zzrhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbrg.disconnect();
    }
}
