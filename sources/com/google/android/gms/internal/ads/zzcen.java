package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcen extends zzaou {
    private final Executor zzfbx;
    private final zzapr zzfvf;
    private final zzaps zzfvg;
    private final zzbgq zzfvh;
    private final Context zzlk;

    public zzcen(Context context, Executor executor, zzapr zzaprVar, zzbgq zzbgqVar, zzaps zzapsVar) {
        zzza.initialize(context);
        this.zzlk = context;
        this.zzfbx = executor;
        this.zzfvf = zzaprVar;
        this.zzfvg = zzapsVar;
        this.zzfvh = zzbgqVar;
    }

    private final void zza(zzddi<InputStream> zzddiVar, zzaoy zzaoyVar) {
        zzdcy.zza(zzdcy.zzb(zzddiVar, new zzdcj(this) { // from class: com.google.android.gms.internal.ads.zzceu
            private final zzcen zzfvi;

            {
                this.zzfvi = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return zzdcy.zzah(zzcwo.zze((InputStream) obj));
            }
        }, zzaxn.zzdwi), new zzcex(this, zzaoyVar), zzaxn.zzdwn);
    }

    @Override // com.google.android.gms.internal.ads.zzaor
    public final zzaon zza(zzaol zzaolVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaor
    public final void zza(zzaol zzaolVar, zzaow zzaowVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaor
    public final void zza(zzape zzapeVar, zzaoy zzaoyVar) {
        zzddi<InputStream> zzddiVarZzh = zzh(zzapeVar);
        zza(zzddiVarZzh, zzaoyVar);
        zzddiVarZzh.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzces
            private final zzcen zzfvi;

            {
                this.zzfvi = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfvi.zzakk();
            }
        }, this.zzfbx);
    }

    final /* synthetic */ void zzakk() {
        zzaxr.zza(this.zzfvg.zztj(), "persistFlags");
    }

    @Override // com.google.android.gms.internal.ads.zzaor
    public final void zzb(zzape zzapeVar, zzaoy zzaoyVar) {
        zzddi<InputStream> zzddiVarZzant;
        zzaix zzaixVarZza = com.google.android.gms.ads.internal.zzq.zzkw().zza(this.zzlk, zzaxl.zzwo());
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcsk)).booleanValue()) {
            zzcsm zzcsmVarZza = this.zzfvh.zza(zzapeVar);
            final zzcrt<JSONObject> zzcrtVarZzact = this.zzfvh.zza(zzapeVar).zzact();
            zzddiVarZzant = zzcsmVarZza.zzacu().zza(zzcyd.GET_SIGNALS, zzdcy.zzah(zzapeVar.zzdma)).zza(new zzdcj(zzcrtVarZzact) { // from class: com.google.android.gms.internal.ads.zzcev
                private final zzcrt zzfvj;

                {
                    this.zzfvj = zzcrtVarZzact;
                }

                @Override // com.google.android.gms.internal.ads.zzdcj
                public final zzddi zzf(Object obj) {
                    return this.zzfvj.zzs(com.google.android.gms.ads.internal.zzq.zzkj().zzd((Bundle) obj));
                }
            }).zzw(zzcyd.JS_SIGNALS).zza(zzaixVarZza.zza("google.afma.request.getSignals", zzais.zzday, zzais.zzdaz)).zzant();
        } else {
            zzddiVarZzant = zzdcy.zzi(new Exception("Signal collection disabled."));
        }
        zza(zzddiVarZzant, zzaoyVar);
    }

    public final zzddi<InputStream> zzh(zzape zzapeVar) {
        zzcxy zzcxyVarZza;
        zzaix zzaixVarZza = com.google.android.gms.ads.internal.zzq.zzkw().zza(this.zzlk, zzaxl.zzwo());
        final zzcsm zzcsmVarZza = this.zzfvh.zza(zzapeVar);
        zzdcj zzdcjVar = new zzdcj(zzcsmVarZza) { // from class: com.google.android.gms.internal.ads.zzcem
            private final zzcsm zzfve;

            {
                this.zzfve = zzcsmVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfve.zzacs().zzs(com.google.android.gms.ads.internal.zzq.zzkj().zzd((Bundle) obj));
            }
        };
        zzcxn zzcxnVar = zzcep.zzftu;
        zzaip zzaipVarZza = zzaixVarZza.zza("AFMA_getAdDictionary", zzais.zzday, zzceo.zzdba);
        zzaip zzaipVarZza2 = zzaixVarZza.zza("google.afma.response.normalize", zzcew.zzfvn, zzais.zzdaz);
        zzcfb zzcfbVar = new zzcfb(this.zzlk, zzapeVar.zzdio.zzblz, this.zzfvf, zzapeVar.zzdjp);
        zzcyg zzcygVarZzacu = zzcsmVarZza.zzacu();
        final zzcxp zzcxpVarZzant = zzcygVarZzacu.zza(zzcyd.GMS_SIGNALS, zzdcy.zzah(zzapeVar.zzdma)).zza(zzdcjVar).zzb(zzcxnVar).zzant();
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcrs)).booleanValue()) {
            zzait<JSONObject> zzaitVar = zzais.zzday;
            zzcxyVarZza = zzcygVarZzacu.zza(zzcyd.AD_REQUEST, zzcxpVarZzant).zza(zzaixVarZza.zza("google.afma.request.getAdResponse", zzaitVar, zzaitVar)).zzb(zzcer.zzftu);
        } else {
            final zzcxp zzcxpVarZzant2 = zzcygVarZzacu.zza(zzcyd.BUILD_URL, zzcxpVarZzant).zza(zzaipVarZza).zzant();
            final zzcxp zzcxpVarZzant3 = zzcygVarZzacu.zza(zzcyd.HTTP, zzcxpVarZzant2, zzcxpVarZzant).zzb(new Callable(zzcxpVarZzant, zzcxpVarZzant2) { // from class: com.google.android.gms.internal.ads.zzceq
                private final zzddi zzfoe;
                private final zzddi zzfov;

                {
                    this.zzfov = zzcxpVarZzant;
                    this.zzfoe = zzcxpVarZzant2;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzcfa((JSONObject) this.zzfov.get(), (zzapk) this.zzfoe.get());
                }
            }).zzb(zzcfbVar).zzant();
            zzcxyVarZza = zzcygVarZzacu.zza(zzcyd.PRE_PROCESS, zzcxpVarZzant, zzcxpVarZzant2, zzcxpVarZzant3).zzb(new Callable(zzcxpVarZzant3, zzcxpVarZzant, zzcxpVarZzant2) { // from class: com.google.android.gms.internal.ads.zzcet
                private final zzddi zzffr;
                private final zzddi zzfoe;
                private final zzddi zzfov;

                {
                    this.zzfov = zzcxpVarZzant3;
                    this.zzfoe = zzcxpVarZzant;
                    this.zzffr = zzcxpVarZzant2;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzcew((zzcfd) this.zzfov.get(), (JSONObject) this.zzfoe.get(), (zzapk) this.zzffr.get());
                }
            }).zza(zzaipVarZza2);
        }
        return zzcxyVarZza.zzant();
    }
}
