package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdce;

/* JADX INFO: loaded from: classes.dex */
final class zzdcr extends zzdce.zza {
    private final /* synthetic */ zzdcm zzgrg;
    private zzdco zzgrk;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdcr(zzdcm zzdcmVar, zzday<? extends zzddi<?>> zzdayVar, boolean z, zzdco zzdcoVar) {
        super(zzdayVar, z, false);
        this.zzgrg = zzdcmVar;
        this.zzgrk = zzdcoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdce.zza
    final void interruptTask() {
        zzdco zzdcoVar = this.zzgrk;
        if (zzdcoVar != null) {
            zzdcoVar.interruptTask();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdce.zza
    final void zza(boolean z, int i2, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzdce.zza
    final void zzapb() {
        super.zzapb();
        this.zzgrk = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdce.zza
    final void zzapc() {
        zzdco zzdcoVar = this.zzgrk;
        if (zzdcoVar != null) {
            zzdcoVar.execute();
        } else {
            zzdaq.checkState(this.zzgrg.isDone());
        }
    }
}
