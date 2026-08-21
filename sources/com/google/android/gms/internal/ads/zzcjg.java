package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzcjg<AdT> implements zzdcj<zzcvz, AdT> {
    private final Executor executor;
    private final zzcyp zzfbe;
    private final ScheduledExecutorService zzfcx;
    private final zzcyg zzfgb;
    private final zzbmz zzfht;
    private final zzbkp<AdT> zzfzi;
    private final zzcjf zzfzj;

    public zzcjg(zzcyg zzcygVar, zzcjf zzcjfVar, zzbmz zzbmzVar, zzcyp zzcypVar, zzbkp<AdT> zzbkpVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zzfgb = zzcygVar;
        this.zzfzj = zzcjfVar;
        this.zzfht = zzbmzVar;
        this.zzfbe = zzcypVar;
        this.zzfzi = zzbkpVar;
        this.executor = executor;
        this.zzfcx = scheduledExecutorService;
    }

    final /* synthetic */ zzddi zza(zzcvr zzcvrVar, zzcga zzcgaVar, zzcvz zzcvzVar, Throwable th) {
        return this.zzfzj.zza(zzcvrVar, zzdcy.zza(zzcgaVar.zzb(zzcvzVar, zzcvrVar), zzcvrVar.zzgjn, TimeUnit.MILLISECONDS, this.zzfcx));
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final /* synthetic */ zzddi zzf(zzcvz zzcvzVar) {
        final zzcvz zzcvzVar2 = zzcvzVar;
        zzcxp zzcxpVarZzant = this.zzfgb.zzu(zzcyd.RENDER_CONFIG_INIT).zzb(zzdcy.zzi(new zzcjh("No ad configs", 3))).zzant();
        this.zzfht.zza(new zzbha(zzcvzVar2, this.zzfbe), this.executor);
        int i2 = 0;
        for (final zzcvr zzcvrVar : zzcvzVar2.zzgkb.zzgjx) {
            Iterator<String> it = zzcvrVar.zzgiy.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                final zzcga<AdT> zzcgaVarZze = this.zzfzi.zze(zzcvrVar.zzfis, next);
                if (zzcgaVarZze != null && zzcgaVarZze.zza(zzcvzVar2, zzcvrVar)) {
                    zzcxy<I> zzcxyVarZza = this.zzfgb.zza(zzcyd.RENDER_CONFIG_WATERFALL, zzcxpVarZzant);
                    StringBuilder sb = new StringBuilder(String.valueOf(next).length() + 26);
                    sb.append("render-config-");
                    sb.append(i2);
                    sb.append("-");
                    sb.append(next);
                    zzcxpVarZzant = zzcxyVarZza.zzgi(sb.toString()).zza(Throwable.class, new zzdcj(this, zzcvrVar, zzcgaVarZze, zzcvzVar2) { // from class: com.google.android.gms.internal.ads.zzcjj
                        private final zzcvr zzfym;
                        private final zzcvz zzfyo;
                        private final zzcjg zzfzk;
                        private final zzcga zzfzl;

                        {
                            this.zzfzk = this;
                            this.zzfym = zzcvrVar;
                            this.zzfzl = zzcgaVarZze;
                            this.zzfyo = zzcvzVar2;
                        }

                        @Override // com.google.android.gms.internal.ads.zzdcj
                        public final zzddi zzf(Object obj) {
                            return this.zzfzk.zza(this.zzfym, this.zzfzl, this.zzfyo, (Throwable) obj);
                        }
                    }).zzant();
                    break;
                }
            }
            i2++;
        }
        return zzcxpVarZzant;
    }
}
