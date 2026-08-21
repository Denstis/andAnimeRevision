###### Class com.google.android.gms.internal.ads.zzxw (com.google.android.gms.internal.ads.zzxw)
.class public final Lcom/google/android/gms/internal/ads/zzxw;
.super Lcom/google/android/gms/internal/ads/zzaqz;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqz;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public final isLoaded()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzarb;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzarj;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzarr;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzari;)V
    .registers 4

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzawy;->zzzb:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxz;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzxz;-><init>(Lcom/google/android/gms/internal/ads/zzari;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwm;)V
    .registers 2

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final zzpk()Lcom/google/android/gms/internal/ads/zzaqv;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzxz (com.google.android.gms.internal.ads.zzxz)
.class final synthetic Lcom/google/android/gms/internal/ads/zzxz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcfl:Lcom/google/android/gms/internal/ads/zzari;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzari;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzcfl:Lcom/google/android/gms/internal/ads/zzari;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzcfl:Lcom/google/android/gms/internal/ads/zzari;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzari;->onRewardedAdFailedToLoad(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method
