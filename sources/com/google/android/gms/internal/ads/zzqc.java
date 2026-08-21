package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzqc implements Runnable {
    private final /* synthetic */ zzpz zzbpy;
    private final /* synthetic */ View zzbpz;

    zzqc(zzpz zzpzVar, View view) {
        this.zzbpy = zzpzVar;
        this.zzbpz = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbpy.zzi(this.zzbpz);
    }
}
