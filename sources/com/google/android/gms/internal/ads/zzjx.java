package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzjx implements zzjv {
    private final zzoc zzaut;
    private final int zzavb;
    private final int zzavc;

    public zzjx(zzju zzjuVar) {
        this.zzaut = zzjuVar.zzaut;
        this.zzaut.zzbg(12);
        this.zzavb = this.zzaut.zzir();
        this.zzavc = this.zzaut.zzir();
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    public final int zzgj() {
        return this.zzavc;
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    public final int zzgk() {
        int i2 = this.zzavb;
        return i2 == 0 ? this.zzaut.zzir() : i2;
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    public final boolean zzgl() {
        return this.zzavb != 0;
    }
}
