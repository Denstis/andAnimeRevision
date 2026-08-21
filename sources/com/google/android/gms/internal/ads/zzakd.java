package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public interface zzakd extends IInterface {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i2);

    void onAdImpression();

    void onAdLeftApplication();

    void onAdLoaded();

    void onAdOpened();

    void onAppEvent(String str, String str2);

    void onVideoEnd();

    void onVideoPause();

    void onVideoPlay();

    void zza(zzace zzaceVar, String str);

    void zza(zzake zzakeVar);

    void zza(zzaqv zzaqvVar);

    void zzb(Bundle bundle);

    void zzb(zzaqt zzaqtVar);

    void zzcl(int i2);

    void zzde(String str);

    void zzrw();

    void zzrx();
}
