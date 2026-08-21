package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;

/* JADX INFO: loaded from: classes.dex */
interface zzks {
    int getCodecCount();

    MediaCodecInfo getCodecInfoAt(int i2);

    boolean zza(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

    boolean zzgx();
}
