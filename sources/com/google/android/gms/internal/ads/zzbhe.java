package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbhe implements zzaer<Object> {
    final /* synthetic */ zzbhf zzfbl;

    zzbhe(zzbhf zzbhfVar) {
        this.zzfbl = zzbhfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zzfbl.zzl(map)) {
            this.zzfbl.executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbhh
                private final zzbhe zzfbq;

                {
                    this.zzfbq = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfbq.zzfbl.zzfbn.zzaei();
                }
            });
        }
    }
}
