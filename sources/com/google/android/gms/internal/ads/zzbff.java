package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbff implements zzbih {
    private zzbmk zzelq;
    private final /* synthetic */ zzbfa zzerq;
    private zzbpn zzerr;

    private zzbff(zzbfa zzbfaVar) {
        this.zzerq = zzbfaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbih
    @Deprecated
    public final /* synthetic */ zzbih zza(zzbin zzbinVar) {
        zzdwh.checkNotNull(zzbinVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    /* JADX INFO: renamed from: zzacp, reason: merged with bridge method [inline-methods] */
    public final zzbie zzace() {
        zzdwh.zza(this.zzerr, (Class<zzbpn>) zzbpn.class);
        zzdwh.zza(this.zzelq, (Class<zzbmk>) zzbmk.class);
        return new zzbfi(this.zzerq, new zzbli(), new zzcws(), new zzbmf(), new zzcbx(), this.zzerr, this.zzelq, new zzcxa());
    }

    @Override // com.google.android.gms.internal.ads.zzbih
    public final /* synthetic */ zzbih zzb(zzbmk zzbmkVar) {
        this.zzelq = (zzbmk) zzdwh.checkNotNull(zzbmkVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbih
    public final /* synthetic */ zzbih zzb(zzbpn zzbpnVar) {
        this.zzerr = (zzbpn) zzdwh.checkNotNull(zzbpnVar);
        return this;
    }
}
