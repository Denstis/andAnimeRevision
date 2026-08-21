package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzn implements View.OnTouchListener {
    private final /* synthetic */ zzl zzblj;

    zzn(zzl zzlVar) {
        this.zzblj = zzlVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.zzblj.zzblq == null) {
            return false;
        }
        this.zzblj.zzblq.zzb(motionEvent);
        return false;
    }
}
