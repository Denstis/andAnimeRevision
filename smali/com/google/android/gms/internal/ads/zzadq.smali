###### Class com.google.android.gms.internal.ads.zzadq (com.google.android.gms.internal.ads.zzadq)
.class public final Lcom/google/android/gms/internal/ads/zzadq;
.super Lcom/google/android/gms/internal/ads/zzacs;
.source ""


# instance fields
.field private final zzcwu:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadq;->zzcwu:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzace;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadq;->zzcwu:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacj;->zza(Lcom/google/android/gms/internal/ads/zzace;)Lcom/google/android/gms/internal/ads/zzacj;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method
