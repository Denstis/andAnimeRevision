package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.ads.AdRequest;
import com.google.android.material.R;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class zzhc {
    private static final int[] zzagk = {1, 2, 3, 6};
    private static final int[] zzagl = {48000, 44100, 32000};
    private static final int[] zzagm = {24000, 22050, 16000};
    private static final int[] zzagn = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzago = {32, 40, 48, 56, 64, 80, 96, R.styleable.AppCompatTheme_windowActionBarOverlay, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, 320, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 576, 640};
    private static final int[] zzagp = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static zzgo zza(zzoc zzocVar, String str, String str2, zzin zzinVar) {
        int i2 = zzagl[(zzocVar.readUnsignedByte() & PsExtractor.AUDIO_STREAM) >> 6];
        int unsignedByte = zzocVar.readUnsignedByte();
        int i3 = zzagn[(unsignedByte & 56) >> 3];
        if ((unsignedByte & 4) != 0) {
            i3++;
        }
        return zzgo.zza(str, MimeTypes.AUDIO_AC3, null, -1, -1, i3, i2, null, null, 0, str2);
    }

    public static zzgo zzb(zzoc zzocVar, String str, String str2, zzin zzinVar) {
        zzocVar.zzbh(2);
        int i2 = zzagl[(zzocVar.readUnsignedByte() & PsExtractor.AUDIO_STREAM) >> 6];
        int unsignedByte = zzocVar.readUnsignedByte();
        int i3 = zzagn[(unsignedByte & 14) >> 1];
        if ((unsignedByte & 1) != 0) {
            i3++;
        }
        return zzgo.zza(str, MimeTypes.AUDIO_E_AC3, null, -1, -1, i3, i2, null, null, 0, str2);
    }

    public static int zzes() {
        return 1536;
    }

    public static int zzh(ByteBuffer byteBuffer) {
        return (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? zzagk[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4] : 6) * 256;
    }
}
