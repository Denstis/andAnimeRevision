package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzln implements zzmd {
    private final int track;
    private final /* synthetic */ zzli zzazs;

    public zzln(zzli zzliVar, int i2) {
        this.zzazs = zzliVar;
        this.track = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzmd
    public final boolean isReady() {
        return this.zzazs.zzas(this.track);
    }

    @Override // com.google.android.gms.internal.ads.zzmd
    public final int zzb(zzgq zzgqVar, zzik zzikVar, boolean z) {
        return this.zzazs.zza(this.track, zzgqVar, zzikVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzmd
    public final void zzeb(long j2) {
        this.zzazs.zzd(this.track, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzmd
    public final void zzhe() {
        this.zzazs.zzhe();
    }
}
