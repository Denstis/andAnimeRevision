package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzcln implements com.google.android.gms.ads.internal.zze {
    private final /* synthetic */ zzbru zzgbe;

    zzcln(zzcli zzcliVar, zzbru zzbruVar) {
        this.zzgbe = zzbruVar;
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzg(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjl() {
        this.zzgbe.zzach().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjm() {
        this.zzgbe.zzaci().onAdImpression();
        this.zzgbe.zzacj().zzagq();
    }
}
