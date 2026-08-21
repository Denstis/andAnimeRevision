package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbay implements Iterable<zzbaw> {
    private final List<zzbaw> zzedg = new ArrayList();

    public static boolean zzc(zzazj zzazjVar) {
        zzbaw zzbawVarZzd = zzd(zzazjVar);
        if (zzbawVarZzd == null) {
            return false;
        }
        zzbawVarZzd.zzede.abort();
        return true;
    }

    static zzbaw zzd(zzazj zzazjVar) {
        for (zzbaw zzbawVar : com.google.android.gms.ads.internal.zzq.zzlf()) {
            if (zzbawVar.zzdya == zzazjVar) {
                return zzbawVar;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator<zzbaw> iterator() {
        return this.zzedg.iterator();
    }

    public final void zza(zzbaw zzbawVar) {
        this.zzedg.add(zzbawVar);
    }

    public final void zzb(zzbaw zzbawVar) {
        this.zzedg.remove(zzbawVar);
    }
}
