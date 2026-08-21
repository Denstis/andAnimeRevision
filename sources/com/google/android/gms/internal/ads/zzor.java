package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(23)
final class zzor implements MediaCodec.OnFrameRenderedListener {
    private final /* synthetic */ zzoq zzbin;

    private zzor(zzoq zzoqVar, MediaCodec mediaCodec) {
        this.zzbin = zzoqVar;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j2, long j3) {
        zzoq zzoqVar = this.zzbin;
        if (this != zzoqVar.zzbik) {
            return;
        }
        zzoqVar.zziv();
    }
}
