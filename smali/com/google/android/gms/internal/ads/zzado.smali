###### Class com.google.android.gms.internal.ads.zzado (com.google.android.gms.internal.ads.zzado)
.class public final Lcom/google/android/gms/internal/ads/zzado;
.super Lcom/google/android/gms/internal/ads/zzacm;
.source ""


# instance fields
.field private final zzcws:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzado;->zzcws:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaca;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zzcws:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzacf;-><init>(Lcom/google/android/gms/internal/ads/zzaca;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;->onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    return-void
.end method
