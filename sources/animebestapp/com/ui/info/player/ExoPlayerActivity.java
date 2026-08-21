package animebestapp.com.ui.info.player;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.ui.FunnyActivity;
import animebestapp.com.utils.c;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.LinkedHashMap;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlayerActivity extends animebestapp.com.ui.a.a<animebestapp.com.ui.info.player.c, animebestapp.com.ui.info.player.a> implements PlayerControlView.VisibilityListener, animebestapp.com.ui.info.player.c {
    private boolean A;
    private HashMap E;
    private InterstitialAd t;
    private final float u = 1.0f;
    private final float v = 1.5f;
    private final float w = 2.0f;
    private float x = this.u;
    private int y = 3;
    private String z = "";
    private final Runnable B = new g();
    private final f C = new f();
    private final e D = new e();

    static final class a implements HostnameVerifier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f1817a = new a();

        a() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public final boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    public static final class b implements X509TrustManager {
        b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    static final class c implements View.OnSystemUiVisibilityChangeListener {
        c() {
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public final void onSystemUiVisibilityChange(int i2) {
            if (i2 == 0) {
                ExoPlayerActivity exoPlayerActivity = ExoPlayerActivity.this;
                exoPlayerActivity.a((Activity) exoPlayerActivity, true);
            }
        }
    }

    static final class d implements Runnable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f1820c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f1821d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f1822e;

        public static final class a extends animebestapp.com.utils.a {

            /* JADX INFO: renamed from: animebestapp.com.ui.info.player.ExoPlayerActivity$d$a$a, reason: collision with other inner class name */
            static final class RunnableC0059a implements Runnable {
                RunnableC0059a() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    d dVar = d.this;
                    ExoPlayerActivity.this.a(dVar.f1821d, dVar.f1820c, dVar.f1822e);
                }
            }

            a() {
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public void onLoadingChanged(boolean z) {
                Log.d("LOGS", "isLoading: " + z);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public void onPlayerError(ExoPlaybackException exoPlaybackException) {
                if (exoPlaybackException != null) {
                    exoPlaybackException.printStackTrace();
                }
                Log.d("EXOPLAYER", exoPlaybackException != null ? exoPlaybackException.getMessage() : null);
                if (ExoPlayerActivity.this.y > 0) {
                    ExoPlayerActivity exoPlayerActivity = ExoPlayerActivity.this;
                    exoPlayerActivity.y--;
                    TextView textView = (TextView) ExoPlayerActivity.this.h(animebestapp.com.a.tvSeries);
                    if (textView != null) {
                        textView.postDelayed(new RunnableC0059a(), AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
                    }
                }
            }

            @Override // animebestapp.com.utils.a, com.google.android.exoplayer2.Player.EventListener
            public void onPlayerStateChanged(boolean z, int i2) {
                super.onPlayerStateChanged(z, i2);
                if (z) {
                    ExoPlayerActivity.this.E();
                    ExoPlayerActivity.this.getWindow().addFlags(524288);
                    ExoPlayerActivity.this.getWindow().addFlags(128);
                } else {
                    ((PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView)).removeCallbacks(ExoPlayerActivity.this.B);
                    ExoPlayerActivity.this.getWindow().clearFlags(524288);
                    ExoPlayerActivity.this.getWindow().clearFlags(128);
                }
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            }
        }

        d(String str, String str2, long j2) {
            this.f1820c = str;
            this.f1821d = str2;
            this.f1822e = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Player player;
            PlaybackParameters playbackParameters;
            Player player2;
            Player player3;
            PlayerView playerView = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            if (playerView != null && (player2 = playerView.getPlayer()) != null && player2.getPlayWhenReady()) {
                PlayerView playerView2 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
                if (playerView2 != null && (player3 = playerView2.getPlayer()) != null) {
                    player3.stop(true);
                }
                PlayerView playerView3 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
                if (playerView3 != null) {
                    playerView3.setPlayer(null);
                }
            }
            TextView textView = (TextView) ExoPlayerActivity.this.h(animebestapp.com.a.tvSeries);
            g.p.b.f.a((Object) textView, "tvSeries");
            textView.setText(this.f1820c + " серия");
            SimpleExoPlayer simpleExoPlayerA = animebestapp.com.utils.c.f2125a.a(ExoPlayerActivity.this);
            PlayerView playerView4 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            if (playerView4 != null) {
                playerView4.setPlayer(simpleExoPlayerA);
            }
            c.a aVar = animebestapp.com.utils.c.f2125a;
            DefaultDataSourceFactory defaultDataSourceFactoryA = c.a.a(aVar, ExoPlayerActivity.this, null, 2, null);
            Uri uri = Uri.parse(this.f1821d);
            g.p.b.f.a((Object) uri, "Uri.parse(url)");
            simpleExoPlayerA.prepare(aVar.a(defaultDataSourceFactoryA, uri));
            simpleExoPlayerA.addListener(new a());
            Log.d("LOGS", "positionPlayer: " + this.f1822e);
            simpleExoPlayerA.seekTo(this.f1822e);
            simpleExoPlayerA.setPlayWhenReady(ExoPlayerActivity.this.A ^ true);
            float f2 = ExoPlayerActivity.this.x;
            if (f2 == ExoPlayerActivity.this.A()) {
                PlayerView playerView5 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
                if (playerView5 == null || (player = playerView5.getPlayer()) == null) {
                    return;
                } else {
                    playbackParameters = new PlaybackParameters(ExoPlayerActivity.this.A());
                }
            } else if (f2 == ExoPlayerActivity.this.z()) {
                PlayerView playerView6 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
                if (playerView6 == null || (player = playerView6.getPlayer()) == null) {
                    return;
                } else {
                    playbackParameters = new PlaybackParameters(ExoPlayerActivity.this.z());
                }
            } else {
                PlayerView playerView7 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
                if (playerView7 == null || (player = playerView7.getPlayer()) == null) {
                    return;
                } else {
                    playbackParameters = new PlaybackParameters(ExoPlayerActivity.this.B());
                }
            }
            player.setPlaybackParameters(playbackParameters);
        }
    }

    public static final class e extends AdListener {
        e() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            ExoPlayerActivity.d(ExoPlayerActivity.this).loadAd(new AdRequest.Builder().build());
            ExoPlayerActivity.g(ExoPlayerActivity.this).e();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i2) {
            super.onAdFailedToLoad(i2);
            Log.d("LOGS", "onAdFailedToLoad " + i2);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
        }
    }

    public static final class f extends AdListener {
        f() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            ExoPlayerActivity.d(ExoPlayerActivity.this).loadAd(new AdRequest.Builder().build());
            ExoPlayerActivity.g(ExoPlayerActivity.this).h();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i2) {
            super.onAdFailedToLoad(i2);
            Log.d("LOGS", "onAdFailedToLoad " + i2);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
        }
    }

    static final class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Player player;
            PlayerView playerView = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            if (playerView == null || (player = playerView.getPlayer()) == null) {
                return;
            }
            ExoPlayerActivity.g(ExoPlayerActivity.this).a(player.getCurrentPosition());
            ExoPlayerActivity.this.E();
        }
    }

    public static final class h extends AdListener {
        h() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            ExoPlayerActivity.d(ExoPlayerActivity.this).loadAd(new AdRequest.Builder().build());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i2) {
            super.onAdFailedToLoad(i2);
            Log.d("LOGS", "onAdFailedToLoad " + i2);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
        }
    }

    static final class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ExoPlayerActivity.this.onBackPressed();
        }
    }

    static final class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Player player;
            PlayerView playerView = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            if (playerView == null || playerView.getPlayer() == null) {
                return;
            }
            Button button = (Button) ExoPlayerActivity.this.h(animebestapp.com.a.btnSkip);
            g.p.b.f.a((Object) button, "btnSkip");
            button.setVisibility(8);
            PlayerView playerView2 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            g.p.b.f.a((Object) playerView2, "playerView");
            Player player2 = playerView2.getPlayer();
            g.p.b.f.a((Object) player2, "playerView.player");
            long currentPosition = player2.getCurrentPosition() + ((long) 90000);
            PlayerView playerView3 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            if (playerView3 == null || (player = playerView3.getPlayer()) == null) {
                return;
            }
            player.seekTo(currentPosition);
        }
    }

    static final class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Player player;
            Button button = (Button) ExoPlayerActivity.this.h(animebestapp.com.a.btnSkip);
            g.p.b.f.a((Object) button, "btnSkip");
            button.setVisibility(0);
            ((PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView)).removeCallbacks(ExoPlayerActivity.this.B);
            if (ExoPlayerActivity.d(ExoPlayerActivity.this).isLoaded()) {
                PlayerView playerView = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
                if (playerView != null && (player = playerView.getPlayer()) != null) {
                    player.setPlayWhenReady(false);
                }
                ExoPlayerActivity.d(ExoPlayerActivity.this).show();
                ExoPlayerActivity.d(ExoPlayerActivity.this).setAdListener(ExoPlayerActivity.this.D);
            } else {
                ExoPlayerActivity.g(ExoPlayerActivity.this).e();
            }
            ExoPlayerActivity.this.D();
        }
    }

    static final class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Player player;
            Button button = (Button) ExoPlayerActivity.this.h(animebestapp.com.a.btnSkip);
            g.p.b.f.a((Object) button, "btnSkip");
            button.setVisibility(0);
            ((PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView)).removeCallbacks(ExoPlayerActivity.this.B);
            if (ExoPlayerActivity.d(ExoPlayerActivity.this).isLoaded()) {
                PlayerView playerView = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
                if (playerView != null && (player = playerView.getPlayer()) != null) {
                    player.setPlayWhenReady(false);
                }
                ExoPlayerActivity.d(ExoPlayerActivity.this).show();
                ExoPlayerActivity.d(ExoPlayerActivity.this).setAdListener(ExoPlayerActivity.this.C);
            } else {
                ExoPlayerActivity.g(ExoPlayerActivity.this).h();
            }
            ExoPlayerActivity.this.D();
        }
    }

    static final class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ExoPlayerActivity.this.y();
        }
    }

    static final class n implements View.OnClickListener {

        static final class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f1835b;

            a(View view) {
                this.f1835b = view;
            }

            @Override // java.lang.Runnable
            public final void run() {
                View view = this.f1835b;
                g.p.b.f.a((Object) view, "it");
                view.setTag(null);
            }
        }

        n() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PlayerView playerView;
            Player player;
            PlayerView playerView2 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            if (playerView2 == null || playerView2.getPlayer() == null) {
                return;
            }
            PlayerView playerView3 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            g.p.b.f.a((Object) playerView3, "playerView");
            Player player2 = playerView3.getPlayer();
            g.p.b.f.a((Object) player2, "playerView.player");
            long currentPosition = player2.getCurrentPosition() - ((long) 10000);
            if (currentPosition <= 0) {
                currentPosition = 0;
            }
            g.p.b.f.a((Object) view, "it");
            if (view.getTag() != null && (playerView = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView)) != null && (player = playerView.getPlayer()) != null) {
                player.seekTo(currentPosition);
            }
            view.setTag(true);
            view.postDelayed(new a(view), 200L);
        }
    }

    static final class o implements View.OnClickListener {

        static final class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f1837b;

            a(View view) {
                this.f1837b = view;
            }

            @Override // java.lang.Runnable
            public final void run() {
                View view = this.f1837b;
                g.p.b.f.a((Object) view, "it");
                view.setTag(null);
            }
        }

        o() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PlayerView playerView;
            Player player;
            PlayerView playerView2 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            if (playerView2 == null || playerView2.getPlayer() == null) {
                return;
            }
            PlayerView playerView3 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            g.p.b.f.a((Object) playerView3, "playerView");
            Player player2 = playerView3.getPlayer();
            g.p.b.f.a((Object) player2, "playerView.player");
            long currentPosition = player2.getCurrentPosition() + ((long) 10000);
            PlayerView playerView4 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
            g.p.b.f.a((Object) playerView4, "playerView");
            Player player3 = playerView4.getPlayer();
            g.p.b.f.a((Object) player3, "playerView.player");
            if (currentPosition >= player3.getDuration()) {
                PlayerView playerView5 = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView);
                g.p.b.f.a((Object) playerView5, "playerView");
                Player player4 = playerView5.getPlayer();
                g.p.b.f.a((Object) player4, "playerView.player");
                currentPosition = player4.getDuration();
            }
            g.p.b.f.a((Object) view, "it");
            if (view.getTag() != null && (playerView = (PlayerView) ExoPlayerActivity.this.h(animebestapp.com.a.playerView)) != null && (player = playerView.getPlayer()) != null) {
                player.seekTo(currentPosition);
            }
            view.setTag(true);
            view.postDelayed(new a(view), 200L);
        }
    }

    static final class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Button button = (Button) ExoPlayerActivity.this.h(animebestapp.com.a.btnSkip);
            g.p.b.f.a((Object) button, "btnSkip");
            button.setVisibility(8);
        }
    }

    private final void C() {
        TrustManager[] trustManagerArr = {new b()};
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            g.p.b.f.a((Object) sSLContext, "sc");
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
            HttpsURLConnection.setDefaultHostnameVerifier(a.f1817a);
        } catch (KeyManagementException e2) {
            e2.printStackTrace();
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D() {
        PlayerView playerView;
        Player player;
        animebestapp.com.models.g gVarG = ((animebestapp.com.ui.info.player.a) this.r).g();
        if (this.z.length() == 0) {
            return;
        }
        if (gVarG == null || gVarG.f()) {
            if (((PlayerView) h(animebestapp.com.a.playerView)) != null) {
                PlayerView playerView2 = (PlayerView) h(animebestapp.com.a.playerView);
                if ((playerView2 != null ? playerView2.getPlayer() : null) != null && (playerView = (PlayerView) h(animebestapp.com.a.playerView)) != null && (player = playerView.getPlayer()) != null) {
                    player.setPlayWhenReady(false);
                }
            }
            startActivityForResult(new Intent(getBaseContext(), (Class<?>) FunnyActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, this.z), 5765);
            this.A = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        Player player;
        PlayerView playerView = (PlayerView) h(animebestapp.com.a.playerView);
        if (playerView != null && (player = playerView.getPlayer()) != null) {
            if (player.getCurrentPosition() > ((long) 300000)) {
                ((Button) h(animebestapp.com.a.btnSkip)).post(new p());
            }
        }
        ((PlayerView) h(animebestapp.com.a.playerView)).postDelayed(this.B, 1000L);
    }

    public static final /* synthetic */ InterstitialAd d(ExoPlayerActivity exoPlayerActivity) {
        InterstitialAd interstitialAd = exoPlayerActivity.t;
        if (interstitialAd != null) {
            return interstitialAd;
        }
        g.p.b.f.c("mInterstitialAd");
        throw null;
    }

    public static final /* synthetic */ animebestapp.com.ui.info.player.a g(ExoPlayerActivity exoPlayerActivity) {
        return (animebestapp.com.ui.info.player.a) exoPlayerActivity.r;
    }

    public final float A() {
        return this.v;
    }

    public final float B() {
        return this.u;
    }

    public final void a(Activity activity, boolean z) {
        View decorView;
        int i2;
        g.p.b.f.b(activity, "activity");
        if (z) {
            Window window = activity.getWindow();
            if (window != null) {
                window.addFlags(1024);
            }
            Window window2 = activity.getWindow();
            if (window2 != null) {
                window2.clearFlags(2048);
            }
            int i3 = Build.VERSION.SDK_INT;
            if (12 > i3 || 18 < i3) {
                if (Build.VERSION.SDK_INT >= 19) {
                    Window window3 = activity.getWindow();
                    g.p.b.f.a((Object) window3, "activity.window");
                    View decorView2 = window3.getDecorView();
                    g.p.b.f.a((Object) decorView2, "decorView");
                    decorView2.setSystemUiVisibility(3846);
                    activity.getWindow().addFlags(134217728);
                    decorView2.setOnSystemUiVisibilityChangeListener(new c());
                    return;
                }
                return;
            }
            Window window4 = activity.getWindow();
            g.p.b.f.a((Object) window4, "activity.window");
            decorView = window4.getDecorView();
            g.p.b.f.a((Object) decorView, "v");
            i2 = 8;
        } else {
            Window window5 = activity.getWindow();
            if (window5 != null) {
                window5.clearFlags(1024);
            }
            Window window6 = activity.getWindow();
            if (window6 != null) {
                window6.addFlags(2048);
            }
            int i4 = Build.VERSION.SDK_INT;
            if (12 > i4 || 18 < i4) {
                if (Build.VERSION.SDK_INT >= 19) {
                    Window window7 = activity.getWindow();
                    g.p.b.f.a((Object) window7, "activity.window");
                    View decorView3 = window7.getDecorView();
                    g.p.b.f.a((Object) decorView3, "decorView");
                    decorView3.setSystemUiVisibility(2304);
                    decorView3.setOnSystemUiVisibilityChangeListener(null);
                    activity.getWindow().clearFlags(134217728);
                    return;
                }
                return;
            }
            Window window8 = activity.getWindow();
            g.p.b.f.a((Object) window8, "activity.window");
            decorView = window8.getDecorView();
            g.p.b.f.a((Object) decorView, "v");
            i2 = 0;
        }
        decorView.setSystemUiVisibility(i2);
    }

    @Override // animebestapp.com.ui.info.player.c
    @SuppressLint({"SetTextI18n"})
    public void a(String str, String str2, long j2) {
        g.p.b.f.b(str, ImagesContract.URL);
        g.p.b.f.b(str2, "title");
        ((PlayerView) h(animebestapp.com.a.playerView)).removeCallbacks(this.B);
        runOnUiThread(new d(str2, str, j2));
    }

    @Override // animebestapp.com.ui.info.player.c
    public void a(LinkedHashMap<String, String> linkedHashMap) {
        g.p.b.f.b(linkedHashMap, "series");
    }

    @Override // animebestapp.com.ui.info.player.c
    public void b(boolean z) {
        ImageView imageView = (ImageView) h(animebestapp.com.a.btnNext);
        g.p.b.f.a((Object) imageView, "btnNext");
        imageView.setVisibility(z ? 0 : 4);
        ImageView imageView2 = (ImageView) h(animebestapp.com.a.btnNext);
        g.p.b.f.a((Object) imageView2, "btnNext");
        imageView2.setEnabled(z);
    }

    @Override // animebestapp.com.ui.info.player.c
    public void c(boolean z) {
        ImageView imageView = (ImageView) h(animebestapp.com.a.btnPreview);
        g.p.b.f.a((Object) imageView, "btnPreview");
        imageView.setVisibility(z ? 0 : 4);
        ImageView imageView2 = (ImageView) h(animebestapp.com.a.btnPreview);
        g.p.b.f.a((Object) imageView2, "btnPreview");
        imageView2.setEnabled(z);
    }

    @Override // animebestapp.com.ui.info.player.c
    public void d(int i2) {
    }

    @Override // animebestapp.com.ui.a.a
    public View h(int i2) {
        if (this.E == null) {
            this.E = new HashMap();
        }
        View view = (View) this.E.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.E.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.info.player.a l() {
        Object objFromJson = new Gson().fromJson(getIntent().getStringExtra("anime"), (Class<Object>) Anime.class);
        g.p.b.f.a(objFromJson, "Gson().fromJson(intent.g…ime\"), Anime::class.java)");
        return new animebestapp.com.ui.info.player.a((Anime) objFromJson, getIntent().getIntExtra("position", 0));
    }

    @Override // b.k.a.e, android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        Player player;
        super.onActivityResult(i2, i3, intent);
        if (i2 == 5765) {
            PlayerView playerView = (PlayerView) h(animebestapp.com.a.playerView);
            if (playerView != null && (player = playerView.getPlayer()) != null) {
                player.setPlayWhenReady(true);
            }
            this.A = false;
        }
    }

    @Override // animebestapp.com.ui.a.a, c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    @SuppressLint({"WrongConstant"})
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C();
        String stringExtra = getIntent().getStringExtra(FirebaseAnalytics.Param.CONTENT);
        if (stringExtra.length() == 0) {
            stringExtra = "https://animebestapp.org/donate.html";
        }
        g.p.b.f.a((Object) stringExtra, "intent.getStringExtra(CO…fEmpty { BuildConfig.RE }");
        this.z = stringExtra;
        setContentView(R.layout.activity_exo_player);
        animebestapp.com.ui.info.player.a.a((animebestapp.com.ui.info.player.a) this.r, 0, 1, null);
        a((Activity) this, true);
        ((PlayerView) h(animebestapp.com.a.playerView)).setControllerVisibilityListener(this);
        PlayerView playerView = (PlayerView) h(animebestapp.com.a.playerView);
        g.p.b.f.a((Object) playerView, "playerView");
        playerView.setUseController(true);
        ((PlayerView) h(animebestapp.com.a.playerView)).requestFocus();
        ((ImageButton) h(animebestapp.com.a.btnBack)).setOnClickListener(new i());
        ((Button) h(animebestapp.com.a.btnSkip)).setOnClickListener(new j());
        ((ImageView) h(animebestapp.com.a.btnPreview)).setOnClickListener(new k());
        ((ImageView) h(animebestapp.com.a.btnNext)).setOnClickListener(new l());
        ((TextView) h(animebestapp.com.a.btnSpeed)).setOnClickListener(new m());
        ((Button) h(animebestapp.com.a.btnLeft)).setOnClickListener(new n());
        ((Button) h(animebestapp.com.a.btnRight)).setOnClickListener(new o());
        InterstitialAd interstitialAd = new InterstitialAd(this);
        interstitialAd.setAdUnitId(getString(R.string.fullscreen));
        this.t = interstitialAd;
        InterstitialAd interstitialAd2 = this.t;
        if (interstitialAd2 == null) {
            g.p.b.f.c("mInterstitialAd");
            throw null;
        }
        interstitialAd2.loadAd(new AdRequest.Builder().build());
        InterstitialAd interstitialAd3 = this.t;
        if (interstitialAd3 == null) {
            g.p.b.f.c("mInterstitialAd");
            throw null;
        }
        interstitialAd3.setAdListener(new h());
        InterstitialAd interstitialAd4 = this.t;
        if (interstitialAd4 == null) {
            g.p.b.f.c("mInterstitialAd");
            throw null;
        }
        if (interstitialAd4.isLoaded()) {
            return;
        }
        InterstitialAd interstitialAd5 = this.t;
        if (interstitialAd5 != null) {
            interstitialAd5.loadAd(new AdRequest.Builder().build());
        } else {
            g.p.b.f.c("mInterstitialAd");
            throw null;
        }
    }

    @Override // c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, android.app.Activity
    protected void onDestroy() {
        Player player;
        a((Activity) this, false);
        super.onDestroy();
        PlayerView playerView = (PlayerView) h(animebestapp.com.a.playerView);
        if (playerView == null || (player = playerView.getPlayer()) == null) {
            return;
        }
        player.release();
    }

    @Override // c.b.a.c.a, b.k.a.e, android.app.Activity
    protected void onPause() {
        Player player;
        super.onPause();
        PlayerView playerView = (PlayerView) h(animebestapp.com.a.playerView);
        if (playerView == null || (player = playerView.getPlayer()) == null) {
            return;
        }
        player.setPlayWhenReady(false);
    }

    @Override // c.b.a.c.a, b.k.a.e, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // com.google.android.exoplayer2.ui.PlayerControlView.VisibilityListener
    public void onVisibilityChange(int i2) {
    }

    public final void y() {
        TextView textView;
        String str;
        Player player;
        Player player2;
        Player player3;
        float f2 = this.x;
        if (f2 == this.v) {
            PlayerView playerView = (PlayerView) h(animebestapp.com.a.playerView);
            if (playerView != null && (player3 = playerView.getPlayer()) != null) {
                player3.setPlaybackParameters(new PlaybackParameters(this.w));
            }
            this.x = this.w;
            textView = (TextView) h(animebestapp.com.a.btnSpeed);
            g.p.b.f.a((Object) textView, "btnSpeed");
            str = "2x";
        } else if (f2 == this.w) {
            PlayerView playerView2 = (PlayerView) h(animebestapp.com.a.playerView);
            if (playerView2 != null && (player2 = playerView2.getPlayer()) != null) {
                player2.setPlaybackParameters(new PlaybackParameters(this.u));
            }
            this.x = this.u;
            textView = (TextView) h(animebestapp.com.a.btnSpeed);
            g.p.b.f.a((Object) textView, "btnSpeed");
            str = "1x";
        } else {
            PlayerView playerView3 = (PlayerView) h(animebestapp.com.a.playerView);
            if (playerView3 != null && (player = playerView3.getPlayer()) != null) {
                player.setPlaybackParameters(new PlaybackParameters(this.v));
            }
            this.x = this.v;
            textView = (TextView) h(animebestapp.com.a.btnSpeed);
            g.p.b.f.a((Object) textView, "btnSpeed");
            str = "1.5x";
        }
        textView.setText(str);
    }

    public final float z() {
        return this.w;
    }
}
