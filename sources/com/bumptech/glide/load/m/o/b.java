package com.bumptech.glide.load.m.o;

import android.net.Uri;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static boolean a(int i2, int i3) {
        return i2 != Integer.MIN_VALUE && i3 != Integer.MIN_VALUE && i2 <= 512 && i3 <= 384;
    }

    public static boolean a(Uri uri) {
        return b(uri) && !d(uri);
    }

    public static boolean b(Uri uri) {
        return uri != null && FirebaseAnalytics.Param.CONTENT.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean c(Uri uri) {
        return b(uri) && d(uri);
    }

    private static boolean d(Uri uri) {
        return uri.getPathSegments().contains(MimeTypes.BASE_TYPE_VIDEO);
    }
}
