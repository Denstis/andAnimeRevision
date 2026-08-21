###### Class com.google.android.gms.internal.ads.zzadp (com.google.android.gms.internal.ads.zzadp)
.class public final Lcom/google/android/gms/internal/ads/zzadp;
.super Lcom/google/android/gms/internal/ads/zzacl;
.source ""


# instance fields
.field private final zzcwt:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadp;->zzcwt:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzabw;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadp;->zzcwt:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzacb;-><init>(Lcom/google/android/gms/internal/ads/zzabw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;->onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    return-void
.end method
