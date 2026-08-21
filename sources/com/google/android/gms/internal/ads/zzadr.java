package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* JADX INFO: loaded from: classes.dex */
public final class zzadr extends zzacr {
    private final NativeCustomTemplateAd.OnCustomClickListener zzcwv;

    public zzadr(NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zzcwv = onCustomClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zza(zzace zzaceVar, String str) {
        this.zzcwv.onCustomClick(zzacj.zza(zzaceVar), str);
    }
}
