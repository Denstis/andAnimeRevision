package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;

/* JADX INFO: loaded from: classes.dex */
public class zzuu extends AdListener {
    private final Object lock = new Object();
    private AdListener zzcdn;

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        synchronized (this.lock) {
            if (this.zzcdn != null) {
                this.zzcdn.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i2) {
        synchronized (this.lock) {
            if (this.zzcdn != null) {
                this.zzcdn.onAdFailedToLoad(i2);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        synchronized (this.lock) {
            if (this.zzcdn != null) {
                this.zzcdn.onAdLeftApplication();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        synchronized (this.lock) {
            if (this.zzcdn != null) {
                this.zzcdn.onAdOpened();
            }
        }
    }

    public final void zza(AdListener adListener) {
        synchronized (this.lock) {
            this.zzcdn = adListener;
        }
    }
}
