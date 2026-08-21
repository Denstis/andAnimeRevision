package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(21)
final class zzku implements zzks {
    private final int zzazl;
    private MediaCodecInfo[] zzazm;

    public zzku(boolean z) {
        this.zzazl = z ? 1 : 0;
    }

    private final void zzgy() {
        if (this.zzazm == null) {
            this.zzazm = new MediaCodecList(this.zzazl).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final int getCodecCount() {
        zzgy();
        return this.zzazm.length;
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final MediaCodecInfo getCodecInfoAt(int i2) {
        zzgy();
        return this.zzazm[i2];
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zza(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zzgx() {
        return true;
    }
}
