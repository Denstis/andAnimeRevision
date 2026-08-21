package animebestapp.com.utils;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSourceFactory;
import com.google.android.exoplayer2.upstream.HttpDataSource;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f2125a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }

        public static /* synthetic */ DefaultDataSourceFactory a(a aVar, Context context, String str, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                str = "animebestsandroid";
            }
            return aVar.a(context, str);
        }

        private final HttpDataSource.Factory a(String str, DefaultBandwidthMeter defaultBandwidthMeter) {
            return new DefaultHttpDataSourceFactory(str, defaultBandwidthMeter);
        }

        public final SimpleExoPlayer a(Context context) {
            g.p.b.f.b(context, "context");
            SimpleExoPlayer simpleExoPlayerNewSimpleInstance = ExoPlayerFactory.newSimpleInstance(context, new DefaultRenderersFactory(context), new DefaultTrackSelector(new AdaptiveTrackSelection.Factory(new DefaultBandwidthMeter())), new DefaultLoadControl());
            g.p.b.f.a((Object) simpleExoPlayerNewSimpleInstance, "ExoPlayerFactory.newSimp…ackSelector, loadControl)");
            return simpleExoPlayerNewSimpleInstance;
        }

        public final MediaSource a(DataSource.Factory factory, Uri uri) {
            g.p.b.f.b(factory, "factory");
            g.p.b.f.b(uri, "uri");
            HlsMediaSource hlsMediaSourceCreateMediaSource = new HlsMediaSource.Factory(factory).createMediaSource(uri);
            g.p.b.f.a((Object) hlsMediaSourceCreateMediaSource, "HlsMediaSource.Factory(f…  .createMediaSource(uri)");
            return hlsMediaSourceCreateMediaSource;
        }

        public final DefaultDataSourceFactory a(Context context, String str) {
            g.p.b.f.b(context, "context");
            g.p.b.f.b(str, "userAgent");
            DefaultBandwidthMeter defaultBandwidthMeter = new DefaultBandwidthMeter();
            return new DefaultDataSourceFactory(context, defaultBandwidthMeter, a(str, defaultBandwidthMeter));
        }
    }
}
