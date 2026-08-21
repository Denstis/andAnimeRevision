package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzbca implements Runnable {
    private final /* synthetic */ View val$view;
    private final /* synthetic */ zzasi zzefc;
    private final /* synthetic */ zzbbv zzefd;
    private final /* synthetic */ int zzefe;

    zzbca(zzbbv zzbbvVar, View view, zzasi zzasiVar, int i2) {
        this.zzefd = zzbbvVar;
        this.val$view = view;
        this.zzefc = zzasiVar;
        this.zzefe = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzefd.zza(this.val$view, this.zzefc, this.zzefe - 1);
    }
}
