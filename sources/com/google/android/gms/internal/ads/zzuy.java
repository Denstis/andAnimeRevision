package com.google.android.gms.internal.ads;

import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public interface zzuy extends IInterface {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i2);

    void onAdImpression();

    void onAdLeftApplication();

    void onAdLoaded();

    void onAdOpened();
}
