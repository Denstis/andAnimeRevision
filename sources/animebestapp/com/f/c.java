package animebestapp.com.f;

import android.net.http.SslError;
import android.os.Build;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.c;
import com.google.android.gms.common.internal.ImagesContract;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class c extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f1544a;

    public c(c.a aVar) {
        f.b(aVar, "dialog");
        this.f1544a = "";
    }

    private final void a() {
        Log.d("LOGS", "error: " + this.f1544a);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        StringBuilder sb;
        f.b(webResourceError, "error");
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (Build.VERSION.SDK_INT >= 23) {
            String str = this.f1544a;
            sb = new StringBuilder();
            sb.append(str);
            sb.append("errorCode: ");
            sb.append(webResourceError.getErrorCode());
            sb.append(" description: ");
            sb.append(webResourceError.getDescription());
            sb.append(" error: ");
            sb.append(webResourceError.toString());
        } else {
            String str2 = this.f1544a;
            sb = new StringBuilder();
            sb.append(str2);
            sb.append(webResourceError.toString());
            sb.append("  ");
            sb.append(webResourceError);
        }
        this.f1544a = sb.toString();
        a();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        StringBuilder sb;
        f.b(webResourceResponse, "errorResponse");
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (Build.VERSION.SDK_INT >= 21) {
            String str = this.f1544a;
            sb = new StringBuilder();
            sb.append(str);
            sb.append("request ");
            sb.append(webResourceRequest != null ? webResourceRequest.getUrl() : null);
            sb.append(" method ");
            sb.append(webResourceRequest != null ? webResourceRequest.getMethod() : null);
            sb.append(" error: ");
            sb.append(webResourceResponse.toString());
            sb.append(" statusCode: ");
            sb.append(webResourceResponse.getStatusCode());
            sb.append(' ');
            sb.append("responseHeaders: ");
            sb.append(webResourceResponse.getResponseHeaders());
            sb.append(" reasonPhrase: ");
            sb.append(webResourceResponse.getReasonPhrase());
            sb.append(' ');
            sb.append("mimeType: ");
            sb.append(webResourceResponse.getMimeType());
            sb.append(" request: ");
            sb.append(String.valueOf(webResourceRequest));
            sb.append(' ');
        } else {
            String str2 = this.f1544a;
            sb = new StringBuilder();
            sb.append(str2);
            sb.append("error: ");
            sb.append(webResourceResponse.toString());
            sb.append(" data: ");
            sb.append(webResourceResponse.getData());
            sb.append(" mimeType: ");
            sb.append(webResourceResponse.getMimeType());
            sb.append(" request: ");
            sb.append(String.valueOf(webResourceRequest));
        }
        this.f1544a = sb.toString();
        a();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.f1544a = this.f1544a + String.valueOf(sslError);
        a();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        f.b(webView, "view");
        f.b(webResourceRequest, "request");
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        f.b(webView, "view");
        f.b(str, ImagesContract.URL);
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
