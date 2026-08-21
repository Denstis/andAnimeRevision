package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbfu implements zzbzf {
    private zzbmk zzelq;
    private final /* synthetic */ zzbfa zzerq;
    private zzbpn zzerr;

    private zzbfu(zzbfa zzbfaVar) {
        this.zzerq = zzbfaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    /* JADX INFO: renamed from: zzadn, reason: merged with bridge method [inline-methods] */
    public final zzbzc zzace() {
        zzdwh.zza(this.zzerr, (Class<zzbpn>) zzbpn.class);
        zzdwh.zza(this.zzelq, (Class<zzbmk>) zzbmk.class);
        return new zzbft(this.zzerq, new zzbli(), new zzcws(), new zzbmf(), new zzcbx(), this.zzerr, this.zzelq, new zzcxa());
    }

    @Override // com.google.android.gms.internal.ads.zzbzf
    public final /* synthetic */ zzbzf zze(zzbmk zzbmkVar) {
        this.zzelq = (zzbmk) zzdwh.checkNotNull(zzbmkVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbzf
    public final /* synthetic */ zzbzf zze(zzbpn zzbpnVar) {
        this.zzerr = (zzbpn) zzdwh.checkNotNull(zzbpnVar);
        return this;
    }
}
