###### Class com.google.android.gms.internal.ads.zzamm (com.google.android.gms.internal.ads.zzamm)
.class final Lcom/google/android/gms/internal/ads/zzamm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
        "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;",
        "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdew:Lcom/google/android/gms/internal/ads/zzakd;

.field private final synthetic zzdez:Lcom/google/android/gms/internal/ads/zzalx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzami;Lcom/google/android/gms/internal/ads/zzalx;Lcom/google/android/gms/internal/ads/zzakd;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdez:Lcom/google/android/gms/internal/ads/zzalx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdew:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;
    .registers 5

    const-string v0, ""

    if-nez p1, :cond_17

    const-string p1, "Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :try_start_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdez:Lcom/google/android/gms/internal/ads/zzalx;

    const-string v1, "Adapter returned null."

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzalx;->zzdg(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    const/4 p1, 0x0

    return-object p1

    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdez:Lcom/google/android/gms/internal/ads/zzalx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzalo;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzalo;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzalx;->zza(Lcom/google/android/gms/internal/ads/zzakm;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_26
    new-instance p1, Lcom/google/android/gms/internal/ads/zzamo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdew:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(Lcom/google/android/gms/internal/ads/zzakd;)V

    return-object p1
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzdez:Lcom/google/android/gms/internal/ads/zzalx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzalx;->zzdg(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzamm;->zza(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    move-result-object p1

    return-object p1
.end method
