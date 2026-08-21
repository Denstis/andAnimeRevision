package com.google.android.gms.internal.firebase_messaging;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes.dex */
public final class zzn {
    private static final byte[] zza = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};
    private static final int[] zzb = {1, 10, 100, 1000, 10000, DefaultOggSeeker.MATCH_BYTE_RANGE, 1000000, 10000000, 100000000, 1000000000};
    private static final int[] zzc = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};
    private static final int[] zzd = {1, 1, 2, 6, 24, R.styleable.AppCompatTheme_windowNoTitle, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};
    private static int[] zze = {Integer.MAX_VALUE, Integer.MAX_VALUE, C.DEFAULT_BUFFER_SEGMENT_SIZE, 2345, 477, 193, R.styleable.AppCompatTheme_viewInflaterClass, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    public static int zza(int i2, int i3) {
        long j2 = ((long) i2) << 1;
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j2 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j2;
    }
}
