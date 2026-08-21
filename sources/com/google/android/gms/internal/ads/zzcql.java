package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcql implements zzcru<zzcqm> {
    private final zzddl zzfoa;
    private final Set<String> zzgef;
    private final Context zzlk;

    public zzcql(zzddl zzddlVar, Context context, Set<String> set) {
        this.zzfoa = zzddlVar;
        this.zzlk = context;
        this.zzgef = set;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcqm> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcqo
            private final zzcql zzgfm;

            {
                this.zzgfm = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgfm.zzamd();
            }
        });
    }

    final /* synthetic */ zzcqm zzamd() {
        return (((Boolean) zzuv.zzon().zzd(zzza.zzcqu)).booleanValue() && zzcqm.zzd(this.zzgef)) ? new zzcqm(com.google.android.gms.ads.internal.zzq.zzky().getVersion(this.zzlk)) : new zzcqm(null);
    }
}
