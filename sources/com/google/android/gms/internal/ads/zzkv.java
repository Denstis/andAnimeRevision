package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import com.google.android.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
final class zzkv implements zzks {
    private zzkv() {
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final int getCodecCount() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final MediaCodecInfo getCodecInfoAt(int i2) {
        return MediaCodecList.getCodecInfoAt(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zza(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return MimeTypes.VIDEO_H264.equals(str);
    }

    @Override // com.google.android.gms.internal.ads.zzks
    public final boolean zzgx() {
        return false;
    }
}
