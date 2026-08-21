package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzcmm extends zzvc {
    private boolean zzadc = false;
    private final String zzbqy;
    private final zzcmq<zzbkk> zzgcs;
    private String zzgct;
    private String zzgcu;

    public zzcmm(zzcmq<zzbkk> zzcmqVar, String str) {
        this.zzgcs = zzcmqVar;
        this.zzbqy = str;
    }

    static /* synthetic */ boolean zza(zzcmm zzcmmVar, boolean z) {
        zzcmmVar.zzadc = false;
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final synchronized String getMediationAdapterClassName() {
        return this.zzgct;
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final synchronized boolean isLoading() {
        return this.zzgcs.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final synchronized void zza(zztx zztxVar, int i2) {
        this.zzgct = null;
        this.zzgcu = null;
        this.zzadc = this.zzgcs.zza(zztxVar, this.zzbqy, new zzcmv(i2), new zzcmp(this));
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzb(zztx zztxVar) {
        zza(zztxVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final synchronized String zzju() {
        return this.zzgcu;
    }
}
