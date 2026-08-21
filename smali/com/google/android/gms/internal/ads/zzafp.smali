###### Class com.google.android.gms.internal.ads.zzafp (com.google.android.gms.internal.ads.zzafp)
.class final Lcom/google/android/gms/internal/ads/zzafp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field private final synthetic zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

.field private final synthetic zzcym:Lcom/google/android/gms/internal/ads/zzafl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafl;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzcym:Lcom/google/android/gms/internal/ads/zzafl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzcym:Lcom/google/android/gms/internal/ads/zzafl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafl;->zzb(Lcom/google/android/gms/internal/ads/zzafl;)Lcom/google/android/gms/internal/ads/zzafa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafa;->zzqz()Lcom/google/android/gms/internal/ads/zzafj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onConnectionSuspended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
