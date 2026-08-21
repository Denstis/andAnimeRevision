###### Class com.google.android.gms.internal.ads.zzayh (com.google.android.gms.internal.ads.zzayh)
.class public final Lcom/google/android/gms/internal/ads/zzayh;
.super Lcom/google/android/gms/internal/ads/zzayu;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final zzdxa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzdxb:Lcom/google/android/gms/internal/ads/zzazm;

.field private final zzdxc:Z

.field private zzdxd:I

.field private zzdxe:I

.field private zzdxf:Landroid/media/MediaPlayer;

.field private zzdxg:Landroid/net/Uri;

.field private zzdxh:I

.field private zzdxi:I

.field private zzdxj:I

.field private zzdxk:I

.field private zzdxl:I

.field private zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

.field private zzdxn:Z

.field private zzdxo:I

.field private zzdxp:Lcom/google/android/gms/internal/ads/zzayr;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_df

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_df
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/ads/zzazk;Lcom/google/android/gms/internal/ads/zzazm;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayu;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxb:Lcom/google/android/gms/internal/ads/zzazm;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxn:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxc:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxb:Lcom/google/android/gms/internal/ads/zzazm;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzazm;->zzb(Lcom/google/android/gms/internal/ads/zzayu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayh;)Lcom/google/android/gms/internal/ads/zzayr;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxp:Lcom/google/android/gms/internal/ads/zzayr;

    return-object p0
.end method

.method private final zzam(Z)V
    .registers 4

    const-string v0, "AdMediaPlayerView release"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazh;->zzxh()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;->zzcq(I)V

    if-eqz p1, :cond_27

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    :cond_27
    return-void
.end method

.method private final zzcq(I)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxb:Lcom/google/android/gms/internal/ads/zzazm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazm;->zzxw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxy:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazo;->zzxw()V

    goto :goto_1c

    :cond_e
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxd:I

    if-ne v1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxb:Lcom/google/android/gms/internal/ads/zzazm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazm;->zzxx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxy:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazo;->zzxx()V

    :cond_1c
    :goto_1c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxd:I

    return-void
.end method

.method private final zzd(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-void

    :cond_8
    const-string p1, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void
.end method

.method private final zzwr()V
    .registers 7

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxg:Landroid/net/Uri;

    if-eqz v1, :cond_cd

    if-nez v0, :cond_11

    goto/16 :goto_cd

    :cond_11
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzayh;->zzam(Z)V

    const/4 v2, 0x1

    :try_start_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkz()Lcom/google/android/gms/ads/internal/overlay/zzw;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxj:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxn:Z

    if-eqz v3, :cond_73

    new-instance v3, Lcom/google/android/gms/internal/ads/zzazh;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzazh;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzazh;->zza(Landroid/graphics/SurfaceTexture;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzazh;->zzxi()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_6b

    move-object v0, v3

    goto :goto_73

    :cond_6b
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzazh;->zzxh()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    :cond_73
    :goto_73
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxg:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/ads/internal/overlay/zzv;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzayh;->zzcq(I)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9e} :catch_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_9e} :catch_a1
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_9e} :catch_9f

    return-void

    :catch_9f
    move-exception v0

    goto :goto_a4

    :catch_a1
    move-exception v0

    goto :goto_a4

    :catch_a3
    move-exception v0

    :goto_a4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxg:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to initialize MediaPlayer at "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzayh;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_cd
    :goto_cd
    return-void
.end method

.method private final zzws()V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxc:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwt()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_59

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_59

    const-string v0, "AdMediaPlayerView nudging MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;->zzd(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    :cond_34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwt()Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-ne v3, v0, :cond_51

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xfa

    cmp-long v7, v3, v5

    if-lez v7, :cond_34

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwu()V

    :cond_59
    return-void
.end method

.method private final zzwt()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getCurrentPosition()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwt()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwt()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public final getVideoHeight()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoWidth()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxj:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string p1, "AdMediaPlayerView completion"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayh;->zzcq(I)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaym;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaym;-><init>(Lcom/google/android/gms/internal/ads/zzayh;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    sget-object p1, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzayh;->zzcq(I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayl;-><init>(Lcom/google/android/gms/internal/ads/zzayh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    sget-object p1, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzayh;->zzdxa:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x25

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final onMeasure(II)V
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    invoke-static {v0, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    invoke-static {v1, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    if-lez v2, :cond_88

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    if-lez v2, :cond_88

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    if-nez v2, :cond_88

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_48

    if-ne v1, v2, :cond_48

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_3d

    mul-int v0, v0, p2

    div-int/2addr v0, v2

    move v1, p2

    goto :goto_88

    :cond_3d
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_69

    mul-int v2, v2, p1

    div-int v1, v2, v0

    goto :goto_89

    :cond_48
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_5a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_58

    if-le v0, p2, :cond_58

    goto :goto_67

    :cond_58
    move v1, v0

    goto :goto_89

    :cond_5a
    if-ne v1, v2, :cond_6b

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_68

    if-le v1, p1, :cond_68

    :goto_67
    goto :goto_69

    :cond_68
    move p1, v1

    :cond_69
    :goto_69
    move v1, p2

    goto :goto_89

    :cond_6b
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    if-ne v1, v3, :cond_78

    if-le v4, p2, :cond_78

    mul-int v2, v2, p2

    div-int/2addr v2, v4

    move v1, p2

    goto :goto_79

    :cond_78
    move v1, v4

    :goto_79
    if-ne v0, v3, :cond_86

    if-le v2, p1, :cond_86

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    div-int v1, p2, v0

    goto :goto_89

    :cond_86
    move p1, v2

    goto :goto_89

    :cond_88
    :goto_88
    move p1, v0

    :goto_89
    invoke-virtual {p0, p1, v1}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    if-eqz p2, :cond_93

    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzazh;->zzl(II)V

    :cond_93
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ne p2, v0, :cond_ac

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxk:I

    if-lez p2, :cond_9f

    if-ne p2, p1, :cond_a5

    :cond_9f
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxl:I

    if-lez p2, :cond_a8

    if-eq p2, v1, :cond_a8

    :cond_a5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzws()V

    :cond_a8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxk:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxl:I

    :cond_ac
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const-string v0, "AdMediaPlayerView prepared"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;->zzcq(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxb:Lcom/google/android/gms/internal/ads/zzazm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazm;->zzel()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzayj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzayj;-><init>(Lcom/google/android/gms/internal/ads/zzayh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxo:I

    if-eqz p1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzayh;->seekTo(I)V

    :cond_2b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzws()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    const/16 v1, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_58

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayh;->play()V

    :cond_58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwu()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    const-string p1, "AdMediaPlayerView surface created"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwr()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzayo;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzayo;-><init>(Lcom/google/android/gms/internal/ads/zzayh;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const-string p1, "AdMediaPlayerView surface destroyed"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxo:I

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxo:I

    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazh;->zzxh()V

    :cond_1a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzayq;-><init>(Lcom/google/android/gms/internal/ads/zzayh;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayh;->zzam(Z)V

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    const-string p1, "AdMediaPlayerView surface changed"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    if-ne v2, p2, :cond_18

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    if-ne v2, p3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_2b

    if-eqz v0, :cond_2b

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxo:I

    if-eqz p1, :cond_28

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzayh;->seekTo(I)V

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayh;->play()V

    :cond_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    if-eqz p1, :cond_32

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzazh;->zzl(II)V

    :cond_32
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayn;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzayn;-><init>(Lcom/google/android/gms/internal/ads/zzayh;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxb:Lcom/google/android/gms/internal/ads/zzazm;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzazm;->zzc(Lcom/google/android/gms/internal/ads/zzayu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxx:Lcom/google/android/gms/internal/ads/zzaze;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxp:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzayr;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxh:I

    if-eqz p1, :cond_35

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxi:I

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_35
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzayk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzayk;-><init>(Lcom/google/android/gms/internal/ads/zzayh;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final pause()V
    .registers 4

    const-string v0, "AdMediaPlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwt()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzayh;->zzcq(I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzays;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzays;-><init>(Lcom/google/android/gms/internal/ads/zzayh;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    return-void
.end method

.method public final play()V
    .registers 4

    const-string v0, "AdMediaPlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwt()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzayh;->zzcq(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxx:Lcom/google/android/gms/internal/ads/zzaze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaze;->zzww()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzayp;-><init>(Lcom/google/android/gms/internal/ads/zzayh;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    return-void
.end method

.method public final seekTo(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwt()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxo:I

    return-void

    :cond_25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxo:I

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrp;->zze(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzrp;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrp;->url:Ljava/lang/String;

    if-eqz v1, :cond_25

    :cond_e
    if-nez v0, :cond_11

    goto :goto_17

    :cond_11
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzrp;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxg:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxo:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayh;->zzwr()V

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    :cond_25
    return-void
.end method

.method public final stop()V
    .registers 2

    const-string v0, "AdMediaPlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxf:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;->zzcq(I)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxe:I

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxb:Lcom/google/android/gms/internal/ads/zzazm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazm;->onStop()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzayh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(FF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxm:Lcom/google/android/gms/internal/ads/zzazh;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzazh;->zzb(FF)V

    :cond_7
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzayr;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxp:Lcom/google/android/gms/internal/ads/zzayr;

    return-void
.end method

.method final synthetic zzcr(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxp:Lcom/google/android/gms/internal/ads/zzayr;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->onWindowVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method public final zzwq()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzdxn:Z

    if-eqz v0, :cond_7

    const-string v0, " spherical"

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "MediaPlayer"

    if-eqz v1, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzwu()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxy:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazo;->getVolume()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;->zzd(F)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzayk (com.google.android.gms.internal.ads.zzayk)
.class final synthetic Lcom/google/android/gms/internal/ads/zzayk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdtk:I

.field private final zzdxs:Lcom/google/android/gms/internal/ads/zzayh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayh;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzdxs:Lcom/google/android/gms/internal/ads/zzayh;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzdtk:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzdxs:Lcom/google/android/gms/internal/ads/zzayh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzdtk:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayh;->zzcr(I)V

    return-void
.end method
