package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class zzbfr implements zzcvj {
    private final /* synthetic */ zzbfa zzerq;
    private zzdwo<Context> zzeyv;
    private zzdwo<zzcud<zzbzc, zzbyz>> zzeyw;
    private zzdwo<zzcui> zzeyx;
    private zzdwo<zzcwc> zzeyy;
    private zzdwo<zzcvb> zzeyz;
    private zzdwo<zzcvl> zzeza;
    private zzdwo<String> zzezb;
    private zzdwo<zzcvf> zzezc;

    private zzbfr(zzbfa zzbfaVar, Context context, String str) {
        this.zzerq = zzbfaVar;
        this.zzeyv = zzdwe.zzbb(context);
        this.zzeyw = new zzcug(this.zzeyv);
        this.zzeyx = zzdwc.zzan(zzcuz.zzamu());
        this.zzeyy = zzdwc.zzan(zzcwb.zzamz());
        this.zzeyz = zzdwc.zzan(new zzcvg(this.zzeyv, this.zzerq.zzekc, this.zzerq.zzejx, this.zzeyw, this.zzeyx, zzcwf.zzanb(), this.zzeyy));
        this.zzeza = zzdwc.zzan(new zzcvq(this.zzeyz, this.zzeyx, this.zzeyy));
        this.zzezb = zzdwe.zzbc(str);
        this.zzezc = zzdwc.zzan(new zzcvk(this.zzezb, this.zzeyz, this.zzeyx, this.zzeyy));
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final zzcvl zzadk() {
        return this.zzeza.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final zzcvf zzadl() {
        return this.zzezc.get();
    }
}
