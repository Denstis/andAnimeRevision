###### Class com.google.android.gms.internal.ads.zzor (com.google.android.gms.internal.ads.zzor)
.class final Lcom/google/android/gms/internal/ads/zzor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final synthetic zzbin:Lcom/google/android/gms/internal/ads/zzoq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzoq;Landroid/media/MediaCodec;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzbin:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzoq;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzop;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzoq;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzbin:Lcom/google/android/gms/internal/ads/zzoq;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzoq;->zzbik:Lcom/google/android/gms/internal/ads/zzor;

    if-eq p0, p2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoq;->zziv()V

    return-void
.end method
