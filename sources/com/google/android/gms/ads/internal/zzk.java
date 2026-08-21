package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzuv;
import com.google.android.gms.internal.ads.zzza;

/* JADX INFO: loaded from: classes.dex */
final class zzk extends WebViewClient {
    private final /* synthetic */ zzl zzblj;

    zzk(zzl zzlVar) {
        this.zzblj = zzlVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (this.zzblj.zzblp != null) {
            try {
                this.zzblj.zzblp.onAdFailedToLoad(0);
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.zzblj.zzjy())) {
            return false;
        }
        if (str.startsWith((String) zzuv.zzon().zzd(zzza.zzcpa))) {
            if (this.zzblj.zzblp != null) {
                try {
                    this.zzblj.zzblp.onAdFailedToLoad(3);
                } catch (RemoteException e2) {
                    zzaxi.zze("#007 Could not call remote method.", e2);
                }
            }
            this.zzblj.zzbl(0);
            return true;
        }
        if (str.startsWith((String) zzuv.zzon().zzd(zzza.zzcpb))) {
            if (this.zzblj.zzblp != null) {
                try {
                    this.zzblj.zzblp.onAdFailedToLoad(0);
                } catch (RemoteException e3) {
                    zzaxi.zze("#007 Could not call remote method.", e3);
                }
            }
            this.zzblj.zzbl(0);
            return true;
        }
        if (str.startsWith((String) zzuv.zzon().zzd(zzza.zzcpc))) {
            if (this.zzblj.zzblp != null) {
                try {
                    this.zzblj.zzblp.onAdLoaded();
                } catch (RemoteException e4) {
                    zzaxi.zze("#007 Could not call remote method.", e4);
                }
            }
            this.zzblj.zzbl(this.zzblj.zzbn(str));
            return true;
        }
        if (str.startsWith("gmsg://")) {
            return true;
        }
        if (this.zzblj.zzblp != null) {
            try {
                this.zzblj.zzblp.onAdLeftApplication();
            } catch (RemoteException e5) {
                zzaxi.zze("#007 Could not call remote method.", e5);
            }
        }
        this.zzblj.zzbp(this.zzblj.zzbo(str));
        return true;
    }
}
