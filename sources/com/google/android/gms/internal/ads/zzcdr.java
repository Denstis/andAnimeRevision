package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzcdr implements zzdcj<zzape, zzcvz> {
    private final zzbox zzfun;

    public zzcdr(zzbox zzboxVar) {
        this.zzfun = zzboxVar;
    }

    protected abstract zzddi<zzcvz> zze(zzape zzapeVar);

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final /* synthetic */ zzddi<zzcvz> zzf(zzape zzapeVar) {
        zzape zzapeVar2 = zzapeVar;
        this.zzfun.zzb(zzapeVar2);
        zzddi<zzcvz> zzddiVarZze = zze(zzapeVar2);
        zzdcy.zza(zzddiVarZze, new zzcdq(this), zzaxn.zzdwn);
        return zzddiVarZze;
    }
}
