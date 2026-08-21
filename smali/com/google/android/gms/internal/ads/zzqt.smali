###### Class com.google.android.gms.internal.ads.zzqt (com.google.android.gms.internal.ads.zzqt)
.class public final Lcom/google/android/gms/internal/ads/zzqt;
.super Lcom/google/android/gms/internal/ads/zzrb;
.source ""


# instance fields
.field private final zzbqu:Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbqu:Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;

    return-void
.end method


# virtual methods
.method public final onAppOpenAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzbqu:Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;->onAppOpenAdClosed()V

    return-void
.end method
