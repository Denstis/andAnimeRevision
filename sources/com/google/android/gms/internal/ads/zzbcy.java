package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.File;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(11)
public class zzbcy extends zzbbv {
    public zzbcy(zzbbw zzbbwVar, zzsd zzsdVar, boolean z) {
        super(zzbbwVar, zzsdVar, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final WebResourceResponse zza(WebView webView, String str, Map<String, String> map) {
        if (!(webView instanceof zzbbw)) {
            zzaxi.zzeu("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzbbw zzbbwVar = (zzbbw) webView;
        zzasi zzasiVar = this.zzeew;
        if (zzasiVar != null) {
            zzasiVar.zza(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return super.zzd(str, map);
        }
        if (zzbbwVar.zzzp() != null) {
            zzbbwVar.zzzp().zzsq();
        }
        String str2 = (String) zzuv.zzon().zzd(zzbbwVar.zzzn().zzaau() ? zzza.zzcig : zzbbwVar.zzzu() ? zzza.zzcif : zzza.zzcie);
        com.google.android.gms.ads.internal.zzq.zzkj();
        return zzaul.zzd(zzbbwVar.getContext(), zzbbwVar.zzxr().zzblz, str2);
    }
}
