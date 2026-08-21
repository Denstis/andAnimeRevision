###### Class com.google.android.gms.internal.ads.zzdco (com.google.android.gms.internal.ads.zzdco)
.class abstract Lcom/google/android/gms/internal/ads/zzdco;
.super Lcom/google/android/gms/internal/ads/zzddh;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzddh<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzgre:Ljava/util/concurrent/Executor;

.field zzgrf:Z

.field private final synthetic zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdcm;Ljava/util/concurrent/Executor;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzddh;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgrf:Z

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgre:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final execute()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgre:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgrf:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdby;->setException(Ljava/lang/Throwable;)Z

    :cond_10
    return-void
.end method

.method final isDone()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdby;->isDone()Z

    move-result v0

    return v0
.end method

.method abstract setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method final zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_21

    instance-of p1, p2, Ljava/util/concurrent/ExecutionException;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdby;->setException(Ljava/lang/Throwable;)Z

    return-void

    :cond_10
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdby;->cancel(Z)Z

    return-void

    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdby;->setException(Ljava/lang/Throwable;)Z

    return-void

    :cond_21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdco;->setValue(Ljava/lang/Object;)V

    return-void
.end method
