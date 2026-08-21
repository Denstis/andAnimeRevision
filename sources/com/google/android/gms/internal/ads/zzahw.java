package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzahw implements zzaxz<zzaha> {
    private final /* synthetic */ zzahn zzdac;
    private final /* synthetic */ zzaie zzdag;

    zzahw(zzahn zzahnVar, zzaie zzaieVar) {
        this.zzdac = zzahnVar;
        this.zzdag = zzaieVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxz
    public final /* synthetic */ void zzh(zzaha zzahaVar) {
        synchronized (this.zzdac.lock) {
            this.zzdac.status = 0;
            if (this.zzdac.zzczw != null && this.zzdag != this.zzdac.zzczw) {
                zzaug.zzdy("New JS engine is loaded, marking previous one as destroyable.");
                this.zzdac.zzczw.zzri();
            }
            this.zzdac.zzczw = this.zzdag;
        }
    }
}
