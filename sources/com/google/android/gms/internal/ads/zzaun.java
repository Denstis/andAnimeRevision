package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class zzaun implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzaul zzdta;

    zzaun(zzaul zzaulVar, Context context) {
        this.zzdta = zzaulVar;
        this.val$context = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzdta.zzdsv) {
            this.zzdta.zzber = zzaul.zzaq(this.val$context);
            this.zzdta.zzdsv.notifyAll();
        }
    }
}
