package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
final class zzbvk implements zzaaw {
    private final /* synthetic */ zzbvz zzfmz;
    private final /* synthetic */ ViewGroup zzfna;
    private final /* synthetic */ zzbvj zzfnb;

    zzbvk(zzbvj zzbvjVar, zzbvz zzbvzVar, ViewGroup viewGroup) {
        this.zzfnb = zzbvjVar;
        this.zzfmz = zzbvzVar;
        this.zzfna = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final void zzc(MotionEvent motionEvent) {
        this.zzfmz.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final void zzqk() {
        zzbvj zzbvjVar = this.zzfnb;
        if (zzbvj.zza(this.zzfmz, zzbvh.zzfmp)) {
            this.zzfmz.onClick(this.zzfna);
        }
    }
}
