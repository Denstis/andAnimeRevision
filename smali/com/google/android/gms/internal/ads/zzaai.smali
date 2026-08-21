###### Class com.google.android.gms.internal.ads.zzaai (com.google.android.gms.internal.ads.zzaai)
.class public final Lcom/google/android/gms/internal/ads/zzaai;
.super Lcom/google/android/gms/internal/ads/zzaag;
.source ""


# instance fields
.field private final zzcep:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaag;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzcep:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaac;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzcep:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaad;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaad;-><init>(Lcom/google/android/gms/internal/ads/zzaac;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
