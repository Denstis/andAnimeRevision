package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* JADX INFO: loaded from: classes.dex */
public final class zzko extends Exception {
    private final String mimeType;
    private final boolean zzazb;
    private final String zzazc;
    private final String zzazd;

    public zzko(zzgo zzgoVar, Throwable th, boolean z, int i2) {
        String strValueOf = String.valueOf(zzgoVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 36);
        sb.append("Decoder init failed: [");
        sb.append(i2);
        sb.append("], ");
        sb.append(strValueOf);
        super(sb.toString(), th);
        this.mimeType = zzgoVar.zzafc;
        this.zzazb = false;
        this.zzazc = null;
        String str = i2 < 0 ? "neg_" : "";
        int iAbs = Math.abs(i2);
        StringBuilder sb2 = new StringBuilder(str.length() + 64);
        sb2.append("com.google.android.exoplayer.MediaCodecTrackRenderer_");
        sb2.append(str);
        sb2.append(iAbs);
        this.zzazd = sb2.toString();
    }

    public zzko(zzgo zzgoVar, Throwable th, boolean z, String str) {
        String strValueOf = String.valueOf(zzgoVar);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23 + String.valueOf(strValueOf).length());
        sb.append("Decoder init failed: ");
        sb.append(str);
        sb.append(", ");
        sb.append(strValueOf);
        super(sb.toString(), th);
        this.mimeType = zzgoVar.zzafc;
        this.zzazb = false;
        this.zzazc = str;
        String diagnosticInfo = null;
        if (zzof.SDK_INT >= 21 && (th instanceof MediaCodec.CodecException)) {
            diagnosticInfo = ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        this.zzazd = diagnosticInfo;
    }
}
