package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(11)
public final class zzbcv extends zzbcy {
    public zzbcv(zzbbw zzbbwVar, zzsd zzsdVar, boolean z) {
        super(zzbbwVar, zzsdVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbbv, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zza(webView, str, (Map<String, String>) null);
    }
}
