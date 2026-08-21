package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzew<T extends zzey<T>> {
    private static final zzew zzd = new zzew(true);
    final zzhi<T, Object> zza;
    private boolean zzb;
    private boolean zzc;

    private zzew() {
        this.zza = zzhi.zza(16);
    }

    private zzew(zzhi<T, Object> zzhiVar) {
        this.zza = zzhiVar;
        zzb();
    }

    private zzew(boolean z) {
        this(zzhi.zza(0));
        zzb();
    }

    public static int zza(zzey<?> zzeyVar, Object obj) {
        zzim zzimVarZzb = zzeyVar.zzb();
        int iZza = zzeyVar.zza();
        if (!zzeyVar.zzd()) {
            return zza(zzimVarZzb, iZza, obj);
        }
        int iZza2 = 0;
        List list = (List) obj;
        if (zzeyVar.zze()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iZza2 += zzb(zzimVarZzb, it.next());
            }
            return zzen.zze(iZza) + iZza2 + zzen.zzl(iZza2);
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            iZza2 += zza(zzimVarZzb, iZza, it2.next());
        }
        return iZza2;
    }

    static int zza(zzim zzimVar, int i2, Object obj) {
        int iZze = zzen.zze(i2);
        if (zzimVar == zzim.zzj) {
            zzff.zza((zzgo) obj);
            iZze <<= 1;
        }
        return iZze + zzb(zzimVar, obj);
    }

    public static <T extends zzey<T>> zzew<T> zza() {
        return zzd;
    }

    private final Object zza(T t) {
        Object obj = this.zza.get(t);
        if (!(obj instanceof zzfp)) {
            return obj;
        }
        return zzfp.zza();
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzgt) {
            return ((zzgt) obj).clone();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static void zza(zzen zzenVar, zzim zzimVar, int i2, Object obj) {
        if (zzimVar == zzim.zzj) {
            zzgo zzgoVar = (zzgo) obj;
            zzff.zza(zzgoVar);
            zzenVar.zza(i2, 3);
            zzgoVar.zza(zzenVar);
            zzenVar.zza(i2, 4);
        }
        zzenVar.zza(i2, zzimVar.zzb());
        switch (zzev.zzb[zzimVar.ordinal()]) {
            case 1:
                zzenVar.zza(((Double) obj).doubleValue());
                break;
            case 2:
                zzenVar.zza(((Float) obj).floatValue());
                break;
            case 3:
                zzenVar.zza(((Long) obj).longValue());
                break;
            case 4:
                zzenVar.zza(((Long) obj).longValue());
                break;
            case 5:
                zzenVar.zza(((Integer) obj).intValue());
                break;
            case 6:
                zzenVar.zzc(((Long) obj).longValue());
                break;
            case 7:
                zzenVar.zzd(((Integer) obj).intValue());
                break;
            case 8:
                zzenVar.zza(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzgo) obj).zza(zzenVar);
                break;
            case 10:
                zzenVar.zza((zzgo) obj);
                break;
            case 11:
                if (!(obj instanceof zzdu)) {
                    zzenVar.zza((String) obj);
                } else {
                    zzenVar.zza((zzdu) obj);
                }
                break;
            case 12:
                if (!(obj instanceof zzdu)) {
                    byte[] bArr = (byte[]) obj;
                    zzenVar.zzb(bArr, 0, bArr.length);
                } else {
                    zzenVar.zza((zzdu) obj);
                }
                break;
            case 13:
                zzenVar.zzb(((Integer) obj).intValue());
                break;
            case 14:
                zzenVar.zzd(((Integer) obj).intValue());
                break;
            case 15:
                zzenVar.zzc(((Long) obj).longValue());
                break;
            case 16:
                zzenVar.zzc(((Integer) obj).intValue());
                break;
            case 17:
                zzenVar.zzb(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof zzfi)) {
                    zzenVar.zza(((Integer) obj).intValue());
                } else {
                    zzenVar.zza(((zzfi) obj).zza());
                }
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void zza(com.google.android.gms.internal.measurement.zzim r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.measurement.zzff.zza(r3)
            int[] r0 = com.google.android.gms.internal.measurement.zzev.zza
            com.google.android.gms.internal.measurement.zzip r2 = r2.zza()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L40;
                case 2: goto L3d;
                case 3: goto L3a;
                case 4: goto L37;
                case 5: goto L34;
                case 6: goto L31;
                case 7: goto L28;
                case 8: goto L1f;
                case 9: goto L16;
                default: goto L14;
            }
        L14:
            r0 = 0
            goto L42
        L16:
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzgo
            if (r2 != 0) goto L42
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzfp
            if (r2 == 0) goto L14
            goto L42
        L1f:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L42
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzfi
            if (r2 == 0) goto L14
            goto L42
        L28:
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzdu
            if (r2 != 0) goto L42
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L14
            goto L42
        L31:
            boolean r0 = r3 instanceof java.lang.String
            goto L42
        L34:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L42
        L37:
            boolean r0 = r3 instanceof java.lang.Double
            goto L42
        L3a:
            boolean r0 = r3 instanceof java.lang.Float
            goto L42
        L3d:
            boolean r0 = r3 instanceof java.lang.Long
            goto L42
        L40:
            boolean r0 = r3 instanceof java.lang.Integer
        L42:
            if (r0 == 0) goto L45
            return
        L45:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            goto L4e
        L4d:
            throw r2
        L4e:
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzew.zza(com.google.android.gms.internal.measurement.zzim, java.lang.Object):void");
    }

    private static <T extends zzey<T>> boolean zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() == zzip.MESSAGE) {
            boolean zZzd = key.zzd();
            Object value = entry.getValue();
            if (zZzd) {
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    if (!((zzgo) it.next()).zzbl()) {
                        return false;
                    }
                }
            } else {
                if (!(value instanceof zzgo)) {
                    if (value instanceof zzfp) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((zzgo) value).zzbl()) {
                    return false;
                }
            }
        }
        return true;
    }

    private static int zzb(zzim zzimVar, Object obj) {
        switch (zzev.zzb[zzimVar.ordinal()]) {
            case 1:
                return zzen.zzb(((Double) obj).doubleValue());
            case 2:
                return zzen.zzb(((Float) obj).floatValue());
            case 3:
                return zzen.zzd(((Long) obj).longValue());
            case 4:
                return zzen.zze(((Long) obj).longValue());
            case 5:
                return zzen.zzf(((Integer) obj).intValue());
            case 6:
                return zzen.zzg(((Long) obj).longValue());
            case 7:
                return zzen.zzi(((Integer) obj).intValue());
            case 8:
                return zzen.zzb(((Boolean) obj).booleanValue());
            case 9:
                return zzen.zzc((zzgo) obj);
            case 10:
                return obj instanceof zzfp ? zzen.zza((zzfp) obj) : zzen.zzb((zzgo) obj);
            case 11:
                return obj instanceof zzdu ? zzen.zzb((zzdu) obj) : zzen.zzb((String) obj);
            case 12:
                return obj instanceof zzdu ? zzen.zzb((zzdu) obj) : zzen.zzb((byte[]) obj);
            case 13:
                return zzen.zzg(((Integer) obj).intValue());
            case 14:
                return zzen.zzj(((Integer) obj).intValue());
            case 15:
                return zzen.zzh(((Long) obj).longValue());
            case 16:
                return zzen.zzh(((Integer) obj).intValue());
            case 17:
                return zzen.zzf(((Long) obj).longValue());
            case 18:
                return obj instanceof zzfi ? zzen.zzk(((zzfi) obj).zza()) : zzen.zzk(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private final void zzb(T t, Object obj) {
        if (!t.zzd()) {
            zza(t.zzb(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList.get(i2);
                i2++;
                zza(t.zzb(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzfp) {
            this.zzc = true;
        }
        this.zza.put(t, obj);
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzfp) {
            value = zzfp.zza();
        }
        if (key.zzd()) {
            Object objZza = zza((zzey) key);
            if (objZza == null) {
                objZza = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objZza).add(zza(it.next()));
            }
            this.zza.put(key, objZza);
            return;
        }
        if (key.zzc() != zzip.MESSAGE) {
            this.zza.put(key, zza(value));
            return;
        }
        Object objZza2 = zza((zzey) key);
        if (objZza2 == null) {
            this.zza.put(key, zza(value));
        } else {
            this.zza.put(key, objZza2 instanceof zzgt ? key.zza((zzgt) objZza2, (zzgt) value) : key.zza(((zzgo) objZza2).zzbr(), (zzgo) value).zzu());
        }
    }

    private static int zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzc() != zzip.MESSAGE || key.zzd() || key.zze()) {
            return zza((zzey<?>) key, value);
        }
        boolean z = value instanceof zzfp;
        int iZza = entry.getKey().zza();
        return z ? zzen.zzb(iZza, (zzfp) value) : zzen.zzb(iZza, (zzgo) value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() {
        zzew zzewVar = new zzew();
        for (int i2 = 0; i2 < this.zza.zzc(); i2++) {
            Map.Entry<K, Object> entryZzb = this.zza.zzb(i2);
            zzewVar.zzb((zzey) entryZzb.getKey(), entryZzb.getValue());
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzewVar.zzb((zzey) entry.getKey(), entry.getValue());
        }
        zzewVar.zzc = this.zzc;
        return zzewVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzew) {
            return this.zza.equals(((zzew) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(zzew<T> zzewVar) {
        for (int i2 = 0; i2 < zzewVar.zza.zzc(); i2++) {
            zzb(zzewVar.zza.zzb(i2));
        }
        Iterator it = zzewVar.zza.zzd().iterator();
        while (it.hasNext()) {
            zzb((Map.Entry) it.next());
        }
    }

    public final void zzb() {
        if (this.zzb) {
            return;
        }
        this.zza.zza();
        this.zzb = true;
    }

    public final boolean zzc() {
        return this.zzb;
    }

    public final Iterator<Map.Entry<T, Object>> zzd() {
        return this.zzc ? new zzfu(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    final Iterator<Map.Entry<T, Object>> zze() {
        return this.zzc ? new zzfu(this.zza.zze().iterator()) : this.zza.zze().iterator();
    }

    public final boolean zzf() {
        for (int i2 = 0; i2 < this.zza.zzc(); i2++) {
            if (!zza((Map.Entry) this.zza.zzb(i2))) {
                return false;
            }
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            if (!zza((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int zzg() {
        int iZzc = 0;
        for (int i2 = 0; i2 < this.zza.zzc(); i2++) {
            iZzc += zzc(this.zza.zzb(i2));
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            iZzc += zzc((Map.Entry) it.next());
        }
        return iZzc;
    }
}
