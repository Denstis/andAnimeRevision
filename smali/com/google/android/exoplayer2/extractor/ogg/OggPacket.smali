###### Class com.google.android.exoplayer2.extractor.ogg.OggPacket (com.google.android.exoplayer2.extractor.ogg.OggPacket)
.class final Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private currentSegmentIndex:I

.field private final packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

.field private populated:Z

.field private segmentCount:I


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    return-void
.end method

.method private calculatePacketSize(I)I
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int v2, p1, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v4, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v2, v4, :cond_1b

    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    :cond_1b
    return v0
.end method


# virtual methods
.method public getPageHeader()Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    return-object v0
.end method

.method public getPayload()Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-object v0
.end method

.method public populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-eqz v2, :cond_15

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    :cond_15
    :goto_15
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-nez v2, :cond_a2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    if-gez v2, :cond_46

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    if-nez v2, :cond_26

    return v0

    :cond_26
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v3, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_40

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    if-nez v2, :cond_40

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v2

    add-int/2addr v3, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v2, v0

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    :cond_46
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, v4

    if-lez v2, :cond_97

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_71

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    :cond_71
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-interface {p1, v5, v4, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_94

    const/4 v2, 0x1

    goto :goto_95

    :cond_94
    const/4 v2, 0x0

    :goto_95
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    :cond_97
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ne v3, v2, :cond_9e

    const/4 v3, -0x1

    :cond_9e
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto/16 :goto_15

    :cond_a2
    return v1
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    return-void
.end method

.method public trimPayload()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, v1

    const v3, 0xfe01

    if-ne v2, v3, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    return-void
.end method
