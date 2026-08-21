package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdbq extends zzdbd<Object> {
    private final transient int offset;
    private final transient int size;
    private final transient Object[] zzgpo;

    zzdbq(Object[] objArr, int i2, int i3) {
        this.zzgpo = objArr;
        this.offset = i2;
        this.size = i3;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzdaq.zzr(i2, this.size);
        return this.zzgpo[(i2 * 2) + this.offset];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final boolean zzaoo() {
        return true;
    }
}
