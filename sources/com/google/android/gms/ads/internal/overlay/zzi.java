package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbbw;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class zzi {
    public final int index;
    public final ViewGroup parent;
    public final ViewGroup.LayoutParams zzdhr;
    public final Context zzlk;

    public zzi(zzbbw zzbbwVar) throws zzg {
        this.zzdhr = zzbbwVar.getLayoutParams();
        ViewParent parent = zzbbwVar.getParent();
        this.zzlk = zzbbwVar.zzzk();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zzg("Could not get the parent of the WebView for an overlay.");
        }
        this.parent = (ViewGroup) parent;
        this.index = this.parent.indexOfChild(zzbbwVar.getView());
        this.parent.removeView(zzbbwVar.getView());
        zzbbwVar.zzas(true);
    }
}
