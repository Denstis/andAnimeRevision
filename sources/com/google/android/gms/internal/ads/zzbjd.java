package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzbjd implements zzdwb<zzbqs<zzbog>> {
    private final zzdwo<Context> zzejy;
    private final zzdwo<zzaxl> zzfan;
    private final zzdwo<zzcvr> zzfcp;
    private final zzbiv zzfec;
    private final zzdwo<zzcwe> zzfef;

    public zzbjd(zzbiv zzbivVar, zzdwo<Context> zzdwoVar, zzdwo<zzaxl> zzdwoVar2, zzdwo<zzcvr> zzdwoVar3, zzdwo<zzcwe> zzdwoVar4) {
        this.zzfec = zzbivVar;
        this.zzejy = zzdwoVar;
        this.zzfan = zzdwoVar2;
        this.zzfcp = zzdwoVar3;
        this.zzfef = zzdwoVar4;
    }

    public static zzbqs<zzbog> zza(zzbiv zzbivVar, final Context context, final zzaxl zzaxlVar, final zzcvr zzcvrVar, final zzcwe zzcweVar) {
        return (zzbqs) zzdwh.zza(new zzbqs(new zzbog(context, zzaxlVar, zzcvrVar, zzcweVar) { // from class: com.google.android.gms.internal.ads.zzbiu
            private final Context zzdpy;
            private final zzaxl zzfdz;
            private final zzcvr zzfea;
            private final zzcwe zzfeb;

            {
                this.zzdpy = context;
                this.zzfdz = zzaxlVar;
                this.zzfea = zzcvrVar;
                this.zzfeb = zzcweVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbog
            public final void onAdLoaded() {
            }
        }, zzaxn.zzdwn), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return zza(this.zzfec, this.zzejy.get(), this.zzfan.get(), this.zzfcp.get(), this.zzfef.get());
    }
}
