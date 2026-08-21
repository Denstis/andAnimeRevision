package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
final class zzdtf<K, V> implements Comparable<zzdtf>, Map.Entry<K, V> {
    private V value;
    private final /* synthetic */ zzdta zzhoh;

    /* JADX INFO: Incorrect field signature: TK; */
    private final Comparable zzhol;

    /* JADX WARN: Multi-variable type inference failed */
    zzdtf(zzdta zzdtaVar, K k2, V v) {
        this.zzhoh = zzdtaVar;
        this.zzhol = k2;
        this.value = v;
    }

    zzdtf(zzdta zzdtaVar, Map.Entry<K, V> entry) {
        this(zzdtaVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean equals(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzdtf zzdtfVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzdtfVar.getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return equals(this.zzhol, entry.getKey()) && equals(this.value, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zzhol;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.zzhol;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.value;
        return iHashCode ^ (v != null ? v.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.zzhoh.zzbbr();
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zzhol);
        String strValueOf2 = String.valueOf(this.value);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(strValueOf2).length());
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        return sb.toString();
    }
}
