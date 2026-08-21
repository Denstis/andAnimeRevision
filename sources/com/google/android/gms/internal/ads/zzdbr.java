package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdbr<K> extends zzdbg<K> {
    private final transient zzdbd<K> zzgpd;
    private final transient zzdbh<K, ?> zzgps;

    zzdbr(zzdbh<K, ?> zzdbhVar, zzdbd<K> zzdbdVar) {
        this.zzgps = zzdbhVar;
        this.zzgpd = zzdbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zzgps.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzgps.size();
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final int zza(Object[] objArr, int i2) {
        return zzaon().zza(objArr, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdbg, com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzaoj */
    public final zzdbu<K> iterator() {
        return (zzdbu) zzaon().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdbg, com.google.android.gms.internal.ads.zzday
    public final zzdbd<K> zzaon() {
        return this.zzgpd;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final boolean zzaoo() {
        return true;
    }
}
