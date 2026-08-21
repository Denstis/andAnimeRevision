package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebView;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
final class zzbdz {

    @VisibleForTesting
    private static Boolean zzeih;

    private zzbdz() {
    }

    @TargetApi(19)
    static void zza(WebView webView, String str) {
        if (PlatformVersion.isAtLeastKitKat() && zzb(webView)) {
            webView.evaluateJavascript(str, null);
        } else {
            String strValueOf = String.valueOf(str);
            webView.loadUrl(strValueOf.length() != 0 ? "javascript:".concat(strValueOf) : new String("javascript:"));
        }
    }

    @TargetApi(19)
    private static boolean zzb(WebView webView) {
        boolean zBooleanValue;
        synchronized (zzbdz.class) {
            if (zzeih == null) {
                try {
                    webView.evaluateJavascript("(function(){})()", null);
                    zzeih = true;
                } catch (IllegalStateException unused) {
                    zzeih = false;
                }
                zBooleanValue = zzeih.booleanValue();
            } else {
                zBooleanValue = zzeih.booleanValue();
            }
        }
        return zBooleanValue;
    }
}
