package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdce;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdcl extends zzdce.zza {
    private List<zzdar<V>> zzgrc;
    private final /* synthetic */ zzdci zzgrd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdcl(zzdci zzdciVar, zzday<? extends zzddi<? extends V>> zzdayVar, boolean z) {
        super(zzdayVar, z, true);
        this.zzgrd = zzdciVar;
        this.zzgrc = zzdayVar.isEmpty() ? zzdbd.zzaop() : zzdbl.zzdt(zzdayVar.size());
        for (int i2 = 0; i2 < zzdayVar.size(); i2++) {
            this.zzgrc.add(null);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.internal.ads.zzdce.zza
    final void zza(boolean z, int i2, V v) {
        List<zzdar<V>> list = this.zzgrc;
        if (list != 0) {
            list.set(i2, (zzdar<V>) zzdar.zzz(v));
        } else {
            zzdaq.checkState(z || this.zzgrd.isCancelled(), "Future was done before all dependencies completed");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdce.zza
    final void zzapb() {
        super.zzapb();
        this.zzgrc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdce.zza
    final void zzapc() {
        Collection collection = this.zzgrc;
        if (collection != null) {
            this.zzgrd.set(zzj(collection));
        } else {
            zzdaq.checkState(this.zzgrd.isDone());
        }
    }

    abstract C zzj(List<zzdar<V>> list);
}
