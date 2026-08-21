package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.gms.ads.AdRequest;
import com.google.android.material.R;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class zzhy {
    private static final int[] zzakf = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] zzakg = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] zzakh = {64, R.styleable.AppCompatTheme_windowActionBarOverlay, 128, PsExtractor.AUDIO_STREAM, 224, 256, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, MpegAudioHeader.MAX_FRAME_SIZE_BYTES, 6144, 7680};

    public static int zzj(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        return ((((byteBuffer.get(iPosition + 5) & 252) >> 2) | ((byteBuffer.get(iPosition + 4) & 1) << 6)) + 1) << 5;
    }
}
