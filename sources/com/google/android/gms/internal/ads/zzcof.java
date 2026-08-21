package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcof implements zzcru<zzcog> {
    private final zzcwe zzfga;
    private final zzddl zzfoa;

    public zzcof(zzddl zzddlVar, zzcwe zzcweVar) {
        this.zzfoa = zzddlVar;
        this.zzfga = zzcweVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcog> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcoi
            private final zzcof zzgek;

            {
                this.zzgek = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgek.zzalx();
            }
        });
    }

    final /* synthetic */ zzcog zzalx() {
        return new zzcog(this.zzfga.zzgkk);
    }
}
