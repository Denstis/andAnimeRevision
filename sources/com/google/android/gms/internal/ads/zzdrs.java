package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzdrs extends zzdrq {
    private static final Class<?> zzhmn = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzdrs() {
        super();
    }

    private static <L> List<L> zza(Object obj, long j2, int i2) {
        List<L> listZzfl;
        Object obj2;
        List<L> listZzd = zzd(obj, j2);
        if (!listZzd.isEmpty()) {
            if (zzhmn.isAssignableFrom(listZzd.getClass())) {
                ArrayList arrayList = new ArrayList(listZzd.size() + i2);
                arrayList.addAll(listZzd);
                obj2 = arrayList;
            } else if (listZzd instanceof zzdts) {
                zzdro zzdroVar = new zzdro(listZzd.size() + i2);
                zzdroVar.addAll((zzdts) listZzd);
                obj2 = zzdroVar;
            } else {
                if (!(listZzd instanceof zzdss) || !(listZzd instanceof zzdrd)) {
                    return listZzd;
                }
                zzdrd zzdrdVar = (zzdrd) listZzd;
                if (zzdrdVar.zzaxi()) {
                    return listZzd;
                }
                listZzfl = zzdrdVar.zzfl(listZzd.size() + i2);
            }
            zzdtt.zza(obj, j2, obj2);
            return (List<L>) obj2;
        }
        listZzfl = listZzd instanceof zzdrn ? new zzdro(i2) : ((listZzd instanceof zzdss) && (listZzd instanceof zzdrd)) ? ((zzdrd) listZzd).zzfl(i2) : new ArrayList<>(i2);
        zzdtt.zza(obj, j2, listZzfl);
        return listZzfl;
    }

    private static <E> List<E> zzd(Object obj, long j2) {
        return (List) zzdtt.zzp(obj, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzdrq
    final <L> List<L> zza(Object obj, long j2) {
        return zza(obj, j2, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzdrq
    final <E> void zza(Object obj, Object obj2, long j2) {
        List listZzd = zzd(obj2, j2);
        List listZza = zza(obj, j2, listZzd.size());
        int size = listZza.size();
        int size2 = listZzd.size();
        if (size > 0 && size2 > 0) {
            listZza.addAll(listZzd);
        }
        if (size > 0) {
            listZzd = listZza;
        }
        zzdtt.zza(obj, j2, listZzd);
    }

    @Override // com.google.android.gms.internal.ads.zzdrq
    final void zzb(Object obj, long j2) {
        Object objUnmodifiableList;
        List list = (List) zzdtt.zzp(obj, j2);
        if (list instanceof zzdrn) {
            objUnmodifiableList = ((zzdrn) list).zzbao();
        } else {
            if (zzhmn.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzdss) && (list instanceof zzdrd)) {
                zzdrd zzdrdVar = (zzdrd) list;
                if (zzdrdVar.zzaxi()) {
                    zzdrdVar.zzaxj();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzdtt.zza(obj, j2, objUnmodifiableList);
    }
}
