package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zzcdt extends zzcdr {
    private static final Pattern zzfur = Pattern.compile("Received error HTTP response code: (.*)");
    private final ScheduledExecutorService zzffn;
    private final zzcwe zzfga;
    private final zzddl zzfoa;
    private final zzccx zzfup;
    private final zzcfp zzfuq;

    zzcdt(zzbox zzboxVar, zzcwe zzcweVar, zzccx zzccxVar, zzddl zzddlVar, ScheduledExecutorService scheduledExecutorService, zzcfp zzcfpVar) {
        super(zzboxVar);
        this.zzfga = zzcweVar;
        this.zzfup = zzccxVar;
        this.zzfoa = zzddlVar;
        this.zzffn = scheduledExecutorService;
        this.zzfuq = zzcfpVar;
    }

    final /* synthetic */ zzddi zzd(InputStream inputStream) {
        return zzdcy.zzah(new zzcvz(new zzcvy(this.zzfga), zzcvx.zza(new InputStreamReader(inputStream))));
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final zzddi<zzcvz> zze(zzape zzapeVar) {
        zzddi<zzcvz> zzddiVarZzb = zzdcy.zzb(this.zzfup.zzc(zzapeVar), new zzdcj(this) { // from class: com.google.android.gms.internal.ads.zzcds
            private final zzcdt zzfuo;

            {
                this.zzfuo = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfuo.zzd((InputStream) obj);
            }
        }, this.zzfoa);
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcrp)).booleanValue()) {
            zzddiVarZzb = zzdcy.zzb(zzdcy.zza(zzddiVarZzb, ((Integer) zzuv.zzon().zzd(zzza.zzcrq)).intValue(), TimeUnit.SECONDS, this.zzffn), TimeoutException.class, zzcdv.zzbkv, zzaxn.zzdwn);
        }
        zzdcy.zza(zzddiVarZzb, new zzcdu(this), zzaxn.zzdwn);
        return zzddiVarZzb;
    }
}
