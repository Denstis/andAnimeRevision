###### Class com.google.android.gms.ads.formats.MediaView (com.google.android.gms.ads.formats.MediaView)
.class public Lcom/google/android/gms/ads/formats/MediaView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private zzbjo:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;

.field private zzbjp:Z

.field private zzbjq:Lcom/google/android/gms/internal/ads/zzaax;

.field private zzbjr:Landroid/widget/ImageView$ScaleType;

.field private zzbjs:Z

.field private zzbjt:Lcom/google/android/gms/internal/ads/zzaaz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjs:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjr:Landroid/widget/ImageView$ScaleType;

    iget-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjt:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjr:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaaz;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_e
    return-void
.end method

.method public setMediaContent(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjp:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjo:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjq:Lcom/google/android/gms/internal/ads/zzaax;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->setMediaContent(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;)V

    :cond_c
    return-void
.end method

.method protected final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaax;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjq:Lcom/google/android/gms/internal/ads/zzaax;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjp:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjo:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->setMediaContent(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaaz;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjt:Lcom/google/android/gms/internal/ads/zzaaz;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjs:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/MediaView;->zzbjr:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaaz;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
