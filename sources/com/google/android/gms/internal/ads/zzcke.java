package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcke implements zzcgh<zzbyz, zzcwm, zzchn> {
    private final Executor zzfbx;
    private final zzbzc zzfzm;
    private final Context zzlk;

    public zzcke(Context context, Executor executor, zzbzc zzbzcVar) {
        this.zzlk = context;
        this.zzfbx = executor;
        this.zzfzm = zzbzcVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf<zzcwm, zzchn> zzcgfVar) {
        try {
            zzcgfVar.zzddv.zza(zzcvzVar.zzgka.zzfga.zzgkg, zzcvrVar.zzgjh.toString());
        } catch (Exception e2) {
            String strValueOf = String.valueOf(zzcgfVar.zzffi);
            zzaxi.zzd(strValueOf.length() != 0 ? "Fail to load ad from adapter ".concat(strValueOf) : new String("Fail to load ad from adapter "), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf<zzcwm, zzchn> zzcgfVar) throws zzcwh {
        if (zzcgfVar.zzddv.isInitialized()) {
            zzc(zzcvzVar, zzcvrVar, zzcgfVar);
            return;
        }
        ((zzchn) zzcgfVar.zzfxg).zza(new zzckg(this, zzcvzVar, zzcvrVar, zzcgfVar));
        zzcgfVar.zzddv.zza(this.zzlk, zzcvzVar.zzgka.zzfga.zzgkg, (String) null, (zzaqp) zzcgfVar.zzfxg, zzcvrVar.zzgjh.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgh
    public final /* synthetic */ zzbyz zzb(zzcvz zzcvzVar, zzcvr zzcvrVar, final zzcgf zzcgfVar) {
        zzbzb zzbzbVarZza = this.zzfzm.zza(new zzbla(zzcvzVar, zzcvrVar, zzcgfVar.zzffi), new zzbza(new zzbsu(zzcgfVar) { // from class: com.google.android.gms.internal.ads.zzckh
            private final zzcgf zzfxr;

            {
                this.zzfxr = zzcgfVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.internal.ads.zzbsu
            public final void zza(boolean z, Context context) {
                zzcgf zzcgfVar2 = this.zzfxr;
                try {
                    ((zzcwm) zzcgfVar2.zzddv).setImmersiveMode(z);
                    ((zzcwm) zzcgfVar2.zzddv).showVideo();
                } catch (zzcwh e2) {
                    zzaxi.zzd("Cannot show rewarded video.", e2);
                }
            }
        }));
        zzbzbVarZza.zzacf().zza(new zzbhb((zzcwm) zzcgfVar.zzddv), this.zzfbx);
        zzbnr zzbnrVarZzacg = zzbzbVarZza.zzacg();
        zzbmv zzbmvVarZzach = zzbzbVarZza.zzach();
        ((zzchn) zzcgfVar.zzfxg).zza(new zzcki(this, zzbzbVarZza.zzadi(), zzbmvVarZzach, zzbnrVarZzacg, zzbzbVarZza.zzadq()));
        return zzbzbVarZza.zzadp();
    }
}
