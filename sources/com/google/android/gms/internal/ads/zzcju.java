package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcju implements zzcga<zzbyz> {
    private final zzaxl zzblh;
    private final Executor zzfbx;
    private final zzcwe zzfga;
    private final zzbzl zzfnm;
    private final zzbzc zzfzm;
    private final Context zzlk;

    public zzcju(Context context, zzaxl zzaxlVar, zzcwe zzcweVar, Executor executor, zzbzc zzbzcVar, zzbzl zzbzlVar) {
        this.zzlk = context;
        this.zzfga = zzcweVar;
        this.zzfzm = zzbzcVar;
        this.zzfbx = executor;
        this.zzblh = zzaxlVar;
        this.zzfnm = zzbzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        zzcvv zzcvvVar = zzcvrVar.zzgje;
        return (zzcvvVar == null || zzcvvVar.zzdib == null) ? false : true;
    }

    final /* synthetic */ zzddi zzb(final zzcvr zzcvrVar, zzcab zzcabVar, zzcvz zzcvzVar, Object obj) {
        zzddi<?> zzddiVarZza;
        final zzbbw zzbbwVarZza = this.zzfnm.zza(this.zzfga.zzbll, zzcvrVar.zzegg);
        zzbbwVarZza.zzaq(zzcvrVar.zzdlr);
        zzcabVar.zza(this.zzlk, zzbbwVarZza.getView());
        zzaxv zzaxvVar = new zzaxv();
        final zzbzb zzbzbVarZza = this.zzfzm.zza(new zzbla(zzcvzVar, zzcvrVar, null), new zzbza(new zzcka(this.zzlk, this.zzfnm, this.zzfga, this.zzblh, zzcvrVar, zzaxvVar, zzbbwVarZza), zzbbwVarZza));
        zzaxvVar.set(zzbzbVarZza);
        zzaey.zza(zzbbwVarZza, zzbzbVarZza.zzadq());
        zzbzbVarZza.zzaci().zza(new zzbnj(zzbbwVarZza) { // from class: com.google.android.gms.internal.ads.zzcjz
            private final zzbbw zzehv;

            {
                this.zzehv = zzbbwVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzbnj
            public final void onAdImpression() {
                zzbbw zzbbwVar = this.zzehv;
                if (zzbbwVar.zzzp() != null) {
                    zzbbwVar.zzzp().zzzb();
                }
            }
        }, zzaxn.zzdwn);
        zzbzbVarZza.zzacw().zzb(zzbbwVarZza, true);
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcth)).booleanValue() && zzcvrVar.zzegg) {
            zzddiVarZza = zzdcy.zzah(null);
        } else {
            zzbzbVarZza.zzacw();
            zzcvv zzcvvVar = zzcvrVar.zzgje;
            zzddiVarZza = zzbzn.zza(zzbbwVarZza, zzcvvVar.zzdhz, zzcvvVar.zzdib);
        }
        return zzdcy.zzb(zzddiVarZza, new zzdal(this, zzbbwVarZza, zzcvrVar, zzbzbVarZza) { // from class: com.google.android.gms.internal.ads.zzcjy
            private final zzcvr zzfea;
            private final zzbbw zzfpd;
            private final zzcju zzfzr;
            private final zzbzb zzfzs;

            {
                this.zzfzr = this;
                this.zzfpd = zzbbwVarZza;
                this.zzfea = zzcvrVar;
                this.zzfzs = zzbzbVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzdal
            public final Object apply(Object obj2) {
                zzbbw zzbbwVar = this.zzfpd;
                zzcvr zzcvrVar2 = this.zzfea;
                zzbzb zzbzbVar = this.zzfzs;
                if (zzcvrVar2.zzdnj) {
                    zzbbwVar.zzaac();
                }
                zzbbwVar.zzzj();
                if (((Boolean) zzuv.zzon().zzd(zzza.zzckb)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzq.zzkl();
                    zzaur.zza(zzbbwVar);
                }
                return zzbzbVar.zzadp();
            }
        }, this.zzfbx);
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<zzbyz> zzb(final zzcvz zzcvzVar, final zzcvr zzcvrVar) {
        final zzcab zzcabVar = new zzcab();
        zzddi<zzbyz> zzddiVarZzb = zzdcy.zzb(zzdcy.zzah(null), new zzdcj(this, zzcvrVar, zzcabVar, zzcvzVar) { // from class: com.google.android.gms.internal.ads.zzcjx
            private final zzcvr zzfym;
            private final zzcab zzfyn;
            private final zzcvz zzfyo;
            private final zzcju zzfzr;

            {
                this.zzfzr = this;
                this.zzfym = zzcvrVar;
                this.zzfyn = zzcabVar;
                this.zzfyo = zzcvzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfzr.zzb(this.zzfym, this.zzfyn, this.zzfyo, obj);
            }
        }, this.zzfbx);
        zzddiVarZzb.addListener(zzcjw.zza(zzcabVar), this.zzfbx);
        return zzddiVarZzb;
    }
}
