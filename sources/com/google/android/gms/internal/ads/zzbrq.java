package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebView;
import com.google.android.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class zzbrq implements zzrf {
    private zzdag zzfie;

    @Override // com.google.android.gms.internal.ads.zzrf
    public final View getView() {
        return this.zzfie;
    }

    @Override // com.google.android.gms.internal.ads.zzrf
    public final WebView getWebView() {
        if (this.zzfie == null) {
            return null;
        }
        return zzdag.getWebView();
    }

    @Override // com.google.android.gms.internal.ads.zzrf
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.zzfie != null) {
            zzdag.onPageStarted(webView, str, bitmap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrf
    public final void zza(Activity activity, WebView webView) {
        try {
            this.zzfie = new zzdag(activity, webView);
        } catch (RuntimeException e2) {
            String strValueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 46);
            sb.append(" Failed to initialize the internal ArWebView: ");
            sb.append(strValueOf);
            zzaxi.zzes(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrf
    public final void zze(String str, String str2) {
        if (this.zzfie == null) {
            zzaxi.zzes("ArWebView is not initialized.");
        } else {
            zzdag.getWebView().loadDataWithBaseURL(str, str2, "text/html", C.UTF8_NAME, null);
        }
    }
}
