package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(19)
public class zzauy extends zzauv {
    @Override // com.google.android.gms.internal.ads.zzauv, com.google.android.gms.internal.ads.zzaur
    public final boolean isAttachedToWindow(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final ViewGroup.LayoutParams zzvr() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
