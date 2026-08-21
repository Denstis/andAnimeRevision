package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcef extends zzaox {
    private final /* synthetic */ zzcec zzfvc;

    protected zzcef(zzcec zzcecVar) {
        this.zzfvc = zzcecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final void zza(zzavq zzavqVar) {
        this.zzfvc.zzdbn.setException(new zzavp(zzavqVar.zzdtw, zzavqVar.errorCode));
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzfvc.zzdbn.set(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
