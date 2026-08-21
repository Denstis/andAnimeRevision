package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class zzfw extends zzdo<String> implements zzfv, RandomAccess {
    private static final zzfw zza;
    private static final zzfv zzb;
    private final List<Object> zzc;

    static {
        zzfw zzfwVar = new zzfw();
        zza = zzfwVar;
        zzfwVar.h_();
        zzb = zza;
    }

    public zzfw() {
        this(10);
    }

    public zzfw(int i2) {
        this((ArrayList<Object>) new ArrayList(i2));
    }

    private zzfw(ArrayList<Object> arrayList) {
        this.zzc = arrayList;
    }

    private static String zza(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzdu ? ((zzdu) obj).zzb() : zzff.zzb((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        zzc();
        this.zzc.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection<? extends String> collection) {
        zzc();
        if (collection instanceof zzfv) {
            collection = ((zzfv) collection).zzb();
        }
        boolean zAddAll = this.zzc.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzc();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzfv
    public final zzfv g_() {
        return zza() ? new zzia(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        Object obj = this.zzc.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdu) {
            zzdu zzduVar = (zzdu) obj;
            String strZzb = zzduVar.zzb();
            if (zzduVar.zzc()) {
                this.zzc.set(i2, strZzb);
            }
            return strZzb;
        }
        byte[] bArr = (byte[]) obj;
        String strZzb2 = zzff.zzb(bArr);
        if (zzff.zza(bArr)) {
            this.zzc.set(i2, strZzb2);
        }
        return strZzb2;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zzc();
        Object objRemove = this.zzc.remove(i2);
        ((AbstractList) this).modCount++;
        return zza(objRemove);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        zzc();
        return zza(this.zzc.set(i2, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzfl
    public final /* synthetic */ zzfl zza(int i2) {
        if (i2 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i2);
        arrayList.addAll(this.zzc);
        return new zzfw((ArrayList<Object>) arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.zzfv
    public final void zza(zzdu zzduVar) {
        zzc();
        this.zzc.add(zzduVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, com.google.android.gms.internal.measurement.zzfl
    public final /* bridge */ /* synthetic */ boolean zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzfv
    public final Object zzb(int i2) {
        return this.zzc.get(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzfv
    public final List<?> zzb() {
        return Collections.unmodifiableList(this.zzc);
    }
}
