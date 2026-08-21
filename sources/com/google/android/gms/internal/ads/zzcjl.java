package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcjl implements zzcgh<zzbyz, zzcwm, zzchk> {
    private final Executor zzfbx;
    private final zzbzc zzfzm;
    private final Context zzlk;

    public zzcjl(Context context, Executor executor, zzbzc zzbzcVar) {
        this.zzlk = context;
        this.zzfbx = executor;
        this.zzfzm = zzbzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf<zzcwm, zzchk> zzcgfVar) {
        try {
            zzcgfVar.zzddv.zzb(this.zzlk, zzcvzVar.zzgka.zzfga.zzgkg, zzcvrVar.zzgjh.toString(), (zzakd) zzcgfVar.zzfxg);
        } catch (Exception e2) {
            String strValueOf = String.valueOf(zzcgfVar.zzffi);
            zzaxi.zzd(strValueOf.length() != 0 ? "Fail to load ad from adapter ".concat(strValueOf) : new String("Fail to load ad from adapter "), e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgh
    public final /* synthetic */ zzbyz zzb(zzcvz zzcvzVar, zzcvr zzcvrVar, final zzcgf zzcgfVar) {
        zzbzb zzbzbVarZza = this.zzfzm.zza(new zzbla(zzcvzVar, zzcvrVar, zzcgfVar.zzffi), new zzbza(new zzbsu(zzcgfVar) { // from class: com.google.android.gms.internal.ads.zzcjk
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
                    ((zzcwm) zzcgfVar2.zzddv).zzca(context);
                } catch (zzcwh e2) {
                    zzaxi.zzd("Cannot show rewarded .", e2);
                }
            }
        }));
        zzbzbVarZza.zzacf().zza(new zzbhb((zzcwm) zzcgfVar.zzddv), this.zzfbx);
        ((zzchk) zzcgfVar.zzfxg).zza(zzbzbVarZza.zzadr());
        return zzbzbVarZza.zzadp();
    }
}
