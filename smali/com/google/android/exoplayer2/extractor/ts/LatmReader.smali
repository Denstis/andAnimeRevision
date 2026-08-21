###### Class com.google.android.exoplayer2.extractor.ts.LatmReader (com.google.android.exoplayer2.extractor.ts.LatmReader)
.class public final Lcom/google/android/exoplayer2/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0x400

.field private static final STATE_FINDING_SYNC_1:I = 0x0

.field private static final STATE_FINDING_SYNC_2:I = 0x1

.field private static final STATE_READING_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final SYNC_BYTE_FIRST:I = 0x56

.field private static final SYNC_BYTE_SECOND:I = 0xe0


# instance fields
.field private audioMuxVersionA:I

.field private bytesRead:I

.field private channelCount:I

.field private format:Lcom/google/android/exoplayer2/Format;

.field private formatId:Ljava/lang/String;

.field private frameLengthType:I

.field private final language:Ljava/lang/String;

.field private numSubframes:I

.field private otherDataLenBits:J

.field private otherDataPresent:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private final sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private sampleDurationUs:J

.field private sampleRateHz:I

.field private sampleSize:I

.field private secondHeaderByte:I

.field private state:I

.field private streamMuxRead:Z

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    return-void
.end method

.method private static latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private parseAudioMuxElement(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseStreamMuxConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    goto :goto_12

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    if-nez v0, :cond_12

    return-void

    :cond_12
    :goto_12
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    if-nez v0, :cond_2c

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parsePayloadLengthInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parsePayloadMux(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v0, :cond_2b

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_2b
    return-void

    :cond_2c
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1

    :cond_32
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1
.end method

.method private parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private parseFrameLength(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .registers 6

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    if-eqz v1, :cond_2e

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    const/4 v3, 0x6

    if-eq v1, v0, :cond_27

    const/4 v0, 0x4

    if-eq v1, v0, :cond_27

    const/4 v0, 0x5

    if-eq v1, v0, :cond_27

    if-eq v1, v3, :cond_23

    const/4 v0, 0x7

    if-ne v1, v0, :cond_1d

    goto :goto_23

    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_23
    :goto_23
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_33

    :cond_27
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_33

    :cond_2b
    const/16 v0, 0x9

    goto :goto_30

    :cond_2e
    const/16 v0, 0x8

    :goto_30
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :goto_33
    return-void
.end method

.method private parsePayloadLengthInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 5

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_5

    return v0

    :cond_11
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    goto :goto_18

    :goto_17
    throw p1

    :goto_18
    goto :goto_17
.end method

.method private parsePayloadMux(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V
    .registers 11

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_10

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1f

    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    mul-int/lit8 v1, p2, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BII)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_1f
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method

.method private parseStreamMuxConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_11

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    goto :goto_12

    :cond_11
    const/4 v5, 0x0

    :goto_12
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v5, :cond_d1

    if-ne v3, v2, :cond_1d

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_cb

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    if-nez v5, :cond_c5

    if-nez v6, :cond_c5

    const/16 v5, 0x8

    if-nez v3, :cond_83

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v6

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v7

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    add-int/lit8 v6, v7, 0x7

    div-int/2addr v6, v5

    new-array v6, v6, [B

    invoke-virtual {v1, v6, v4, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BII)V

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    const-string v9, "audio/mp4a-latm"

    move-object/from16 v18, v4

    invoke-static/range {v8 .. v18}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_90

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    const-wide/32 v6, 0x3d090000

    iget v8, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v6, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_90

    :cond_83
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v6

    long-to-int v4, v6

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_90
    :goto_90
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseFrameLength(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v4, :cond_bb

    if-ne v3, v2, :cond_aa

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    goto :goto_bb

    :cond_aa
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    shl-long/2addr v3, v5

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    if-nez v2, :cond_aa

    :cond_bb
    :goto_bb
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_c4
    return-void

    :cond_c5
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1

    :cond_cb
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1

    :cond_d1
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    goto :goto_d8

    :goto_d7
    throw v1

    :goto_d8
    goto :goto_d7
.end method

.method private resetBufferForSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([B)V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 8

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_84

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_7a

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_68

    const/4 v1, 0x3

    if-eq v0, v3, :cond_4a

    if-ne v0, v1, :cond_44

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioMuxElement(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    :goto_41
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_4a
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, v2

    if-le v0, v2, :cond_63

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->resetBufferForSize(I)V

    :cond_63
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    :cond_68
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_77

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto :goto_0

    :cond_77
    if-eq v0, v1, :cond_0

    goto :goto_41

    :cond_7a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    :cond_84
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    return-void
.end method

.method public packetFinished()V
    .registers 1

    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method

.method public seek()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    return-void
.end method
