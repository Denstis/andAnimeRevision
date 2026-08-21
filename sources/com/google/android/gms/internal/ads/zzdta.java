package com.google.android.gms.internal.ads;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
class zzdta<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzhhq;
    private final int zzhob;
    private List<zzdtf> zzhoc;
    private Map<K, V> zzhod;
    private volatile zzdth zzhoe;
    private Map<K, V> zzhof;
    private volatile zzdtb zzhog;

    private zzdta(int i2) {
        this.zzhob = i2;
        this.zzhoc = Collections.emptyList();
        this.zzhod = Collections.emptyMap();
        this.zzhof = Collections.emptyMap();
    }

    /* synthetic */ zzdta(int i2, zzdsz zzdszVar) {
        this(i2);
    }

    private final int zza(K k2) {
        int size = this.zzhoc.size() - 1;
        if (size >= 0) {
            int iCompareTo = k2.compareTo((Comparable) this.zzhoc.get(size).getKey());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) / 2;
            int iCompareTo2 = k2.compareTo((Comparable) this.zzhoc.get(i3).getKey());
            if (iCompareTo2 < 0) {
                size = i3 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i3;
                }
                i2 = i3 + 1;
            }
        }
        return -(i2 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbbr() {
        if (this.zzhhq) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzbbs() {
        zzbbr();
        if (this.zzhod.isEmpty() && !(this.zzhod instanceof TreeMap)) {
            this.zzhod = new TreeMap();
            this.zzhof = ((TreeMap) this.zzhod).descendingMap();
        }
        return (SortedMap) this.zzhod;
    }

    static <FieldDescriptorType extends zzdqo<FieldDescriptorType>> zzdta<FieldDescriptorType, Object> zzgy(int i2) {
        return new zzdsz(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzha(int i2) {
        zzbbr();
        V v = (V) this.zzhoc.remove(i2).getValue();
        if (!this.zzhod.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzbbs().entrySet().iterator();
            this.zzhoc.add(new zzdtf(this, it.next()));
            it.remove();
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzbbr();
        if (!this.zzhoc.isEmpty()) {
            this.zzhoc.clear();
        }
        if (this.zzhod.isEmpty()) {
            return;
        }
        this.zzhod.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza(comparable) >= 0 || this.zzhod.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzhoe == null) {
            this.zzhoe = new zzdth(this, null);
        }
        return this.zzhoe;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdta)) {
            return super.equals(obj);
        }
        zzdta zzdtaVar = (zzdta) obj;
        int size = size();
        if (size != zzdtaVar.size()) {
            return false;
        }
        int iZzbbo = zzbbo();
        if (iZzbbo != zzdtaVar.zzbbo()) {
            return entrySet().equals(zzdtaVar.entrySet());
        }
        for (int i2 = 0; i2 < iZzbbo; i2++) {
            if (!zzgz(i2).equals(zzdtaVar.zzgz(i2))) {
                return false;
            }
        }
        if (iZzbbo != size) {
            return this.zzhod.equals(zzdtaVar.zzhod);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        return iZza >= 0 ? (V) this.zzhoc.get(iZza).getValue() : this.zzhod.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iZzbbo = zzbbo();
        int iHashCode = 0;
        for (int i2 = 0; i2 < iZzbbo; i2++) {
            iHashCode += this.zzhoc.get(i2).hashCode();
        }
        return this.zzhod.size() > 0 ? iHashCode + this.zzhod.hashCode() : iHashCode;
    }

    public final boolean isImmutable() {
        return this.zzhhq;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzbbr();
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        if (iZza >= 0) {
            return zzha(iZza);
        }
        if (this.zzhod.isEmpty()) {
            return null;
        }
        return this.zzhod.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzhoc.size() + this.zzhod.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final V put(K k2, V v) {
        zzbbr();
        int iZza = zza(k2);
        if (iZza >= 0) {
            return (V) this.zzhoc.get(iZza).setValue(v);
        }
        zzbbr();
        if (this.zzhoc.isEmpty() && !(this.zzhoc instanceof ArrayList)) {
            this.zzhoc = new ArrayList(this.zzhob);
        }
        int i2 = -(iZza + 1);
        if (i2 >= this.zzhob) {
            return zzbbs().put(k2, v);
        }
        int size = this.zzhoc.size();
        int i3 = this.zzhob;
        if (size == i3) {
            zzdtf zzdtfVarRemove = this.zzhoc.remove(i3 - 1);
            zzbbs().put((Comparable) zzdtfVarRemove.getKey(), zzdtfVarRemove.getValue());
        }
        this.zzhoc.add(i2, new zzdtf(this, k2, v));
        return null;
    }

    public void zzaxj() {
        if (this.zzhhq) {
            return;
        }
        this.zzhod = this.zzhod.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzhod);
        this.zzhof = this.zzhof.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzhof);
        this.zzhhq = true;
    }

    public final int zzbbo() {
        return this.zzhoc.size();
    }

    public final Iterable<Map.Entry<K, V>> zzbbp() {
        return this.zzhod.isEmpty() ? zzdte.zzbbu() : this.zzhod.entrySet();
    }

    final Set<Map.Entry<K, V>> zzbbq() {
        if (this.zzhog == null) {
            this.zzhog = new zzdtb(this, null);
        }
        return this.zzhog;
    }

    public final Map.Entry<K, V> zzgz(int i2) {
        return this.zzhoc.get(i2);
    }
}
