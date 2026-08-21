package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcgn implements zzcga<zzbio> {
    private final Executor zzfbx;
    private final zzcwe zzfga;
    private final zzbzl zzfnm;
    private final zzbjn zzfxm;
    private final zzdal<zzcvr, zzavd> zzfxn;
    private final Context zzlk;

    public zzcgn(zzbjn zzbjnVar, Context context, Executor executor, zzbzl zzbzlVar, zzcwe zzcweVar, zzdal<zzcvr, zzavd> zzdalVar) {
        this.zzlk = context;
        this.zzfxm = zzbjnVar;
        this.zzfbx = executor;
        this.zzfnm = zzbzlVar;
        this.zzfga = zzcweVar;
        this.zzfxn = zzdalVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        zzcvv zzcvvVar = zzcvrVar.zzgje;
        return (zzcvvVar == null || zzcvvVar.zzdib == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<zzbio> zzb(final zzcvz zzcvzVar, final zzcvr zzcvrVar) {
        return zzdcy.zzb(zzdcy.zzah(null), new zzdcj(this, zzcvzVar, zzcvrVar) { // from class: com.google.android.gms.internal.ads.zzcgm
            private final zzcvr zzfea;
            private final zzcvz zzfom;
            private final zzcgn zzfxl;

            {
                this.zzfxl = this;
                this.zzfom = zzcvzVar;
                this.zzfea = zzcvrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfxl.zzb(this.zzfom, this.zzfea, obj);
            }
        }, this.zzfbx);
    }

    final /* synthetic */ zzddi zzb(zzcvz zzcvzVar, zzcvr zzcvrVar, Object obj) {
        zzua zzuaVarZza = zzcwi.zza(this.zzlk, zzcvrVar.zzgjg);
        final zzbbw zzbbwVarZzc = this.zzfnm.zzc(zzuaVarZza);
        zzbbwVarZzc.zzaq(zzcvrVar.zzdlr);
        zzbjn zzbjnVar = this.zzfxm;
        zzbla zzblaVar = new zzbla(zzcvzVar, zzcvrVar, null);
        zzbzy zzbzyVar = new zzbzy(this.zzlk, zzbbwVarZzc.getView(), this.zzfxn.apply(zzcvrVar));
        zzbbwVarZzc.getClass();
        final zzbir zzbirVarZza = zzbjnVar.zza(zzblaVar, new zzbiv(zzbzyVar, zzbbwVarZzc, zzcgp.zzp(zzbbwVarZzc), zzcwi.zze(zzuaVarZza)));
        zzbirVarZza.zzacw().zzb(zzbbwVarZzc, false);
        zzbirVarZza.zzaci().zza(new zzbnj(zzbbwVarZzc) { // from class: com.google.android.gms.internal.ads.zzcgo
            private final zzbbw zzehv;

            {
                this.zzehv = zzbbwVarZzc;
            }

            @Override // com.google.android.gms.internal.ads.zzbnj
            public final void onAdImpression() {
                zzbbw zzbbwVar = this.zzehv;
                if (zzbbwVar.zzzp() != null) {
                    zzbbwVar.zzzp().zzzb();
                }
            }
        }, zzaxn.zzdwn);
        zzbirVarZza.zzacw();
        zzcvv zzcvvVar = zzcvrVar.zzgje;
        zzddi<?> zzddiVarZza = zzbzn.zza(zzbbwVarZzc, zzcvvVar.zzdhz, zzcvvVar.zzdib);
        if (zzcvrVar.zzdnj) {
            zzbbwVarZzc.getClass();
            zzddiVarZza.addListener(zzcgr.zzh(zzbbwVarZzc), this.zzfbx);
        }
        zzddiVarZza.addListener(new Runnable(this, zzbbwVarZzc) { // from class: com.google.android.gms.internal.ads.zzcgq
            private final zzbbw zzfpd;
            private final zzcgn zzfxl;

            {
                this.zzfxl = this;
                this.zzfpd = zzbbwVarZzc;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfxl.zzo(this.zzfpd);
            }
        }, this.zzfbx);
        return zzdcy.zzb(zzddiVarZza, new zzdal(zzbirVarZza) { // from class: com.google.android.gms.internal.ads.zzcgt
            private final zzbir zzfxp;

            {
                this.zzfxp = zzbirVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzdal
            public final Object apply(Object obj2) {
                return this.zzfxp.zzadc();
            }
        }, zzaxn.zzdwn);
    }

    final /* synthetic */ void zzo(zzbbw zzbbwVar) {
        zzbbwVar.zzzj();
        zzbco zzbcoVarZzxl = zzbbwVar.zzxl();
        zzyj zzyjVar = this.zzfga.zzgkf;
        if (zzyjVar == null || zzbcoVarZzxl == null) {
            return;
        }
        zzbcoVarZzxl.zzb(zzyjVar);
    }
}
