package com.google.android.exoplayer2.upstream;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public interface BandwidthMeter {

    public interface EventListener {
        void onBandwidthSample(int i2, long j2, long j3);
    }

    void addEventListener(Handler handler, EventListener eventListener);

    long getBitrateEstimate();

    TransferListener getTransferListener();

    void removeEventListener(EventListener eventListener);
}
