package com.google.android.gms.internal.measurement;

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
class zzhi<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private final int zza;
    private List<zzhn> zzb;
    private Map<K, V> zzc;
    private boolean zzd;
    private volatile zzhp zze;
    private Map<K, V> zzf;
    private volatile zzhj zzg;

    private zzhi(int i2) {
        this.zza = i2;
        this.zzb = Collections.emptyList();
        this.zzc = Collections.emptyMap();
        this.zzf = Collections.emptyMap();
    }

    /* synthetic */ zzhi(int i2, zzhh zzhhVar) {
        this(i2);
    }

    private final int zza(K k2) {
        int size = this.zzb.size() - 1;
        if (size >= 0) {
            int iCompareTo = k2.compareTo((Comparable) this.zzb.get(size).getKey());
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
            int iCompareTo2 = k2.compareTo((Comparable) this.zzb.get(i3).getKey());
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

    static <FieldDescriptorType extends zzey<FieldDescriptorType>> zzhi<FieldDescriptorType, Object> zza(int i2) {
        return new zzhh(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzc(int i2) {
        zzf();
        V v = (V) this.zzb.remove(i2).getValue();
        if (!this.zzc.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzg().entrySet().iterator();
            this.zzb.add(new zzhn(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzf() {
        if (this.zzd) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzg() {
        zzf();
        if (this.zzc.isEmpty() && !(this.zzc instanceof TreeMap)) {
            this.zzc = new TreeMap();
            this.zzf = ((TreeMap) this.zzc).descendingMap();
        }
        return (SortedMap) this.zzc;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzf();
        if (!this.zzb.isEmpty()) {
            this.zzb.clear();
        }
        if (this.zzc.isEmpty()) {
            return;
        }
        this.zzc.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza(comparable) >= 0 || this.zzc.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zze == null) {
            this.zze = new zzhp(this, null);
        }
        return this.zze;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhi)) {
            return super.equals(obj);
        }
        zzhi zzhiVar = (zzhi) obj;
        int size = size();
        if (size != zzhiVar.size()) {
            return false;
        }
        int iZzc = zzc();
        if (iZzc != zzhiVar.zzc()) {
            return entrySet().equals(zzhiVar.entrySet());
        }
        for (int i2 = 0; i2 < iZzc; i2++) {
            if (!zzb(i2).equals(zzhiVar.zzb(i2))) {
                return false;
            }
        }
        if (iZzc != size) {
            return this.zzc.equals(zzhiVar.zzc);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        return iZza >= 0 ? (V) this.zzb.get(iZza).getValue() : this.zzc.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iZzc = zzc();
        int iHashCode = 0;
        for (int i2 = 0; i2 < iZzc; i2++) {
            iHashCode += this.zzb.get(i2).hashCode();
        }
        return this.zzc.size() > 0 ? iHashCode + this.zzc.hashCode() : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzf();
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        if (iZza >= 0) {
            return zzc(iZza);
        }
        if (this.zzc.isEmpty()) {
            return null;
        }
        return this.zzc.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzb.size() + this.zzc.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final V put(K k2, V v) {
        zzf();
        int iZza = zza(k2);
        if (iZza >= 0) {
            return (V) this.zzb.get(iZza).setValue(v);
        }
        zzf();
        if (this.zzb.isEmpty() && !(this.zzb instanceof ArrayList)) {
            this.zzb = new ArrayList(this.zza);
        }
        int i2 = -(iZza + 1);
        if (i2 >= this.zza) {
            return zzg().put(k2, v);
        }
        int size = this.zzb.size();
        int i3 = this.zza;
        if (size == i3) {
            zzhn zzhnVarRemove = this.zzb.remove(i3 - 1);
            zzg().put((Comparable) zzhnVarRemove.getKey(), zzhnVarRemove.getValue());
        }
        this.zzb.add(i2, new zzhn(this, k2, v));
        return null;
    }

    public void zza() {
        if (this.zzd) {
            return;
        }
        this.zzc = this.zzc.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzc);
        this.zzf = this.zzf.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzf);
        this.zzd = true;
    }

    public final Map.Entry<K, V> zzb(int i2) {
        return this.zzb.get(i2);
    }

    public final boolean zzb() {
        return this.zzd;
    }

    public final int zzc() {
        return this.zzb.size();
    }

    public final Iterable<Map.Entry<K, V>> zzd() {
        return this.zzc.isEmpty() ? zzhm.zza() : this.zzc.entrySet();
    }

    final Set<Map.Entry<K, V>> zze() {
        if (this.zzg == null) {
            this.zzg = new zzhj(this, null);
        }
        return this.zzg;
    }
}
