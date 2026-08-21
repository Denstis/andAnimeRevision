package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdbn<E> extends zzdbd<E> {
    static final zzdbd<Object> zzgpp = new zzdbn(new Object[0], 0);
    private final transient int size;
    private final transient Object[] zzgpq;

    zzdbn(Object[] objArr, int i2) {
        this.zzgpq = objArr;
        this.size = i2;
    }

    @Override // java.util.List
    public final E get(int i2) {
        zzdaq.zzr(i2, this.size);
        return (E) this.zzgpq[i2];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdbd, com.google.android.gms.internal.ads.zzday
    final int zza(Object[] objArr, int i2) {
        System.arraycopy(this.zzgpq, 0, objArr, i2, this.size);
        return i2 + this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final Object[] zzaok() {
        return this.zzgpq;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final int zzaol() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final int zzaom() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final boolean zzaoo() {
        return false;
    }
}
