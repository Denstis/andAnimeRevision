package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzdsk<T> implements zzdsv<T> {
    private final int[] zzhna;
    private final Object[] zzhnb;
    private final int zzhnc;
    private final int zzhnd;
    private final zzdsg zzhne;
    private final boolean zzhnf;
    private final boolean zzhng;
    private final boolean zzhnh;
    private final boolean zzhni;
    private final int[] zzhnj;
    private final int zzhnk;
    private final int zzhnl;
    private final zzdso zzhnm;
    private final zzdrq zzhnn;
    private final zzdtn<?, ?> zzhno;
    private final zzdql<?> zzhnp;
    private final zzdrz zzhnq;
    private static final int[] zzhmz = new int[0];
    private static final Unsafe zzgqj = zzdtt.zzbcc();

    private zzdsk(int[] iArr, Object[] objArr, int i2, int i3, zzdsg zzdsgVar, boolean z, boolean z2, int[] iArr2, int i4, int i5, zzdso zzdsoVar, zzdrq zzdrqVar, zzdtn<?, ?> zzdtnVar, zzdql<?> zzdqlVar, zzdrz zzdrzVar) {
        this.zzhna = iArr;
        this.zzhnb = objArr;
        this.zzhnc = i2;
        this.zzhnd = i3;
        this.zzhng = zzdsgVar instanceof zzdqw;
        this.zzhnh = z;
        this.zzhnf = zzdqlVar != null && zzdqlVar.zzm(zzdsgVar);
        this.zzhni = false;
        this.zzhnj = iArr2;
        this.zzhnk = i4;
        this.zzhnl = i5;
        this.zzhnm = zzdsoVar;
        this.zzhnn = zzdrqVar;
        this.zzhno = zzdtnVar;
        this.zzhnp = zzdqlVar;
        this.zzhne = zzdsgVar;
        this.zzhnq = zzdrzVar;
    }

    private static <UT, UB> int zza(zzdtn<UT, UB> zzdtnVar, T t) {
        return zzdtnVar.zzau(zzdtnVar.zzay(t));
    }

    private final int zza(T t, byte[] bArr, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2, int i9, zzdpl zzdplVar) throws zzdrg {
        Object objValueOf;
        Object objValueOf2;
        int iZzb;
        long jZzez;
        int iZzft;
        Object objValueOf3;
        Unsafe unsafe = zzgqj;
        long j3 = this.zzhna[i9 + 2] & 1048575;
        switch (i8) {
            case 51:
                if (i6 != 1) {
                    return i2;
                }
                objValueOf = Double.valueOf(zzdpi.zzh(bArr, i2));
                unsafe.putObject(t, j2, objValueOf);
                iZzb = i2 + 8;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 52:
                if (i6 != 5) {
                    return i2;
                }
                objValueOf2 = Float.valueOf(zzdpi.zzi(bArr, i2));
                unsafe.putObject(t, j2, objValueOf2);
                iZzb = i2 + 4;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 53:
            case 54:
                if (i6 != 0) {
                    return i2;
                }
                iZzb = zzdpi.zzb(bArr, i2, zzdplVar);
                jZzez = zzdplVar.zzhfy;
                objValueOf3 = Long.valueOf(jZzez);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 55:
            case 62:
                if (i6 != 0) {
                    return i2;
                }
                iZzb = zzdpi.zza(bArr, i2, zzdplVar);
                iZzft = zzdplVar.zzhfx;
                objValueOf3 = Integer.valueOf(iZzft);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 56:
            case 65:
                if (i6 != 1) {
                    return i2;
                }
                objValueOf = Long.valueOf(zzdpi.zzg(bArr, i2));
                unsafe.putObject(t, j2, objValueOf);
                iZzb = i2 + 8;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 57:
            case 64:
                if (i6 != 5) {
                    return i2;
                }
                objValueOf2 = Integer.valueOf(zzdpi.zzf(bArr, i2));
                unsafe.putObject(t, j2, objValueOf2);
                iZzb = i2 + 4;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 58:
                if (i6 != 0) {
                    return i2;
                }
                iZzb = zzdpi.zzb(bArr, i2, zzdplVar);
                objValueOf3 = Boolean.valueOf(zzdplVar.zzhfy != 0);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 59:
                if (i6 != 2) {
                    return i2;
                }
                iZzb = zzdpi.zza(bArr, i2, zzdplVar);
                int i10 = zzdplVar.zzhfx;
                if (i10 == 0) {
                    objValueOf3 = "";
                    unsafe.putObject(t, j2, objValueOf3);
                    unsafe.putInt(t, j3, i5);
                    return iZzb;
                }
                if ((i7 & 536870912) != 0 && !zzdtw.zzl(bArr, iZzb, iZzb + i10)) {
                    throw zzdrg.zzbaj();
                }
                unsafe.putObject(t, j2, new String(bArr, iZzb, i10, zzdqx.UTF_8));
                iZzb += i10;
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 60:
                if (i6 != 2) {
                    return i2;
                }
                iZzb = zzdpi.zza(zzgr(i9), bArr, i2, i3, zzdplVar);
                Object object = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                objValueOf3 = zzdplVar.zzhfz;
                if (object != null) {
                    objValueOf3 = zzdqx.zzd(object, objValueOf3);
                }
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 61:
                if (i6 != 2) {
                    return i2;
                }
                iZzb = zzdpi.zze(bArr, i2, zzdplVar);
                objValueOf3 = zzdplVar.zzhfz;
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 63:
                if (i6 != 0) {
                    return i2;
                }
                int iZza = zzdpi.zza(bArr, i2, zzdplVar);
                int i11 = zzdplVar.zzhfx;
                zzdrc zzdrcVarZzgt = zzgt(i9);
                if (zzdrcVarZzgt != null && !zzdrcVarZzgt.zzf(i11)) {
                    zzav(t).zzc(i4, Long.valueOf(i11));
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
                iZzb = zzdpi.zza(bArr, i2, zzdplVar);
                iZzft = zzdpy.zzft(zzdplVar.zzhfx);
                objValueOf3 = Integer.valueOf(iZzft);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 67:
                if (i6 != 0) {
                    return i2;
                }
                iZzb = zzdpi.zzb(bArr, i2, zzdplVar);
                jZzez = zzdpy.zzez(zzdplVar.zzhfy);
                objValueOf3 = Long.valueOf(jZzez);
                unsafe.putObject(t, j2, objValueOf3);
                unsafe.putInt(t, j3, i5);
                return iZzb;
            case 68:
                if (i6 != 3) {
                    return i2;
                }
                iZzb = zzdpi.zza(zzgr(i9), bArr, i2, i3, (i4 & (-8)) | 4, zzdplVar);
                Object object2 = unsafe.getInt(t, j3) == i5 ? unsafe.getObject(t, j2) : null;
                objValueOf3 = zzdplVar.zzhfz;
                if (object2 != null) {
                    objValueOf3 = zzdqx.zzd(object2, objValueOf3);
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
    
        if (r30.zzhfy != 0) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0270, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0272, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0273, code lost:
    
        r11.addBoolean(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0276, code lost:
    
        if (r4 >= r20) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0278, code lost:
    
        r6 = com.google.android.gms.internal.ads.zzdpi.zza(r18, r4, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x027e, code lost:
    
        if (r21 != r30.zzhfx) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0280, code lost:
    
        r4 = com.google.android.gms.internal.ads.zzdpi.zzb(r18, r6, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0288, code lost:
    
        if (r30.zzhfy == 0) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0150, code lost:
    
        r11.add(com.google.android.gms.internal.ads.zzdpm.zzh(r18, r1, r4));
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
    
        r11.add(com.google.android.gms.internal.ads.zzdpm.zzhgb);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0148, code lost:
    
        r11.add(com.google.android.gms.internal.ads.zzdpm.zzh(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0150, code lost:
    
        if (r1 >= r20) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0152, code lost:
    
        r4 = com.google.android.gms.internal.ads.zzdpi.zza(r18, r1, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0158, code lost:
    
        if (r21 != r30.zzhfx) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x015a, code lost:
    
        r1 = com.google.android.gms.internal.ads.zzdpi.zza(r18, r4, r30);
        r4 = r30.zzhfx;
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
    
        throw com.google.android.gms.internal.ads.zzdrg.zzbac();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0172, code lost:
    
        throw com.google.android.gms.internal.ads.zzdrg.zzbad();
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
    private final int zza(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.ads.zzdpl r30) throws com.google.android.gms.internal.ads.zzdrg {
        /*
            Method dump skipped, instruction units count: 1054
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.zzdpl):int");
    }

    private final <K, V> int zza(T t, byte[] bArr, int i2, int i3, int i4, long j2, zzdpl zzdplVar) throws zzdrg {
        Unsafe unsafe = zzgqj;
        Object objZzgs = zzgs(i4);
        Object object = unsafe.getObject(t, j2);
        if (this.zzhnq.zzap(object)) {
            Object objZzar = this.zzhnq.zzar(objZzgs);
            this.zzhnq.zze(objZzar, object);
            unsafe.putObject(t, j2, objZzar);
            object = objZzar;
        }
        zzdrx<?, ?> zzdrxVarZzas = this.zzhnq.zzas(objZzgs);
        Map<?, ?> mapZzan = this.zzhnq.zzan(object);
        int iZza = zzdpi.zza(bArr, i2, zzdplVar);
        int i5 = zzdplVar.zzhfx;
        if (i5 < 0 || i5 > i3 - iZza) {
            throw zzdrg.zzbac();
        }
        int i6 = i5 + iZza;
        K k2 = zzdrxVarZzas.zzhmu;
        V v = zzdrxVarZzas.zzcfq;
        while (iZza < i6) {
            int iZza2 = iZza + 1;
            int i7 = bArr[iZza];
            if (i7 < 0) {
                iZza2 = zzdpi.zza(i7, bArr, iZza2, zzdplVar);
                i7 = zzdplVar.zzhfx;
            }
            int i8 = iZza2;
            int i9 = i7 >>> 3;
            int i10 = i7 & 7;
            if (i9 != 1) {
                if (i9 == 2 && i10 == zzdrxVarZzas.zzhmv.zzbch()) {
                    iZza = zza(bArr, i8, i3, zzdrxVarZzas.zzhmv, zzdrxVarZzas.zzcfq.getClass(), zzdplVar);
                    v = zzdplVar.zzhfz;
                } else {
                    iZza = zzdpi.zza(i7, bArr, i8, i3, zzdplVar);
                }
            } else if (i10 == zzdrxVarZzas.zzhmt.zzbch()) {
                iZza = zza(bArr, i8, i3, zzdrxVarZzas.zzhmt, (Class<?>) null, zzdplVar);
                k2 = (K) zzdplVar.zzhfz;
            } else {
                iZza = zzdpi.zza(i7, bArr, i8, i3, zzdplVar);
            }
        }
        if (iZza != i6) {
            throw zzdrg.zzbai();
        }
        mapZzan.put(k2, v);
        return i6;
    }

    private static int zza(byte[] bArr, int i2, int i3, zzdue zzdueVar, Class<?> cls, zzdpl zzdplVar) {
        int iZzb;
        Object objValueOf;
        Object objValueOf2;
        Object objValueOf3;
        int iZzft;
        long jZzez;
        switch (zzdsj.zzhgt[zzdueVar.ordinal()]) {
            case 1:
                iZzb = zzdpi.zzb(bArr, i2, zzdplVar);
                objValueOf = Boolean.valueOf(zzdplVar.zzhfy != 0);
                zzdplVar.zzhfz = objValueOf;
                return iZzb;
            case 2:
                return zzdpi.zze(bArr, i2, zzdplVar);
            case 3:
                objValueOf2 = Double.valueOf(zzdpi.zzh(bArr, i2));
                zzdplVar.zzhfz = objValueOf2;
                return i2 + 8;
            case 4:
            case 5:
                objValueOf3 = Integer.valueOf(zzdpi.zzf(bArr, i2));
                zzdplVar.zzhfz = objValueOf3;
                return i2 + 4;
            case 6:
            case 7:
                objValueOf2 = Long.valueOf(zzdpi.zzg(bArr, i2));
                zzdplVar.zzhfz = objValueOf2;
                return i2 + 8;
            case 8:
                objValueOf3 = Float.valueOf(zzdpi.zzi(bArr, i2));
                zzdplVar.zzhfz = objValueOf3;
                return i2 + 4;
            case 9:
            case 10:
            case 11:
                iZzb = zzdpi.zza(bArr, i2, zzdplVar);
                iZzft = zzdplVar.zzhfx;
                objValueOf = Integer.valueOf(iZzft);
                zzdplVar.zzhfz = objValueOf;
                return iZzb;
            case 12:
            case 13:
                iZzb = zzdpi.zzb(bArr, i2, zzdplVar);
                jZzez = zzdplVar.zzhfy;
                objValueOf = Long.valueOf(jZzez);
                zzdplVar.zzhfz = objValueOf;
                return iZzb;
            case 14:
                return zzdpi.zza(zzdsr.zzbbf().zzh(cls), bArr, i2, i3, zzdplVar);
            case 15:
                iZzb = zzdpi.zza(bArr, i2, zzdplVar);
                iZzft = zzdpy.zzft(zzdplVar.zzhfx);
                objValueOf = Integer.valueOf(iZzft);
                zzdplVar.zzhfz = objValueOf;
                return iZzb;
            case 16:
                iZzb = zzdpi.zzb(bArr, i2, zzdplVar);
                jZzez = zzdpy.zzez(zzdplVar.zzhfy);
                objValueOf = Long.valueOf(jZzez);
                zzdplVar.zzhfz = objValueOf;
                return iZzb;
            case 17:
                return zzdpi.zzd(bArr, i2, zzdplVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:186:0x03c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static <T> com.google.android.gms.internal.ads.zzdsk<T> zza(java.lang.Class<T> r35, com.google.android.gms.internal.ads.zzdse r36, com.google.android.gms.internal.ads.zzdso r37, com.google.android.gms.internal.ads.zzdrq r38, com.google.android.gms.internal.ads.zzdtn<?, ?> r39, com.google.android.gms.internal.ads.zzdql<?> r40, com.google.android.gms.internal.ads.zzdrz r41) {
        /*
            Method dump skipped, instruction units count: 1108
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.zza(java.lang.Class, com.google.android.gms.internal.ads.zzdse, com.google.android.gms.internal.ads.zzdso, com.google.android.gms.internal.ads.zzdrq, com.google.android.gms.internal.ads.zzdtn, com.google.android.gms.internal.ads.zzdql, com.google.android.gms.internal.ads.zzdrz):com.google.android.gms.internal.ads.zzdsk");
    }

    private final <K, V, UT, UB> UB zza(int i2, int i3, Map<K, V> map, zzdrc zzdrcVar, UB ub, zzdtn<UT, UB> zzdtnVar) {
        zzdrx<?, ?> zzdrxVarZzas = this.zzhnq.zzas(zzgs(i2));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzdrcVar.zzf(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzdtnVar.zzbbw();
                }
                zzdpu zzdpuVarZzfo = zzdpm.zzfo(zzdry.zza(zzdrxVarZzas, next.getKey(), next.getValue()));
                try {
                    zzdry.zza(zzdpuVarZzfo.zzaxt(), zzdrxVarZzas, next.getKey(), next.getValue());
                    zzdtnVar.zza(ub, i3, zzdpuVarZzfo.zzaxs());
                    it.remove();
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        return ub;
    }

    private final <UT, UB> UB zza(Object obj, int i2, UB ub, zzdtn<UT, UB> zzdtnVar) {
        zzdrc zzdrcVarZzgt;
        int i3 = this.zzhna[i2];
        Object objZzp = zzdtt.zzp(obj, zzgu(i2) & 1048575);
        return (objZzp == null || (zzdrcVarZzgt = zzgt(i2)) == null) ? ub : (UB) zza(i2, i3, this.zzhnq.zzan(objZzp), zzdrcVarZzgt, ub, zzdtnVar);
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

    private static void zza(int i2, Object obj, zzduk zzdukVar) {
        if (obj instanceof String) {
            zzdukVar.zzg(i2, (String) obj);
        } else {
            zzdukVar.zza(i2, (zzdpm) obj);
        }
    }

    private static <UT, UB> void zza(zzdtn<UT, UB> zzdtnVar, T t, zzduk zzdukVar) {
        zzdtnVar.zza(zzdtnVar.zzay(t), zzdukVar);
    }

    private final <K, V> void zza(zzduk zzdukVar, int i2, Object obj, int i3) {
        if (obj != null) {
            zzdukVar.zza(i2, this.zzhnq.zzas(zzgs(i3)), this.zzhnq.zzao(obj));
        }
    }

    private final void zza(Object obj, int i2, zzdsw zzdswVar) {
        long j2;
        Object objZzayc;
        if (zzgw(i2)) {
            j2 = i2 & 1048575;
            objZzayc = zzdswVar.zzayb();
        } else {
            int i3 = i2 & 1048575;
            if (this.zzhng) {
                j2 = i3;
                objZzayc = zzdswVar.readString();
            } else {
                j2 = i3;
                objZzayc = zzdswVar.zzayc();
            }
        }
        zzdtt.zza(obj, j2, objZzayc);
    }

    private final void zza(T t, T t2, int i2) {
        long jZzgu = zzgu(i2) & 1048575;
        if (zze((Object) t2, i2)) {
            Object objZzp = zzdtt.zzp(t, jZzgu);
            Object objZzp2 = zzdtt.zzp(t2, jZzgu);
            if (objZzp != null && objZzp2 != null) {
                zzdtt.zza(t, jZzgu, zzdqx.zzd(objZzp, objZzp2));
                zzf((Object) t, i2);
            } else if (objZzp2 != null) {
                zzdtt.zza(t, jZzgu, objZzp2);
                zzf((Object) t, i2);
            }
        }
    }

    private final boolean zza(T t, int i2, int i3) {
        return zzdtt.zzk(t, (long) (zzgv(i3) & 1048575)) == i2;
    }

    private final boolean zza(T t, int i2, int i3, int i4) {
        return this.zzhnh ? zze((Object) t, i2) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i2, zzdsv zzdsvVar) {
        return zzdsvVar.zzaw(zzdtt.zzp(obj, i2 & 1048575));
    }

    private final int zzam(int i2, int i3) {
        if (i2 < this.zzhnc || i2 > this.zzhnd) {
            return -1;
        }
        return zzan(i2, i3);
    }

    private final int zzan(int i2, int i3) {
        int length = (this.zzhna.length / 3) - 1;
        while (i3 <= length) {
            int i4 = (length + i3) >>> 1;
            int i5 = i4 * 3;
            int i6 = this.zzhna[i5];
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

    private static zzdtq zzav(Object obj) {
        zzdqw zzdqwVar = (zzdqw) obj;
        zzdtq zzdtqVar = zzdqwVar.zzhkr;
        if (zzdtqVar != zzdtq.zzbbx()) {
            return zzdtqVar;
        }
        zzdtq zzdtqVarZzbby = zzdtq.zzbby();
        zzdqwVar.zzhkr = zzdtqVarZzbby;
        return zzdtqVarZzbby;
    }

    private final void zzb(T t, int i2, int i3) {
        zzdtt.zzb(t, zzgv(i3) & 1048575, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzb(T r19, com.google.android.gms.internal.ads.zzduk r20) {
        /*
            Method dump skipped, instruction units count: 1324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.zzb(java.lang.Object, com.google.android.gms.internal.ads.zzduk):void");
    }

    private final void zzb(T t, T t2, int i2) {
        int iZzgu = zzgu(i2);
        int i3 = this.zzhna[i2];
        long j2 = iZzgu & 1048575;
        if (zza(t2, i3, i2)) {
            Object objZzp = zzdtt.zzp(t, j2);
            Object objZzp2 = zzdtt.zzp(t2, j2);
            if (objZzp != null && objZzp2 != null) {
                zzdtt.zza(t, j2, zzdqx.zzd(objZzp, objZzp2));
                zzb(t, i3, i2);
            } else if (objZzp2 != null) {
                zzdtt.zza(t, j2, objZzp2);
                zzb(t, i3, i2);
            }
        }
    }

    private final boolean zzc(T t, T t2, int i2) {
        return zze((Object) t, i2) == zze((Object) t2, i2);
    }

    private static List<?> zze(Object obj, long j2) {
        return (List) zzdtt.zzp(obj, j2);
    }

    private final boolean zze(T t, int i2) {
        if (!this.zzhnh) {
            int iZzgv = zzgv(i2);
            return (zzdtt.zzk(t, (long) (iZzgv & 1048575)) & (1 << (iZzgv >>> 20))) != 0;
        }
        int iZzgu = zzgu(i2);
        long j2 = iZzgu & 1048575;
        switch ((iZzgu & 267386880) >>> 20) {
            case 0:
                return zzdtt.zzo(t, j2) != 0.0d;
            case 1:
                return zzdtt.zzn(t, j2) != 0.0f;
            case 2:
                return zzdtt.zzl(t, j2) != 0;
            case 3:
                return zzdtt.zzl(t, j2) != 0;
            case 4:
                return zzdtt.zzk(t, j2) != 0;
            case 5:
                return zzdtt.zzl(t, j2) != 0;
            case 6:
                return zzdtt.zzk(t, j2) != 0;
            case 7:
                return zzdtt.zzm(t, j2);
            case 8:
                Object objZzp = zzdtt.zzp(t, j2);
                if (objZzp instanceof String) {
                    return !((String) objZzp).isEmpty();
                }
                if (objZzp instanceof zzdpm) {
                    return !zzdpm.zzhgb.equals(objZzp);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzdtt.zzp(t, j2) != null;
            case 10:
                return !zzdpm.zzhgb.equals(zzdtt.zzp(t, j2));
            case 11:
                return zzdtt.zzk(t, j2) != 0;
            case 12:
                return zzdtt.zzk(t, j2) != 0;
            case 13:
                return zzdtt.zzk(t, j2) != 0;
            case 14:
                return zzdtt.zzl(t, j2) != 0;
            case 15:
                return zzdtt.zzk(t, j2) != 0;
            case 16:
                return zzdtt.zzl(t, j2) != 0;
            case 17:
                return zzdtt.zzp(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private static <T> double zzf(T t, long j2) {
        return ((Double) zzdtt.zzp(t, j2)).doubleValue();
    }

    private final void zzf(T t, int i2) {
        if (this.zzhnh) {
            return;
        }
        int iZzgv = zzgv(i2);
        long j2 = iZzgv & 1048575;
        zzdtt.zzb(t, j2, zzdtt.zzk(t, j2) | (1 << (iZzgv >>> 20)));
    }

    private static <T> float zzg(T t, long j2) {
        return ((Float) zzdtt.zzp(t, j2)).floatValue();
    }

    private final zzdsv zzgr(int i2) {
        int i3 = (i2 / 3) << 1;
        zzdsv zzdsvVar = (zzdsv) this.zzhnb[i3];
        if (zzdsvVar != null) {
            return zzdsvVar;
        }
        zzdsv<T> zzdsvVarZzh = zzdsr.zzbbf().zzh((Class) this.zzhnb[i3 + 1]);
        this.zzhnb[i3] = zzdsvVarZzh;
        return zzdsvVarZzh;
    }

    private final Object zzgs(int i2) {
        return this.zzhnb[(i2 / 3) << 1];
    }

    private final zzdrc zzgt(int i2) {
        return (zzdrc) this.zzhnb[((i2 / 3) << 1) + 1];
    }

    private final int zzgu(int i2) {
        return this.zzhna[i2 + 1];
    }

    private final int zzgv(int i2) {
        return this.zzhna[i2 + 2];
    }

    private static boolean zzgw(int i2) {
        return (i2 & 536870912) != 0;
    }

    private final int zzgx(int i2) {
        if (i2 < this.zzhnc || i2 > this.zzhnd) {
            return -1;
        }
        return zzan(i2, 0);
    }

    private static <T> int zzh(T t, long j2) {
        return ((Integer) zzdtt.zzp(t, j2)).intValue();
    }

    private static <T> long zzi(T t, long j2) {
        return ((Long) zzdtt.zzp(t, j2)).longValue();
    }

    private static <T> boolean zzj(T t, long j2) {
        return ((Boolean) zzdtt.zzp(t, j2)).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01b2  */
    @Override // com.google.android.gms.internal.ads.zzdsv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(T r10, T r11) {
        /*
            Method dump skipped, instruction units count: 626
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.equals(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e2 A[PHI: r3
      0x00e2: PHI (r3v13 java.lang.Object) = (r3v11 java.lang.Object), (r3v14 java.lang.Object) binds: [B:67:0x00e0, B:62:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzdsv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int hashCode(T r9) {
        /*
            Method dump skipped, instruction units count: 476
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.hashCode(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final T newInstance() {
        return (T) this.zzhnm.newInstance(this.zzhne);
    }

    /*  JADX ERROR: Type inference failed with stack overflow
        jadx.core.utils.exceptions.JadxOverflowException
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    final int zza(T r30, byte[] r31, int r32, int r33, int r34, com.google.android.gms.internal.ads.zzdpl r35) throws com.google.android.gms.internal.ads.zzdrg {
        /*
            Method dump skipped, instruction units count: 1246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzdpl):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.internal.ads.zzdsv
    public final void zza(T t, zzdsw zzdswVar, zzdqj zzdqjVar) {
        long j2;
        Object objZzd;
        int iZzaye;
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
        zzdrc zzdrcVarZzgt;
        List<Integer> listZza11;
        List<Long> listZza12;
        List<Integer> listZza13;
        List<Long> listZza14;
        if (zzdqjVar == null) {
            throw new NullPointerException();
        }
        zzdtn<?, ?> zzdtnVar = this.zzhno;
        zzdql<?> zzdqlVar = this.zzhnp;
        zzdqm zzdqmVarZzaj = null;
        Object objZza = null;
        while (true) {
            try {
                int iZzays = zzdswVar.zzays();
                int iZzgx = zzgx(iZzays);
                if (iZzgx >= 0) {
                    int iZzgu = zzgu(iZzgx);
                    switch ((267386880 & iZzgu) >>> 20) {
                        case 0:
                            zzdtt.zza(t, iZzgu & 1048575, zzdswVar.readDouble());
                            zzf((Object) t, iZzgx);
                            break;
                        case 1:
                            zzdtt.zza((Object) t, iZzgu & 1048575, zzdswVar.readFloat());
                            zzf((Object) t, iZzgx);
                            break;
                        case 2:
                            zzdtt.zza((Object) t, iZzgu & 1048575, zzdswVar.zzaxw());
                            zzf((Object) t, iZzgx);
                            break;
                        case 3:
                            zzdtt.zza((Object) t, iZzgu & 1048575, zzdswVar.zzaxv());
                            zzf((Object) t, iZzgx);
                            break;
                        case 4:
                            zzdtt.zzb(t, iZzgu & 1048575, zzdswVar.zzaxx());
                            zzf((Object) t, iZzgx);
                            break;
                        case 5:
                            zzdtt.zza((Object) t, iZzgu & 1048575, zzdswVar.zzaxy());
                            zzf((Object) t, iZzgx);
                            break;
                        case 6:
                            zzdtt.zzb(t, iZzgu & 1048575, zzdswVar.zzaxz());
                            zzf((Object) t, iZzgx);
                            break;
                        case 7:
                            zzdtt.zza(t, iZzgu & 1048575, zzdswVar.zzaya());
                            zzf((Object) t, iZzgx);
                            break;
                        case 8:
                            zza(t, iZzgu, zzdswVar);
                            zzf((Object) t, iZzgx);
                            break;
                        case 9:
                            if (zze((Object) t, iZzgx)) {
                                j2 = iZzgu & 1048575;
                                objZzd = zzdqx.zzd(zzdtt.zzp(t, j2), zzdswVar.zza(zzgr(iZzgx), zzdqjVar));
                                zzdtt.zza(t, j2, objZzd);
                            } else {
                                zzdtt.zza(t, iZzgu & 1048575, zzdswVar.zza(zzgr(iZzgx), zzdqjVar));
                                zzf((Object) t, iZzgx);
                            }
                            break;
                        case 10:
                            zzdtt.zza(t, iZzgu & 1048575, zzdswVar.zzayc());
                            zzf((Object) t, iZzgx);
                            break;
                        case 11:
                            zzdtt.zzb(t, iZzgu & 1048575, zzdswVar.zzayd());
                            zzf((Object) t, iZzgx);
                            break;
                        case 12:
                            iZzaye = zzdswVar.zzaye();
                            zzdrc zzdrcVarZzgt2 = zzgt(iZzgx);
                            if (zzdrcVarZzgt2 == null || zzdrcVarZzgt2.zzf(iZzaye)) {
                                zzdtt.zzb(t, iZzgu & 1048575, iZzaye);
                                zzf((Object) t, iZzgx);
                            } else {
                                objZza = zzdsx.zza(iZzays, iZzaye, objZza, (zzdtn<UT, Object>) zzdtnVar);
                            }
                            break;
                        case 13:
                            zzdtt.zzb(t, iZzgu & 1048575, zzdswVar.zzayf());
                            zzf((Object) t, iZzgx);
                            break;
                        case 14:
                            zzdtt.zza((Object) t, iZzgu & 1048575, zzdswVar.zzayg());
                            zzf((Object) t, iZzgx);
                            break;
                        case 15:
                            zzdtt.zzb(t, iZzgu & 1048575, zzdswVar.zzayh());
                            zzf((Object) t, iZzgx);
                            break;
                        case 16:
                            zzdtt.zza((Object) t, iZzgu & 1048575, zzdswVar.zzayi());
                            zzf((Object) t, iZzgx);
                            break;
                        case 17:
                            if (zze((Object) t, iZzgx)) {
                                j2 = iZzgu & 1048575;
                                objZzd = zzdqx.zzd(zzdtt.zzp(t, j2), zzdswVar.zzb(zzgr(iZzgx), zzdqjVar));
                                zzdtt.zza(t, j2, objZzd);
                            } else {
                                zzdtt.zza(t, iZzgu & 1048575, zzdswVar.zzb(zzgr(iZzgx), zzdqjVar));
                                zzf((Object) t, iZzgx);
                            }
                            break;
                        case 18:
                            listZza = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzk(listZza);
                            break;
                        case 19:
                            listZza2 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzl(listZza2);
                            break;
                        case 20:
                            listZza3 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzn(listZza3);
                            break;
                        case 21:
                            listZza4 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzm(listZza4);
                            break;
                        case 22:
                            listZza5 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzo(listZza5);
                            break;
                        case 23:
                            listZza6 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzp(listZza6);
                            break;
                        case 24:
                            listZza7 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzq(listZza7);
                            break;
                        case 25:
                            listZza8 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzr(listZza8);
                            break;
                        case 26:
                            if (zzgw(iZzgu)) {
                                zzdswVar.zzs(this.zzhnn.zza(t, iZzgu & 1048575));
                            } else {
                                zzdswVar.readStringList(this.zzhnn.zza(t, iZzgu & 1048575));
                            }
                            break;
                        case 27:
                            zzdswVar.zza(this.zzhnn.zza(t, iZzgu & 1048575), zzgr(iZzgx), zzdqjVar);
                            break;
                        case 28:
                            zzdswVar.zzt(this.zzhnn.zza(t, iZzgu & 1048575));
                            break;
                        case 29:
                            listZza9 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzu(listZza9);
                            break;
                        case 30:
                            listZza10 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzv(listZza10);
                            zzdrcVarZzgt = zzgt(iZzgx);
                            objZza = zzdsx.zza(iZzays, listZza10, zzdrcVarZzgt, objZza, zzdtnVar);
                            break;
                        case 31:
                            listZza11 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzw(listZza11);
                            break;
                        case 32:
                            listZza12 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzx(listZza12);
                            break;
                        case 33:
                            listZza13 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzy(listZza13);
                            break;
                        case 34:
                            listZza14 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzz(listZza14);
                            break;
                        case 35:
                            listZza = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzk(listZza);
                            break;
                        case 36:
                            listZza2 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzl(listZza2);
                            break;
                        case 37:
                            listZza3 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzn(listZza3);
                            break;
                        case 38:
                            listZza4 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzm(listZza4);
                            break;
                        case 39:
                            listZza5 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzo(listZza5);
                            break;
                        case 40:
                            listZza6 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzp(listZza6);
                            break;
                        case 41:
                            listZza7 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzq(listZza7);
                            break;
                        case 42:
                            listZza8 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzr(listZza8);
                            break;
                        case 43:
                            listZza9 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzu(listZza9);
                            break;
                        case 44:
                            listZza10 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzv(listZza10);
                            zzdrcVarZzgt = zzgt(iZzgx);
                            objZza = zzdsx.zza(iZzays, listZza10, zzdrcVarZzgt, objZza, zzdtnVar);
                            break;
                        case 45:
                            listZza11 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzw(listZza11);
                            break;
                        case 46:
                            listZza12 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzx(listZza12);
                            break;
                        case 47:
                            listZza13 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzy(listZza13);
                            break;
                        case 48:
                            listZza14 = this.zzhnn.zza(t, iZzgu & 1048575);
                            zzdswVar.zzz(listZza14);
                            break;
                        case 49:
                            zzdswVar.zzb(this.zzhnn.zza(t, iZzgu & 1048575), zzgr(iZzgx), zzdqjVar);
                            break;
                        case 50:
                            Object objZzgs = zzgs(iZzgx);
                            long jZzgu = zzgu(iZzgx) & 1048575;
                            Object objZzp = zzdtt.zzp(t, jZzgu);
                            if (objZzp == null) {
                                objZzp = this.zzhnq.zzar(objZzgs);
                                zzdtt.zza(t, jZzgu, objZzp);
                            } else if (this.zzhnq.zzap(objZzp)) {
                                Object objZzar = this.zzhnq.zzar(objZzgs);
                                this.zzhnq.zze(objZzar, objZzp);
                                zzdtt.zza(t, jZzgu, objZzar);
                                objZzp = objZzar;
                            }
                            zzdswVar.zza(this.zzhnq.zzan(objZzp), this.zzhnq.zzas(objZzgs), zzdqjVar);
                            break;
                        case 51:
                            zzdtt.zza(t, iZzgu & 1048575, Double.valueOf(zzdswVar.readDouble()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 52:
                            zzdtt.zza(t, iZzgu & 1048575, Float.valueOf(zzdswVar.readFloat()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 53:
                            zzdtt.zza(t, iZzgu & 1048575, Long.valueOf(zzdswVar.zzaxw()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 54:
                            zzdtt.zza(t, iZzgu & 1048575, Long.valueOf(zzdswVar.zzaxv()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 55:
                            zzdtt.zza(t, iZzgu & 1048575, Integer.valueOf(zzdswVar.zzaxx()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 56:
                            zzdtt.zza(t, iZzgu & 1048575, Long.valueOf(zzdswVar.zzaxy()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 57:
                            zzdtt.zza(t, iZzgu & 1048575, Integer.valueOf(zzdswVar.zzaxz()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 58:
                            zzdtt.zza(t, iZzgu & 1048575, Boolean.valueOf(zzdswVar.zzaya()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 59:
                            zza(t, iZzgu, zzdswVar);
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 60:
                            int i2 = iZzgu & 1048575;
                            if (zza(t, iZzays, iZzgx)) {
                                long j3 = i2;
                                zzdtt.zza(t, j3, zzdqx.zzd(zzdtt.zzp(t, j3), zzdswVar.zza(zzgr(iZzgx), zzdqjVar)));
                            } else {
                                zzdtt.zza(t, i2, zzdswVar.zza(zzgr(iZzgx), zzdqjVar));
                                zzf((Object) t, iZzgx);
                            }
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 61:
                            zzdtt.zza(t, iZzgu & 1048575, zzdswVar.zzayc());
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 62:
                            zzdtt.zza(t, iZzgu & 1048575, Integer.valueOf(zzdswVar.zzayd()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 63:
                            iZzaye = zzdswVar.zzaye();
                            zzdrc zzdrcVarZzgt3 = zzgt(iZzgx);
                            if (zzdrcVarZzgt3 != null && !zzdrcVarZzgt3.zzf(iZzaye)) {
                                objZza = zzdsx.zza(iZzays, iZzaye, objZza, (zzdtn<UT, Object>) zzdtnVar);
                            }
                            zzdtt.zza(t, iZzgu & 1048575, Integer.valueOf(iZzaye));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 64:
                            zzdtt.zza(t, iZzgu & 1048575, Integer.valueOf(zzdswVar.zzayf()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 65:
                            zzdtt.zza(t, iZzgu & 1048575, Long.valueOf(zzdswVar.zzayg()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 66:
                            zzdtt.zza(t, iZzgu & 1048575, Integer.valueOf(zzdswVar.zzayh()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 67:
                            zzdtt.zza(t, iZzgu & 1048575, Long.valueOf(zzdswVar.zzayi()));
                            zzb(t, iZzays, iZzgx);
                            break;
                        case 68:
                            zzdtt.zza(t, iZzgu & 1048575, zzdswVar.zzb(zzgr(iZzgx), zzdqjVar));
                            zzb(t, iZzays, iZzgx);
                            break;
                        default:
                            if (objZza == null) {
                                try {
                                    objZza = zzdtnVar.zzbbw();
                                } catch (zzdrf unused) {
                                    zzdtnVar.zza(zzdswVar);
                                    if (objZza == null) {
                                        objZza = zzdtnVar.zzaz(t);
                                    }
                                    if (!zzdtnVar.zza((Object) objZza, zzdswVar)) {
                                        for (int i3 = this.zzhnk; i3 < this.zzhnl; i3++) {
                                            objZza = zza((Object) t, this.zzhnj[i3], objZza, (zzdtn<UT, Object>) zzdtnVar);
                                        }
                                        if (objZza != null) {
                                            zzdtnVar.zzi(t, (Object) objZza);
                                            return;
                                        }
                                        return;
                                    }
                                }
                            }
                            if (!zzdtnVar.zza((Object) objZza, zzdswVar)) {
                                for (int i4 = this.zzhnk; i4 < this.zzhnl; i4++) {
                                    objZza = zza((Object) t, this.zzhnj[i4], objZza, (zzdtn<UT, Object>) zzdtnVar);
                                }
                                if (objZza != null) {
                                    zzdtnVar.zzi(t, (Object) objZza);
                                    return;
                                }
                                return;
                            }
                            break;
                            break;
                    }
                } else {
                    if (iZzays == Integer.MAX_VALUE) {
                        for (int i5 = this.zzhnk; i5 < this.zzhnl; i5++) {
                            objZza = zza((Object) t, this.zzhnj[i5], objZza, (zzdtn<UT, Object>) zzdtnVar);
                        }
                        if (objZza != null) {
                            zzdtnVar.zzi(t, (Object) objZza);
                            return;
                        }
                        return;
                    }
                    Object objZza2 = !this.zzhnf ? null : zzdqlVar.zza(zzdqjVar, this.zzhne, iZzays);
                    if (objZza2 != null) {
                        if (zzdqmVarZzaj == null) {
                            zzdqmVarZzaj = zzdqlVar.zzaj(t);
                        }
                        zzdqm zzdqmVar = zzdqmVarZzaj;
                        objZza = zzdqlVar.zza(zzdswVar, objZza2, zzdqjVar, zzdqmVar, objZza, zzdtnVar);
                        zzdqmVarZzaj = zzdqmVar;
                    } else {
                        zzdtnVar.zza(zzdswVar);
                        if (objZza == null) {
                            objZza = zzdtnVar.zzaz(t);
                        }
                        if (!zzdtnVar.zza((Object) objZza, zzdswVar)) {
                            for (int i6 = this.zzhnk; i6 < this.zzhnl; i6++) {
                                objZza = zza((Object) t, this.zzhnj[i6], objZza, (zzdtn<UT, Object>) zzdtnVar);
                            }
                            if (objZza != null) {
                                zzdtnVar.zzi(t, (Object) objZza);
                                return;
                            }
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i7 = this.zzhnk; i7 < this.zzhnl; i7++) {
                    objZza = zza((Object) t, this.zzhnj[i7], objZza, (zzdtn<UT, Object>) zzdtnVar);
                }
                if (objZza != null) {
                    zzdtnVar.zzi(t, (Object) objZza);
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
    @Override // com.google.android.gms.internal.ads.zzdsv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r14, com.google.android.gms.internal.ads.zzduk r15) {
        /*
            Method dump skipped, instruction units count: 2742
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.zza(java.lang.Object, com.google.android.gms.internal.ads.zzduk):void");
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
    
        r0 = com.google.android.gms.internal.ads.zzdpi.zza(r12, r8, r11);
        r1 = r11.zzhfx;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01c8, code lost:
    
        if (r0 == r15) goto L105;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x0061. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzdsv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r28, byte[] r29, int r30, int r31, com.google.android.gms.internal.ads.zzdpl r32) throws com.google.android.gms.internal.ads.zzdrg {
        /*
            Method dump skipped, instruction units count: 634
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzdpl):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final void zzak(T t) {
        int i2;
        int i3 = this.zzhnk;
        while (true) {
            i2 = this.zzhnl;
            if (i3 >= i2) {
                break;
            }
            long jZzgu = zzgu(this.zzhnj[i3]) & 1048575;
            Object objZzp = zzdtt.zzp(t, jZzgu);
            if (objZzp != null) {
                zzdtt.zza(t, jZzgu, this.zzhnq.zzaq(objZzp));
            }
            i3++;
        }
        int length = this.zzhnj.length;
        while (i2 < length) {
            this.zzhnn.zzb(t, this.zzhnj[i2]);
            i2++;
        }
        this.zzhno.zzak(t);
        if (this.zzhnf) {
            this.zzhnp.zzak(t);
        }
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
    
        r4 = com.google.android.gms.internal.ads.zzdqf.zzc(r15, (com.google.android.gms.internal.ads.zzdsg) r2.getObject(r20, r8), zzgr(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x06fb, code lost:
    
        if ((r12 & r18) != 0) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x06fd, code lost:
    
        r4 = com.google.android.gms.internal.ads.zzdqf.zzn(r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x0706, code lost:
    
        if ((r12 & r18) != 0) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x0708, code lost:
    
        r8 = com.google.android.gms.internal.ads.zzdqf.zzai(r15, 0);
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
    
        r4 = com.google.android.gms.internal.ads.zzdsx.zzc(r15, r2.getObject(r20, r8), zzgr(r3));
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
    @Override // com.google.android.gms.internal.ads.zzdsv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzau(T r20) {
        /*
            Method dump skipped, instruction units count: 2396
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.zzau(java.lang.Object):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.ads.zzdsv] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.ads.zzdsv] */
    @Override // com.google.android.gms.internal.ads.zzdsv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzaw(T r14) {
        /*
            Method dump skipped, instruction units count: 287
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.zzaw(java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    @Override // com.google.android.gms.internal.ads.zzdsv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzf(T r7, T r8) {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsk.zzf(java.lang.Object, java.lang.Object):void");
    }
}
