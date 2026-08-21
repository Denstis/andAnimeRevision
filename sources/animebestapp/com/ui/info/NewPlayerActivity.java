package animebestapp.com.ui.info;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.c;
import animebestapp.com.R;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.internal.ImagesContract;
import g.p.b.f;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class NewPlayerActivity extends androidx.appcompat.app.d {
    private HashMap q;

    public static final class a extends WebChromeClient {
        a() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            f.b(consoleMessage, "consoleMessage");
            if (consoleMessage == ConsoleMessage.MessageLevel.ERROR) {
                ((WebView) NewPlayerActivity.this.h(animebestapp.com.a.webView)).onResume();
            }
            Log.e("NewPlayerActivity", consoleMessage.message());
            return super.onConsoleMessage(consoleMessage);
        }
    }

    public static final class b extends WebViewClient {
        b() {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            Log.e("NewPlayerActivity", String.valueOf(webResourceError));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (Build.VERSION.SDK_INT >= 21) {
                StringBuilder sb = new StringBuilder();
                sb.append("statusCode ");
                sb.append(webResourceResponse != null ? Integer.valueOf(webResourceResponse.getStatusCode()) : null);
                Log.e("NewPlayerActivity", sb.toString());
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (sslErrorHandler != null) {
                sslErrorHandler.proceed();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            f.b(webResourceRequest, "request");
            try {
                Intent intent = new Intent("android.intent.action.VIEW", webResourceRequest.getUrl());
                NewPlayerActivity newPlayerActivity = NewPlayerActivity.this;
                if (newPlayerActivity == null) {
                    return true;
                }
                newPlayerActivity.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException unused) {
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            f.b(webView, "view");
            f.b(str, ImagesContract.URL);
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                NewPlayerActivity newPlayerActivity = NewPlayerActivity.this;
                if (newPlayerActivity == null) {
                    return true;
                }
                newPlayerActivity.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException unused) {
                return true;
            }
        }
    }

    public View h(int i2) {
        if (this.q == null) {
            this.q = new HashMap();
        }
        View view = (View) this.q.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.q.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // b.k.a.e, android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        String stringExtra;
        super.onActivityResult(i2, i3, intent);
        if (i2 != 5765 || (stringExtra = getIntent().getStringExtra(ImagesContract.URL)) == null) {
            return;
        }
        ((WebView) h(animebestapp.com.a.webView)).loadUrl(stringExtra);
    }

    @Override // androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_player);
        boolean booleanExtra = getIntent().getBooleanExtra("frame", false);
        if (bundle != null) {
            ((WebView) h(animebestapp.com.a.webView)).restoreState(bundle);
        }
        animebestapp.com.f.c cVar = new animebestapp.com.f.c(new c.a(this));
        WebView webView = (WebView) h(animebestapp.com.a.webView);
        if (webView == null) {
            f.a();
            throw null;
        }
        webView.setWebViewClient(cVar);
        WebView webView2 = (WebView) h(animebestapp.com.a.webView);
        if (webView2 == null) {
            f.a();
            throw null;
        }
        webView2.setScrollBarStyle(0);
        WebView webView3 = (WebView) h(animebestapp.com.a.webView);
        if (webView3 == null) {
            f.a();
            throw null;
        }
        WebSettings settings = webView3.getSettings();
        f.a((Object) settings, "settings");
        settings.setJavaScriptEnabled(true);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setDomStorageEnabled(true);
        StringBuilder sb = new StringBuilder();
        sb.append("/data/data/");
        Application application = getApplication();
        f.a((Object) application, MimeTypes.BASE_TYPE_APPLICATION);
        sb.append(application.getPackageName());
        sb.append("/cache");
        settings.setAppCachePath(sb.toString());
        settings.setAppCacheEnabled(true);
        settings.setCacheMode(1);
        settings.setPluginState(WebSettings.PluginState.ON_DEMAND);
        settings.setPluginState(WebSettings.PluginState.ON);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setAllowFileAccess(true);
        ((WebView) h(animebestapp.com.a.webView)).setLayerType(2, null);
        ((WebView) h(animebestapp.com.a.webView)).requestFocus(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
        WebView webView4 = (WebView) h(animebestapp.com.a.webView);
        f.a((Object) webView4, "webView");
        webView4.setWebChromeClient(new a());
        WebView webView5 = (WebView) h(animebestapp.com.a.webView);
        f.a((Object) webView5, "webView");
        webView5.setWebViewClient(new b());
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies((WebView) h(animebestapp.com.a.webView), true);
        } else {
            CookieManager.getInstance().setAcceptCookie(true);
        }
        String stringExtra = getIntent().getStringExtra(ImagesContract.URL);
        if (!booleanExtra) {
            if (stringExtra != null) {
                ((WebView) h(animebestapp.com.a.webView)).loadUrl(stringExtra);
            }
        } else if (stringExtra != null) {
            ((WebView) h(animebestapp.com.a.webView)).loadDataWithBaseURL("https://aniqit.com", "<body style=\"width: 100%; height: 100%; padding: 0; margin: 0; background: #000\"><iframe src=\"" + stringExtra + "?uid=nVj9Qn\" style=\"width: 100%; height: 100%; padding: 0; margin: 0; background: #000\"  frameborder=\"0\" allowfullscreen></iframe></body>", "text/html", C.UTF8_NAME, null);
        }
    }
}
