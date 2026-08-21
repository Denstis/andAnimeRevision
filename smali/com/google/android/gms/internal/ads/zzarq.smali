###### Class com.google.android.gms.internal.ads.zzarq (com.google.android.gms.internal.ads.zzarq)
.class public final Lcom/google/android/gms/internal/ads/zzarq;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzara;
    .registers 7

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    const-string v2, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzarp;->zzbty:Lcom/google/android/gms/internal/ads/zzaxk;

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxk;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzarg;

    const v2, 0xee0d68

    invoke-interface {p0, v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzarg;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_19

    return-object v1

    :cond_19
    const-string p1, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzara;

    if-eqz p2, :cond_26

    check-cast p1, Lcom/google/android/gms/internal/ads/zzara;

    return-object p1

    :cond_26
    new-instance p1, Lcom/google/android/gms/internal/ads/zzarc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzarc;-><init>(Landroid/os/IBinder;)V
    :try_end_2b
    .catch Lcom/google/android/gms/internal/ads/zzaxj; {:try_start_5 .. :try_end_2b} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p0

    goto :goto_2f

    :catch_2e
    move-exception p0

    :goto_2f
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
