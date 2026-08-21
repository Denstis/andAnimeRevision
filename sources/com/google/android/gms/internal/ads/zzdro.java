package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class zzdro extends zzdpg<String> implements zzdrn, RandomAccess {
    private static final zzdro zzhmi;
    private static final zzdrn zzhmj;
    private final List<Object> zzhmk;

    static {
        zzdro zzdroVar = new zzdro();
        zzhmi = zzdroVar;
        zzdroVar.zzaxj();
        zzhmj = zzhmi;
    }

    public zzdro() {
        this(10);
    }

    public zzdro(int i2) {
        this((ArrayList<Object>) new ArrayList(i2));
    }

    private zzdro(ArrayList<Object> arrayList) {
        this.zzhmk = arrayList;
    }

    private static String zzam(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzdpm ? ((zzdpm) obj).zzaxn() : zzdqx.zzad((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        zzaxk();
        this.zzhmk.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection<? extends String> collection) {
        zzaxk();
        if (collection instanceof zzdrn) {
            collection = ((zzdrn) collection).zzban();
        }
        boolean zAddAll = this.zzhmk.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzaxk();
        this.zzhmk.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        Object obj = this.zzhmk.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdpm) {
            zzdpm zzdpmVar = (zzdpm) obj;
            String strZzaxn = zzdpmVar.zzaxn();
            if (zzdpmVar.zzaxo()) {
                this.zzhmk.set(i2, strZzaxn);
            }
            return strZzaxn;
        }
        byte[] bArr = (byte[]) obj;
        String strZzad = zzdqx.zzad(bArr);
        if (zzdqx.zzac(bArr)) {
            this.zzhmk.set(i2, strZzad);
        }
        return strZzad;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zzaxk();
        Object objRemove = this.zzhmk.remove(i2);
        ((AbstractList) this).modCount++;
        return zzam(objRemove);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        zzaxk();
        return zzam(this.zzhmk.set(i2, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzhmk.size();
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, com.google.android.gms.internal.ads.zzdrd
    public final /* bridge */ /* synthetic */ boolean zzaxi() {
        return super.zzaxi();
    }

    @Override // com.google.android.gms.internal.ads.zzdrn
    public final List<?> zzban() {
        return Collections.unmodifiableList(this.zzhmk);
    }

    @Override // com.google.android.gms.internal.ads.zzdrn
    public final zzdrn zzbao() {
        return zzaxi() ? new zzdts(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.zzdrn
    public final void zzdb(zzdpm zzdpmVar) {
        zzaxk();
        this.zzhmk.add(zzdpmVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdrd
    public final /* synthetic */ zzdrd zzfl(int i2) {
        if (i2 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i2);
        arrayList.addAll(this.zzhmk);
        return new zzdro((ArrayList<Object>) arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzdrn
    public final Object zzgq(int i2) {
        return this.zzhmk.get(i2);
    }
}
