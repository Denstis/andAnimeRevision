package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes.dex */
final class zzdbe<E> extends zzdbd<E> {
    private final transient int length;
    private final transient int offset;
    private final /* synthetic */ zzdbd zzgpc;

    zzdbe(zzdbd zzdbdVar, int i2, int i3) {
        this.zzgpc = zzdbdVar;
        this.offset = i2;
        this.length = i3;
    }

    @Override // java.util.List
    public final E get(int i2) {
        zzdaq.zzr(i2, this.length);
        return this.zzgpc.get(i2 + this.offset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.length;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final Object[] zzaok() {
        return this.zzgpc.zzaok();
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final int zzaol() {
        return this.zzgpc.zzaol() + this.offset;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final int zzaom() {
        return this.zzgpc.zzaol() + this.offset + this.length;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final boolean zzaoo() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdbd, java.util.List
    /* JADX INFO: renamed from: zzt, reason: merged with bridge method [inline-methods] */
    public final zzdbd<E> subList(int i2, int i3) {
        zzdaq.zzf(i2, i3, this.length);
        zzdbd zzdbdVar = this.zzgpc;
        int i4 = this.offset;
        return (zzdbd) zzdbdVar.subList(i2 + i4, i3 + i4);
    }
}
