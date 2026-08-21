package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbfc implements zzbtk {
    private zzbmk zzelq;
    private zzbth zzelt;
    private final /* synthetic */ zzbfa zzerq;
    private zzbpn zzerr;

    private zzbfc(zzbfa zzbfaVar) {
        this.zzerq = zzbfaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final /* synthetic */ zzbtk zza(zzbmk zzbmkVar) {
        this.zzelq = (zzbmk) zzdwh.checkNotNull(zzbmkVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final /* synthetic */ zzbtk zza(zzbpn zzbpnVar) {
        this.zzerr = (zzbpn) zzdwh.checkNotNull(zzbpnVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final /* synthetic */ zzbtk zza(zzbth zzbthVar) {
        this.zzelt = (zzbth) zzdwh.checkNotNull(zzbthVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    /* JADX INFO: renamed from: zzacd, reason: merged with bridge method [inline-methods] */
    public final zzbtl zzace() {
        zzdwh.zza(this.zzerr, (Class<zzbpn>) zzbpn.class);
        zzdwh.zza(this.zzelq, (Class<zzbmk>) zzbmk.class);
        zzdwh.zza(this.zzelt, (Class<zzbth>) zzbth.class);
        return new zzbfb(this.zzerq, this.zzelt, new zzbli(), new zzcws(), new zzbmf(), new zzcbx(), this.zzerr, this.zzelq, new zzcxa());
    }
}
