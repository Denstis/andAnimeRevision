package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbhg implements zzaer<Object> {
    final /* synthetic */ zzbhf zzfbl;

    zzbhg(zzbhf zzbhfVar) {
        this.zzfbl = zzbhfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zzfbl.zzl(map)) {
            this.zzfbl.executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbhj
                private final zzbhg zzfbs;

                {
                    this.zzfbs = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfbs.zzfbl.zzfbn.zzaek();
                }
            });
        }
    }
}
