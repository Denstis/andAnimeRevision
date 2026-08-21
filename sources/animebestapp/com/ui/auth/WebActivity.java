package animebestapp.com.ui.auth;

import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.appcompat.app.d;
import animebestapp.com.R;
import g.p.b.f;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class WebActivity extends d {
    private HashMap q;

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

    @Override // androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_web);
        WebView webView = (WebView) h(animebestapp.com.a.webView);
        f.a((Object) webView, "webView");
        WebSettings settings = webView.getSettings();
        f.a((Object) settings, "settings");
        settings.setJavaScriptEnabled(true);
        ((WebView) h(animebestapp.com.a.webView)).loadUrl("https://animeapp1.animebesst.org/index.php?do=register");
    }
}
