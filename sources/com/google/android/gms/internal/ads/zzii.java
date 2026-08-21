package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(24)
final class zzii {
    private final MediaCodec.CryptoInfo zzalx;
    private final MediaCodec.CryptoInfo.Pattern zzalz;

    private zzii(MediaCodec.CryptoInfo cryptoInfo) {
        this.zzalx = cryptoInfo;
        this.zzalz = new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void set(int i2, int i3) {
        this.zzalz.set(i2, i3);
        this.zzalx.setPattern(this.zzalz);
    }
}
