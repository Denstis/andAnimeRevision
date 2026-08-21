###### Class com.google.android.gms.internal.ads.zzqu (com.google.android.gms.internal.ads.zzqu)
.class public final Lcom/google/android/gms/internal/ads/zzqu;
.super Lcom/google/android/gms/internal/ads/zzra;
.source ""


# instance fields
.field private final zzbqv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzbqv:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onAppOpenAdFailedToLoad(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzbqv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdFailedToLoad(I)V

    :cond_d
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqw;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzbqv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_12

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzrd;-><init>(Lcom/google/android/gms/internal/ads/zzqw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    :cond_12
    return-void
.end method
