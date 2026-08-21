package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzaij implements zzaxz<zzaha> {
    final /* synthetic */ zzaie zzdar;

    zzaij(zzaie zzaieVar) {
        this.zzdar = zzaieVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxz
    public final /* synthetic */ void zzh(zzaha zzahaVar) {
        final zzaha zzahaVar2 = zzahaVar;
        zzaxn.zzdwm.execute(new Runnable(this, zzahaVar2) { // from class: com.google.android.gms.internal.ads.zzaii
            private final zzaij zzdap;
            private final zzaha zzdaq;

            {
                this.zzdap = this;
                this.zzdaq = zzahaVar2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzaij zzaijVar = this.zzdap;
                zzaha zzahaVar3 = this.zzdaq;
                zzaijVar.zzdar.zzczv.zzh(zzahaVar3);
                zzahaVar3.destroy();
            }
        });
    }
}
