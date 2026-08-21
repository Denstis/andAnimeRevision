###### Class com.google.android.gms.internal.ads.zzddh (com.google.android.gms.internal.ads.zzddh)
.class abstract Lcom/google/android/gms/internal/ads/zzddh;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final zzgrq:Ljava/lang/Runnable;

.field private static final zzgrr:Ljava/lang/Runnable;

.field private static final zzgrs:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzddj;-><init>(Lcom/google/android/gms/internal/ads/zzddg;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddh;->zzgrq:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzddj;-><init>(Lcom/google/android/gms/internal/ads/zzddg;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddh;->zzgrr:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzddj;-><init>(Lcom/google/android/gms/internal/ads/zzddg;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddh;->zzgrs:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method final interruptTask()V
    .registers 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/google/android/gms/internal/ads/zzddh;->zzgrr:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :try_start_12
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_2a

    sget-object v1, Lcom/google/android/gms/internal/ads/zzddh;->zzgrq:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzddh;->zzgrs:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_29

    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_29
    return-void

    :catchall_2a
    move-exception v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzddh;->zzgrq:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzddh;->zzgrs:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_3c

    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_3c
    throw v1

    :cond_3d
    return-void
.end method

.method abstract isDone()Z
.end method

.method public final run()V
    .registers 12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzddh;->isDone()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    if-eqz v2, :cond_6c

    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzddh;->zzapg()Ljava/lang/Object;

    move-result-object v6
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1c

    goto :goto_6d

    :catchall_1c
    move-exception v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzddh;->zzgrq:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_66

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2d
    sget-object v10, Lcom/google/android/gms/internal/ads/zzddh;->zzgrr:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_3c

    sget-object v10, Lcom/google/android/gms/internal/ads/zzddh;->zzgrs:Ljava/lang/Runnable;

    if-ne v7, v10, :cond_36

    goto :goto_3c

    :cond_36
    if-eqz v8, :cond_66

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_66

    :cond_3c
    :goto_3c
    add-int/2addr v9, v3

    if-le v9, v4, :cond_5c

    sget-object v10, Lcom/google/android/gms/internal/ads/zzddh;->zzgrs:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_4b

    sget-object v7, Lcom/google/android/gms/internal/ads/zzddh;->zzgrr:Ljava/lang/Runnable;

    invoke-virtual {p0, v7, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    :cond_4b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_56

    if-eqz v8, :cond_54

    goto :goto_56

    :cond_54
    const/4 v7, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    const/4 v7, 0x1

    :goto_57
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    move v8, v7

    goto :goto_5f

    :cond_5c
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_2d

    :cond_66
    :goto_66
    if-eqz v2, :cond_bb

    invoke-virtual {p0, v1, v6}, Lcom/google/android/gms/internal/ads/zzddh;->zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_6c
    move-object v6, v1

    :goto_6d
    sget-object v7, Lcom/google/android/gms/internal/ads/zzddh;->zzgrq:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7d
    sget-object v10, Lcom/google/android/gms/internal/ads/zzddh;->zzgrr:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_8c

    sget-object v10, Lcom/google/android/gms/internal/ads/zzddh;->zzgrs:Ljava/lang/Runnable;

    if-ne v7, v10, :cond_86

    goto :goto_8c

    :cond_86
    if-eqz v8, :cond_b6

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b6

    :cond_8c
    :goto_8c
    add-int/2addr v9, v3

    if-le v9, v4, :cond_ac

    sget-object v10, Lcom/google/android/gms/internal/ads/zzddh;->zzgrs:Ljava/lang/Runnable;

    if-eq v7, v10, :cond_9b

    sget-object v7, Lcom/google/android/gms/internal/ads/zzddh;->zzgrr:Ljava/lang/Runnable;

    invoke-virtual {p0, v7, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    :cond_9b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_a6

    if-eqz v8, :cond_a4

    goto :goto_a6

    :cond_a4
    const/4 v7, 0x0

    goto :goto_a7

    :cond_a6
    :goto_a6
    const/4 v7, 0x1

    :goto_a7
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    move v8, v7

    goto :goto_af

    :cond_ac
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_af
    :goto_af
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_7d

    :cond_b6
    :goto_b6
    if-eqz v2, :cond_bb

    invoke-virtual {p0, v6, v1}, Lcom/google/android/gms/internal/ads/zzddh;->zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_bb
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzddh;->zzgrq:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_d

    const-string v0, "running=[DONE]"

    goto :goto_41

    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzddh;->zzgrr:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_14

    const-string v0, "running=[INTERRUPTED]"

    goto :goto_41

    :cond_14
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_3f

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "running=[RUNNING ON "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_3f
    const-string v0, "running=[NOT STARTED YET]"

    :goto_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzddh;->zzaph()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract zzapg()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method abstract zzaph()Ljava/lang/String;
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method
