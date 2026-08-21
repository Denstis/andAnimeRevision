package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* JADX INFO: loaded from: classes.dex */
final class zzbya implements zzaaw {
    private final /* synthetic */ zzbyb zzfpl;

    zzbya(zzbyb zzbybVar) {
        this.zzfpl = zzbybVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final void zzc(MotionEvent motionEvent) {
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final void zzqk() {
        this.zzfpl.zzfml.zzfp(NativeCustomTemplateAd.ASSET_NAME_VIDEO);
    }
}
