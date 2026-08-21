package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzbkv {
    private final Executor executor;
    private volatile boolean zzadc = true;
    private final ScheduledExecutorService zzffn;
    private final zzddi<zzbkq> zzffo;

    public zzbkv(Executor executor, ScheduledExecutorService scheduledExecutorService, zzddi<zzbkq> zzddiVar) {
        this.executor = executor;
        this.zzffn = scheduledExecutorService;
        this.zzffo = zzddiVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(List<? extends zzddi<? extends zzbkk>> list, final zzdcz<zzbkk> zzdczVar) {
        if (list == null || list.isEmpty()) {
            this.executor.execute(new Runnable(zzdczVar) { // from class: com.google.android.gms.internal.ads.zzbku
                private final zzdcz zzffm;

                {
                    this.zzffm = zzdczVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzffm.zzb(new zzccu(3));
                }
            });
            return;
        }
        zzddi zzddiVarZzah = zzdcy.zzah(null);
        for (final zzddi<? extends zzbkk> zzddiVar : list) {
            zzddiVarZzah = zzdcy.zzb(zzdcy.zzb(zzddiVarZzah, Throwable.class, new zzdcj(zzdczVar) { // from class: com.google.android.gms.internal.ads.zzbkx
                private final zzdcz zzffm;

                {
                    this.zzffm = zzdczVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdcj
                public final zzddi zzf(Object obj) {
                    this.zzffm.zzb((Throwable) obj);
                    return zzdcy.zzah(null);
                }
            }, this.executor), new zzdcj(this, zzdczVar, zzddiVar) { // from class: com.google.android.gms.internal.ads.zzbkw
                private final zzbkv zzffp;
                private final zzdcz zzffq;
                private final zzddi zzffr;

                {
                    this.zzffp = this;
                    this.zzffq = zzdczVar;
                    this.zzffr = zzddiVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdcj
                public final zzddi zzf(Object obj) {
                    return this.zzffp.zza(this.zzffq, this.zzffr, (zzbkk) obj);
                }
            }, this.executor);
        }
        zzdcy.zza(zzddiVarZzah, new zzblb(this, zzdczVar), this.executor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzafn() {
        zzaxn.zzdwm.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbkz
            private final zzbkv zzffp;

            {
                this.zzffp = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzffp.zzafo();
            }
        });
    }

    public final boolean isLoading() {
        return this.zzadc;
    }

    final /* synthetic */ zzddi zza(zzdcz zzdczVar, zzddi zzddiVar, zzbkk zzbkkVar) {
        if (zzbkkVar != null) {
            zzdczVar.onSuccess(zzbkkVar);
        }
        return zzdcy.zza(zzddiVar, ((Long) zzuv.zzon().zzd(zzza.zzcmn)).longValue(), TimeUnit.MILLISECONDS, this.zzffn);
    }

    public final void zza(zzdcz<zzbkk> zzdczVar) {
        zzdcy.zza(this.zzffo, new zzbky(this, zzdczVar), this.executor);
    }

    final /* synthetic */ void zzafo() {
        this.zzadc = false;
    }
}
