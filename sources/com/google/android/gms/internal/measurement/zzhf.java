package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzhf {
    private static final Class<?> zza = zzd();
    private static final zzhv<?, ?> zzb = zza(false);
    private static final zzhv<?, ?> zzc = zza(true);
    private static final zzhv<?, ?> zzd = new zzhx();

    static int zza(int i2, Object obj, zzhd zzhdVar) {
        return obj instanceof zzft ? zzen.zza(i2, (zzft) obj) : zzen.zzb(i2, (zzgo) obj, zzhdVar);
    }

    static int zza(int i2, List<?> list) {
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int iZze = zzen.zze(i2) * size;
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            while (i3 < size) {
                Object objZzb = zzfvVar.zzb(i3);
                iZze += objZzb instanceof zzdu ? zzen.zzb((zzdu) objZzb) : zzen.zzb((String) objZzb);
                i3++;
            }
        } else {
            while (i3 < size) {
                Object obj = list.get(i3);
                iZze += obj instanceof zzdu ? zzen.zzb((zzdu) obj) : zzen.zzb((String) obj);
                i3++;
            }
        }
        return iZze;
    }

    static int zza(int i2, List<?> list, zzhd zzhdVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZze = zzen.zze(i2) * size;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = list.get(i3);
            iZze += obj instanceof zzft ? zzen.zza((zzft) obj) : zzen.zza((zzgo) obj, zzhdVar);
        }
        return iZze;
    }

    static int zza(int i2, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zza(list) + (list.size() * zzen.zze(i2));
    }

    static int zza(List<Long> list) {
        int iZzd;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgc) {
            zzgc zzgcVar = (zzgc) list;
            iZzd = 0;
            while (i2 < size) {
                iZzd += zzen.zzd(zzgcVar.zzb(i2));
                i2++;
            }
        } else {
            iZzd = 0;
            while (i2 < size) {
                iZzd += zzen.zzd(list.get(i2).longValue());
                i2++;
            }
        }
        return iZzd;
    }

    public static zzhv<?, ?> zza() {
        return zzb;
    }

    private static zzhv<?, ?> zza(boolean z) {
        try {
            Class<?> clsZze = zze();
            if (clsZze == null) {
                return null;
            }
            return (zzhv) clsZze.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    static <UT, UB> UB zza(int i2, int i3, UB ub, zzhv<UT, UB> zzhvVar) {
        if (ub == null) {
            ub = zzhvVar.zza();
        }
        zzhvVar.zza(ub, i2, i3);
        return ub;
    }

    static <UT, UB> UB zza(int i2, List<Integer> list, zzfk zzfkVar, UB ub, zzhv<UT, UB> zzhvVar) {
        UB ub2;
        int iIntValue;
        if (zzfkVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int iIntValue2 = list.get(i4).intValue();
                if (zzfkVar.zza(iIntValue2)) {
                    if (i4 != i3) {
                        list.set(i3, Integer.valueOf(iIntValue2));
                    }
                    i3++;
                } else {
                    ub2 = (UB) zza(i2, iIntValue2, ub2, zzhvVar);
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
                    if (!zzfkVar.zza(iIntValue)) {
                        break;
                    }
                }
                ub = (UB) zza(i2, iIntValue, ub2, zzhvVar);
                it.remove();
            }
        }
        return ub2;
    }

    public static void zza(int i2, List<String> list, zzis zzisVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zza(i2, list);
    }

    public static void zza(int i2, List<?> list, zzis zzisVar, zzhd zzhdVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zza(i2, list, zzhdVar);
    }

    public static void zza(int i2, List<Double> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzg(i2, list, z);
    }

    static <T, FT extends zzey<FT>> void zza(zzes<FT> zzesVar, T t, T t2) {
        zzew<T> zzewVarZza = zzesVar.zza(t2);
        if (zzewVarZza.zza.isEmpty()) {
            return;
        }
        zzesVar.zzb(t).zza((zzew) zzewVarZza);
    }

    static <T> void zza(zzgh zzghVar, T t, T t2, long j2) {
        zzib.zza(t, j2, zzghVar.zza(zzib.zzf(t, j2), zzib.zzf(t2, j2)));
    }

    static <T, UT, UB> void zza(zzhv<UT, UB> zzhvVar, T t, T t2) {
        zzhvVar.zza(t, zzhvVar.zzc(zzhvVar.zzb(t), zzhvVar.zzb(t2)));
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (!zzfd.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static int zzb(int i2, List<zzdu> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZze = size * zzen.zze(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZze += zzen.zzb(list.get(i3));
        }
        return iZze;
    }

    static int zzb(int i2, List<zzgo> list, zzhd zzhdVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzc = 0;
        for (int i3 = 0; i3 < size; i3++) {
            iZzc += zzen.zzc(i2, list.get(i3), zzhdVar);
        }
        return iZzc;
    }

    static int zzb(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzen.zze(i2));
    }

    static int zzb(List<Long> list) {
        int iZze;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgc) {
            zzgc zzgcVar = (zzgc) list;
            iZze = 0;
            while (i2 < size) {
                iZze += zzen.zze(zzgcVar.zzb(i2));
                i2++;
            }
        } else {
            iZze = 0;
            while (i2 < size) {
                iZze += zzen.zze(list.get(i2).longValue());
                i2++;
            }
        }
        return iZze;
    }

    public static zzhv<?, ?> zzb() {
        return zzc;
    }

    public static void zzb(int i2, List<zzdu> list, zzis zzisVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzb(i2, list);
    }

    public static void zzb(int i2, List<?> list, zzis zzisVar, zzhd zzhdVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzb(i2, list, zzhdVar);
    }

    public static void zzb(int i2, List<Float> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzf(i2, list, z);
    }

    static int zzc(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzc(list) + (size * zzen.zze(i2));
    }

    static int zzc(List<Long> list) {
        int iZzf;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgc) {
            zzgc zzgcVar = (zzgc) list;
            iZzf = 0;
            while (i2 < size) {
                iZzf += zzen.zzf(zzgcVar.zzb(i2));
                i2++;
            }
        } else {
            iZzf = 0;
            while (i2 < size) {
                iZzf += zzen.zzf(list.get(i2).longValue());
                i2++;
            }
        }
        return iZzf;
    }

    public static zzhv<?, ?> zzc() {
        return zzd;
    }

    public static void zzc(int i2, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzc(i2, list, z);
    }

    static int zzd(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzd(list) + (size * zzen.zze(i2));
    }

    static int zzd(List<Integer> list) {
        int iZzk;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfg) {
            zzfg zzfgVar = (zzfg) list;
            iZzk = 0;
            while (i2 < size) {
                iZzk += zzen.zzk(zzfgVar.zzc(i2));
                i2++;
            }
        } else {
            iZzk = 0;
            while (i2 < size) {
                iZzk += zzen.zzk(list.get(i2).intValue());
                i2++;
            }
        }
        return iZzk;
    }

    private static Class<?> zzd() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zzd(int i2, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzd(i2, list, z);
    }

    static int zze(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzen.zze(i2));
    }

    static int zze(List<Integer> list) {
        int iZzf;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfg) {
            zzfg zzfgVar = (zzfg) list;
            iZzf = 0;
            while (i2 < size) {
                iZzf += zzen.zzf(zzfgVar.zzc(i2));
                i2++;
            }
        } else {
            iZzf = 0;
            while (i2 < size) {
                iZzf += zzen.zzf(list.get(i2).intValue());
                i2++;
            }
        }
        return iZzf;
    }

    private static Class<?> zze() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zze(int i2, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzn(i2, list, z);
    }

    static int zzf(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzf(list) + (size * zzen.zze(i2));
    }

    static int zzf(List<Integer> list) {
        int iZzg;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfg) {
            zzfg zzfgVar = (zzfg) list;
            iZzg = 0;
            while (i2 < size) {
                iZzg += zzen.zzg(zzfgVar.zzc(i2));
                i2++;
            }
        } else {
            iZzg = 0;
            while (i2 < size) {
                iZzg += zzen.zzg(list.get(i2).intValue());
                i2++;
            }
        }
        return iZzg;
    }

    public static void zzf(int i2, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zze(i2, list, z);
    }

    static int zzg(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzen.zze(i2));
    }

    static int zzg(List<Integer> list) {
        int iZzh;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfg) {
            zzfg zzfgVar = (zzfg) list;
            iZzh = 0;
            while (i2 < size) {
                iZzh += zzen.zzh(zzfgVar.zzc(i2));
                i2++;
            }
        } else {
            iZzh = 0;
            while (i2 < size) {
                iZzh += zzen.zzh(list.get(i2).intValue());
                i2++;
            }
        }
        return iZzh;
    }

    public static void zzg(int i2, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzl(i2, list, z);
    }

    static int zzh(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzen.zzi(i2, 0);
    }

    static int zzh(List<?> list) {
        return list.size() << 2;
    }

    public static void zzh(int i2, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zza(i2, list, z);
    }

    static int zzi(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzen.zzg(i2, 0L);
    }

    static int zzi(List<?> list) {
        return list.size() << 3;
    }

    public static void zzi(int i2, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzj(i2, list, z);
    }

    static int zzj(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzen.zzb(i2, true);
    }

    static int zzj(List<?> list) {
        return list.size();
    }

    public static void zzj(int i2, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzm(i2, list, z);
    }

    public static void zzk(int i2, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzb(i2, list, z);
    }

    public static void zzl(int i2, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzk(i2, list, z);
    }

    public static void zzm(int i2, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzh(i2, list, z);
    }

    public static void zzn(int i2, List<Boolean> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzi(i2, list, z);
    }
}
