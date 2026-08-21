###### Class com.google.android.exoplayer2.util.ReusableBufferedOutputStream (com.google.android.exoplayer2.util.ReusableBufferedOutputStream)
.class public final Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source ""


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    const/4 v0, 0x0

    goto :goto_9

    :catchall_8
    move-exception v0

    :goto_9
    :try_start_9
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception v1

    if-nez v0, :cond_13

    move-object v0, v1

    :cond_13
    :goto_13
    if-eqz v0, :cond_18

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    :cond_18
    return-void
.end method

.method public reset(Ljava/io/OutputStream;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    iput p1, p0, Ljava/io/BufferedOutputStream;->count:I

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    return-void
.end method
