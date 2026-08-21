package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbfk implements zzbjm {
    private zzbmk zzelq;
    private zzbth zzelt;
    private final /* synthetic */ zzbfa zzerq;
    private zzbpn zzerr;
    private zzcle zzewq;
    private zzbkh zzewr;
    private zzbin zzews;

    private zzbfk(zzbfa zzbfaVar) {
        this.zzerq = zzbfaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final /* synthetic */ zzbjm zza(zzbkh zzbkhVar) {
        this.zzewr = (zzbkh) zzdwh.checkNotNull(zzbkhVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final /* synthetic */ zzbjm zza(zzcle zzcleVar) {
        this.zzewq = (zzcle) zzdwh.checkNotNull(zzcleVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    /* JADX INFO: renamed from: zzacz, reason: merged with bridge method [inline-methods] */
    public final zzbjn zzace() {
        zzdwh.zza(this.zzerr, (Class<zzbpn>) zzbpn.class);
        zzdwh.zza(this.zzelq, (Class<zzbmk>) zzbmk.class);
        zzdwh.zza(this.zzewq, (Class<zzcle>) zzcle.class);
        zzdwh.zza(this.zzewr, (Class<zzbkh>) zzbkh.class);
        zzdwh.zza(this.zzews, (Class<zzbin>) zzbin.class);
        zzdwh.zza(this.zzelt, (Class<zzbth>) zzbth.class);
        return new zzbfj(this.zzerq, this.zzews, this.zzelt, new zzbli(), new zzcws(), new zzbmf(), new zzcbx(), this.zzerr, this.zzelq, new zzcxa(), this.zzewq, this.zzewr);
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final /* synthetic */ zzbjm zzb(zzbin zzbinVar) {
        this.zzews = (zzbin) zzdwh.checkNotNull(zzbinVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final /* synthetic */ zzbjm zzb(zzbth zzbthVar) {
        this.zzelt = (zzbth) zzdwh.checkNotNull(zzbthVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final /* synthetic */ zzbjm zzc(zzbmk zzbmkVar) {
        this.zzelq = (zzbmk) zzdwh.checkNotNull(zzbmkVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final /* synthetic */ zzbjm zzc(zzbpn zzbpnVar) {
        this.zzerr = (zzbpn) zzdwh.checkNotNull(zzbpnVar);
        return this;
    }
}
