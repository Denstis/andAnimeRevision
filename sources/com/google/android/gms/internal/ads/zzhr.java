package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* JADX INFO: loaded from: classes.dex */
final class zzhr extends Thread {
    private final /* synthetic */ AudioTrack zzajx;
    private final /* synthetic */ zzho zzajy;

    zzhr(zzho zzhoVar, AudioTrack audioTrack) {
        this.zzajy = zzhoVar;
        this.zzajx = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            this.zzajx.flush();
            this.zzajx.release();
        } finally {
            this.zzajy.zzahu.open();
        }
    }
}
