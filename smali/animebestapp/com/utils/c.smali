###### Class animebestapp.com.utils.c (animebestapp.com.utils.c)
.class public final Lanimebestapp/com/utils/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/utils/c$a;
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/utils/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/utils/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/utils/c$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/utils/c;->a:Lanimebestapp/com/utils/c$a;

    return-void
.end method

###### Class animebestapp.com.utils.c.a (animebestapp.com.utils.c$a)
.class public final Lanimebestapp/com/utils/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/p/b/d;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/utils/c$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lanimebestapp/com/utils/c$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, "animebestsandroid"

    :cond_6
    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/utils/c$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .registers 4

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    new-instance v1, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    new-instance v2, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    const-string v0, "ExoPlayerFactory.newSimp\u2026ackSelector, loadControl)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 4

    const-string v0, "factory"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    const-string p2, "HlsMediaSource.Factory(f\u2026  .createMediaSource(uri)"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {p0, p2, v0}, Lanimebestapp/com/utils/c$a;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v1
.end method
