package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcho implements zzcga<zzbrs> {
    private final zzaxl zzblh;
    private final Executor zzfbx;
    private final zzcwe zzfga;
    private final zzbzl zzfnm;
    private final zzbso zzfxy;
    private final Context zzlk;

    public zzcho(Context context, zzaxl zzaxlVar, zzcwe zzcweVar, Executor executor, zzbso zzbsoVar, zzbzl zzbzlVar) {
        this.zzlk = context;
        this.zzfga = zzcweVar;
        this.zzfxy = zzbsoVar;
        this.zzfbx = executor;
        this.zzblh = zzaxlVar;
        this.zzfnm = zzbzlVar;
    }

    final /* synthetic */ zzddi zza(final zzcvr zzcvrVar, zzcab zzcabVar, zzcvz zzcvzVar, Object obj) {
        zzddi<?> zzddiVarZza;
        final zzbbw zzbbwVarZza = this.zzfnm.zza(this.zzfga.zzbll, zzcvrVar.zzegg);
        zzbbwVarZza.zzaq(zzcvrVar.zzdlr);
        zzcabVar.zza(this.zzlk, zzbbwVarZza.getView());
        zzaxv zzaxvVar = new zzaxv();
        final zzbru zzbruVarZza = this.zzfxy.zza(new zzbla(zzcvzVar, zzcvrVar, null), new zzbrx(new zzchu(this.zzlk, this.zzblh, zzaxvVar, zzcvrVar, zzbbwVarZza), zzbbwVarZza));
        zzaxvVar.set(zzbruVarZza);
        zzbruVarZza.zzaci().zza(new zzbnj(zzbbwVarZza) { // from class: com.google.android.gms.internal.ads.zzcht
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
        zzbruVarZza.zzacw().zzb(zzbbwVarZza, true);
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcth)).booleanValue() && zzcvrVar.zzegg) {
            zzddiVarZza = zzdcy.zzah(null);
        } else {
            zzbruVarZza.zzacw();
            zzcvv zzcvvVar = zzcvrVar.zzgje;
            zzddiVarZza = zzbzn.zza(zzbbwVarZza, zzcvvVar.zzdhz, zzcvvVar.zzdib);
        }
        return zzdcy.zzb(zzddiVarZza, new zzdal(this, zzbbwVarZza, zzcvrVar, zzbruVarZza) { // from class: com.google.android.gms.internal.ads.zzchs
            private final zzcvr zzfea;
            private final zzbbw zzfpd;
            private final zzcho zzfyl;
            private final zzbru zzfyp;

            {
                this.zzfyl = this;
                this.zzfpd = zzbbwVarZza;
                this.zzfea = zzcvrVar;
                this.zzfyp = zzbruVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzdal
            public final Object apply(Object obj2) {
                zzbbw zzbbwVar = this.zzfpd;
                zzcvr zzcvrVar2 = this.zzfea;
                zzbru zzbruVar = this.zzfyp;
                if (zzcvrVar2.zzdnj) {
                    zzbbwVar.zzaac();
                }
                zzbbwVar.zzzj();
                if (((Boolean) zzuv.zzon().zzd(zzza.zzckb)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzq.zzkl();
                    zzaur.zza(zzbbwVar);
                }
                return zzbruVar.zzadh();
            }
        }, this.zzfbx);
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        zzcvv zzcvvVar = zzcvrVar.zzgje;
        return (zzcvvVar == null || zzcvvVar.zzdib == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<zzbrs> zzb(final zzcvz zzcvzVar, final zzcvr zzcvrVar) {
        final zzcab zzcabVar = new zzcab();
        zzddi<zzbrs> zzddiVarZzb = zzdcy.zzb(zzdcy.zzah(null), new zzdcj(this, zzcvrVar, zzcabVar, zzcvzVar) { // from class: com.google.android.gms.internal.ads.zzchr
            private final zzcho zzfyl;
            private final zzcvr zzfym;
            private final zzcab zzfyn;
            private final zzcvz zzfyo;

            {
                this.zzfyl = this;
                this.zzfym = zzcvrVar;
                this.zzfyn = zzcabVar;
                this.zzfyo = zzcvzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfyl.zza(this.zzfym, this.zzfyn, this.zzfyo, obj);
            }
        }, this.zzfbx);
        zzddiVarZzb.addListener(zzchq.zza(zzcabVar), this.zzfbx);
        return zzddiVarZzb;
    }
}
