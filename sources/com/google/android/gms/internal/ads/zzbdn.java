package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzbdn implements View.OnAttachStateChangeListener {
    private final /* synthetic */ zzasi zzefc;
    private final /* synthetic */ zzbdm zzeib;

    zzbdn(zzbdm zzbdmVar, zzasi zzasiVar) {
        this.zzeib = zzbdmVar;
        this.zzefc = zzasiVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzeib.zza(view, this.zzefc, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
