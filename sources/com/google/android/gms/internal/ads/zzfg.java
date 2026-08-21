package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
public final class zzfg extends zzfl {
    private final View zzzs;

    public zzfg(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3, View view) {
        super(zzdxVar, str, str2, zzbVar, i2, 57);
        this.zzzs = view;
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        if (this.zzzs != null) {
            Boolean bool = (Boolean) zzuv.zzon().zzd(zzza.zzcno);
            zzeh zzehVar = new zzeh((String) this.zzaal.invoke(null, this.zzzs, this.zzvo.getContext().getResources().getDisplayMetrics(), bool));
            zzbo.zza.zzf.C0156zza c0156zzaZzar = zzbo.zza.zzf.zzar();
            c0156zzaZzar.zzdc(zzehVar.zzzm.longValue()).zzdd(zzehVar.zzzn.longValue()).zzde(zzehVar.zzzo.longValue());
            if (bool.booleanValue()) {
                c0156zzaZzar.zzdf(zzehVar.zzzp.longValue());
            }
            this.zzaaa.zzb((zzbo.zza.zzf) c0156zzaZzar.zzazr());
        }
    }
}
