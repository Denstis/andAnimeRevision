package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
final class zzbwk implements zzdal<zzo, Bitmap> {
    private final /* synthetic */ double zzfnw;
    private final /* synthetic */ boolean zzfnx;
    private final /* synthetic */ zzbwl zzfny;

    zzbwk(zzbwl zzbwlVar, double d2, boolean z) {
        this.zzfny = zzbwlVar;
        this.zzfnw = d2;
        this.zzfnx = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdal
    public final /* synthetic */ Bitmap apply(zzo zzoVar) {
        return this.zzfny.zza(zzoVar.data, this.zzfnw, this.zzfnx);
    }
}
