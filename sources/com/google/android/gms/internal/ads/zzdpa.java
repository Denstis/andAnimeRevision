package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
final class zzdpa {
    private final ConcurrentHashMap<zzdoz, List<Throwable>> zzhfk = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzhfl = new ReferenceQueue<>();

    zzdpa() {
    }

    public final List<Throwable> zza(Throwable th, boolean z) {
        while (true) {
            Reference<? extends Throwable> referencePoll = this.zzhfl.poll();
            if (referencePoll == null) {
                break;
            }
            this.zzhfk.remove(referencePoll);
        }
        List<Throwable> list = this.zzhfk.get(new zzdoz(th, null));
        if (!z || list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> listPutIfAbsent = this.zzhfk.putIfAbsent(new zzdoz(th, this.zzhfl), vector);
        return listPutIfAbsent == null ? vector : listPutIfAbsent;
    }
}
