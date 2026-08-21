package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class zzcmo {
    private final zzbuy zzgcx;
    private final zzcmi zzgcy = new zzcmi();
    private final zzbnb zzgcz;

    public zzcmo(zzbuy zzbuyVar) {
        this.zzgcx = zzbuyVar;
        final zzcmi zzcmiVar = this.zzgcy;
        final zzagj zzagjVarZzaii = this.zzgcx.zzaii();
        this.zzgcz = new zzbnb(zzcmiVar, zzagjVarZzaii) { // from class: com.google.android.gms.internal.ads.zzcmr
            private final zzcmi zzgdb;
            private final zzagj zzgdc;

            {
                this.zzgdb = zzcmiVar;
                this.zzgdc = zzagjVarZzaii;
            }

            @Override // com.google.android.gms.internal.ads.zzbnb
            public final void onAdFailedToLoad(int i2) {
                zzcmi zzcmiVar2 = this.zzgdb;
                zzagj zzagjVar = this.zzgdc;
                zzcmiVar2.onAdFailedToLoad(i2);
                if (zzagjVar != null) {
                    try {
                        zzagjVar.zzck(i2);
                    } catch (RemoteException e2) {
                        zzaxi.zze("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }

    public final zzbth zzalk() {
        return new zzbth(this.zzgcx, this.zzgcy.zzalh());
    }

    public final zzbna zzall() {
        return this.zzgcy;
    }

    public final zzbog zzalm() {
        return this.zzgcy;
    }

    public final zzbnb zzaln() {
        return this.zzgcz;
    }

    public final zzbnj zzalo() {
        return this.zzgcy;
    }

    public final zztp zzalp() {
        return this.zzgcy;
    }

    public final void zzc(zzuy zzuyVar) {
        this.zzgcy.zzc(zzuyVar);
    }
}
