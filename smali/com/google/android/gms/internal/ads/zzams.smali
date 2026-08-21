###### Class com.google.android.gms.internal.ads.zzams (com.google.android.gms.internal.ads.zzams)
.class final Lcom/google/android/gms/internal/ads/zzams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final synthetic zzdfe:Lcom/google/android/gms/internal/ads/zzamt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzdfe:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPause()V
    .registers 2

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .registers 2

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void
.end method

.method public final zzsi()V
    .registers 3

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzdfe:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamt;->zza(Lcom/google/android/gms/internal/ads/zzamt;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzdfe:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final zzsj()V
    .registers 3

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzdfe:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamt;->zza(Lcom/google/android/gms/internal/ads/zzamt;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzdfe:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
