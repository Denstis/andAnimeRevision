###### Class com.google.android.gms.internal.ads.zzxr (com.google.android.gms.internal.ads.zzxr)
.class final Lcom/google/android/gms/internal/ads/zzxr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcfg:Lcom/google/android/gms/internal/ads/zzxo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzcfg:Lcom/google/android/gms/internal/ads/zzxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzcfg:Lcom/google/android/gms/internal/ads/zzxo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxo;->zzcff:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxm;->zza(Lcom/google/android/gms/internal/ads/zzxm;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->zzcfg:Lcom/google/android/gms/internal/ads/zzxo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxo;->zzcff:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxm;->zza(Lcom/google/android/gms/internal/ads/zzxm;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzuy;->onAdFailedToLoad(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method
