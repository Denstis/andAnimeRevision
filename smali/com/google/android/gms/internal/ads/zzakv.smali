###### Class com.google.android.gms.internal.ads.zzakv (com.google.android.gms.internal.ads.zzakv)
.class final Lcom/google/android/gms/internal/ads/zzakv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;


# instance fields
.field private final synthetic zzdee:Lcom/google/android/gms/internal/ads/zzaft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakt;Lcom/google/android/gms/internal/ads/zzaft;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdee:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdee:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->onInitializationFailed(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitializationSucceeded()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdee:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->onInitializationSucceeded()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
