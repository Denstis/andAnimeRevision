###### Class com.google.android.gms.measurement.internal.zzfx (com.google.android.gms.measurement.internal.zzfx)
.class final Lcom/google/android/gms/measurement/internal/zzfx;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzfy<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzft;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzfy<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzc:Z

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/InterruptedException;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzc(Lcom/google/android/gms/measurement/internal/zzft;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzc:Z

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Lcom/google/android/gms/measurement/internal/zzft;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzc(Lcom/google/android/gms/measurement/internal/zzft;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzd(Lcom/google/android/gms/measurement/internal/zzft;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Lcom/google/android/gms/measurement/internal/zzft;Lcom/google/android/gms/measurement/internal/zzfx;)Lcom/google/android/gms/measurement/internal/zzfx;

    goto :goto_49

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zze(Lcom/google/android/gms/measurement/internal/zzft;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v1

    if-ne p0, v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zzb(Lcom/google/android/gms/measurement/internal/zzft;Lcom/google/android/gms/measurement/internal/zzfx;)Lcom/google/android/gms/measurement/internal/zzfx;

    goto :goto_49

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    :goto_49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzc:Z

    :cond_4c
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_4e

    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_13

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Lcom/google/android/gms/measurement/internal/zzft;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_c} :catch_e

    const/4 v0, 0x1

    goto :goto_1

    :catch_e
    move-exception v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zza(Ljava/lang/InterruptedException;)V

    goto :goto_1

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    :goto_1b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzfy;

    if-eqz v1, :cond_34

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfy;->zza:Z

    if-eqz v2, :cond_2b

    move v2, v0

    goto :goto_2d

    :cond_2b
    const/16 v2, 0xa

    :goto_2d
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_1b

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_81

    :try_start_37
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzft;->zzb(Lcom/google/android/gms/measurement/internal/zzft;)Z

    move-result v2
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_7e

    if-nez v2, :cond_53

    :try_start_47
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4e} :catch_4f
    .catchall {:try_start_47 .. :try_end_4e} :catchall_7e

    goto :goto_53

    :catch_4f
    move-exception v2

    :try_start_50
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zza(Ljava/lang/InterruptedException;)V

    :cond_53
    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_7e

    :try_start_54
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzft;->zzc(Lcom/google/android/gms/measurement/internal/zzft;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_81

    :try_start_5b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzft;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzco:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()V

    :cond_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_7b

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()V

    return-void

    :cond_79
    :try_start_79
    monitor-exit v1

    goto :goto_1b

    :catchall_7b
    move-exception v0

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_81

    :catchall_7e
    move-exception v0

    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()V

    goto :goto_87

    :goto_86
    throw v0

    :goto_87
    goto :goto_86
.end method

.method public final zza()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
