package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class zzbrx {
    private final zzbbw zzczi;
    private final zzbsu zzfim;

    public zzbrx(zzbsu zzbsuVar) {
        this(zzbsuVar, null);
    }

    public zzbrx(zzbsu zzbsuVar, zzbbw zzbbwVar) {
        this.zzfim = zzbsuVar;
        this.zzczi = zzbbwVar;
    }

    public Set<zzbqs<zzbna>> zza(zzbsz zzbszVar) {
        return Collections.singleton(zzbqs.zzb(zzbszVar, zzaxn.zzdwn));
    }

    public final zzbbw zzaeo() {
        return this.zzczi;
    }

    public final zzbsu zzagu() {
        return this.zzfim;
    }

    public final View zzagv() {
        zzbbw zzbbwVar = this.zzczi;
        if (zzbbwVar == null) {
            return null;
        }
        return zzbbwVar.getWebView();
    }

    public final zzbqs<zzbpg> zzb(Executor executor) {
        final zzbbw zzbbwVar = this.zzczi;
        return new zzbqs<>(new zzbpg(zzbbwVar) { // from class: com.google.android.gms.internal.ads.zzbrz
            private final zzbbw zzehv;

            {
                this.zzehv = zzbbwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbpg
            public final void zzafe() {
                zzbbw zzbbwVar2 = this.zzehv;
                if (zzbbwVar2.zzzl() != null) {
                    zzbbwVar2.zzzl().close();
                }
            }
        }, executor);
    }
}
