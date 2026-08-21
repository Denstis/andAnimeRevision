package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzcwe {
    public final zzua zzbll;
    public final zzaay zzdeh;
    public final zzagd zzdkl;
    public final int zzgdf;
    public final zzvz zzgke;
    public final zzyj zzgkf;
    public final zztx zzgkg;
    public final String zzgkh;
    public final ArrayList<String> zzgki;
    public final ArrayList<String> zzgkj;
    public final zzuf zzgkk;
    public final PublisherAdViewOptions zzgkl;
    public final zzvt zzgkm;
    public final Set<String> zzgkn;

    private zzcwe(zzcwg zzcwgVar) {
        this.zzbll = zzcwgVar.zzbll;
        this.zzgkh = zzcwgVar.zzgkh;
        this.zzgke = zzcwgVar.zzgke;
        this.zzgkg = new zztx(zzcwgVar.zzgkg.versionCode, zzcwgVar.zzgkg.zzcbx, zzcwgVar.zzgkg.extras, zzcwgVar.zzgkg.zzcby, zzcwgVar.zzgkg.zzcbz, zzcwgVar.zzgkg.zzcca, zzcwgVar.zzgkg.zzabj, zzcwgVar.zzgkg.zzbkg || zzcwgVar.zzbkg, zzcwgVar.zzgkg.zzccb, zzcwgVar.zzgkg.zzccc, zzcwgVar.zzgkg.zzng, zzcwgVar.zzgkg.zzccd, zzcwgVar.zzgkg.zzcce, zzcwgVar.zzgkg.zzccf, zzcwgVar.zzgkg.zzccg, zzcwgVar.zzgkg.zzcch, zzcwgVar.zzgkg.zzcci, zzcwgVar.zzgkg.zzccj, zzcwgVar.zzgkg.zzcck, zzcwgVar.zzgkg.zzabk, zzcwgVar.zzgkg.zzabl);
        this.zzgkf = zzcwgVar.zzgkf != null ? zzcwgVar.zzgkf : zzcwgVar.zzdeh != null ? zzcwgVar.zzdeh.zzcwa : null;
        this.zzgki = zzcwgVar.zzgki;
        this.zzgkj = zzcwgVar.zzgkj;
        this.zzdeh = zzcwgVar.zzgki != null ? zzcwgVar.zzdeh == null ? new zzaay(new NativeAdOptions.Builder().build()) : zzcwgVar.zzdeh : null;
        this.zzgkk = zzcwgVar.zzgkk;
        this.zzgdf = zzcwgVar.zzgdf;
        this.zzgkl = zzcwgVar.zzgkl;
        this.zzgkm = zzcwgVar.zzgkm;
        this.zzdkl = zzcwgVar.zzdkl;
        this.zzgkn = zzcwgVar.zzgkn;
    }

    public final zzada zzana() {
        PublisherAdViewOptions publisherAdViewOptions = this.zzgkl;
        if (publisherAdViewOptions == null) {
            return null;
        }
        return publisherAdViewOptions.zzjh();
    }
}
