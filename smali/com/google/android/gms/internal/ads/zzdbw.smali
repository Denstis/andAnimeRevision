###### Class com.google.android.gms.internal.ads.zzdbw (com.google.android.gms.internal.ads.zzdbw)
.class abstract Lcom/google/android/gms/internal/ads/zzdbw;
.super Lcom/google/android/gms/internal/ads/zzdcv;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdcv<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private zzgpz:Lcom/google/android/gms/internal/ads/zzddi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TV;>;"
        }
    .end annotation
.end field

.field private zzgqa:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TX;>;"
        }
    .end annotation
.end field

.field private zzgqb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;TF;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdcv;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgpz:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqa:Ljava/lang/Class;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqb:Ljava/lang/Object;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzdcj<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdbz;-><init>(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdcj;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzddk;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdby;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzddi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgpz:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdby;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgpz:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqa:Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqb:Ljava/lang/Object;

    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgpz:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqa:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqb:Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdby;->pendingToString()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_31

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "inputFuture=["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_31
    const-string v0, ""

    :goto_33
    if-eqz v1, :cond_7d

    if-eqz v2, :cond_7d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "exceptionType=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], fallback=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7d
    if-eqz v3, :cond_98

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_92
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_98
    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgpz:Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqa:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqb:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_c

    const/4 v5, 0x1

    goto :goto_d

    :cond_c
    const/4 v5, 0x0

    :goto_d
    if-nez v1, :cond_11

    const/4 v6, 0x1

    goto :goto_12

    :cond_11
    const/4 v6, 0x0

    :goto_12
    or-int/2addr v5, v6

    if-nez v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    or-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdby;->isCancelled()Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_20

    return-void

    :cond_20
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgpz:Lcom/google/android/gms/internal/ads/zzddi;

    :try_start_23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4
    :try_end_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_27} :catch_2c
    .catchall {:try_start_23 .. :try_end_27} :catchall_2a

    move-object v5, v4

    move-object v4, v3

    goto :goto_38

    :catchall_2a
    move-exception v4

    goto :goto_37

    :catch_2c
    move-exception v4

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    :goto_37
    move-object v5, v3

    :goto_38
    if-nez v4, :cond_3e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzdby;->set(Ljava/lang/Object;)Z

    return-void

    :cond_3e
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdby;->setFuture(Lcom/google/android/gms/internal/ads/zzddi;)Z

    return-void

    :cond_48
    :try_start_48
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdbw;->zza(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_54

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqa:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqb:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbw;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_54
    move-exception v0

    :try_start_55
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdby;->setException(Ljava/lang/Throwable;)Z
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5d

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqa:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqb:Ljava/lang/Object;

    return-void

    :catchall_5d
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqa:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzgqb:Ljava/lang/Object;

    throw v0
.end method

.method abstract setResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)TT;"
        }
    .end annotation
.end method
