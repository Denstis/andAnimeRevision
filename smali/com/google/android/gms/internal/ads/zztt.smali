###### Class com.google.android.gms.internal.ads.zztt (com.google.android.gms.internal.ads.zztt)
.class public final Lcom/google/android/gms/internal/ads/zztt;
.super Lcom/google/android/gms/internal/ads/zzvb;
.source ""


# instance fields
.field private final zzcbv:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztt;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdImpression()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    return-void
.end method

.method public final onAdLoaded()V
    .registers 2

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

.method public final onAdOpened()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztt;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    return-void
.end method
