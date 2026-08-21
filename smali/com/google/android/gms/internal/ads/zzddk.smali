###### Class com.google.android.gms.internal.ads.zzddk (com.google.android.gms.internal.ads.zzddk)
.class public final Lcom/google/android/gms/internal/ads/zzddk;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzddl;
    .registers 2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzddl;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/android/gms/internal/ads/zzddl;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddo;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzddo;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzddp;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method static zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdby;)Ljava/util/concurrent/Executor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzdby<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdcq;->zzgri:Lcom/google/android/gms/internal/ads/zzdcq;

    if-ne p0, v0, :cond_b

    return-object p0

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzddn;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdby;)V

    return-object v0
.end method

.method public static zzapk()Ljava/util/concurrent/Executor;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdcq;->zzgri:Lcom/google/android/gms/internal/ads/zzdcq;

    return-object v0
.end method
