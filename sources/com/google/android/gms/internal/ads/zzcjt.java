package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzcjt extends zzckt {
    private zzbrc zzfzo;
    private zzbne zzfzp;

    public zzcjt(zzbmv zzbmvVar, zzbni zzbniVar, zzbnr zzbnrVar, zzbob zzbobVar, zzbne zzbneVar, zzbpf zzbpfVar, zzbrl zzbrlVar, zzboo zzbooVar, zzbrc zzbrcVar) {
        super(zzbmvVar, zzbniVar, zzbnrVar, zzbobVar, zzbpfVar, zzbooVar, zzbrlVar);
        this.zzfzo = zzbrcVar;
        this.zzfzp = zzbneVar;
    }

    @Override // com.google.android.gms.internal.ads.zzckt, com.google.android.gms.internal.ads.zzakd
    public final void onVideoEnd() {
        this.zzfzo.zzrb();
    }

    @Override // com.google.android.gms.internal.ads.zzckt, com.google.android.gms.internal.ads.zzakd
    public final void zza(zzaqv zzaqvVar) {
        this.zzfzo.zza(new zzaqt(zzaqvVar.getType(), zzaqvVar.getAmount()));
    }

    @Override // com.google.android.gms.internal.ads.zzckt, com.google.android.gms.internal.ads.zzakd
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzckt, com.google.android.gms.internal.ads.zzakd
    public final void zzb(zzaqt zzaqtVar) {
        this.zzfzo.zza(zzaqtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzckt, com.google.android.gms.internal.ads.zzakd
    public final void zzcl(int i2) {
        this.zzfzp.zzcl(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzckt, com.google.android.gms.internal.ads.zzakd
    public final void zzrw() {
        this.zzfzo.zzra();
    }

    @Override // com.google.android.gms.internal.ads.zzckt, com.google.android.gms.internal.ads.zzakd
    public final void zzrx() {
        this.zzfzo.zzrb();
    }
}
