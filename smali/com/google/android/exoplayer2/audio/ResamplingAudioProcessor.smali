###### Class com.google.android.exoplayer2.audio.ResamplingAudioProcessor (com.google.android.exoplayer2.audio.ResamplingAudioProcessor)
.class final Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private encoding:I

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private sampleRateHz:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 5

    const/4 v0, 0x3

    if-eq p3, v0, :cond_15

    const/4 v0, 0x2

    if-eq p3, v0, :cond_15

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_15

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, v0, :cond_f

    goto :goto_15

    :cond_f
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0

    :cond_15
    :goto_15
    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    if-ne v0, p1, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    if-ne v0, p2, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    if-ne v0, p3, :cond_23

    const/4 p1, 0x0

    return p1

    :cond_23
    iput p1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    iput p2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    const/4 p1, 0x1

    return p1
.end method

.method public flush()V
    .registers 2

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputChannelCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getOutputSampleRateHz()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public isActive()Z
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    if-eqz v0, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isEnded()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public queueEndOfStream()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    iget v3, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v6, 0x3

    if-eq v3, v5, :cond_20

    if-eq v3, v6, :cond_21

    if-ne v3, v4, :cond_1a

    div-int/lit8 v2, v2, 0x2

    goto :goto_23

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_20
    div-int/2addr v2, v6

    :cond_21
    mul-int/lit8 v2, v2, 0x2

    :goto_23
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_3a

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_3f

    :cond_3a
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_3f
    iget v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    if-eq v2, v5, :cond_81

    if-eq v2, v6, :cond_68

    if-ne v2, v4, :cond_62

    :goto_47
    if-ge v0, v1, :cond_9c

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_47

    :cond_62
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_68
    :goto_68
    if-ge v0, v1, :cond_9c

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_81
    :goto_81
    if-ge v0, v1, :cond_9c

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_81

    :cond_9c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->flush()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->sampleRateHz:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->channelCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->encoding:I

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method
