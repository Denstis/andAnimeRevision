###### Class com.google.android.gms.internal.ads.zzdcy (com.google.android.gms.internal.ads.zzdcy)
.class public final Lcom/google/android/gms/internal/ads/zzdcy;
.super Lcom/google/android/gms/internal/ads/zzddf;
.source ""


# direct methods
.method public static varargs zza([Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzddd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TV;>;)",
            "Lcom/google/android/gms/internal/ads/zzddd<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddd;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzddd;-><init>(ZLcom/google/android/gms/internal/ads/zzdbd;Lcom/google/android/gms/internal/ads/zzddb;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzddi;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdds;->zzb(Lcom/google/android/gms/internal/ads/zzddi;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcz;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzdcz<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdda;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdda;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzdcz;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzddi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdde$zza;->zzgrp:Lcom/google/android/gms/internal/ads/zzdde$zza;

    return-object p0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdde$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdde$zza;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzdal<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdca;->zza(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzdcj<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdca;->zza(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
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

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbw;->zza(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdeb;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzdas;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzc(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdeb;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_19

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdct;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdct;-><init>(Ljava/lang/Error;)V

    throw v0

    :cond_19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzddy;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdck;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdck;-><init>(Lcom/google/android/gms/internal/ads/zzday;Z)V

    return-object v0
.end method

.method public static zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzddd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TV;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzddd<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddd;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzddd;-><init>(ZLcom/google/android/gms/internal/ads/zzdbd;Lcom/google/android/gms/internal/ads/zzddb;)V

    return-object v0
.end method

.method public static zzi(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdde$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdde$zzb;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
