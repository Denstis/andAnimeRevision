package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public final class zzny {
    public static boolean zzbc(String str) {
        return MimeTypes.BASE_TYPE_AUDIO.equals(zzbe(str));
    }

    public static boolean zzbd(String str) {
        return MimeTypes.BASE_TYPE_VIDEO.equals(zzbe(str));
    }

    private static String zzbe(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(47);
        if (iIndexOf != -1) {
            return str.substring(0, iIndexOf);
        }
        String strValueOf = String.valueOf(str);
        throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid mime type: ".concat(strValueOf) : new String("Invalid mime type: "));
    }
}
