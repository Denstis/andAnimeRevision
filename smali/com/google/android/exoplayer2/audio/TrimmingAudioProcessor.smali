###### Class com.google.android.exoplayer2.audio.TrimmingAudioProcessor (com.google.android.exoplayer2.audio.TrimmingAudioProcessor)
.class final Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# static fields
.field private static final OUTPUT_ENCODING:I = 0x2


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bytesPerFrame:I

.field private channelCount:I

.field private endBuffer:[B

.field private endBufferSize:I

.field private inputEnded:Z

.field private isActive:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pendingTrimStartBytes:I

.field private receivedInputSinceConfigure:Z

.field private sampleRateHz:I

.field private trimEndFrames:I

.field private trimStartFrames:I

.field private trimmedFrameCount:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 9

    const/4 v0, 0x2

    if-ne p3, v0, :cond_42

    iget p3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez p3, :cond_10

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget v3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    div-int/2addr p3, v3

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    :cond_10
    iput p2, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    iget p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimEndFrames:I

    iget p2, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    mul-int p3, p1, p2

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimStartFrames:I

    mul-int p2, p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_37

    if-eqz p1, :cond_35

    goto :goto_37

    :cond_35
    const/4 p1, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p1, 0x1

    :goto_38
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->receivedInputSinceConfigure:Z

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    if-eq p2, p1, :cond_41

    const/4 p3, 0x1

    :cond_41
    return p3

    :cond_42
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public flush()V
    .registers 3

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->receivedInputSinceConfigure:Z

    if-eqz v1, :cond_d

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    :cond_d
    iput v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    if-eqz v1, :cond_3f

    iget v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez v1, :cond_3f

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-ge v0, v1, :cond_27

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2c

    :cond_27
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_2c
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iput v3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    :cond_3f
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputChannelCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getOutputSampleRateHz()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public getTrimmedFrameCount()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    return v0
.end method

.method public isEnded()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public queueEndOfStream()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_d

    return-void

    :cond_d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->receivedInputSinceConfigure:Z

    iget v3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget v6, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget v4, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    if-lez v0, :cond_2e

    return-void

    :cond_2e
    sub-int/2addr v2, v3

    iget v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v0, :cond_4d

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_52

    :cond_4d
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_52
    iget v3, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-virtual {v5, v6, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v3

    invoke-static {v0, v4, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-static {v0, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->flush()V

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method

.method public resetTrimmedFrameCount()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    return-void
.end method

.method public setTrimFrameCount(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimStartFrames:I

    iput p2, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimEndFrames:I

    return-void
.end method
