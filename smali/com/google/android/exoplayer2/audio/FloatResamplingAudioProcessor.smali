###### Class com.google.android.exoplayer2.audio.FloatResamplingAudioProcessor (com.google.android.exoplayer2.audio.FloatResamplingAudioProcessor)
.class final Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# static fields
.field private static final FLOAT_NAN_AS_INT:I

.field private static final PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR:D = 4.656612875245797E-10


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private sampleRateHz:I

.field private sourceEncoding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->FLOAT_NAN_AS_INT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sampleRateHz:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->channelCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sourceEncoding:I

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static writePcm32BitFloat(ILjava/nio/ByteBuffer;)V
    .registers 6

    int-to-double v0, p0

    const-wide v2, 0x3e00000000200000L    # 4.656612875245797E-10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    sget v0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->FLOAT_NAN_AS_INT:I

    if-ne p0, v0, :cond_19

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    :cond_19
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 5

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->isEncodingHighResolutionIntegerPcm(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sampleRateHz:I

    if-ne v0, p1, :cond_14

    iget v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->channelCount:I

    if-ne v0, p2, :cond_14

    iget v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sourceEncoding:I

    if-ne v0, p3, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iput p1, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sampleRateHz:I

    iput p2, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->channelCount:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sourceEncoding:I

    const/4 p1, 0x1

    return p1

    :cond_1c
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public flush()V
    .registers 2

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputChannelCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getOutputSampleRateHz()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public isActive()Z
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sourceEncoding:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isEncodingHighResolutionIntegerPcm(I)Z

    move-result v0

    return v0
.end method

.method public isEnded()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

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

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 7

    iget v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sourceEncoding:I

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    if-eqz v0, :cond_16

    goto :goto_1a

    :cond_16
    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    :goto_1a
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v3, :cond_31

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_36

    :cond_31
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_36
    if-eqz v0, :cond_69

    :goto_38
    if-ge v1, v2, :cond_91

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_38

    :cond_69
    :goto_69
    if-ge v1, v2, :cond_91

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_69

    :cond_91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->flush()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sampleRateHz:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->channelCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->sourceEncoding:I

    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/FloatResamplingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method
