package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbfx;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzbei implements zzbgq {
    private static zzbei zzejt;

    public static zzbei zza(Context context, zzajx zzajxVar, int i2) {
        zzbei zzbeiVarZzd = zzd(context, i2);
        zzbeiVarZzd.zzabg().zzb(zzajxVar);
        return zzbeiVarZzd;
    }

    @Deprecated
    private static zzbei zza(zzaxl zzaxlVar, Context context, zzbfx.zza zzaVar) {
        zzbei zzbeiVar;
        synchronized (zzbei.class) {
            if (zzejt == null) {
                zzejt = new zzbfo().zzc(new zzbel(new zzbel.zza().zza(zzaxlVar).zzbs(context))).zza(new zzbfx(zzaVar)).zzadg();
                zzza.initialize(context);
                com.google.android.gms.ads.internal.zzq.zzkn().zzd(context, zzaxlVar);
                com.google.android.gms.ads.internal.zzq.zzkp().initialize(context);
                com.google.android.gms.ads.internal.zzq.zzkj().zzao(context);
                com.google.android.gms.ads.internal.zzq.zzkj().zzap(context);
                zzaue.zzan(context);
                com.google.android.gms.ads.internal.zzq.zzkm().initialize(context);
                com.google.android.gms.ads.internal.zzq.zzle().initialize(context);
                if (((Boolean) zzuv.zzon().zzd(zzza.zzctc)).booleanValue()) {
                    new zzcfw(context, zzaxlVar, new zzsd(new zzsi(context)), new zzcfj(new zzcfh(context), zzejt.zzabe())).zzakr();
                }
            }
            zzbeiVar = zzejt;
        }
        return zzbeiVar;
    }

    @Deprecated
    public static zzbei zzd(Context context, int i2) {
        synchronized (zzbei.class) {
            if (zzejt == null) {
                return zza(new zzaxl(15601000, i2, true, false), context, new zzbex());
            }
            return zzejt;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final zzcsm zza(zzape zzapeVar) {
        return zza(new zzctp(zzapeVar));
    }

    protected abstract zzcsm zza(zzctp zzctpVar);

    public abstract Executor zzabb();

    public abstract ScheduledExecutorService zzabc();

    public abstract Executor zzabd();

    public abstract zzddl zzabe();

    public abstract zzbou zzabf();

    public abstract zzchm zzabg();

    public abstract zzbga zzabh();

    public abstract zzbjm zzabi();

    public abstract zzbih zzabj();

    public abstract zzbsr zzabk();

    public abstract zzbtk zzabl();

    public abstract zzbzf zzabm();

    public abstract zzcvm zzabn();

    public abstract zzcmy zzabo();
}
