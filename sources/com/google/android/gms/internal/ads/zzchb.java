package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
final class zzchb extends zzalq {
    private zzcgf<zzamd, zzchk> zzfxs;
    private final /* synthetic */ zzcgw zzfxt;

    private zzchb(zzcgw zzcgwVar, zzcgf<zzamd, zzchk> zzcgfVar) {
        this.zzfxt = zzcgwVar;
        this.zzfxs = zzcgfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzab(IObjectWrapper iObjectWrapper) {
        this.zzfxt.view = (View) ObjectWrapper.unwrap(iObjectWrapper);
        ((zzchk) this.zzfxs.zzfxg).onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzdg(String str) {
        ((zzchk) this.zzfxs.zzfxg).onAdFailedToLoad(0);
    }
}
