package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzcbc implements zzbnb, zzbog, zzbpc {
    private final zzcbl zzfru;
    private final zzcbo zzfrv;

    public zzcbc(zzcbl zzcblVar, zzcbo zzcboVar) {
        this.zzfru = zzcblVar;
        this.zzfrv = zzcboVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void onAdFailedToLoad(int i2) {
        this.zzfrv.zzm(this.zzfru.zzqd());
    }

    @Override // com.google.android.gms.internal.ads.zzbog
    public final void onAdLoaded() {
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zza(zzcvz zzcvzVar) {
        this.zzfru.zzb(zzcvzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzb(zzape zzapeVar) {
        this.zzfru.zzi(zzapeVar.zzdma);
    }
}
