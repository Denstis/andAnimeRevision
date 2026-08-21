package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzbdo implements Runnable {
    private final /* synthetic */ View val$view;
    private final /* synthetic */ zzasi zzefc;
    private final /* synthetic */ int zzefe;
    private final /* synthetic */ zzbdm zzeib;

    zzbdo(zzbdm zzbdmVar, View view, zzasi zzasiVar, int i2) {
        this.zzeib = zzbdmVar;
        this.val$view = view;
        this.zzefc = zzasiVar;
        this.zzefe = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeib.zza(this.val$view, this.zzefc, this.zzefe - 1);
    }
}
