package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class zzee {
    private static final char[] zzyp = "0123456789abcdef".toCharArray();

    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static long zza(double d2, DisplayMetrics displayMetrics) {
        double d3 = displayMetrics.density;
        Double.isNaN(d3);
        return Math.round(d2 / d3);
    }

    public static String zza(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        zzdoy.zza(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static boolean zza(DisplayMetrics displayMetrics) {
        return (displayMetrics == null || displayMetrics.density == 0.0f) ? false : true;
    }

    public static String zzas(String str) {
        if (str == null || !str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            return str;
        }
        UUID uuidFromString = UUID.fromString(str);
        byte[] bArr = new byte[16];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
        byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
        return zzcg.zza(bArr, true);
    }

    public static boolean zzat(String str) {
        return str == null || str.isEmpty();
    }

    public static Activity zzc(View view) {
        View rootView = view.getRootView();
        if (rootView != null) {
            view = rootView;
        }
        Context context = view.getContext();
        for (int i2 = 0; (context instanceof ContextWrapper) && i2 < 10; i2++) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }
}
