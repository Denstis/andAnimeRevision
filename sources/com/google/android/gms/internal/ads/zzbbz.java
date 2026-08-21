package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzbbz implements View.OnAttachStateChangeListener {
    private final /* synthetic */ zzasi zzefc;
    private final /* synthetic */ zzbbv zzefd;

    zzbbz(zzbbv zzbbvVar, zzasi zzasiVar) {
        this.zzefd = zzbbvVar;
        this.zzefc = zzasiVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzefd.zza(view, this.zzefc, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
