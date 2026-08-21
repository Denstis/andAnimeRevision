package com.google.android.gms.internal.ads;

import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public interface zzwr extends IInterface {
    float getAspectRatio();

    int getPlaybackState();

    boolean isClickToExpandEnabled();

    boolean isCustomControlsEnabled();

    boolean isMuted();

    void mute(boolean z);

    void pause();

    void play();

    void stop();

    void zza(zzws zzwsVar);

    float zzox();

    float zzoy();

    zzws zzoz();
}
