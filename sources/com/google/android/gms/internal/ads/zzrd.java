package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;

/* JADX INFO: loaded from: classes.dex */
public final class zzrd extends AppOpenAd {
    private final zzqw zzbqw;

    public zzrd(zzqw zzqwVar) {
        this.zzbqw = zzqwVar;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    protected final void zza(zzrc zzrcVar) {
        try {
            this.zzbqw.zza(zzrcVar);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    protected final zzvl zzdg() {
        try {
            return this.zzbqw.zzdg();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            return null;
        }
    }
}
