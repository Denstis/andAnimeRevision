package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzchw implements zzcgh<zzbrs, zzcwm, zzchk> {
    private final zzaxl zzblh;
    private final Executor zzfbx;
    private final zzbso zzfxy;
    private final Context zzlk;

    public zzchw(Context context, zzaxl zzaxlVar, zzbso zzbsoVar, Executor executor) {
        this.zzlk = context;
        this.zzblh = zzaxlVar;
        this.zzfxy = zzbsoVar;
        this.zzfbx = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf<zzcwm, zzchk> zzcgfVar) throws zzcwh {
        if (this.zzblh.zzdwf < 4100000) {
            zzcgfVar.zzddv.zza(this.zzlk, zzcvzVar.zzgka.zzfga.zzgkg, zzcvrVar.zzgjh.toString(), (zzakd) zzcgfVar.zzfxg);
        } else {
            zzcgfVar.zzddv.zza(this.zzlk, zzcvzVar.zzgka.zzfga.zzgkg, zzcvrVar.zzgjh.toString(), zzawg.zza(zzcvrVar.zzgje), (zzakd) zzcgfVar.zzfxg);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgh
    public final /* synthetic */ zzbrs zzb(zzcvz zzcvzVar, zzcvr zzcvrVar, final zzcgf zzcgfVar) {
        zzbru zzbruVarZza = this.zzfxy.zza(new zzbla(zzcvzVar, zzcvrVar, zzcgfVar.zzffi), new zzbrx(new zzbsu(zzcgfVar) { // from class: com.google.android.gms.internal.ads.zzchz
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
                    ((zzcwm) zzcgfVar2.zzddv).showInterstitial();
                } catch (zzcwh unused) {
                    zzaxi.zzet("Cannot show interstitial.");
                }
            }
        }));
        zzbruVarZza.zzacf().zza(new zzbhb((zzcwm) zzcgfVar.zzddv), this.zzfbx);
        ((zzchk) zzcgfVar.zzfxg).zza(zzbruVarZza.zzack());
        return zzbruVarZza.zzadh();
    }
}
