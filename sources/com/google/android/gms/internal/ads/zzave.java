package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public final class zzave {
    private boolean zzdjq = false;
    private float zzdjk = 1.0f;

    public static float zzbe(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume == 0) {
            return 0.0f;
        }
        return streamVolume / streamMaxVolume;
    }

    private final synchronized boolean zzvy() {
        return this.zzdjk >= 0.0f;
    }

    public final synchronized void setAppMuted(boolean z) {
        this.zzdjq = z;
    }

    public final synchronized void setAppVolume(float f2) {
        this.zzdjk = f2;
    }

    public final synchronized float zzos() {
        if (!zzvy()) {
            return 1.0f;
        }
        return this.zzdjk;
    }

    public final synchronized boolean zzot() {
        return this.zzdjq;
    }
}
