package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdbt<E> extends zzdbg<E> {
    static final zzdbt<Object> zzgpu = new zzdbt<>(new Object[0], 0, null, 0, 0);
    private final transient int mask;
    private final transient int size;
    private final transient int zzafv;
    private final transient Object[] zzgpv;
    private final transient Object[] zzgpw;

    zzdbt(Object[] objArr, int i2, Object[] objArr2, int i3, int i4) {
        this.zzgpv = objArr;
        this.zzgpw = objArr2;
        this.mask = i3;
        this.zzafv = i2;
        this.size = i4;
    }

    @Override // com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Object[] objArr = this.zzgpw;
        if (obj == null || objArr == null) {
            return false;
        }
        int iZzdp = zzdaz.zzdp(obj == null ? 0 : obj.hashCode());
        while (true) {
            int i2 = iZzdp & this.mask;
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iZzdp = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbg, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zzafv;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final int zza(Object[] objArr, int i2) {
        System.arraycopy(this.zzgpv, 0, objArr, i2, this.size);
        return i2 + this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdbg, com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzaoj */
    public final zzdbu<E> iterator() {
        return (zzdbu) zzaon().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final Object[] zzaok() {
        return this.zzgpv;
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

    @Override // com.google.android.gms.internal.ads.zzdbg
    final boolean zzaoq() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    final zzdbd<E> zzaor() {
        return zzdbd.zzb(this.zzgpv, this.size);
    }
}
