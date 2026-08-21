package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcpk implements zzcru<zzcpl> {
    private final zzddl zzfoa;
    private final Context zzzc;

    zzcpk(Context context, zzddl zzddlVar) {
        this.zzzc = context;
        this.zzfoa = zzddlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcpl> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcpj
            private final zzcpk zzgfd;

            {
                this.zzgfd = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgfd.zzama();
            }
        });
    }

    final /* synthetic */ zzcpl zzama() {
        com.google.android.gms.ads.internal.zzq.zzkj();
        String strZzaz = zzaul.zzaz(this.zzzc);
        com.google.android.gms.ads.internal.zzq.zzkj();
        return new zzcpl(strZzaz, zzaul.zzba(this.zzzc));
    }
}
