package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdbv<E> extends zzdbg<E> {
    private final transient E zzgpx;
    private transient int zzgpy;

    zzdbv(E e2) {
        this.zzgpx = (E) zzdaq.checkNotNull(e2);
    }

    zzdbv(E e2, int i2) {
        this.zzgpx = e2;
        this.zzgpy = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zzgpx.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdbg, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i2 = this.zzgpy;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = this.zzgpx.hashCode();
        this.zzgpy = iHashCode;
        return iHashCode;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String string = this.zzgpx.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2);
        sb.append('[');
        sb.append(string);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final int zza(Object[] objArr, int i2) {
        objArr[i2] = this.zzgpx;
        return i2 + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzdbg, com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzaoj */
    public final zzdbu<E> iterator() {
        return new zzdbi(this.zzgpx);
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final boolean zzaoo() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    final boolean zzaoq() {
        return this.zzgpy != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    final zzdbd<E> zzaor() {
        return zzdbd.zzad(this.zzgpx);
    }
}
