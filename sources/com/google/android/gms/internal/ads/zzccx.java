package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzccx {
    private final zzddl zzfoa;
    private final zzddl zzftr;
    private final zzcea zzfts;
    private final zzdvv<zzcen> zzftt;

    public zzccx(zzddl zzddlVar, zzddl zzddlVar2, zzcea zzceaVar, zzdvv<zzcen> zzdvvVar) {
        this.zzftr = zzddlVar;
        this.zzfoa = zzddlVar2;
        this.zzfts = zzceaVar;
        this.zzftt = zzdvvVar;
    }

    final /* synthetic */ zzddi zza(zzape zzapeVar, zzcel zzcelVar) {
        return this.zzftt.get().zzh(zzapeVar);
    }

    public final zzddi<InputStream> zzc(final zzape zzapeVar) {
        final zzddi<InputStream> zzddiVarZzb;
        String str = zzapeVar.packageName;
        com.google.android.gms.ads.internal.zzq.zzkj();
        if (zzaul.zzeh(str)) {
            zzddiVarZzb = zzdcy.zzi(new zzcel(0));
        } else {
            zzddiVarZzb = ((Boolean) zzuv.zzon().zzd(zzza.zzcrr)).booleanValue() ? zzdcy.zzb(this.zzftr.submit(new Callable(this, zzapeVar) { // from class: com.google.android.gms.internal.ads.zzccw
                private final zzccx zzftp;
                private final zzape zzftq;

                {
                    this.zzftp = this;
                    this.zzftq = zzapeVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zzftp.zzd(this.zzftq);
                }
            }), ExecutionException.class, zzccz.zzbkv, this.zzfoa) : this.zzfts.zzf(zzapeVar);
        }
        zzddi<InputStream> zzddiVarZzb2 = zzdcy.zzb(zzddiVarZzb, zzcel.class, new zzdcj(this, zzapeVar) { // from class: com.google.android.gms.internal.ads.zzccy
            private final zzccx zzftp;
            private final zzape zzftq;

            {
                this.zzftp = this;
                this.zzftq = zzapeVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzftp.zza(this.zzftq, (zzcel) obj);
            }
        }, this.zzfoa);
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcrr)).booleanValue()) {
            zzddiVarZzb2.addListener(new Runnable(zzddiVarZzb) { // from class: com.google.android.gms.internal.ads.zzcdb
                private final zzddi zzfov;

                {
                    this.zzfov = zzddiVarZzb;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfov.cancel(true);
                }
            }, zzaxn.zzdwn);
        }
        return zzddiVarZzb2;
    }

    final /* synthetic */ InputStream zzd(zzape zzapeVar) {
        return this.zzfts.zzf(zzapeVar).get(((Integer) zzuv.zzon().zzd(zzza.zzcrq)).intValue(), TimeUnit.SECONDS);
    }
}
