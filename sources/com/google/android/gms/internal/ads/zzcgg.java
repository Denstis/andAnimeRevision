package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcgg implements zzcga<zzbii> {
    private final Executor zzfbx;
    private final zzcwe zzfga;
    private final zzbzl zzfnm;
    private final zzbie zzfxh;
    private final Context zzlk;

    public zzcgg(zzbie zzbieVar, Context context, Executor executor, zzbzl zzbzlVar, zzcwe zzcweVar) {
        this.zzlk = context;
        this.zzfxh = zzbieVar;
        this.zzfbx = executor;
        this.zzfnm = zzbzlVar;
        this.zzfga = zzcweVar;
    }

    final /* synthetic */ zzddi zza(zzcvz zzcvzVar, zzcvr zzcvrVar, Object obj) {
        zzua zzuaVarZza = zzcwi.zza(this.zzlk, zzcvrVar.zzgjg);
        final zzbbw zzbbwVarZzc = this.zzfnm.zzc(zzuaVarZza);
        final zzbia zzbiaVarZza = this.zzfxh.zza(new zzbla(zzcvzVar, zzcvrVar, null), new zzbid(zzbbwVarZzc.getView(), zzbbwVarZzc, zzcwi.zze(zzuaVarZza), zzcvrVar.zzfdf));
        zzbiaVarZza.zzacw().zzb(zzbbwVarZzc, false);
        zzbiaVarZza.zzaci().zza(new zzbnj(zzbbwVarZzc) { // from class: com.google.android.gms.internal.ads.zzcgi
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
        zzbiaVarZza.zzacw();
        zzcvv zzcvvVar = zzcvrVar.zzgje;
        return zzdcy.zzb(zzbzn.zza(zzbbwVarZzc, zzcvvVar.zzdhz, zzcvvVar.zzdib), new zzdal(zzbiaVarZza) { // from class: com.google.android.gms.internal.ads.zzcgl
            private final zzbia zzfxk;

            {
                this.zzfxk = zzbiaVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzdal
            public final Object apply(Object obj2) {
                return this.zzfxk.zzacv();
            }
        }, zzaxn.zzdwn);
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        zzcvv zzcvvVar = zzcvrVar.zzgje;
        return (zzcvvVar == null || zzcvvVar.zzdib == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<zzbii> zzb(final zzcvz zzcvzVar, final zzcvr zzcvrVar) {
        return zzdcy.zzb(zzdcy.zzah(null), new zzdcj(this, zzcvzVar, zzcvrVar) { // from class: com.google.android.gms.internal.ads.zzcgj
            private final zzcvr zzfea;
            private final zzcvz zzfom;
            private final zzcgg zzfxi;

            {
                this.zzfxi = this;
                this.zzfom = zzcvzVar;
                this.zzfea = zzcvrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfxi.zza(this.zzfom, this.zzfea, obj);
            }
        }, this.zzfbx);
    }
}
