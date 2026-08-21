package animebestapp.com.ui.info;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.c;
import animebestapp.com.R;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.internal.ImagesContract;
import g.p.b.f;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class PlayerActivity extends androidx.appcompat.app.d {
    private HashMap q;

    public static final class a extends WebChromeClient {
        a() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            f.b(consoleMessage, "consoleMessage");
            if (consoleMessage == ConsoleMessage.MessageLevel.ERROR) {
                ((WebView) PlayerActivity.this.h(animebestapp.com.a.webView)).onResume();
            }
            return super.onConsoleMessage(consoleMessage);
        }
    }

    public static final class b extends WebViewClient {
        b() {
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
                PlayerActivity playerActivity = PlayerActivity.this;
                if (playerActivity == null) {
                    return true;
                }
                playerActivity.startActivity(intent);
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
                PlayerActivity playerActivity = PlayerActivity.this;
                if (playerActivity == null) {
                    return true;
                }
                playerActivity.startActivity(intent);
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
        WebSettings settings = webView2.getSettings();
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
        if (Build.VERSION.SDK_INT >= 19) {
            ((WebView) h(animebestapp.com.a.webView)).setLayerType(2, null);
        } else {
            ((WebView) h(animebestapp.com.a.webView)).setLayerType(1, null);
        }
        WebView webView3 = (WebView) h(animebestapp.com.a.webView);
        f.a((Object) webView3, "webView");
        webView3.setWebChromeClient(new a());
        WebView webView4 = (WebView) h(animebestapp.com.a.webView);
        f.a((Object) webView4, "webView");
        webView4.setWebViewClient(new b());
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies((WebView) h(animebestapp.com.a.webView), true);
        } else {
            CookieManager.getInstance().setAcceptCookie(true);
        }
        String stringExtra = getIntent().getStringExtra(ImagesContract.URL);
        if (stringExtra != null) {
            ((WebView) h(animebestapp.com.a.webView)).loadUrl(stringExtra);
        }
    }
}
