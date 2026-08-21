package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzdsx {
    private static final Class<?> zzhnx = zzbbm();
    private static final zzdtn<?, ?> zzhny = zzbk(false);
    private static final zzdtn<?, ?> zzhnz = zzbk(true);
    private static final zzdtn<?, ?> zzhoa = new zzdtp();

    static <UT, UB> UB zza(int i2, int i3, UB ub, zzdtn<UT, UB> zzdtnVar) {
        if (ub == null) {
            ub = zzdtnVar.zzbbw();
        }
        zzdtnVar.zza(ub, i2, i3);
        return ub;
    }

    static <UT, UB> UB zza(int i2, List<Integer> list, zzdrc zzdrcVar, UB ub, zzdtn<UT, UB> zzdtnVar) {
        UB ub2;
        int iIntValue;
        if (zzdrcVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int iIntValue2 = list.get(i4).intValue();
                if (zzdrcVar.zzf(iIntValue2)) {
                    if (i4 != i3) {
                        list.set(i3, Integer.valueOf(iIntValue2));
                    }
                    i3++;
                } else {
                    ub2 = (UB) zza(i2, iIntValue2, ub2, zzdtnVar);
                }
            }
            if (i3 != size) {
                list.subList(i3, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            loop1: while (true) {
                ub2 = ub;
                while (it.hasNext()) {
                    iIntValue = it.next().intValue();
                    if (!zzdrcVar.zzf(iIntValue)) {
                        break;
                    }
                }
                ub = (UB) zza(i2, iIntValue, ub2, zzdtnVar);
                it.remove();
            }
        }
        return ub2;
    }

    public static void zza(int i2, List<String> list, zzduk zzdukVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zza(i2, list);
    }

    public static void zza(int i2, List<?> list, zzduk zzdukVar, zzdsv zzdsvVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zza(i2, list, zzdsvVar);
    }

    public static void zza(int i2, List<Double> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzg(i2, list, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <T, FT extends zzdqo<FT>> void zza(zzdql<FT> zzdqlVar, T t, T t2) {
        zzdqm<T> zzdqmVarZzai = zzdqlVar.zzai(t2);
        if (zzdqmVarZzai.zzhhp.isEmpty()) {
            return;
        }
        zzdqlVar.zzaj(t).zza(zzdqmVarZzai);
    }

    static <T> void zza(zzdrz zzdrzVar, T t, T t2, long j2) {
        zzdtt.zza(t, j2, zzdrzVar.zze(zzdtt.zzp(t, j2), zzdtt.zzp(t2, j2)));
    }

    static <T, UT, UB> void zza(zzdtn<UT, UB> zzdtnVar, T t, T t2) {
        zzdtnVar.zzh(t, zzdtnVar.zzj(zzdtnVar.zzay(t), zzdtnVar.zzay(t2)));
    }

    static int zzaa(List<Long> list) {
        int iZzfd;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdru) {
            zzdru zzdruVar = (zzdru) list;
            iZzfd = 0;
            while (i2 < size) {
                iZzfd += zzdqf.zzfd(zzdruVar.getLong(i2));
                i2++;
            }
        } else {
            iZzfd = 0;
            while (i2 < size) {
                iZzfd += zzdqf.zzfd(list.get(i2).longValue());
                i2++;
            }
        }
        return iZzfd;
    }

    static int zzab(List<Long> list) {
        int iZzfe;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdru) {
            zzdru zzdruVar = (zzdru) list;
            iZzfe = 0;
            while (i2 < size) {
                iZzfe += zzdqf.zzfe(zzdruVar.getLong(i2));
                i2++;
            }
        } else {
            iZzfe = 0;
            while (i2 < size) {
                iZzfe += zzdqf.zzfe(list.get(i2).longValue());
                i2++;
            }
        }
        return iZzfe;
    }

    static int zzac(List<Long> list) {
        int iZzff;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdru) {
            zzdru zzdruVar = (zzdru) list;
            iZzff = 0;
            while (i2 < size) {
                iZzff += zzdqf.zzff(zzdruVar.getLong(i2));
                i2++;
            }
        } else {
            iZzff = 0;
            while (i2 < size) {
                iZzff += zzdqf.zzff(list.get(i2).longValue());
                i2++;
            }
        }
        return iZzff;
    }

    static int zzad(List<Integer> list) {
        int iZzgj;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdqy) {
            zzdqy zzdqyVar = (zzdqy) list;
            iZzgj = 0;
            while (i2 < size) {
                iZzgj += zzdqf.zzgj(zzdqyVar.getInt(i2));
                i2++;
            }
        } else {
            iZzgj = 0;
            while (i2 < size) {
                iZzgj += zzdqf.zzgj(list.get(i2).intValue());
                i2++;
            }
        }
        return iZzgj;
    }

    static int zzae(List<Integer> list) {
        int iZzge;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdqy) {
            zzdqy zzdqyVar = (zzdqy) list;
            iZzge = 0;
            while (i2 < size) {
                iZzge += zzdqf.zzge(zzdqyVar.getInt(i2));
                i2++;
            }
        } else {
            iZzge = 0;
            while (i2 < size) {
                iZzge += zzdqf.zzge(list.get(i2).intValue());
                i2++;
            }
        }
        return iZzge;
    }

    static int zzaf(List<Integer> list) {
        int iZzgf;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdqy) {
            zzdqy zzdqyVar = (zzdqy) list;
            iZzgf = 0;
            while (i2 < size) {
                iZzgf += zzdqf.zzgf(zzdqyVar.getInt(i2));
                i2++;
            }
        } else {
            iZzgf = 0;
            while (i2 < size) {
                iZzgf += zzdqf.zzgf(list.get(i2).intValue());
                i2++;
            }
        }
        return iZzgf;
    }

    static int zzag(List<Integer> list) {
        int iZzgg;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdqy) {
            zzdqy zzdqyVar = (zzdqy) list;
            iZzgg = 0;
            while (i2 < size) {
                iZzgg += zzdqf.zzgg(zzdqyVar.getInt(i2));
                i2++;
            }
        } else {
            iZzgg = 0;
            while (i2 < size) {
                iZzgg += zzdqf.zzgg(list.get(i2).intValue());
                i2++;
            }
        }
        return iZzgg;
    }

    static int zzah(List<?> list) {
        return list.size() << 2;
    }

    static int zzai(List<?> list) {
        return list.size() << 3;
    }

    static int zzaj(List<?> list) {
        return list.size();
    }

    public static void zzb(int i2, List<zzdpm> list, zzduk zzdukVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzb(i2, list);
    }

    public static void zzb(int i2, List<?> list, zzduk zzdukVar, zzdsv zzdsvVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzb(i2, list, zzdsvVar);
    }

    public static void zzb(int i2, List<Float> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzf(i2, list, z);
    }

    public static zzdtn<?, ?> zzbbj() {
        return zzhny;
    }

    public static zzdtn<?, ?> zzbbk() {
        return zzhnz;
    }

    public static zzdtn<?, ?> zzbbl() {
        return zzhoa;
    }

    private static Class<?> zzbbm() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzbbn() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static zzdtn<?, ?> zzbk(boolean z) {
        try {
            Class<?> clsZzbbn = zzbbn();
            if (clsZzbbn == null) {
                return null;
            }
            return (zzdtn) clsZzbbn.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    static int zzc(int i2, Object obj, zzdsv zzdsvVar) {
        return obj instanceof zzdrl ? zzdqf.zza(i2, (zzdrl) obj) : zzdqf.zzb(i2, (zzdsg) obj, zzdsvVar);
    }

    static int zzc(int i2, List<?> list) {
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzgd = zzdqf.zzgd(i2) * size;
        if (list instanceof zzdrn) {
            zzdrn zzdrnVar = (zzdrn) list;
            while (i3 < size) {
                Object objZzgq = zzdrnVar.zzgq(i3);
                iZzgd += objZzgq instanceof zzdpm ? zzdqf.zzda((zzdpm) objZzgq) : zzdqf.zzhj((String) objZzgq);
                i3++;
            }
        } else {
            while (i3 < size) {
                Object obj = list.get(i3);
                iZzgd += obj instanceof zzdpm ? zzdqf.zzda((zzdpm) obj) : zzdqf.zzhj((String) obj);
                i3++;
            }
        }
        return iZzgd;
    }

    static int zzc(int i2, List<?> list, zzdsv zzdsvVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzgd = zzdqf.zzgd(i2) * size;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = list.get(i3);
            iZzgd += obj instanceof zzdrl ? zzdqf.zza((zzdrl) obj) : zzdqf.zzb((zzdsg) obj, zzdsvVar);
        }
        return iZzgd;
    }

    public static void zzc(int i2, List<Long> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzc(i2, list, z);
    }

    static int zzd(int i2, List<zzdpm> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzgd = size * zzdqf.zzgd(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzgd += zzdqf.zzda(list.get(i3));
        }
        return iZzgd;
    }

    static int zzd(int i2, List<zzdsg> list, zzdsv zzdsvVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzc = 0;
        for (int i3 = 0; i3 < size; i3++) {
            iZzc += zzdqf.zzc(i2, list.get(i3), zzdsvVar);
        }
        return iZzc;
    }

    public static void zzd(int i2, List<Long> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzd(i2, list, z);
    }

    public static void zze(int i2, List<Long> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzn(i2, list, z);
    }

    public static void zzf(int i2, List<Long> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zze(i2, list, z);
    }

    public static void zzg(int i2, List<Long> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzl(i2, list, z);
    }

    static boolean zzg(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzh(int i2, List<Integer> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zza(i2, list, z);
    }

    public static void zzi(int i2, List<Integer> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzj(i2, list, z);
    }

    public static void zzi(Class<?> cls) {
        Class<?> cls2;
        if (!zzdqw.class.isAssignableFrom(cls) && (cls2 = zzhnx) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzj(int i2, List<Integer> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzm(i2, list, z);
    }

    public static void zzk(int i2, List<Integer> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzb(i2, list, z);
    }

    public static void zzl(int i2, List<Integer> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzk(i2, list, z);
    }

    public static void zzm(int i2, List<Integer> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzh(i2, list, z);
    }

    public static void zzn(int i2, List<Boolean> list, zzduk zzdukVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzdukVar.zzi(i2, list, z);
    }

    static int zzo(int i2, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzaa(list) + (list.size() * zzdqf.zzgd(i2));
    }

    static int zzp(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzab(list) + (size * zzdqf.zzgd(i2));
    }

    static int zzq(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzac(list) + (size * zzdqf.zzgd(i2));
    }

    static int zzr(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzad(list) + (size * zzdqf.zzgd(i2));
    }

    static int zzs(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzae(list) + (size * zzdqf.zzgd(i2));
    }

    static int zzt(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzaf(list) + (size * zzdqf.zzgd(i2));
    }

    static int zzu(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzag(list) + (size * zzdqf.zzgd(i2));
    }

    static int zzv(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdqf.zzah(i2, 0);
    }

    static int zzw(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdqf.zzm(i2, 0L);
    }

    static int zzx(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdqf.zzh(i2, true);
    }
}
