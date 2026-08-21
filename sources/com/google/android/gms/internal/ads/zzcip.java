package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcip implements zzcgh<zzbuj, zzcwm, zzchk> {
    private final Executor zzfbx;
    private final zzbtl zzfyt;
    private final Context zzlk;

    public zzcip(Context context, zzbtl zzbtlVar, Executor executor) {
        this.zzlk = context;
        this.zzfyt = zzbtlVar;
        this.zzfbx = executor;
    }

    private static boolean zza(zzcvz zzcvzVar, int i2) {
        return zzcvzVar.zzgka.zzfga.zzgki.contains(Integer.toString(i2));
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf<zzcwm, zzchk> zzcgfVar) throws zzcwh {
        zzcwm zzcwmVar = zzcgfVar.zzddv;
        Context context = this.zzlk;
        zztx zztxVar = zzcvzVar.zzgka.zzfga.zzgkg;
        String string = zzcvrVar.zzgjh.toString();
        String strZza = zzawg.zza(zzcvrVar.zzgje);
        zzakd zzakdVar = (zzakd) zzcgfVar.zzfxg;
        zzcwe zzcweVar = zzcvzVar.zzgka.zzfga;
        zzcwmVar.zza(context, zztxVar, string, strZza, zzakdVar, zzcweVar.zzdeh, zzcweVar.zzgki);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgh
    public final /* synthetic */ zzbuj zzb(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf zzcgfVar) throws zzcjh, zzcwh {
        zzbur zzburVarZza;
        zzakg zzakgVarZzrp = ((zzcwm) zzcgfVar.zzddv).zzrp();
        zzakl zzaklVarZzrq = ((zzcwm) zzcgfVar.zzddv).zzrq();
        zzakm zzakmVarZzrv = ((zzcwm) zzcgfVar.zzddv).zzrv();
        if (zzakmVarZzrv != null && zza(zzcvzVar, 6)) {
            zzburVarZza = zzbur.zzb(zzakmVarZzrv);
        } else if (zzakgVarZzrp != null && zza(zzcvzVar, 6)) {
            zzburVarZza = zzbur.zzb(zzakgVarZzrp);
        } else if (zzakgVarZzrp != null && zza(zzcvzVar, 2)) {
            zzburVarZza = zzbur.zza(zzakgVarZzrp);
        } else if (zzaklVarZzrq != null && zza(zzcvzVar, 6)) {
            zzburVarZza = zzbur.zzb(zzaklVarZzrq);
        } else {
            if (zzaklVarZzrq == null || !zza(zzcvzVar, 1)) {
                throw new zzcjh("No native ad mappers", 0);
            }
            zzburVarZza = zzbur.zza(zzaklVarZzrq);
        }
        if (!zzcvzVar.zzgka.zzfga.zzgki.contains(Integer.toString(zzburVarZza.zzahp()))) {
            throw new zzcjh("No corresponding native ad listener", 0);
        }
        zzbus zzbusVarZza = this.zzfyt.zza(new zzbla(zzcvzVar, zzcvrVar, zzcgfVar.zzffi), new zzbvd(zzburVarZza), new zzbwc(zzaklVarZzrq, zzakgVarZzrp, zzakmVarZzrv));
        ((zzchk) zzcgfVar.zzfxg).zza(zzbusVarZza.zzack());
        zzbusVarZza.zzacf().zza(new zzbhb((zzcwm) zzcgfVar.zzddv), this.zzfbx);
        return zzbusVarZza.zzacl();
    }
}
