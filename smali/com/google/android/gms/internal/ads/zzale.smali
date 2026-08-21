###### Class com.google.android.gms.internal.ads.zzale (com.google.android.gms.internal.ads.zzale)
.class final Lcom/google/android/gms/internal/ads/zzale;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzden:Lcom/google/android/gms/internal/ads/zzala;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzala;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzden:Lcom/google/android/gms/internal/ads/zzala;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzden:Lcom/google/android/gms/internal/ads/zzala;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zza(Lcom/google/android/gms/internal/ads/zzala;)Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
