###### Class com.google.android.gms.internal.ads.zzadv (com.google.android.gms.internal.ads.zzadv)
.class public final Lcom/google/android/gms/internal/ads/zzadv;
.super Lcom/google/android/gms/internal/ads/zzacy;
.source ""


# instance fields
.field private final zzcxb:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzcxb:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadg;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzcxb:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzadl;-><init>(Lcom/google/android/gms/internal/ads/zzadg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;->onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method
