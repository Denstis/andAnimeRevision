package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzchk extends zzakc implements zzbnz {
    private zzakd zzdfb;
    private zzboc zzfye;

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onAdClicked() {
        if (this.zzdfb != null) {
            this.zzdfb.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onAdClosed() {
        if (this.zzdfb != null) {
            this.zzdfb.onAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onAdFailedToLoad(int i2) {
        if (this.zzdfb != null) {
            this.zzdfb.onAdFailedToLoad(i2);
        }
        if (this.zzfye != null) {
            this.zzfye.onAdFailedToLoad(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onAdImpression() {
        if (this.zzdfb != null) {
            this.zzdfb.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onAdLeftApplication() {
        if (this.zzdfb != null) {
            this.zzdfb.onAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onAdLoaded() {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onAdOpened() {
        if (this.zzdfb != null) {
            this.zzdfb.onAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onAppEvent(String str, String str2) {
        if (this.zzdfb != null) {
            this.zzdfb.onAppEvent(str, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onVideoEnd() {
        if (this.zzdfb != null) {
            this.zzdfb.onVideoEnd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onVideoPause() {
        if (this.zzdfb != null) {
            this.zzdfb.onVideoPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void onVideoPlay() {
        if (this.zzdfb != null) {
            this.zzdfb.onVideoPlay();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zza(zzace zzaceVar, String str) {
        if (this.zzdfb != null) {
            this.zzdfb.zza(zzaceVar, str);
        }
    }

    public final synchronized void zza(zzakd zzakdVar) {
        this.zzdfb = zzakdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zza(zzake zzakeVar) {
        if (this.zzdfb != null) {
            this.zzdfb.zza(zzakeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zza(zzaqv zzaqvVar) {
        if (this.zzdfb != null) {
            this.zzdfb.zza(zzaqvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnz
    public final synchronized void zza(zzboc zzbocVar) {
        this.zzfye = zzbocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zzb(Bundle bundle) {
        if (this.zzdfb != null) {
            this.zzdfb.zzb(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zzb(zzaqt zzaqtVar) {
        if (this.zzdfb != null) {
            this.zzdfb.zzb(zzaqtVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zzcl(int i2) {
        if (this.zzdfb != null) {
            this.zzdfb.zzcl(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zzde(String str) {
        if (this.zzdfb != null) {
            this.zzdfb.zzde(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zzrw() {
        if (this.zzdfb != null) {
            this.zzdfb.zzrw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final synchronized void zzrx() {
        if (this.zzdfb != null) {
            this.zzdfb.zzrx();
        }
    }
}
