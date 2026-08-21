package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzga extends zzfy {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzga() {
        super();
    }

    private static <L> List<L> zza(Object obj, long j2, int i2) {
        List<L> listZza;
        Object obj2;
        List<L> listZzc = zzc(obj, j2);
        if (!listZzc.isEmpty()) {
            if (zza.isAssignableFrom(listZzc.getClass())) {
                ArrayList arrayList = new ArrayList(listZzc.size() + i2);
                arrayList.addAll(listZzc);
                obj2 = arrayList;
            } else if (listZzc instanceof zzia) {
                zzfw zzfwVar = new zzfw(listZzc.size() + i2);
                zzfwVar.addAll((zzia) listZzc);
                obj2 = zzfwVar;
            } else {
                if (!(listZzc instanceof zzha) || !(listZzc instanceof zzfl)) {
                    return listZzc;
                }
                zzfl zzflVar = (zzfl) listZzc;
                if (zzflVar.zza()) {
                    return listZzc;
                }
                listZza = zzflVar.zza(listZzc.size() + i2);
            }
            zzib.zza(obj, j2, obj2);
            return (List<L>) obj2;
        }
        listZza = listZzc instanceof zzfv ? new zzfw(i2) : ((listZzc instanceof zzha) && (listZzc instanceof zzfl)) ? ((zzfl) listZzc).zza(i2) : new ArrayList<>(i2);
        zzib.zza(obj, j2, listZza);
        return listZza;
    }

    private static <E> List<E> zzc(Object obj, long j2) {
        return (List) zzib.zzf(obj, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    final <L> List<L> zza(Object obj, long j2) {
        return zza(obj, j2, 10);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    final <E> void zza(Object obj, Object obj2, long j2) {
        List listZzc = zzc(obj2, j2);
        List listZza = zza(obj, j2, listZzc.size());
        int size = listZza.size();
        int size2 = listZzc.size();
        if (size > 0 && size2 > 0) {
            listZza.addAll(listZzc);
        }
        if (size > 0) {
            listZzc = listZza;
        }
        zzib.zza(obj, j2, listZzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzfy
    final void zzb(Object obj, long j2) {
        Object objUnmodifiableList;
        List list = (List) zzib.zzf(obj, j2);
        if (list instanceof zzfv) {
            objUnmodifiableList = ((zzfv) list).g_();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzha) && (list instanceof zzfl)) {
                zzfl zzflVar = (zzfl) list;
                if (zzflVar.zza()) {
                    zzflVar.h_();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzib.zza(obj, j2, objUnmodifiableList);
    }
}
