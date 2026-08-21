package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: loaded from: classes.dex */
final class zzcka implements zzbsu {
    private final zzaxl zzblh;
    private final zzcvr zzfet;
    private final zzcwe zzfga;
    private final zzbzl zzfnm;
    private final zzddi<zzbzb> zzfyq;
    private final zzbbw zzfzt;
    private final Context zzlk;

    private zzcka(Context context, zzbzl zzbzlVar, zzcwe zzcweVar, zzaxl zzaxlVar, zzcvr zzcvrVar, zzddi<zzbzb> zzddiVar, zzbbw zzbbwVar) {
        this.zzlk = context;
        this.zzfnm = zzbzlVar;
        this.zzfga = zzcweVar;
        this.zzblh = zzaxlVar;
        this.zzfet = zzcvrVar;
        this.zzfyq = zzddiVar;
        this.zzfzt = zzbbwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsu
    public final void zza(boolean z, Context context) {
        zzbbw zzbbwVar;
        zzbzb zzbzbVar = (zzbzb) zzdcy.zzc(this.zzfyq);
        try {
            zzcvr zzcvrVar = this.zzfet;
            if (this.zzfzt.zzaae()) {
                if (((Boolean) zzuv.zzon().zzd(zzza.zzckf)).booleanValue()) {
                    final zzbbw zzbbwVarZzc = this.zzfnm.zzc(this.zzfga.zzbll);
                    zzaey.zza(zzbbwVarZzc, zzbzbVar.zzadq());
                    final zzcab zzcabVar = new zzcab();
                    zzcabVar.zza(this.zzlk, zzbbwVarZzc.getView());
                    zzbzbVar.zzacw().zzb(zzbbwVarZzc, true);
                    zzbbwVarZzc.zzzp().zza(new zzbdf(zzcabVar, zzbbwVarZzc) { // from class: com.google.android.gms.internal.ads.zzckd
                        private final zzbbw zzfpd;
                        private final zzcab zzfyk;

                        {
                            this.zzfyk = zzcabVar;
                            this.zzfpd = zzbbwVarZzc;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbdf
                        public final void zzad(boolean z2) {
                            zzcab zzcabVar2 = this.zzfyk;
                            zzbbw zzbbwVar2 = this.zzfpd;
                            zzcabVar2.zzajm();
                            zzbbwVar2.zzzj();
                            zzbbwVar2.zzzp().zzzb();
                        }
                    });
                    zzbdg zzbdgVarZzzp = zzbbwVarZzc.zzzp();
                    zzbbwVarZzc.getClass();
                    zzbdgVarZzzp.zza(zzckc.zzq(zzbbwVarZzc));
                    zzbbwVarZzc.zzb(zzcvrVar.zzgje.zzdhz, zzcvrVar.zzgje.zzdib, null);
                    zzbbwVar = zzbbwVarZzc;
                } else {
                    zzbbwVar = this.zzfzt;
                }
            } else {
                zzbbwVar = this.zzfzt;
            }
            zzbbwVar.zzas(true);
            com.google.android.gms.ads.internal.zzq.zzkj();
            boolean zZzbb = zzaul.zzbb(this.zzlk);
            zzcvr zzcvrVar2 = this.zzfet;
            com.google.android.gms.ads.internal.zzg zzgVar = new com.google.android.gms.ads.internal.zzg(false, zZzbb, false, 0.0f, -1, z, zzcvrVar2.zzgjl, zzcvrVar2.zzble);
            com.google.android.gms.ads.internal.zzq.zzki();
            zzbsm zzbsmVarZzadj = zzbzbVar.zzadj();
            zzcvr zzcvrVar3 = this.zzfet;
            int i2 = zzcvrVar3.zzgjm;
            zzaxl zzaxlVar = this.zzblh;
            String str = zzcvrVar3.zzdkv;
            zzcvv zzcvvVar = zzcvrVar3.zzgje;
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel((zztp) null, zzbsmVarZzadj, (com.google.android.gms.ads.internal.overlay.zzt) null, zzbbwVar, i2, zzaxlVar, str, zzgVar, zzcvvVar.zzdhz, zzcvvVar.zzdib), true);
        } catch (zzbcf e2) {
            zzaxi.zzc("", e2);
        }
    }
}
