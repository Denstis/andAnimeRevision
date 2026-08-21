package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzcna implements zzdcz<zzcnl> {
    private final /* synthetic */ zzatd zzgdk;

    zzcna(zzcnb zzcnbVar, zzatd zzatdVar) {
        this.zzgdk = zzatdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzcnl zzcnlVar) {
        zzcnl zzcnlVar2 = zzcnlVar;
        try {
            this.zzgdk.zzm(zzcnlVar2.zzgdr, zzcnlVar2.zzgds);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        try {
            this.zzgdk.onError("Internal error.");
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }
}
