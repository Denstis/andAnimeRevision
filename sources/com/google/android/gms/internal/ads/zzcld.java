package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzcld implements com.google.android.gms.ads.internal.zze {
    private final /* synthetic */ zzcvz zzfzu;
    private final /* synthetic */ zzcvr zzfzv;
    private final /* synthetic */ zzaxv zzgaw;
    private final /* synthetic */ zzclj zzgax;
    private final /* synthetic */ zzclb zzgay;

    zzcld(zzclb zzclbVar, zzaxv zzaxvVar, zzcvz zzcvzVar, zzcvr zzcvrVar, zzclj zzcljVar) {
        this.zzgay = zzclbVar;
        this.zzgaw = zzaxvVar;
        this.zzfzu = zzcvzVar;
        this.zzfzv = zzcvrVar;
        this.zzgax = zzcljVar;
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzg(View view) {
        this.zzgaw.set(this.zzgay.zzgav.zza(this.zzfzu, this.zzfzv, view, this.zzgax));
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjl() {
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjm() {
    }
}
