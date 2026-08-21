package animebestapp.com.ui;

import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.TextView;
import animebestapp.com.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import g.p.b.f;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class FunnyActivity extends androidx.appcompat.app.d {
    private final a q = new a(6000, 1000);
    private boolean r;
    private HashMap s;

    public static final class a extends CountDownTimer {

        /* JADX INFO: renamed from: animebestapp.com.ui.FunnyActivity$a$a, reason: collision with other inner class name */
        static final class RunnableC0036a implements Runnable {
            RunnableC0036a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                TextView textView = (TextView) FunnyActivity.this.h(animebestapp.com.a.tvTimer);
                f.a((Object) textView, "tvTimer");
                textView.setVisibility(8);
                TextView textView2 = (TextView) FunnyActivity.this.h(animebestapp.com.a.tvTimer);
                f.a((Object) textView2, "tvTimer");
                textView2.setText("");
                ImageView imageView = (ImageView) FunnyActivity.this.h(animebestapp.com.a.btnClose);
                f.a((Object) imageView, "btnClose");
                imageView.setEnabled(true);
            }
        }

        a(long j2, long j3) {
            super(j2, j3);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            ((TextView) FunnyActivity.this.h(animebestapp.com.a.tvTimer)).post(new RunnableC0036a());
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j2) {
            TextView textView = (TextView) FunnyActivity.this.h(animebestapp.com.a.tvTimer);
            f.a((Object) textView, "tvTimer");
            textView.setText("пропустить через " + (j2 / ((long) 1000)) + " сек");
        }
    }

    public static final class b extends WebViewClient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1615b;

        b(String str) {
            this.f1615b = str;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            FunnyActivity.this.setResult(-1);
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (sslErrorHandler != null) {
                sslErrorHandler.proceed();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (!FunnyActivity.this.r) {
                return super.shouldOverrideUrlLoading(webView, webResourceRequest);
            }
            if (Build.VERSION.SDK_INT < 21) {
                FunnyActivity funnyActivity = FunnyActivity.this;
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(this.f1615b));
                funnyActivity.startActivity(intent);
            } else if (webResourceRequest != null) {
                FunnyActivity funnyActivity2 = FunnyActivity.this;
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setData(webResourceRequest.getUrl());
                funnyActivity2.startActivity(intent2);
            }
            FunnyActivity.this.setResult(-1);
            return false;
        }
    }

    public static final class c extends WebChromeClient {
        c(String str) {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            f.b(webView, "view");
            if (i2 == 100) {
                FunnyActivity.this.q.start();
                FunnyActivity.this.r = true;
            }
        }
    }

    static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            FunnyActivity.this.finish();
            FunnyActivity.this.setResult(-1);
        }
    }

    static final class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            TextView textView = (TextView) FunnyActivity.this.h(animebestapp.com.a.tvTimer);
            f.a((Object) textView, "tvTimer");
            textView.setVisibility(8);
            TextView textView2 = (TextView) FunnyActivity.this.h(animebestapp.com.a.tvTimer);
            f.a((Object) textView2, "tvTimer");
            textView2.setText("");
            ImageView imageView = (ImageView) FunnyActivity.this.h(animebestapp.com.a.btnClose);
            f.a((Object) imageView, "btnClose");
            imageView.setEnabled(true);
        }
    }

    public View h(int i2) {
        if (this.s == null) {
            this.s = new HashMap();
        }
        View view = (View) this.s.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.s.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // b.k.a.e, android.app.Activity
    public void onBackPressed() {
    }

    @Override // androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_funny);
        ((ImageView) h(animebestapp.com.a.btnClose)).setOnClickListener(new d());
        TextView textView = (TextView) h(animebestapp.com.a.tvTimer);
        f.a((Object) textView, "tvTimer");
        textView.setVisibility(0);
        this.q.cancel();
        ImageView imageView = (ImageView) h(animebestapp.com.a.btnClose);
        f.a((Object) imageView, "btnClose");
        imageView.setEnabled(false);
        ((TextView) h(animebestapp.com.a.tvTimer)).postDelayed(new e(), 15000L);
        String stringExtra = getIntent().getStringExtra(FirebaseAnalytics.Param.CONTENT);
        if (stringExtra.length() == 0) {
            stringExtra = "https://animebestapp.org/donate.html";
        }
        WebView webView = (WebView) h(animebestapp.com.a.webView);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setUserAgentString("Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A543a Safari/419.3");
        webView.setWebViewClient(new b(stringExtra));
        webView.setWebChromeClient(new c(stringExtra));
        webView.setScrollContainer(false);
        webView.loadUrl(stringExtra);
    }
}
