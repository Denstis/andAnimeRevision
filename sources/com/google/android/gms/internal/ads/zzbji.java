package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbji implements zzdwb<zzbqs<zzbpg>> {
    private final zzbiv zzfec;
    private final zzdwo<zzbou> zzfeg;

    public zzbji(zzbiv zzbivVar, zzdwo<zzbou> zzdwoVar) {
        this.zzfec = zzbivVar;
        this.zzfeg = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        final zzbou zzbouVar = this.zzfeg.get();
        return (zzbqs) zzdwh.zza(new zzbqs(new zzbpg(zzbouVar) { // from class: com.google.android.gms.internal.ads.zzbix
            private final zzbou zzfee;

            {
                this.zzfee = zzbouVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbpg
            public final void zzafe() {
                this.zzfee.zzaga();
            }
        }, zzaxn.zzdwn), "Cannot return null from a non-@Nullable @Provides method");
    }
}
