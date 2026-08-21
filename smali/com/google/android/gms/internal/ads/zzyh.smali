###### Class com.google.android.gms.internal.ads.zzyh (com.google.android.gms.internal.ads.zzyh)
.class public final Lcom/google/android/gms/internal/ads/zzyh;
.super Lcom/google/android/gms/internal/ads/zzadd;
.source ""


# instance fields
.field private final zzcfo:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzadd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyh;->zzcfo:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    return-void
.end method


# virtual methods
.method public final zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyh;->zzcfo:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;->shouldDelayBannerRendering(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
