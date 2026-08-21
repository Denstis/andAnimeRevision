package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class zzbpm<ListenerT> {
    private final Map<ListenerT, Executor> zzfhj = new HashMap();

    protected zzbpm(Set<zzbqs<ListenerT>> set) {
        zzb(set);
    }

    private final synchronized void zzb(Set<zzbqs<ListenerT>> set) {
        Iterator<zzbqs<ListenerT>> it = set.iterator();
        while (it.hasNext()) {
            zza(it.next());
        }
    }

    protected final synchronized void zza(final zzbpo<ListenerT> zzbpoVar) {
        for (Map.Entry<ListenerT, Executor> entry : this.zzfhj.entrySet()) {
            final ListenerT key = entry.getKey();
            entry.getValue().execute(new Runnable(zzbpoVar, key) { // from class: com.google.android.gms.internal.ads.zzbpl
                private final Object zzdbp;
                private final zzbpo zzfhi;

                {
                    this.zzfhi = zzbpoVar;
                    this.zzdbp = key;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        this.zzfhi.zzp(this.zzdbp);
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzq.zzkn().zzb(th, "EventEmitter.notify");
                        zzaug.zza("Event emitter exception.", th);
                    }
                }
            });
        }
    }

    public final synchronized void zza(zzbqs<ListenerT> zzbqsVar) {
        zza(zzbqsVar.zzfhz, zzbqsVar.executor);
    }

    public final synchronized void zza(ListenerT listenert, Executor executor) {
        this.zzfhj.put(listenert, executor);
    }
}
