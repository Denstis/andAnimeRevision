package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzags extends zzbdv {
    private final /* synthetic */ zzagm zzcza;

    private zzags(zzagm zzagmVar) {
        this.zzcza = zzagmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdv
    public final void zza(zzbdy zzbdyVar) {
        if (this.zzcza.zzcyx != null) {
            this.zzcza.zzcyx.zzre();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdv
    public final void zzb(zzbdy zzbdyVar) {
        this.zzcza.zzg(zzbdyVar.uri);
    }

    @Override // com.google.android.gms.internal.ads.zzbdv
    public final boolean zzc(zzbdy zzbdyVar) {
        return this.zzcza.zzg(zzbdyVar.uri);
    }
}
