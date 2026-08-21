package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbfv implements zzcmy {
    private zzbmk zzelq;
    private final /* synthetic */ zzbfa zzerq;
    private zzcnc zzezp;

    private zzbfv(zzbfa zzbfaVar) {
        this.zzerq = zzbfaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcmy
    public final /* synthetic */ zzcmy zza(zzcnc zzcncVar) {
        this.zzezp = (zzcnc) zzdwh.checkNotNull(zzcncVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcmy
    public final zzcmz zzado() {
        zzdwh.zza(this.zzelq, (Class<zzbmk>) zzbmk.class);
        zzdwh.zza(this.zzezp, (Class<zzcnc>) zzcnc.class);
        return new zzbfy(this.zzerq, this.zzezp, new zzbli(), new zzcbx(), this.zzelq, new zzcxa());
    }

    @Override // com.google.android.gms.internal.ads.zzcmy
    public final /* synthetic */ zzcmy zzf(zzbmk zzbmkVar) {
        this.zzelq = (zzbmk) zzdwh.checkNotNull(zzbmkVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcmy
    @Deprecated
    public final /* synthetic */ zzcmy zzf(zzbpn zzbpnVar) {
        zzdwh.checkNotNull(zzbpnVar);
        return this;
    }
}
