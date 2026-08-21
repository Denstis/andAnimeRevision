package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public final class MpegAudioHeader {
    public static final int MAX_FRAME_SIZE_BYTES = 4096;
    public int bitrate;
    public int channels;
    public int frameSize;
    public String mimeType;
    public int sampleRate;
    public int samplesPerFrame;
    public int version;
    private static final String[] MIME_TYPE_BY_LAYER = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};
    private static final int[] SAMPLING_RATE_V1 = {44100, 48000, 32000};
    private static final int[] BITRATE_V1_L1 = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};
    private static final int[] BITRATE_V2_L1 = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};
    private static final int[] BITRATE_V1_L2 = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};
    private static final int[] BITRATE_V1_L3 = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};
    private static final int[] BITRATE_V2 = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    public static int getFrameSize(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = SAMPLING_RATE_V1[i6];
        if (i3 == 2) {
            i7 /= 2;
        } else if (i3 == 0) {
            i7 /= 4;
        }
        int i8 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            return ((((i3 == 3 ? BITRATE_V1_L1[i5 - 1] : BITRATE_V2_L1[i5 - 1]) * 12) / i7) + i8) * 4;
        }
        int i9 = i3 == 3 ? i4 == 2 ? BITRATE_V1_L2[i5 - 1] : BITRATE_V1_L3[i5 - 1] : BITRATE_V2[i5 - 1];
        if (i3 == 3) {
            return ((i9 * 144) / i7) + i8;
        }
        return (((i4 == 1 ? 72 : 144) * i9) / i7) + i8;
    }

    public static boolean populateHeader(int i2, MpegAudioHeader mpegAudioHeader) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return false;
        }
        int i9 = SAMPLING_RATE_V1[i6];
        if (i3 == 2) {
            i9 /= 2;
        } else if (i3 == 0) {
            i9 /= 4;
        }
        int i10 = i9;
        int i11 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            i7 = ((((i3 == 3 ? BITRATE_V1_L1[i5 - 1] : BITRATE_V2_L1[i5 - 1]) * 12) / i10) + i11) * 4;
            i8 = 384;
        } else {
            if (i3 == 3) {
                i7 = (((i4 == 2 ? BITRATE_V1_L2[i5 - 1] : BITRATE_V1_L3[i5 - 1]) * 144) / i10) + i11;
                i8 = 1152;
            } else {
                int i12 = BITRATE_V2[i5 - 1];
                int i13 = i4 == 1 ? 576 : 1152;
                i7 = (((i4 == 1 ? 72 : 144) * i12) / i10) + i11;
                i8 = i13;
            }
        }
        mpegAudioHeader.setValues(i3, MIME_TYPE_BY_LAYER[3 - i4], i7, i10, ((i2 >> 6) & 3) == 3 ? 1 : 2, ((i7 * 8) * i10) / i8, i8);
        return true;
    }

    private void setValues(int i2, String str, int i3, int i4, int i5, int i6, int i7) {
        this.version = i2;
        this.mimeType = str;
        this.frameSize = i3;
        this.sampleRate = i4;
        this.channels = i5;
        this.bitrate = i6;
        this.samplesPerFrame = i7;
    }
}
