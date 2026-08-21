package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzbsx implements com.google.android.gms.ads.internal.overlay.zzo, zzbog {
    private final zzaxl zzblk;
    private final zzbbw zzczi;
    private final zzcvr zzfet;

    @VisibleForTesting
    private IObjectWrapper zzfeu;
    private final int zzfis;
    private final Context zzlk;

    public zzbsx(Context context, zzbbw zzbbwVar, zzcvr zzcvrVar, zzaxl zzaxlVar, int i2) {
        this.zzlk = context;
        this.zzczi = zzbbwVar;
        this.zzfet = zzcvrVar;
        this.zzblk = zzaxlVar;
        this.zzfis = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzbog
    public final void onAdLoaded() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsi() {
        this.zzfeu = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsj() {
        zzbbw zzbbwVar;
        if (this.zzfeu == null || (zzbbwVar = this.zzczi) == null) {
            return;
        }
        zzbbwVar.zza("onSdkImpression", new HashMap());
    }
}
