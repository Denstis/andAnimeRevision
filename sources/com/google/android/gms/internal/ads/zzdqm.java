package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzdqm<FieldDescriptorType extends zzdqo<FieldDescriptorType>> {
    private static final zzdqm zzhhs = new zzdqm(true);
    private boolean zzhhq;
    private boolean zzhhr = false;
    final zzdta<FieldDescriptorType, Object> zzhhp = zzdta.zzgy(16);

    private zzdqm() {
    }

    private zzdqm(boolean z) {
        zzaxj();
    }

    static int zza(zzdue zzdueVar, int i2, Object obj) {
        int iZzgd = zzdqf.zzgd(i2);
        if (zzdueVar == zzdue.zzhqa) {
            zzdqx.zzn((zzdsg) obj);
            iZzgd <<= 1;
        }
        return iZzgd + zzb(zzdueVar, obj);
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzhhp.get(fielddescriptortype);
        return obj instanceof zzdrh ? zzdrh.zzbak() : obj;
    }

    static void zza(zzdqf zzdqfVar, zzdue zzdueVar, int i2, Object obj) {
        if (zzdueVar == zzdue.zzhqa) {
            zzdsg zzdsgVar = (zzdsg) obj;
            zzdqx.zzn(zzdsgVar);
            zzdqfVar.zzz(i2, 3);
            zzdsgVar.zzb(zzdqfVar);
            zzdqfVar.zzz(i2, 4);
        }
        zzdqfVar.zzz(i2, zzdueVar.zzbch());
        switch (zzdqp.zzhgt[zzdueVar.ordinal()]) {
            case 1:
                zzdqfVar.zzb(((Double) obj).doubleValue());
                break;
            case 2:
                zzdqfVar.zzf(((Float) obj).floatValue());
                break;
            case 3:
                zzdqfVar.zzfa(((Long) obj).longValue());
                break;
            case 4:
                zzdqfVar.zzfa(((Long) obj).longValue());
                break;
            case 5:
                zzdqfVar.zzfz(((Integer) obj).intValue());
                break;
            case 6:
                zzdqfVar.zzfc(((Long) obj).longValue());
                break;
            case 7:
                zzdqfVar.zzgc(((Integer) obj).intValue());
                break;
            case 8:
                zzdqfVar.zzbh(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzdsg) obj).zzb(zzdqfVar);
                break;
            case 10:
                zzdqfVar.zzj((zzdsg) obj);
                break;
            case 11:
                if (!(obj instanceof zzdpm)) {
                    zzdqfVar.zzhi((String) obj);
                } else {
                    zzdqfVar.zzcz((zzdpm) obj);
                }
                break;
            case 12:
                if (!(obj instanceof zzdpm)) {
                    byte[] bArr = (byte[]) obj;
                    zzdqfVar.zzk(bArr, 0, bArr.length);
                } else {
                    zzdqfVar.zzcz((zzdpm) obj);
                }
                break;
            case 13:
                zzdqfVar.zzga(((Integer) obj).intValue());
                break;
            case 14:
                zzdqfVar.zzgc(((Integer) obj).intValue());
                break;
            case 15:
                zzdqfVar.zzfc(((Long) obj).longValue());
                break;
            case 16:
                zzdqfVar.zzgb(((Integer) obj).intValue());
                break;
            case 17:
                zzdqfVar.zzfb(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof zzdra)) {
                    zzdqfVar.zzfz(((Integer) obj).intValue());
                } else {
                    zzdqfVar.zzfz(((zzdra) obj).zzab());
                }
                break;
        }
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.zzazj()) {
            zza(fielddescriptortype.zzazh(), obj);
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
                zza(fielddescriptortype.zzazh(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzdrh) {
            this.zzhhr = true;
        }
        this.zzhhp.put(fielddescriptortype, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void zza(com.google.android.gms.internal.ads.zzdue r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.ads.zzdqx.checkNotNull(r3)
            int[] r0 = com.google.android.gms.internal.ads.zzdqp.zzhhv
            com.google.android.gms.internal.ads.zzduh r2 = r2.zzbcg()
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
                case 8: goto L1e;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L43
        L15:
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.zzdsg
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.zzdrh
            if (r2 == 0) goto L43
            goto L26
        L1e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.zzdra
            if (r2 == 0) goto L43
        L26:
            r1 = 1
            goto L43
        L28:
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.zzdpm
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L43
            goto L26
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
            r1 = r0
        L43:
            if (r1 == 0) goto L46
            return
        L46:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            goto L4f
        L4e:
            throw r2
        L4f:
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdqm.zza(com.google.android.gms.internal.ads.zzdue, java.lang.Object):void");
    }

    private static Object zzal(Object obj) {
        if (obj instanceof zzdsl) {
            return ((zzdsl) obj).zzbbb();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static <T extends zzdqo<T>> zzdqm<T> zzazc() {
        return zzhhs;
    }

    public static int zzb(zzdqo<?> zzdqoVar, Object obj) {
        zzdue zzdueVarZzazh = zzdqoVar.zzazh();
        int iZzab = zzdqoVar.zzab();
        if (!zzdqoVar.zzazj()) {
            return zza(zzdueVarZzazh, iZzab, obj);
        }
        int iZza = 0;
        List list = (List) obj;
        if (zzdqoVar.zzazk()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iZza += zzb(zzdueVarZzazh, it.next());
            }
            return zzdqf.zzgd(iZzab) + iZza + zzdqf.zzgl(iZza);
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            iZza += zza(zzdueVarZzazh, iZzab, it2.next());
        }
        return iZza;
    }

    private static int zzb(zzdue zzdueVar, Object obj) {
        switch (zzdqp.zzhgt[zzdueVar.ordinal()]) {
            case 1:
                return zzdqf.zzc(((Double) obj).doubleValue());
            case 2:
                return zzdqf.zzg(((Float) obj).floatValue());
            case 3:
                return zzdqf.zzfd(((Long) obj).longValue());
            case 4:
                return zzdqf.zzfe(((Long) obj).longValue());
            case 5:
                return zzdqf.zzge(((Integer) obj).intValue());
            case 6:
                return zzdqf.zzfg(((Long) obj).longValue());
            case 7:
                return zzdqf.zzgh(((Integer) obj).intValue());
            case 8:
                return zzdqf.zzbi(((Boolean) obj).booleanValue());
            case 9:
                return zzdqf.zzl((zzdsg) obj);
            case 10:
                return obj instanceof zzdrh ? zzdqf.zza((zzdrh) obj) : zzdqf.zzk((zzdsg) obj);
            case 11:
                return obj instanceof zzdpm ? zzdqf.zzda((zzdpm) obj) : zzdqf.zzhj((String) obj);
            case 12:
                return obj instanceof zzdpm ? zzdqf.zzda((zzdpm) obj) : zzdqf.zzab((byte[]) obj);
            case 13:
                return zzdqf.zzgf(((Integer) obj).intValue());
            case 14:
                return zzdqf.zzgi(((Integer) obj).intValue());
            case 15:
                return zzdqf.zzfh(((Long) obj).longValue());
            case 16:
                return zzdqf.zzgg(((Integer) obj).intValue());
            case 17:
                return zzdqf.zzff(((Long) obj).longValue());
            case 18:
                return obj instanceof zzdra ? zzdqf.zzgj(((zzdra) obj).zzab()) : zzdqf.zzgj(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static boolean zzb(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzazi() == zzduh.MESSAGE) {
            boolean zZzazj = key.zzazj();
            Object value = entry.getValue();
            if (zZzazj) {
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    if (!((zzdsg) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                if (!(value instanceof zzdsg)) {
                    if (value instanceof zzdrh) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((zzdsg) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    private final void zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzdrh) {
            value = zzdrh.zzbak();
        }
        if (key.zzazj()) {
            Object objZza = zza(key);
            if (objZza == null) {
                objZza = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objZza).add(zzal(it.next()));
            }
            this.zzhhp.put(key, objZza);
            return;
        }
        if (key.zzazi() != zzduh.MESSAGE) {
            this.zzhhp.put(key, zzal(value));
            return;
        }
        Object objZza2 = zza(key);
        if (objZza2 == null) {
            this.zzhhp.put(key, zzal(value));
        } else {
            this.zzhhp.put(key, objZza2 instanceof zzdsl ? key.zza((zzdsl) objZza2, (zzdsl) value) : key.zza(((zzdsg) objZza2).zzazx(), (zzdsg) value).zzazr());
        }
    }

    private static int zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzazi() != zzduh.MESSAGE || key.zzazj() || key.zzazk()) {
            return zzb((zzdqo<?>) key, value);
        }
        boolean z = value instanceof zzdrh;
        int iZzab = entry.getKey().zzab();
        return z ? zzdqf.zzb(iZzab, (zzdrh) value) : zzdqf.zzd(iZzab, (zzdsg) value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() {
        zzdqm zzdqmVar = new zzdqm();
        for (int i2 = 0; i2 < this.zzhhp.zzbbo(); i2++) {
            Map.Entry<K, Object> entryZzgz = this.zzhhp.zzgz(i2);
            zzdqmVar.zza((zzdqo) entryZzgz.getKey(), entryZzgz.getValue());
        }
        Iterator it = this.zzhhp.zzbbp().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzdqmVar.zza((zzdqo) entry.getKey(), entry.getValue());
        }
        zzdqmVar.zzhhr = this.zzhhr;
        return zzdqmVar;
    }

    final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        return this.zzhhr ? new zzdrm(this.zzhhp.zzbbq().iterator()) : this.zzhhp.zzbbq().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzdqm) {
            return this.zzhhp.equals(((zzdqm) obj).zzhhp);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzhhp.hashCode();
    }

    public final boolean isImmutable() {
        return this.zzhhq;
    }

    public final boolean isInitialized() {
        for (int i2 = 0; i2 < this.zzhhp.zzbbo(); i2++) {
            if (!zzb(this.zzhhp.zzgz(i2))) {
                return false;
            }
        }
        Iterator it = this.zzhhp.zzbbp().iterator();
        while (it.hasNext()) {
            if (!zzb((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        return this.zzhhr ? new zzdrm(this.zzhhp.entrySet().iterator()) : this.zzhhp.entrySet().iterator();
    }

    public final void zza(zzdqm<FieldDescriptorType> zzdqmVar) {
        for (int i2 = 0; i2 < zzdqmVar.zzhhp.zzbbo(); i2++) {
            zzc(zzdqmVar.zzhhp.zzgz(i2));
        }
        Iterator it = zzdqmVar.zzhhp.zzbbp().iterator();
        while (it.hasNext()) {
            zzc((Map.Entry) it.next());
        }
    }

    public final void zzaxj() {
        if (this.zzhhq) {
            return;
        }
        this.zzhhp.zzaxj();
        this.zzhhq = true;
    }

    public final int zzazd() {
        int iZzd = 0;
        for (int i2 = 0; i2 < this.zzhhp.zzbbo(); i2++) {
            iZzd += zzd(this.zzhhp.zzgz(i2));
        }
        Iterator it = this.zzhhp.zzbbp().iterator();
        while (it.hasNext()) {
            iZzd += zzd((Map.Entry) it.next());
        }
        return iZzd;
    }
}
