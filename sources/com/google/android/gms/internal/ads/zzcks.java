package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class zzcks implements zzcga<zzbio> {
    private final zzcyg zzfgb;
    private final zzbjn zzfxm;
    private final zzddl zzgag;
    private final Context zzgal;
    private final zzaah zzgam;

    public zzcks(Context context, zzbjn zzbjnVar, zzcyg zzcygVar, zzddl zzddlVar, zzaah zzaahVar) {
        this.zzgal = context;
        this.zzfxm = zzbjnVar;
        this.zzfgb = zzcygVar;
        this.zzgag = zzddlVar;
        this.zzgam = zzaahVar;
    }

    final /* synthetic */ void zza(zzaaa zzaaaVar) {
        this.zzgam.zza(zzaaaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        zzcvv zzcvvVar;
        return (this.zzgam == null || (zzcvvVar = zzcvrVar.zzgje) == null || zzcvvVar.zzdib == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<zzbio> zzb(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        zzbir zzbirVarZza = this.zzfxm.zza(new zzbla(zzcvzVar, zzcvrVar, null), new zzckx(this, new View(this.zzgal), null, zzckv.zzgaq, zzcvrVar.zzgjg.get(0)));
        zzckw zzckwVarZzade = zzbirVarZza.zzade();
        zzcvv zzcvvVar = zzcvrVar.zzgje;
        final zzaaa zzaaaVar = new zzaaa(zzckwVarZzade, zzcvvVar.zzdhz, zzcvvVar.zzdib);
        return this.zzfgb.zzu(zzcyd.CUSTOM_RENDER_SYN).zza(new zzcxq(this, zzaaaVar) { // from class: com.google.android.gms.internal.ads.zzcku
            private final zzcks zzgao;
            private final zzaaa zzgap;

            {
                this.zzgao = this;
                this.zzgap = zzaaaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzcxq
            public final void run() {
                this.zzgao.zza(this.zzgap);
            }
        }, this.zzgag).zzw(zzcyd.CUSTOM_RENDER_ACK).zzb(zzdcy.zzah(zzbirVarZza.zzadc())).zzant();
    }
}
