###### Class com.google.android.gms.internal.ads.zzyg (com.google.android.gms.internal.ads.zzyg)
.class public final Lcom/google/android/gms/internal/ads/zzyg;
.super Lcom/google/android/gms/internal/ads/zzwv;
.source ""


# instance fields
.field private final zzabo:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzabo:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzabo:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoEnd()V

    return-void
.end method

.method public final onVideoMute(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzabo:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoMute(Z)V

    return-void
.end method

.method public final onVideoPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzabo:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPause()V

    return-void
.end method

.method public final onVideoPlay()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzabo:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPlay()V

    return-void
.end method

.method public final onVideoStart()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzabo:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoStart()V

    return-void
.end method
