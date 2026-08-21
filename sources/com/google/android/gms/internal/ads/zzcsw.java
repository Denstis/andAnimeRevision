package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcsw implements zzcru<zzcst> {
    private zzddl zzfoa;
    zzrr zzghd;
    Context zzlk;

    public zzcsw(zzrr zzrrVar, zzddl zzddlVar, Context context) {
        this.zzghd = zzrrVar;
        this.zzfoa = zzddlVar;
        this.zzlk = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcst> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcsv
            private final zzcsw zzghc;

            {
                this.zzghc = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzcsw zzcswVar = this.zzghc;
                return new zzcst(zzcswVar.zzghd.zzf(zzcswVar.zzlk));
            }
        });
    }
}
