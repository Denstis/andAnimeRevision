package animebestapp.com;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import animebestapp.com.c.b.a;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import g.p.b.d;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class App extends Application {
    public static final a Companion = new a(null);
    private static Context app;
    public static animebestapp.com.c.b.a appComponent;
    public InterstitialAd mInterstitialAd;
    public InterstitialAd mInterstitialAdWeb;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(d dVar) {
            this();
        }

        public final Context a() {
            return App.app;
        }

        public final animebestapp.com.c.b.a b() {
            animebestapp.com.c.b.a aVar = App.appComponent;
            if (aVar != null) {
                return aVar;
            }
            f.c("appComponent");
            throw null;
        }
    }

    static final class b implements UnifiedNativeAd.OnUnifiedNativeAdLoadedListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f1457b = new b();

        b() {
        }

        @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
        public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
        }
    }

    public static final class c extends AdListener {
        c() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i2) {
        }
    }

    public static final animebestapp.com.c.b.a getAppComponent() {
        animebestapp.com.c.b.a aVar = appComponent;
        if (aVar != null) {
            return aVar;
        }
        f.c("appComponent");
        throw null;
    }

    public static final void setAppComponent(animebestapp.com.c.b.a aVar) {
        appComponent = aVar;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        b.o.a.c(this);
    }

    public final InterstitialAd getMInterstitialAd() {
        InterstitialAd interstitialAd = this.mInterstitialAd;
        if (interstitialAd != null) {
            return interstitialAd;
        }
        f.c("mInterstitialAd");
        throw null;
    }

    public final InterstitialAd getMInterstitialAdWeb() {
        InterstitialAd interstitialAd = this.mInterstitialAdWeb;
        if (interstitialAd != null) {
            return interstitialAd;
        }
        f.c("mInterstitialAdWeb");
        throw null;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        androidx.appcompat.app.f.a(true);
        MobileAds.initialize(this);
        app = this;
        CookieManager cookieManager = CookieManager.getInstance();
        if (Build.VERSION.SDK_INT < 21) {
            CookieSyncManager.createInstance(this);
        }
        cookieManager.setAcceptCookie(true);
        a.InterfaceC0027a interfaceC0027aD = animebestapp.com.c.b.f.d();
        interfaceC0027aD.a(this);
        appComponent = interfaceC0027aD.a();
        int iD = new animebestapp.com.b.a.b(this).d();
        Log.d("LOGS", "night " + iD);
        androidx.appcompat.app.f.d(iD);
        new AdLoader.Builder(this, getString(R.string.fullscreen_web)).forUnifiedNativeAd(b.f1457b).withAdListener(new c()).withNativeAdOptions(new NativeAdOptions.Builder().build()).build().loadAd(new AdRequest.Builder().build());
        InterstitialAd interstitialAd = new InterstitialAd(this);
        interstitialAd.setAdUnitId(getString(R.string.fullscreen));
        this.mInterstitialAd = interstitialAd;
        InterstitialAd interstitialAd2 = new InterstitialAd(this);
        interstitialAd2.setAdUnitId(getString(R.string.fullscreen_web));
        this.mInterstitialAdWeb = interstitialAd2;
        InterstitialAd interstitialAd3 = this.mInterstitialAdWeb;
        if (interstitialAd3 != null) {
            interstitialAd3.loadAd(new AdRequest.Builder().build());
        } else {
            f.c("mInterstitialAdWeb");
            throw null;
        }
    }

    public final void setMInterstitialAd(InterstitialAd interstitialAd) {
        f.b(interstitialAd, "<set-?>");
        this.mInterstitialAd = interstitialAd;
    }

    public final void setMInterstitialAdWeb(InterstitialAd interstitialAd) {
        f.b(interstitialAd, "<set-?>");
        this.mInterstitialAdWeb = interstitialAd;
    }
}
