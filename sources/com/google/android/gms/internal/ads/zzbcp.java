package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.internal.ads.zzbct;
import com.google.android.gms.internal.ads.zzbdb;
import com.google.android.gms.internal.ads.zzbdd;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(17)
public final class zzbcp<WebViewT extends zzbct & zzbdb & zzbdd> {
    private final zzbcu zzehs;
    private final WebViewT zzeht;

    private zzbcp(WebViewT webviewt, zzbcu zzbcuVar) {
        this.zzehs = zzbcuVar;
        this.zzeht = webviewt;
    }

    public static zzbcp<zzbbw> zzc(final zzbbw zzbbwVar) {
        return new zzbcp<>(zzbbwVar, new zzbcu(zzbbwVar) { // from class: com.google.android.gms.internal.ads.zzbcs
            private final zzbbw zzehv;

            {
                this.zzehv = zzbbwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbcu
            public final void zzh(Uri uri) {
                zzbdg zzbdgVarZzzp = this.zzehv.zzzp();
                if (zzbdgVarZzzp == null) {
                    zzaxi.zzes("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                } else {
                    zzbdgVarZzzp.zzh(uri);
                }
            }
        });
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "Click string is empty, not proceeding.";
        } else {
            zzdf zzdfVarZzzs = this.zzeht.zzzs();
            if (zzdfVarZzzs == null) {
                str2 = "Signal utils is empty, ignoring.";
            } else {
                zzdc zzdcVarZzcd = zzdfVarZzzs.zzcd();
                if (zzdcVarZzcd == null) {
                    str2 = "Signals object is empty, ignoring.";
                } else {
                    if (this.zzeht.getContext() != null) {
                        return zzdcVarZzcd.zza(this.zzeht.getContext(), str, this.zzeht.getView(), this.zzeht.zzxn());
                    }
                    str2 = "Context is null, ignoring.";
                }
            }
        }
        zzaug.zzdy(str2);
        return "";
    }

    @JavascriptInterface
    public final void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            zzaxi.zzeu("URL is empty, ignoring message");
        } else {
            zzaul.zzdsu.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzbcr
                private final String zzcyz;
                private final zzbcp zzehu;

                {
                    this.zzehu = this;
                    this.zzcyz = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzehu.zzfl(this.zzcyz);
                }
            });
        }
    }

    final /* synthetic */ void zzfl(String str) {
        this.zzehs.zzh(Uri.parse(str));
    }
}
