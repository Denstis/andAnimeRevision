###### Class com.google.android.exoplayer2.util.ConditionVariable (com.google.android.exoplayer2.util.ConditionVariable)
.class public final Lcom/google/android/exoplayer2/util/ConditionVariable;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .registers 2

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method public declared-synchronized block(J)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    :goto_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v2, :cond_18

    cmp-long v2, v0, p1

    if-gez v2, :cond_18

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_6

    :cond_18
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return p1

    :catchall_1c
    move-exception p1

    monitor-exit p0

    goto :goto_20

    :goto_1f
    throw p1

    :goto_20
    goto :goto_1f
.end method

.method public declared-synchronized close()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
