package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcqc implements zzcru<zzcpz> {
    private final zzcvp zzfbb;
    private final zzddl zzfoa;

    public zzcqc(zzddl zzddlVar, zzcvp zzcvpVar) {
        this.zzfoa = zzddlVar;
        this.zzfbb = zzcvpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcpz> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcqb
            private final zzcqc zzgfi;

            {
                this.zzgfi = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgfi.zzamb();
            }
        });
    }

    final /* synthetic */ zzcpz zzamb() {
        return new zzcpz(this.zzfbb);
    }
}
