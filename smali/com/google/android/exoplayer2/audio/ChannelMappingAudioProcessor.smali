###### Class com.google.android.exoplayer2.audio.ChannelMappingAudioProcessor (com.google.android.exoplayer2.audio.ChannelMappingAudioProcessor)
.class final Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private active:Z

.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputChannels:[I

.field private pendingOutputChannels:[I

.field private sampleRateHz:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    const/4 v3, 0x0

    if-nez v2, :cond_16

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    return v0

    :cond_16
    const/4 v2, 0x2

    if-ne p3, v2, :cond_50

    if-nez v0, :cond_24

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    if-ne v0, p1, :cond_24

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    if-ne v0, p2, :cond_24

    return v3

    :cond_24
    iput p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    iput p2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v0, v0

    if-eq p2, v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    const/4 v0, 0x0

    :goto_33
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v4, v2

    if-ge v0, v4, :cond_4f

    aget v2, v2, v0

    if-ge v2, p2, :cond_49

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    if-eq v2, v0, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_49
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0

    :cond_4f
    return v1

    :cond_50
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method public flush()V
    .registers 2

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputChannelCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    goto :goto_8

    :cond_7
    array-length v0, v0

    :goto_8
    return v0
.end method

.method public getOutputEncoding()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getOutputSampleRateHz()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    return v0
.end method

.method public isEnded()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

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

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v4, v4

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v3, :cond_38

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_3d

    :cond_38
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_3d
    if-ge v0, v2, :cond_5c

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_56

    aget v6, v3, v5

    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_56
    iget v3, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_3d

    :cond_5c
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->flush()V

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->sampleRateHz:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->active:Z

    return-void
.end method

.method public setChannelMap([I)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    return-void
.end method
