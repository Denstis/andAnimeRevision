package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcrr;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzcqq<S extends zzcrr<?>> implements zzcru<S> {
    private final ScheduledExecutorService zzfcx;
    private final zzcru<S> zzgey;
    private final long zzgfn;

    public zzcqq(zzcru<S> zzcruVar, long j2, ScheduledExecutorService scheduledExecutorService) {
        this.zzgey = zzcruVar;
        this.zzgfn = j2;
        this.zzfcx = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<S> zzalv() {
        zzddi<S> zzddiVarZzalv = this.zzgey.zzalv();
        long j2 = this.zzgfn;
        if (j2 > 0) {
            zzddiVarZzalv = zzdcy.zza(zzddiVarZzalv, j2, TimeUnit.MILLISECONDS, this.zzfcx);
        }
        return zzdcy.zzb(zzddiVarZzalv, Throwable.class, zzcqp.zzbkv, zzaxn.zzdwn);
    }
}
