###### Class com.google.android.exoplayer2.PlayerMessage (com.google.android.exoplayer2.PlayerMessage)
.class public final Lcom/google/android/exoplayer2/PlayerMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/PlayerMessage$Sender;,
        Lcom/google/android/exoplayer2/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field private deleteAfterDelivery:Z

.field private handler:Landroid/os/Handler;

.field private isCanceled:Z

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private payload:Ljava/lang/Object;

.field private positionMs:J

.field private final sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

.field private final target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;

.field private type:I

.field private windowIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILandroid/os/Handler;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    iput-object p2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    iput-object p3, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iput-object p5, p0, Lcom/google/android/exoplayer2/PlayerMessage;->handler:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/exoplayer2/PlayerMessage;->windowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized blockUntilDelivered()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :goto_1c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isProcessed:Z

    if-nez v0, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1c

    :cond_24
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return v0

    :catchall_28
    move-exception v0

    monitor-exit p0

    goto :goto_2c

    :goto_2b
    throw v0

    :goto_2c
    goto :goto_2b
.end method

.method public declared-synchronized cancel()Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeleteAfterDelivery()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionMs()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Lcom/google/android/exoplayer2/PlayerMessage$Target;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    return-object v0
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->type:I

    return v0
.end method

.method public getWindowIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->windowIndex:I

    return v0
.end method

.method public declared-synchronized isCanceled()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isProcessed:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send()Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    :cond_17
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/PlayerMessage$Sender;->sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V

    return-object p0
.end method

.method public setDeleteAfterDelivery(Z)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    return-object p0
.end method

.method public setPosition(IJ)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v2

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    if-ltz p1, :cond_2c

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2c

    :cond_27
    iput p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->windowIndex:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    return-object p0

    :cond_2c
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v0
.end method

.method public setPosition(J)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    return-object p0
.end method

.method public setType(I)Lcom/google/android/exoplayer2/PlayerMessage;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->type:I

    return-object p0
.end method

###### Class com.google.android.exoplayer2.PlayerMessage.Sender (com.google.android.exoplayer2.PlayerMessage$Sender)
.class public interface abstract Lcom/google/android/exoplayer2/PlayerMessage$Sender;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/PlayerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sender"
.end annotation


# virtual methods
.method public abstract sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
.end method

###### Class com.google.android.exoplayer2.PlayerMessage.Target (com.google.android.exoplayer2.PlayerMessage$Target)
.class public interface abstract Lcom/google/android/exoplayer2/PlayerMessage$Target;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/PlayerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Target"
.end annotation


# virtual methods
.method public abstract handleMessage(ILjava/lang/Object;)V
.end method
