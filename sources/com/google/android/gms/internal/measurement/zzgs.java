package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzgs<T> implements zzhd<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzib.zzc();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgo zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzgw zzo;
    private final zzfy zzp;
    private final zzhv<?, ?> zzq;
    private final zzes<?> zzr;
    private final zzgh zzs;

    private zzgs(int[] iArr, Object[] objArr, int i2, int i3, zzgo zzgoVar, boolean z, boolean z2, int[] iArr2, int i4, int i5, zzgw zzgwVar, zzfy zzfyVar, zzhv<?, ?> zzhvVar, zzes<?> zzesVar, zzgh zzghVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i2;
        this.zzf = i3;
        this.zzi = zzgoVar instanceof zzfd;
        this.zzj = z;
        this.zzh = zzesVar != null && zzesVar.zza(zzgoVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i4;
        this.zzn = i5;
        this.zzo = zzgwVar;
        this.zzp = zzfyVar;
        this.zzq = zzhvVar;
        this.zzr = zzesVar;
        this.zzg = zzgoVar;
        this.zzs = zzghVar;
    }

    private final int zza(int i2, int i3) {
        if (i2 < this.zze || i2 > this.zzf) {
            return -1;
        }
        return zzb(i2, i3);
    }

    private static <UT, UB> int zza(zzhv<UT, UB> zzhvVar, T t) {
        return zzhvVar.zzf(zzhvVar.zzb(t));
    }

    private final int zza(T t, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, zzdt zzdtVar) throws zzfo {
        Object objValueOf;
        Object objValueOf2;
        int iZzb;
        long jZza;
        int iZze;
        Object objValueOf3;
        Unsafe unsafe = zzb;
        long j3 = this.zzc[i9 + 2] & 1048575;
        switch (i8) {
            case 51:
                if (i6 != 1) {
                    return i2;
                }
                objValueOf = Double.valueOf(zzdq.zzc(bArr, i2));
                unsafe.putObject(t, j2, objValueOf);
                iZzb = i2 + 8;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 52:
                if (i6 != 5) {
                    return i2;
                }
                objValueOf2 = Float.valueOf(zzdq.zzd(bArr, i2));
                unsafe.putObject(t, j2, objValueOf2);
                iZzb = i2 + 4;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 53:
            case 54:
                if (i6 != 0) {
                    return i2;
                }
                iZzb = zzdq.zzb(bArr, i2, zzdtVar);
                jZza = zzdtVar.zzb;
                objValueOf3 = Long.valueOf(jZza);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 55:
            case 62:
                if (i6 != 0) {
                    return i2;
                }
                iZzb = zzdq.zza(bArr, i2, zzdtVar);
                iZze = zzdtVar.zza;
                objValueOf3 = Integer.valueOf(iZze);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 56:
            case 65:
                if (i6 != 1) {
                    return i2;
                }
                objValueOf = Long.valueOf(zzdq.zzb(bArr, i2));
                unsafe.putObject(t, j2, objValueOf);
                iZzb = i2 + 8;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 57:
            case 64:
                if (i6 != 5) {
                    return i2;
                }
                objValueOf2 = Integer.valueOf(zzdq.zza(bArr, i2));
                unsafe.putObject(t, j2, objValueOf2);
                iZzb = i2 + 4;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 58:
                if (i6 != 0) {
                    return i2;
                }
                iZzb = zzdq.zzb(bArr, i2, zzdtVar);
                objValueOf3 = Boolean.valueOf(zzdtVar.zzb != 0);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 59:
                if (i6 != 2) {
                    return i2;
                }
                iZzb = zzdq.zza(bArr, i2, zzdtVar);
                int i10 = zzdtVar.zza;
                if (i10 == 0) {
                    objValueOf3 = "";
                    unsafe.putObject(t, j2, objValueOf3);
                    unsafe.putInt(t, j3, i5);
                    return iZzb;
                }
                if ((i7 & 536870912) != 0 && !zzie.zza(bArr, iZzb, iZzb + i10)) {
                    throw zzfo.zzh();
                }
                unsafe.putObject(t, j2, new String(bArr, iZzb, i10, zzff.zza));
                iZzb += i10;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 60:
                if (i6 != 2) {
                    return i2;
                }
                iZzb = zzdq.zza(zza(i9), bArr, i2, i3, zzdtVar);
                Object object = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                objValueOf3 = zzdtVar.zzc;
                if (object != null) {
                    objValueOf3 = zzff.zza(object, objValueOf3);
                }
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 61:
                if (i6 != 2) {
                    return i2;
                }
                iZzb = zzdq.zze(bArr, i2, zzdtVar);
                objValueOf3 = zzdtVar.zzc;
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 63:
                if (i6 != 0) {
                    return i2;
                }
                int iZza = zzdq.zza(bArr, i2, zzdtVar);
                int i11 = zzdtVar.zza;
                zzfk zzfkVarZzc = zzc(i9);
                if (zzfkVarZzc != null && !zzfkVarZzc.zza(i11)) {
                    zze(t).zza(i4, Long.valueOf(i11));
                    return iZza;
                }
                unsafe.putObject(t, j2, Integer.valueOf(i11));
                iZzb = iZza;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 66:
                if (i6 != 0) {
                    return i2;
                }
                iZzb = zzdq.zza(bArr, i2, zzdtVar);
                iZze = zzeg.zze(zzdtVar.zza);
                objValueOf3 = Integer.valueOf(iZze);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 67:
                if (i6 != 0) {
                    return i2;
                }
                iZzb = zzdq.zzb(bArr, i2, zzdtVar);
                jZza = zzeg.zza(zzdtVar.zzb);
                objValueOf3 = Long.valueOf(jZza);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 68:
                if (i6 != 3) {
                    return i2;
                }
                iZzb = zzdq.zza(zza(i9), bArr, i2, i3, (i4 & (-8)) | 4, zzdtVar);
                Object object2 = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                objValueOf3 = zzdtVar.zzc;
                if (object2 != null) {
                    objValueOf3 = zzff.zza(object2, objValueOf3);
                }
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            default:
                return i2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x026e, code lost:
    
        if (r30.zzb != 0) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0270, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0272, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0273, code lost:
    
        r11.zza(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0276, code lost:
    
        if (r4 >= r20) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0278, code lost:
    
        r6 = com.google.android.gms.internal.measurement.zzdq.zza(r18, r4, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x027e, code lost:
    
        if (r21 != r30.zza) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0280, code lost:
    
        r4 = com.google.android.gms.internal.measurement.zzdq.zzb(r18, r6, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0288, code lost:
    
        if (r30.zzb == 0) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0150, code lost:
    
        r11.add(com.google.android.gms.internal.measurement.zzdu.zza(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0273, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0140, code lost:
    
        if (r4 == 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0142, code lost:
    
        r11.add(com.google.android.gms.internal.measurement.zzdu.zza);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0148, code lost:
    
        r11.add(com.google.android.gms.internal.measurement.zzdu.zza(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0150, code lost:
    
        if (r1 >= r20) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0152, code lost:
    
        r4 = com.google.android.gms.internal.measurement.zzdq.zza(r18, r1, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0158, code lost:
    
        if (r21 != r30.zza) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x015a, code lost:
    
        r1 = com.google.android.gms.internal.measurement.zzdq.zza(r18, r4, r30);
        r4 = r30.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0160, code lost:
    
        if (r4 < 0) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0164, code lost:
    
        if (r4 > (r18.length - r1)) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0166, code lost:
    
        if (r4 != 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x016d, code lost:
    
        throw com.google.android.gms.internal.measurement.zzfo.zza();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0172, code lost:
    
        throw com.google.android.gms.internal.measurement.zzfo.zzb();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01bf  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x01cf -> B:94:0x01ae). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x0213 -> B:112:0x01ea). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:158:0x0288 -> B:151:0x0270). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x0166 -> B:67:0x0142). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zza(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.measurement.zzdt r30) throws com.google.android.gms.internal.measurement.zzfo {
        /*
            Method dump skipped, instruction units count: 1054
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.zzdt):int");
    }

    private final <K, V> int zza(T t, byte[] bArr, int i2, int i3, int i4, long j2, zzdt zzdtVar) throws zzfo {
        Unsafe unsafe = zzb;
        Object objZzb = zzb(i4);
        Object object = unsafe.getObject(t, j2);
        if (this.zzs.zzc(object)) {
            Object objZze = this.zzs.zze(objZzb);
            this.zzs.zza(objZze, object);
            unsafe.putObject(t, j2, objZze);
            object = objZze;
        }
        zzgf<?, ?> zzgfVarZzf = this.zzs.zzf(objZzb);
        Map<?, ?> mapZza = this.zzs.zza(object);
        int iZza = zzdq.zza(bArr, i2, zzdtVar);
        int i5 = zzdtVar.zza;
        if (i5 < 0 || i5 > i3 - iZza) {
            throw zzfo.zza();
        }
        int i6 = i5 + iZza;
        K k2 = zzgfVarZzf.zzb;
        V v = zzgfVarZzf.zzd;
        while (iZza < i6) {
            int iZza2 = iZza + 1;
            int i7 = bArr[iZza];
            if (i7 < 0) {
                iZza2 = zzdq.zza(i7, bArr, iZza2, zzdtVar);
                i7 = zzdtVar.zza;
            }
            int i8 = iZza2;
            int i9 = i7 >>> 3;
            int i10 = i7 & 7;
            if (i9 != 1) {
                if (i9 == 2 && i10 == zzgfVarZzf.zzc.zzb()) {
                    iZza = zza(bArr, i8, i3, zzgfVarZzf.zzc, zzgfVarZzf.zzd.getClass(), zzdtVar);
                    v = zzdtVar.zzc;
                } else {
                    iZza = zzdq.zza(i7, bArr, i8, i3, zzdtVar);
                }
            } else if (i10 == zzgfVarZzf.zza.zzb()) {
                iZza = zza(bArr, i8, i3, zzgfVarZzf.zza, (Class<?>) null, zzdtVar);
                k2 = (K) zzdtVar.zzc;
            } else {
                iZza = zzdq.zza(i7, bArr, i8, i3, zzdtVar);
            }
        }
        if (iZza != i6) {
            throw zzfo.zzg();
        }
        mapZza.put(k2, v);
        return i6;
    }

    private static int zza(byte[] bArr, int i2, int i3, zzim zzimVar, Class<?> cls, zzdt zzdtVar) {
        int iZzb;
        Object objValueOf;
        Object objValueOf2;
        Object objValueOf3;
        int iZze;
        long jZza;
        switch (zzgr.zza[zzimVar.ordinal()]) {
            case 1:
                iZzb = zzdq.zzb(bArr, i2, zzdtVar);
                objValueOf = Boolean.valueOf(zzdtVar.zzb != 0);
                zzdtVar.zzc = objValueOf;
                return iZzb;
            case 2:
                return zzdq.zze(bArr, i2, zzdtVar);
            case 3:
                objValueOf2 = Double.valueOf(zzdq.zzc(bArr, i2));
                zzdtVar.zzc = objValueOf2;
                return i2 + 8;
            case 4:
            case 5:
                objValueOf3 = Integer.valueOf(zzdq.zza(bArr, i2));
                zzdtVar.zzc = objValueOf3;
                return i2 + 4;
            case 6:
            case 7:
                objValueOf2 = Long.valueOf(zzdq.zzb(bArr, i2));
                zzdtVar.zzc = objValueOf2;
                return i2 + 8;
            case 8:
                objValueOf3 = Float.valueOf(zzdq.zzd(bArr, i2));
                zzdtVar.zzc = objValueOf3;
                return i2 + 4;
            case 9:
            case 10:
            case 11:
                iZzb = zzdq.zza(bArr, i2, zzdtVar);
                iZze = zzdtVar.zza;
                objValueOf = Integer.valueOf(iZze);
                zzdtVar.zzc = objValueOf;
                return iZzb;
            case 12:
            case 13:
                iZzb = zzdq.zzb(bArr, i2, zzdtVar);
                jZza = zzdtVar.zzb;
                objValueOf = Long.valueOf(jZza);
                zzdtVar.zzc = objValueOf;
                return iZzb;
            case 14:
                return zzdq.zza(zzgz.zza().zza((Class) cls), bArr, i2, i3, zzdtVar);
            case 15:
                iZzb = zzdq.zza(bArr, i2, zzdtVar);
                iZze = zzeg.zze(zzdtVar.zza);
                objValueOf = Integer.valueOf(iZze);
                zzdtVar.zzc = objValueOf;
                return iZzb;
            case 16:
                iZzb = zzdq.zzb(bArr, i2, zzdtVar);
                jZza = zzeg.zza(zzdtVar.zzb);
                objValueOf = Long.valueOf(jZza);
                zzdtVar.zzc = objValueOf;
                return iZzb;
            case 17:
                return zzdq.zzd(bArr, i2, zzdtVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:186:0x03c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static <T> com.google.android.gms.internal.measurement.zzgs<T> zza(java.lang.Class<T> r35, com.google.android.gms.internal.measurement.zzgm r36, com.google.android.gms.internal.measurement.zzgw r37, com.google.android.gms.internal.measurement.zzfy r38, com.google.android.gms.internal.measurement.zzhv<?, ?> r39, com.google.android.gms.internal.measurement.zzes<?> r40, com.google.android.gms.internal.measurement.zzgh r41) {
        /*
            Method dump skipped, instruction units count: 1108
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Class, com.google.android.gms.internal.measurement.zzgm, com.google.android.gms.internal.measurement.zzgw, com.google.android.gms.internal.measurement.zzfy, com.google.android.gms.internal.measurement.zzhv, com.google.android.gms.internal.measurement.zzes, com.google.android.gms.internal.measurement.zzgh):com.google.android.gms.internal.measurement.zzgs");
    }

    private final zzhd zza(int i2) {
        int i3 = (i2 / 3) << 1;
        zzhd zzhdVar = (zzhd) this.zzd[i3];
        if (zzhdVar != null) {
            return zzhdVar;
        }
        zzhd<T> zzhdVarZza = zzgz.zza().zza((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzhdVarZza;
        return zzhdVarZza;
    }

    private final <K, V, UT, UB> UB zza(int i2, int i3, Map<K, V> map, zzfk zzfkVar, UB ub, zzhv<UT, UB> zzhvVar) {
        zzgf<?, ?> zzgfVarZzf = this.zzs.zzf(zzb(i2));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzfkVar.zza(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzhvVar.zza();
                }
                zzec zzecVarZzc = zzdu.zzc(zzgg.zza(zzgfVarZzf, next.getKey(), next.getValue()));
                try {
                    zzgg.zza(zzecVarZzc.zzb(), zzgfVarZzf, next.getKey(), next.getValue());
                    zzhvVar.zza(ub, i3, zzecVarZzc.zza());
                    it.remove();
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        return ub;
    }

    private final <UT, UB> UB zza(Object obj, int i2, UB ub, zzhv<UT, UB> zzhvVar) {
        zzfk zzfkVarZzc;
        int i3 = this.zzc[i2];
        Object objZzf = zzib.zzf(obj, zzd(i2) & 1048575);
        return (objZzf == null || (zzfkVarZzc = zzc(i2)) == null) ? ub : (UB) zza(i2, i3, this.zzs.zza(objZzf), zzfkVarZzc, ub, zzhvVar);
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    private static List<?> zza(Object obj, long j2) {
        return (List) zzib.zzf(obj, j2);
    }

    private static void zza(int i2, Object obj, zzis zzisVar) {
        if (obj instanceof String) {
            zzisVar.zza(i2, (String) obj);
        } else {
            zzisVar.zza(i2, (zzdu) obj);
        }
    }

    private static <UT, UB> void zza(zzhv<UT, UB> zzhvVar, T t, zzis zzisVar) {
        zzhvVar.zza(zzhvVar.zzb(t), zzisVar);
    }

    private final <K, V> void zza(zzis zzisVar, int i2, Object obj, int i3) {
        if (obj != null) {
            zzisVar.zza(i2, this.zzs.zzf(zzb(i3)), this.zzs.zzb(obj));
        }
    }

    private final void zza(Object obj, int i2, zzhe zzheVar) {
        long j2;
        Object objZzn;
        if (zzf(i2)) {
            j2 = i2 & 1048575;
            objZzn = zzheVar.zzm();
        } else {
            int i3 = i2 & 1048575;
            if (this.zzi) {
                j2 = i3;
                objZzn = zzheVar.zzl();
            } else {
                j2 = i3;
                objZzn = zzheVar.zzn();
            }
        }
        zzib.zza(obj, j2, objZzn);
    }

    private final void zza(T t, T t2, int i2) {
        long jZzd = zzd(i2) & 1048575;
        if (zza((Object) t2, i2)) {
            Object objZzf = zzib.zzf(t, jZzd);
            Object objZzf2 = zzib.zzf(t2, jZzd);
            if (objZzf != null && objZzf2 != null) {
                zzib.zza(t, jZzd, zzff.zza(objZzf, objZzf2));
                zzb((Object) t, i2);
            } else if (objZzf2 != null) {
                zzib.zza(t, jZzd, objZzf2);
                zzb((Object) t, i2);
            }
        }
    }

    private final boolean zza(T t, int i2) {
        if (!this.zzj) {
            int iZze = zze(i2);
            return (zzib.zza(t, (long) (iZze & 1048575)) & (1 << (iZze >>> 20))) != 0;
        }
        int iZzd = zzd(i2);
        long j2 = iZzd & 1048575;
        switch ((iZzd & 267386880) >>> 20) {
            case 0:
                return zzib.zze(t, j2) != 0.0d;
            case 1:
                return zzib.zzd(t, j2) != 0.0f;
            case 2:
                return zzib.zzb(t, j2) != 0;
            case 3:
                return zzib.zzb(t, j2) != 0;
            case 4:
                return zzib.zza(t, j2) != 0;
            case 5:
                return zzib.zzb(t, j2) != 0;
            case 6:
                return zzib.zza(t, j2) != 0;
            case 7:
                return zzib.zzc(t, j2);
            case 8:
                Object objZzf = zzib.zzf(t, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzdu) {
                    return !zzdu.zza.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzib.zzf(t, j2) != null;
            case 10:
                return !zzdu.zza.equals(zzib.zzf(t, j2));
            case 11:
                return zzib.zza(t, j2) != 0;
            case 12:
                return zzib.zza(t, j2) != 0;
            case 13:
                return zzib.zza(t, j2) != 0;
            case 14:
                return zzib.zzb(t, j2) != 0;
            case 15:
                return zzib.zza(t, j2) != 0;
            case 16:
                return zzib.zzb(t, j2) != 0;
            case 17:
                return zzib.zzf(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(T t, int i2, int i3) {
        return zzib.zza(t, (long) (zze(i3) & 1048575)) == i2;
    }

    private final boolean zza(T t, int i2, int i3, int i4) {
        return this.zzj ? zza((Object) t, i2) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i2, zzhd zzhdVar) {
        return zzhdVar.zzd(zzib.zzf(obj, i2 & 1048575));
    }

    private static <T> double zzb(T t, long j2) {
        return ((Double) zzib.zzf(t, j2)).doubleValue();
    }

    private final int zzb(int i2, int i3) {
        int length = (this.zzc.length / 3) - 1;
        while (i3 <= length) {
            int i4 = (length + i3) >>> 1;
            int i5 = i4 * 3;
            int i6 = this.zzc[i5];
            if (i2 == i6) {
                return i5;
            }
            if (i2 < i6) {
                length = i4 - 1;
            } else {
                i3 = i4 + 1;
            }
        }
        return -1;
    }

    private final Object zzb(int i2) {
        return this.zzd[(i2 / 3) << 1];
    }

    private final void zzb(T t, int i2) {
        if (this.zzj) {
            return;
        }
        int iZze = zze(i2);
        long j2 = iZze & 1048575;
        zzib.zza((Object) t, j2, zzib.zza(t, j2) | (1 << (iZze >>> 20)));
    }

    private final void zzb(T t, int i2, int i3) {
        zzib.zza((Object) t, zze(i3) & 1048575, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzb(T r19, com.google.android.gms.internal.measurement.zzis r20) {
        /*
            Method dump skipped, instruction units count: 1324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zzb(java.lang.Object, com.google.android.gms.internal.measurement.zzis):void");
    }

    private final void zzb(T t, T t2, int i2) {
        int iZzd = zzd(i2);
        int i3 = this.zzc[i2];
        long j2 = iZzd & 1048575;
        if (zza(t2, i3, i2)) {
            Object objZzf = zzib.zzf(t, j2);
            Object objZzf2 = zzib.zzf(t2, j2);
            if (objZzf != null && objZzf2 != null) {
                zzib.zza(t, j2, zzff.zza(objZzf, objZzf2));
                zzb(t, i3, i2);
            } else if (objZzf2 != null) {
                zzib.zza(t, j2, objZzf2);
                zzb(t, i3, i2);
            }
        }
    }

    private static <T> float zzc(T t, long j2) {
        return ((Float) zzib.zzf(t, j2)).floatValue();
    }

    private final zzfk zzc(int i2) {
        return (zzfk) this.zzd[((i2 / 3) << 1) + 1];
    }

    private final boolean zzc(T t, T t2, int i2) {
        return zza((Object) t, i2) == zza((Object) t2, i2);
    }

    private final int zzd(int i2) {
        return this.zzc[i2 + 1];
    }

    private static <T> int zzd(T t, long j2) {
        return ((Integer) zzib.zzf(t, j2)).intValue();
    }

    private final int zze(int i2) {
        return this.zzc[i2 + 2];
    }

    private static <T> long zze(T t, long j2) {
        return ((Long) zzib.zzf(t, j2)).longValue();
    }

    private static zzhy zze(Object obj) {
        zzfd zzfdVar = (zzfd) obj;
        zzhy zzhyVar = zzfdVar.zzb;
        if (zzhyVar != zzhy.zza()) {
            return zzhyVar;
        }
        zzhy zzhyVarZzb = zzhy.zzb();
        zzfdVar.zzb = zzhyVarZzb;
        return zzhyVarZzb;
    }

    private static boolean zzf(int i2) {
        return (i2 & 536870912) != 0;
    }

    private static <T> boolean zzf(T t, long j2) {
        return ((Boolean) zzib.zzf(t, j2)).booleanValue();
    }

    private final int zzg(int i2) {
        if (i2 < this.zze || i2 > this.zzf) {
            return -1;
        }
        return zzb(i2, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e2 A[PHI: r3
      0x00e2: PHI (r3v13 java.lang.Object) = (r3v11 java.lang.Object), (r3v14 java.lang.Object) binds: [B:67:0x00e0, B:62:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zza(T r9) {
        /*
            Method dump skipped, instruction units count: 476
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object):int");
    }

    /*  JADX ERROR: Type inference failed with stack overflow
        jadx.core.utils.exceptions.JadxOverflowException
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    final int zza(T r30, byte[] r31, int r32, int r33, int r34, com.google.android.gms.internal.measurement.zzdt r35) throws com.google.android.gms.internal.measurement.zzfo {
        /*
            Method dump skipped, instruction units count: 1246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzdt):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final T zza() {
        return (T) this.zzo.zza(this.zzg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zza(T t, zzhe zzheVar, zzeq zzeqVar) {
        long j2;
        Object objZza;
        int iZzp;
        List<Double> listZza;
        List<Float> listZza2;
        List<Long> listZza3;
        List<Long> listZza4;
        List<Integer> listZza5;
        List<Long> listZza6;
        List<Integer> listZza7;
        List<Boolean> listZza8;
        List<Integer> listZza9;
        List<Integer> listZza10;
        zzfk zzfkVarZzc;
        List<Integer> listZza11;
        List<Long> listZza12;
        List<Integer> listZza13;
        List<Long> listZza14;
        if (zzeqVar == null) {
            throw new NullPointerException();
        }
        zzhv<?, ?> zzhvVar = this.zzq;
        zzes<?> zzesVar = this.zzr;
        zzew zzewVarZzb = null;
        Object objZza2 = null;
        while (true) {
            try {
                int iZza = zzheVar.zza();
                int iZzg = zzg(iZza);
                if (iZzg >= 0) {
                    int iZzd = zzd(iZzg);
                    switch ((267386880 & iZzd) >>> 20) {
                        case 0:
                            zzib.zza(t, iZzd & 1048575, zzheVar.zzd());
                            zzb((Object) t, iZzg);
                            break;
                        case 1:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zze());
                            zzb((Object) t, iZzg);
                            break;
                        case 2:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzg());
                            zzb((Object) t, iZzg);
                            break;
                        case 3:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzf());
                            zzb((Object) t, iZzg);
                            break;
                        case 4:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzh());
                            zzb((Object) t, iZzg);
                            break;
                        case 5:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzi());
                            zzb((Object) t, iZzg);
                            break;
                        case 6:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzj());
                            zzb((Object) t, iZzg);
                            break;
                        case 7:
                            zzib.zza(t, iZzd & 1048575, zzheVar.zzk());
                            zzb((Object) t, iZzg);
                            break;
                        case 8:
                            zza(t, iZzd, zzheVar);
                            zzb((Object) t, iZzg);
                            break;
                        case 9:
                            if (zza((Object) t, iZzg)) {
                                j2 = iZzd & 1048575;
                                objZza = zzff.zza(zzib.zzf(t, j2), zzheVar.zza(zza(iZzg), zzeqVar));
                                zzib.zza(t, j2, objZza);
                            } else {
                                zzib.zza(t, iZzd & 1048575, zzheVar.zza(zza(iZzg), zzeqVar));
                                zzb((Object) t, iZzg);
                            }
                            break;
                        case 10:
                            zzib.zza(t, iZzd & 1048575, zzheVar.zzn());
                            zzb((Object) t, iZzg);
                            break;
                        case 11:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzo());
                            zzb((Object) t, iZzg);
                            break;
                        case 12:
                            iZzp = zzheVar.zzp();
                            zzfk zzfkVarZzc2 = zzc(iZzg);
                            if (zzfkVarZzc2 == null || zzfkVarZzc2.zza(iZzp)) {
                                zzib.zza((Object) t, iZzd & 1048575, iZzp);
                                zzb((Object) t, iZzg);
                            } else {
                                objZza2 = zzhf.zza(iZza, iZzp, objZza2, (zzhv<UT, Object>) zzhvVar);
                            }
                            break;
                        case 13:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzq());
                            zzb((Object) t, iZzg);
                            break;
                        case 14:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzr());
                            zzb((Object) t, iZzg);
                            break;
                        case 15:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzs());
                            zzb((Object) t, iZzg);
                            break;
                        case 16:
                            zzib.zza((Object) t, iZzd & 1048575, zzheVar.zzt());
                            zzb((Object) t, iZzg);
                            break;
                        case 17:
                            if (zza((Object) t, iZzg)) {
                                j2 = iZzd & 1048575;
                                objZza = zzff.zza(zzib.zzf(t, j2), zzheVar.zzb(zza(iZzg), zzeqVar));
                                zzib.zza(t, j2, objZza);
                            } else {
                                zzib.zza(t, iZzd & 1048575, zzheVar.zzb(zza(iZzg), zzeqVar));
                                zzb((Object) t, iZzg);
                            }
                            break;
                        case 18:
                            listZza = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zza(listZza);
                            break;
                        case 19:
                            listZza2 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzb(listZza2);
                            break;
                        case 20:
                            listZza3 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzd(listZza3);
                            break;
                        case 21:
                            listZza4 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzc(listZza4);
                            break;
                        case 22:
                            listZza5 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zze(listZza5);
                            break;
                        case 23:
                            listZza6 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzf(listZza6);
                            break;
                        case 24:
                            listZza7 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzg(listZza7);
                            break;
                        case 25:
                            listZza8 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzh(listZza8);
                            break;
                        case 26:
                            if (zzf(iZzd)) {
                                zzheVar.zzj(this.zzp.zza(t, iZzd & 1048575));
                            } else {
                                zzheVar.zzi(this.zzp.zza(t, iZzd & 1048575));
                            }
                            break;
                        case 27:
                            zzheVar.zza(this.zzp.zza(t, iZzd & 1048575), zza(iZzg), zzeqVar);
                            break;
                        case 28:
                            zzheVar.zzk(this.zzp.zza(t, iZzd & 1048575));
                            break;
                        case 29:
                            listZza9 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzl(listZza9);
                            break;
                        case 30:
                            listZza10 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzm(listZza10);
                            zzfkVarZzc = zzc(iZzg);
                            objZza2 = zzhf.zza(iZza, listZza10, zzfkVarZzc, objZza2, zzhvVar);
                            break;
                        case 31:
                            listZza11 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzn(listZza11);
                            break;
                        case 32:
                            listZza12 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzo(listZza12);
                            break;
                        case 33:
                            listZza13 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzp(listZza13);
                            break;
                        case 34:
                            listZza14 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzq(listZza14);
                            break;
                        case 35:
                            listZza = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zza(listZza);
                            break;
                        case 36:
                            listZza2 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzb(listZza2);
                            break;
                        case 37:
                            listZza3 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzd(listZza3);
                            break;
                        case 38:
                            listZza4 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzc(listZza4);
                            break;
                        case 39:
                            listZza5 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zze(listZza5);
                            break;
                        case 40:
                            listZza6 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzf(listZza6);
                            break;
                        case 41:
                            listZza7 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzg(listZza7);
                            break;
                        case 42:
                            listZza8 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzh(listZza8);
                            break;
                        case 43:
                            listZza9 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzl(listZza9);
                            break;
                        case 44:
                            listZza10 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzm(listZza10);
                            zzfkVarZzc = zzc(iZzg);
                            objZza2 = zzhf.zza(iZza, listZza10, zzfkVarZzc, objZza2, zzhvVar);
                            break;
                        case 45:
                            listZza11 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzn(listZza11);
                            break;
                        case 46:
                            listZza12 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzo(listZza12);
                            break;
                        case 47:
                            listZza13 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzp(listZza13);
                            break;
                        case 48:
                            listZza14 = this.zzp.zza(t, iZzd & 1048575);
                            zzheVar.zzq(listZza14);
                            break;
                        case 49:
                            zzheVar.zzb(this.zzp.zza(t, iZzd & 1048575), zza(iZzg), zzeqVar);
                            break;
                        case 50:
                            Object objZzb = zzb(iZzg);
                            long jZzd = zzd(iZzg) & 1048575;
                            Object objZzf = zzib.zzf(t, jZzd);
                            if (objZzf == null) {
                                objZzf = this.zzs.zze(objZzb);
                                zzib.zza(t, jZzd, objZzf);
                            } else if (this.zzs.zzc(objZzf)) {
                                Object objZze = this.zzs.zze(objZzb);
                                this.zzs.zza(objZze, objZzf);
                                zzib.zza(t, jZzd, objZze);
                                objZzf = objZze;
                            }
                            zzheVar.zza(this.zzs.zza(objZzf), this.zzs.zzf(objZzb), zzeqVar);
                            break;
                        case 51:
                            zzib.zza(t, iZzd & 1048575, Double.valueOf(zzheVar.zzd()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 52:
                            zzib.zza(t, iZzd & 1048575, Float.valueOf(zzheVar.zze()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 53:
                            zzib.zza(t, iZzd & 1048575, Long.valueOf(zzheVar.zzg()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 54:
                            zzib.zza(t, iZzd & 1048575, Long.valueOf(zzheVar.zzf()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 55:
                            zzib.zza(t, iZzd & 1048575, Integer.valueOf(zzheVar.zzh()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 56:
                            zzib.zza(t, iZzd & 1048575, Long.valueOf(zzheVar.zzi()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 57:
                            zzib.zza(t, iZzd & 1048575, Integer.valueOf(zzheVar.zzj()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 58:
                            zzib.zza(t, iZzd & 1048575, Boolean.valueOf(zzheVar.zzk()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 59:
                            zza(t, iZzd, zzheVar);
                            zzb(t, iZza, iZzg);
                            break;
                        case 60:
                            int i2 = iZzd & 1048575;
                            if (zza(t, iZza, iZzg)) {
                                long j3 = i2;
                                zzib.zza(t, j3, zzff.zza(zzib.zzf(t, j3), zzheVar.zza(zza(iZzg), zzeqVar)));
                            } else {
                                zzib.zza(t, i2, zzheVar.zza(zza(iZzg), zzeqVar));
                                zzb((Object) t, iZzg);
                            }
                            zzb(t, iZza, iZzg);
                            break;
                        case 61:
                            zzib.zza(t, iZzd & 1048575, zzheVar.zzn());
                            zzb(t, iZza, iZzg);
                            break;
                        case 62:
                            zzib.zza(t, iZzd & 1048575, Integer.valueOf(zzheVar.zzo()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 63:
                            iZzp = zzheVar.zzp();
                            zzfk zzfkVarZzc3 = zzc(iZzg);
                            if (zzfkVarZzc3 != null && !zzfkVarZzc3.zza(iZzp)) {
                                objZza2 = zzhf.zza(iZza, iZzp, objZza2, (zzhv<UT, Object>) zzhvVar);
                            }
                            zzib.zza(t, iZzd & 1048575, Integer.valueOf(iZzp));
                            zzb(t, iZza, iZzg);
                            break;
                        case 64:
                            zzib.zza(t, iZzd & 1048575, Integer.valueOf(zzheVar.zzq()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 65:
                            zzib.zza(t, iZzd & 1048575, Long.valueOf(zzheVar.zzr()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 66:
                            zzib.zza(t, iZzd & 1048575, Integer.valueOf(zzheVar.zzs()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 67:
                            zzib.zza(t, iZzd & 1048575, Long.valueOf(zzheVar.zzt()));
                            zzb(t, iZza, iZzg);
                            break;
                        case 68:
                            zzib.zza(t, iZzd & 1048575, zzheVar.zzb(zza(iZzg), zzeqVar));
                            zzb(t, iZza, iZzg);
                            break;
                        default:
                            if (objZza2 == null) {
                                try {
                                    objZza2 = zzhvVar.zza();
                                } catch (zzfn unused) {
                                    zzhvVar.zza(zzheVar);
                                    if (objZza2 == null) {
                                        objZza2 = zzhvVar.zzc(t);
                                    }
                                    if (!zzhvVar.zza((Object) objZza2, zzheVar)) {
                                        for (int i3 = this.zzm; i3 < this.zzn; i3++) {
                                            objZza2 = zza((Object) t, this.zzl[i3], objZza2, (zzhv<UT, Object>) zzhvVar);
                                        }
                                        if (objZza2 != null) {
                                            zzhvVar.zzb(t, (Object) objZza2);
                                            return;
                                        }
                                        return;
                                    }
                                }
                            }
                            if (!zzhvVar.zza((Object) objZza2, zzheVar)) {
                                for (int i4 = this.zzm; i4 < this.zzn; i4++) {
                                    objZza2 = zza((Object) t, this.zzl[i4], objZza2, (zzhv<UT, Object>) zzhvVar);
                                }
                                if (objZza2 != null) {
                                    zzhvVar.zzb(t, (Object) objZza2);
                                    return;
                                }
                                return;
                            }
                            break;
                            break;
                    }
                } else {
                    if (iZza == Integer.MAX_VALUE) {
                        for (int i5 = this.zzm; i5 < this.zzn; i5++) {
                            objZza2 = zza((Object) t, this.zzl[i5], objZza2, (zzhv<UT, Object>) zzhvVar);
                        }
                        if (objZza2 != null) {
                            zzhvVar.zzb(t, (Object) objZza2);
                            return;
                        }
                        return;
                    }
                    Object objZza3 = !this.zzh ? null : zzesVar.zza(zzeqVar, this.zzg, iZza);
                    if (objZza3 != null) {
                        if (zzewVarZzb == null) {
                            zzewVarZzb = zzesVar.zzb(t);
                        }
                        zzew zzewVar = zzewVarZzb;
                        objZza2 = zzesVar.zza(zzheVar, objZza3, zzeqVar, zzewVar, objZza2, zzhvVar);
                        zzewVarZzb = zzewVar;
                    } else {
                        zzhvVar.zza(zzheVar);
                        if (objZza2 == null) {
                            objZza2 = zzhvVar.zzc(t);
                        }
                        if (!zzhvVar.zza((Object) objZza2, zzheVar)) {
                            for (int i6 = this.zzm; i6 < this.zzn; i6++) {
                                objZza2 = zza((Object) t, this.zzl[i6], objZza2, (zzhv<UT, Object>) zzhvVar);
                            }
                            if (objZza2 != null) {
                                zzhvVar.zzb(t, (Object) objZza2);
                                return;
                            }
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i7 = this.zzm; i7 < this.zzn; i7++) {
                    objZza2 = zza((Object) t, this.zzl[i7], objZza2, (zzhv<UT, Object>) zzhvVar);
                }
                if (objZza2 != null) {
                    zzhvVar.zzb(t, (Object) objZza2);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0847  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x08c2  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x08d5  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x08ea  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r14, com.google.android.gms.internal.measurement.zzis r15) {
        /*
            Method dump skipped, instruction units count: 2742
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzis):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f5, code lost:
    
        if (r0 == r15) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0212, code lost:
    
        if (r0 == r15) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0214, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0090, code lost:
    
        if (r6 == 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0107, code lost:
    
        if (r6 == 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0109, code lost:
    
        r0 = com.google.android.gms.internal.measurement.zzdq.zza(r12, r8, r11);
        r1 = r11.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01c8, code lost:
    
        if (r0 == r15) goto L105;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x0061. Please report as an issue. */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r28, byte[] r29, int r30, int r31, com.google.android.gms.internal.measurement.zzdt r32) throws com.google.android.gms.internal.measurement.zzfo {
        /*
            Method dump skipped, instruction units count: 634
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzdt):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01b2  */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zza(T r10, T r11) {
        /*
            Method dump skipped, instruction units count: 626
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0417, code lost:
    
        if (zza(r20, r15, r3) != false) goto L399;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0437, code lost:
    
        if (zza(r20, r15, r3) != false) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x043f, code lost:
    
        if (zza(r20, r15, r3) != false) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x045f, code lost:
    
        if (zza(r20, r15, r3) != false) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0467, code lost:
    
        if (zza(r20, r15, r3) != false) goto L429;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x06ce, code lost:
    
        if ((r12 & r18) != 0) goto L399;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x06d0, code lost:
    
        r4 = com.google.android.gms.internal.measurement.zzen.zzc(r15, (com.google.android.gms.internal.measurement.zzgo) r2.getObject(r20, r8), zza(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x06fb, code lost:
    
        if ((r12 & r18) != 0) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x06fd, code lost:
    
        r4 = com.google.android.gms.internal.measurement.zzen.zzh(r15, 0L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x0706, code lost:
    
        if ((r12 & r18) != 0) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x0708, code lost:
    
        r8 = com.google.android.gms.internal.measurement.zzen.zzj(r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x072b, code lost:
    
        if ((r12 & r18) != 0) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x072d, code lost:
    
        r4 = r2.getObject(r20, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x073a, code lost:
    
        if ((r12 & r18) != 0) goto L429;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x073c, code lost:
    
        r4 = com.google.android.gms.internal.measurement.zzhf.zza(r15, r2.getObject(r20, r8), zza(r3));
     */
    /* JADX WARN: Removed duplicated region for block: B:142:0x020d A[PHI: r5
      0x020d: PHI (r5v86 int) = 
      (r5v49 int)
      (r5v52 int)
      (r5v55 int)
      (r5v58 int)
      (r5v61 int)
      (r5v64 int)
      (r5v67 int)
      (r5v70 int)
      (r5v73 int)
      (r5v76 int)
      (r5v79 int)
      (r5v82 int)
      (r5v85 int)
      (r5v90 int)
     binds: [B:141:0x020b, B:136:0x01fa, B:131:0x01e9, B:126:0x01d8, B:121:0x01c7, B:116:0x01b6, B:111:0x01a5, B:106:0x0193, B:101:0x0181, B:96:0x016f, B:91:0x015d, B:86:0x014b, B:81:0x0139, B:76:0x0127] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x030a A[PHI: r5
      0x030a: PHI (r5v109 java.lang.Object) = (r5v27 java.lang.Object), (r5v107 java.lang.Object), (r5v111 java.lang.Object) binds: [B:193:0x0331, B:45:0x00ab, B:185:0x0306] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0334 A[PHI: r5
      0x0334: PHI (r5v105 java.lang.Object) = (r5v27 java.lang.Object), (r5v107 java.lang.Object) binds: [B:193:0x0331, B:45:0x00ab] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0602 A[PHI: r4
      0x0602: PHI (r4v114 int) = 
      (r4v77 int)
      (r4v80 int)
      (r4v83 int)
      (r4v86 int)
      (r4v89 int)
      (r4v92 int)
      (r4v95 int)
      (r4v98 int)
      (r4v101 int)
      (r4v104 int)
      (r4v107 int)
      (r4v110 int)
      (r4v113 int)
      (r4v118 int)
     binds: [B:374:0x0600, B:369:0x05ef, B:364:0x05de, B:359:0x05cd, B:354:0x05bc, B:349:0x05ab, B:344:0x059a, B:339:0x0588, B:334:0x0576, B:329:0x0564, B:324:0x0552, B:319:0x0540, B:314:0x052e, B:309:0x051c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:394:0x06c4 A[PHI: r5
      0x06c4: PHI (r5v4 int) = 
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v16 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v17 int)
      (r5v1 int)
     binds: [B:246:0x040e, B:437:0x0761, B:431:0x074c, B:428:0x073a, B:424:0x072b, B:420:0x071e, B:416:0x0711, B:412:0x0706, B:409:0x06fb, B:405:0x06ee, B:401:0x06e1, B:398:0x06ce, B:372:0x05fc, B:367:0x05eb, B:362:0x05da, B:357:0x05c9, B:352:0x05b8, B:347:0x05a7, B:342:0x0596, B:337:0x0584, B:332:0x0572, B:327:0x0560, B:322:0x054e, B:317:0x053c, B:312:0x052a, B:307:0x0518, B:302:0x04e4, B:299:0x04d7, B:296:0x04c7, B:293:0x04b7, B:290:0x04a7, B:287:0x0499, B:284:0x048c, B:281:0x047f, B:276:0x046f, B:273:0x0467, B:270:0x045f, B:267:0x0453, B:264:0x0447, B:414:0x070d, B:261:0x043f, B:258:0x0437, B:255:0x042b, B:252:0x041f, B:393:0x06c3, B:249:0x0417] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:426:0x0731 A[PHI: r4
      0x0731: PHI (r4v149 java.lang.Object) = (r4v17 java.lang.Object), (r4v145 java.lang.Object), (r4v152 java.lang.Object) binds: [B:433:0x0754, B:278:0x0477, B:425:0x072d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0757 A[PHI: r4
      0x0757: PHI (r4v141 java.lang.Object) = (r4v17 java.lang.Object), (r4v145 java.lang.Object) binds: [B:433:0x0754, B:278:0x0477] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzb(T r20) {
        /*
            Method dump skipped, instruction units count: 2396
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zzb(java.lang.Object):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzb(T r7, T r8) {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zzb(java.lang.Object, java.lang.Object):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zzc(T t) {
        int i2;
        int i3 = this.zzm;
        while (true) {
            i2 = this.zzn;
            if (i3 >= i2) {
                break;
            }
            long jZzd = zzd(this.zzl[i3]) & 1048575;
            Object objZzf = zzib.zzf(t, jZzd);
            if (objZzf != null) {
                zzib.zza(t, jZzd, this.zzs.zzd(objZzf));
            }
            i3++;
        }
        int length = this.zzl.length;
        while (i2 < length) {
            this.zzp.zzb(t, this.zzl[i2]);
            i2++;
        }
        this.zzq.zzd(t);
        if (this.zzh) {
            this.zzr.zzc(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.measurement.zzhd] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.measurement.zzhd] */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzd(T r14) {
        /*
            Method dump skipped, instruction units count: 287
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zzd(java.lang.Object):boolean");
    }
}
