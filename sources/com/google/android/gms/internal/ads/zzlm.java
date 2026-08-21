package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzlm implements Runnable {
    private final /* synthetic */ zzli zzazs;
    private final /* synthetic */ IOException zzbay;

    zzlm(zzli zzliVar, IOException iOException) {
        this.zzazs = zzliVar;
        this.zzbay = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzazs.zzazu.zzb(this.zzbay);
    }
}
