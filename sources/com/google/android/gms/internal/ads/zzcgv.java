package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcgv implements zzcgh<zzbio, zzcwm, zzchk> {
    private final zzaxl zzblh;
    private final Executor zzfbx;
    private final zzbjn zzfxm;
    private final Context zzlk;

    public zzcgv(Context context, zzaxl zzaxlVar, zzbjn zzbjnVar, Executor executor) {
        this.zzlk = context;
        this.zzblh = zzaxlVar;
        this.zzfxm = zzbjnVar;
        this.zzfbx = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf<zzcwm, zzchk> zzcgfVar) throws zzcwh {
        zzua zzuaVarZza = zzcwi.zza(this.zzlk, zzcvrVar.zzgjg);
        if (this.zzblh.zzdwf < 4100000) {
            zzcgfVar.zzddv.zza(this.zzlk, zzuaVarZza, zzcvzVar.zzgka.zzfga.zzgkg, zzcvrVar.zzgjh.toString(), (zzakd) zzcgfVar.zzfxg);
        } else {
            zzcgfVar.zzddv.zza(this.zzlk, zzuaVarZza, zzcvzVar.zzgka.zzfga.zzgkg, zzcvrVar.zzgjh.toString(), zzawg.zza(zzcvrVar.zzgje), (zzakd) zzcgfVar.zzfxg);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgh
    public final /* synthetic */ zzbio zzb(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf zzcgfVar) throws zzcwh {
        zzbjn zzbjnVar = this.zzfxm;
        zzbla zzblaVar = new zzbla(zzcvzVar, zzcvrVar, zzcgfVar.zzffi);
        View view = ((zzcwm) zzcgfVar.zzddv).getView();
        zzcwm zzcwmVar = (zzcwm) zzcgfVar.zzddv;
        zzcwmVar.getClass();
        zzbir zzbirVarZza = zzbjnVar.zza(zzblaVar, new zzbiv(view, null, zzcgu.zza(zzcwmVar), zzcvrVar.zzgjg.get(0)));
        zzbirVarZza.zzadd().zzq(((zzcwm) zzcgfVar.zzddv).getView());
        zzbirVarZza.zzacf().zza(new zzbhb((zzcwm) zzcgfVar.zzddv), this.zzfbx);
        ((zzchk) zzcgfVar.zzfxg).zza(zzbirVarZza.zzack());
        return zzbirVarZza.zzadc();
    }
}
