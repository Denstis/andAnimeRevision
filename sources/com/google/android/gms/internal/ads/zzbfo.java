package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbfo {
    private zzbel zzekb;
    private zzbfx zzexq;
    private zzcyn zzexr;
    private zzbge zzexs;
    private zzcwq zzext;

    private zzbfo() {
    }

    public final zzbfo zza(zzbfx zzbfxVar) {
        this.zzexq = (zzbfx) zzdwh.checkNotNull(zzbfxVar);
        return this;
    }

    public final zzbei zzadg() {
        zzdwh.zza(this.zzekb, (Class<zzbel>) zzbel.class);
        zzdwh.zza(this.zzexq, (Class<zzbfx>) zzbfx.class);
        if (this.zzexr == null) {
            this.zzexr = new zzcyn();
        }
        if (this.zzexs == null) {
            this.zzexs = new zzbge();
        }
        if (this.zzext == null) {
            this.zzext = new zzcwq();
        }
        return new zzbfa(this.zzekb, this.zzexq, this.zzexr, this.zzexs, this.zzext);
    }

    public final zzbfo zzc(zzbel zzbelVar) {
        this.zzekb = (zzbel) zzdwh.checkNotNull(zzbelVar);
        return this;
    }
}
