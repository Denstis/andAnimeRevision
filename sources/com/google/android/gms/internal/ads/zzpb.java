package com.google.android.gms.internal.ads;

import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
final class zzpb implements Runnable {
    private final /* synthetic */ zzov zzbjg;
    private final /* synthetic */ Surface zzbjj;

    zzpb(zzov zzovVar, Surface surface) {
        this.zzbjg = zzovVar;
        this.zzbjj = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbjg.zzbjf.zzb(this.zzbjj);
    }
}
