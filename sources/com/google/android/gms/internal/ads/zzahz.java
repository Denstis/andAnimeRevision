package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzahz implements zzaxx {
    private final /* synthetic */ zzahn zzdac;
    private final /* synthetic */ zzaie zzdag;

    zzahz(zzahn zzahnVar, zzaie zzaieVar) {
        this.zzdac = zzahnVar;
        this.zzdag = zzaieVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void run() {
        synchronized (this.zzdac.lock) {
            this.zzdac.status = 1;
            zzaug.zzdy("Failed loading new engine. Marking new engine destroyable.");
            this.zzdag.zzri();
        }
    }
}
