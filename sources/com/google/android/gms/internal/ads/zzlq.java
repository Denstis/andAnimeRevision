package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class zzlq implements zzlt, zzlu {
    private final Uri uri;
    private final Handler zzacs;
    private zzgy zzadd;
    private final int zzazt;
    private final zzlp zzazu;
    private zzlt zzazv;
    private final zznd zzbbb;
    private final zzix zzbbc;
    private final int zzbbd;
    private boolean zzbbe;
    private final String zzazx = null;
    private final zzha zzacw = new zzha();

    public zzlq(Uri uri, zznd zzndVar, zzix zzixVar, int i2, Handler handler, zzlp zzlpVar, String str, int i3) {
        this.uri = uri;
        this.zzbbb = zzndVar;
        this.zzbbc = zzixVar;
        this.zzazt = i2;
        this.zzacs = handler;
        this.zzazu = zzlpVar;
        this.zzbbd = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final zzls zza(int i2, zznc zzncVar) {
        zznr.checkArgument(i2 == 0);
        return new zzli(this.uri, this.zzbbb.zzib(), this.zzbbc.zzgd(), this.zzazt, this.zzacs, this.zzazu, this, zzncVar, null, this.zzbbd);
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final void zza(zzgc zzgcVar, boolean z, zzlt zzltVar) {
        this.zzazv = zzltVar;
        this.zzadd = new zzmi(C.TIME_UNSET, false);
        zzltVar.zzb(this.zzadd, null);
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzb(zzgy zzgyVar, Object obj) {
        boolean z = zzgyVar.zza(0, this.zzacw, false).zzagh != C.TIME_UNSET;
        if (!this.zzbbe || z) {
            this.zzadd = zzgyVar;
            this.zzbbe = z;
            this.zzazv.zzb(this.zzadd, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final void zzb(zzls zzlsVar) {
        ((zzli) zzlsVar).release();
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final void zzhl() {
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final void zzhm() {
        this.zzazv = null;
    }
}
