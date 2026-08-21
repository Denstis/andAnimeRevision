package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class zzkm {
    private final String mimeType;
    public final String name;
    public final boolean zzajm;
    public final boolean zzayx;
    public final boolean zzayy;
    private final MediaCodecInfo.CodecCapabilities zzayz;

    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private zzkm(java.lang.String r2, java.lang.String r3, android.media.MediaCodecInfo.CodecCapabilities r4, boolean r5, boolean r6) {
        /*
            r1 = this;
            r1.<init>()
            java.lang.Object r2 = com.google.android.gms.internal.ads.zznr.checkNotNull(r2)
            java.lang.String r2 = (java.lang.String) r2
            r1.name = r2
            r1.mimeType = r3
            r1.zzayz = r4
            r2 = 1
            r3 = 0
            if (r5 != 0) goto L2a
            if (r4 == 0) goto L2a
            int r5 = com.google.android.gms.internal.ads.zzof.SDK_INT
            r0 = 19
            if (r5 < r0) goto L25
            java.lang.String r5 = "adaptive-playback"
            boolean r5 = r4.isFeatureSupported(r5)
            if (r5 == 0) goto L25
            r5 = 1
            goto L26
        L25:
            r5 = 0
        L26:
            if (r5 == 0) goto L2a
            r5 = 1
            goto L2b
        L2a:
            r5 = 0
        L2b:
            r1.zzayx = r5
            r5 = 21
            if (r4 == 0) goto L44
            int r0 = com.google.android.gms.internal.ads.zzof.SDK_INT
            if (r0 < r5) goto L3f
            java.lang.String r0 = "tunneled-playback"
            boolean r0 = r4.isFeatureSupported(r0)
            if (r0 == 0) goto L3f
            r0 = 1
            goto L40
        L3f:
            r0 = 0
        L40:
            if (r0 == 0) goto L44
            r0 = 1
            goto L45
        L44:
            r0 = 0
        L45:
            r1.zzajm = r0
            if (r6 != 0) goto L5e
            if (r4 == 0) goto L5d
            int r6 = com.google.android.gms.internal.ads.zzof.SDK_INT
            if (r6 < r5) goto L59
            java.lang.String r5 = "secure-playback"
            boolean r4 = r4.isFeatureSupported(r5)
            if (r4 == 0) goto L59
            r4 = 1
            goto L5a
        L59:
            r4 = 0
        L5a:
            if (r4 == 0) goto L5d
            goto L5e
        L5d:
            r2 = 0
        L5e:
            r1.zzayy = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkm.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }

    public static zzkm zza(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new zzkm(str, str2, codecCapabilities, z, z2);
    }

    @TargetApi(21)
    private static boolean zza(MediaCodecInfo.VideoCapabilities videoCapabilities, int i2, int i3, double d2) {
        return (d2 == -1.0d || d2 <= 0.0d) ? videoCapabilities.isSizeSupported(i2, i3) : videoCapabilities.areSizeAndRateSupported(i2, i3, d2);
    }

    public static zzkm zzay(String str) {
        return new zzkm(str, null, null, false, false);
    }

    private final void zzba(String str) {
        String str2 = this.name;
        String str3 = this.mimeType;
        String str4 = zzof.zzbgt;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        Log.d(com.google.android.exoplayer2.mediacodec.MediaCodecInfo.TAG, sb.toString());
    }

    @TargetApi(21)
    public final boolean zza(int i2, int i3, double d2) {
        String string;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzayz;
        if (codecCapabilities == null) {
            string = "sizeAndRate.caps";
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities == null) {
                string = "sizeAndRate.vCaps";
            } else {
                if (zza(videoCapabilities, i2, i3, d2)) {
                    return true;
                }
                if (i2 < i3 && zza(videoCapabilities, i3, i2, d2)) {
                    StringBuilder sb = new StringBuilder(69);
                    sb.append("sizeAndRate.rotated, ");
                    sb.append(i2);
                    sb.append("x");
                    sb.append(i3);
                    sb.append("x");
                    sb.append(d2);
                    String string2 = sb.toString();
                    String str = this.name;
                    String str2 = this.mimeType;
                    String str3 = zzof.zzbgt;
                    StringBuilder sb2 = new StringBuilder(String.valueOf(string2).length() + 25 + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
                    sb2.append("AssumedSupport [");
                    sb2.append(string2);
                    sb2.append("] [");
                    sb2.append(str);
                    sb2.append(", ");
                    sb2.append(str2);
                    sb2.append("] [");
                    sb2.append(str3);
                    sb2.append("]");
                    Log.d(com.google.android.exoplayer2.mediacodec.MediaCodecInfo.TAG, sb2.toString());
                    return true;
                }
                StringBuilder sb3 = new StringBuilder(69);
                sb3.append("sizeAndRate.support, ");
                sb3.append(i2);
                sb3.append("x");
                sb3.append(i3);
                sb3.append("x");
                sb3.append(d2);
                string = sb3.toString();
            }
        }
        zzba(string);
        return false;
    }

    @TargetApi(21)
    public final boolean zzap(int i2) {
        String string;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzayz;
        if (codecCapabilities == null) {
            string = "sampleRate.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                string = "sampleRate.aCaps";
            } else {
                if (audioCapabilities.isSampleRateSupported(i2)) {
                    return true;
                }
                StringBuilder sb = new StringBuilder(31);
                sb.append("sampleRate.support, ");
                sb.append(i2);
                string = sb.toString();
            }
        }
        zzba(string);
        return false;
    }

    @TargetApi(21)
    public final boolean zzaq(int i2) {
        String string;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzayz;
        if (codecCapabilities == null) {
            string = "channelCount.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                string = "channelCount.aCaps";
            } else {
                if (audioCapabilities.getMaxInputChannelCount() >= i2) {
                    return true;
                }
                StringBuilder sb = new StringBuilder(33);
                sb.append("channelCount.support, ");
                sb.append(i2);
                string = sb.toString();
            }
        }
        zzba(string);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzaz(java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkm.zzaz(java.lang.String):boolean");
    }

    @TargetApi(21)
    public final Point zzc(int i2, int i3) {
        String str;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzayz;
        if (codecCapabilities == null) {
            str = "align.caps";
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities != null) {
                int widthAlignment = videoCapabilities.getWidthAlignment();
                int heightAlignment = videoCapabilities.getHeightAlignment();
                return new Point(zzof.zze(i2, widthAlignment) * widthAlignment, zzof.zze(i3, heightAlignment) * heightAlignment);
            }
            str = "align.vCaps";
        }
        zzba(str);
        return null;
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzgu() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzayz;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }
}
