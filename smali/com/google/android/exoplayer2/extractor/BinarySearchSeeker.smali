###### Class com.google.android.exoplayer2.extractor.BinarySearchSeeker (com.google.android.exoplayer2.extractor.BinarySearchSeeker)
.class public abstract Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;,
        Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;
    }
.end annotation


# static fields
.field private static final MAX_SKIP_BYTES:J = 0x40000L


# instance fields
.field private final minimumSearchRange:I

.field protected final seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field protected seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

.field protected final timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V
    .registers 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->minimumSearchRange:I

    new-instance v15, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V

    iput-object v15, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-void
.end method


# virtual methods
.method protected createSeekParamsForTargetTimeUs(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
    .registers 20

    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->timeUsToTargetTime(J)J

    move-result-wide v4

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1000(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1100(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1200(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v10

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1300(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1400(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v14

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJJ)V

    return-object v16
.end method

.method public final getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-object v0
.end method

.method public handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;)I
    .registers 16

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    :goto_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$100(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$200(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$300(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v6

    sub-long/2addr v4, v2

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->minimumSearchRange:I

    int-to-long v8, v8

    const/4 v10, 0x0

    cmp-long v11, v4, v8

    if-gtz v11, :cond_2d

    invoke-virtual {p0, v10, v2, v3}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    :cond_2d
    invoke-virtual {p0, p1, v6, v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {p0, p1, v6, v7, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    :cond_38
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$400(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3, p3}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;->searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$500(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_8b

    const/4 v4, -0x2

    if-eq v3, v4, :cond_7e

    const/4 v4, -0x1

    if-eq v3, v4, :cond_72

    if-nez v3, :cond_6a

    const/4 p3, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v0

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    :cond_6a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v5

    invoke-static {v1, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$800(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    goto :goto_8

    :cond_7e
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v5

    invoke-static {v1, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$900(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    goto/16 :goto_8

    :cond_8b
    invoke-virtual {p0, v10, v6, v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    invoke-virtual {p0, p1, v6, v7, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public final isSeeking()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected final markSeekOperationFinished(ZJ)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->timestampSeeker:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->onSeekOperationFinished(ZJ)V

    return-void
.end method

.method protected onSeekOperationFinished(ZJ)V
    .registers 4

    return-void
.end method

.method protected final seekToPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 7

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iput-wide p2, p4, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 p1, 0x1

    return p1
.end method

.method public final setSeekTargetUs(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->access$000(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->createSeekParamsForTargetTimeUs(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekOperationParams:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;

    return-void
.end method

.method protected final skipInputUntilPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .registers 7

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_18

    const-wide/32 v0, 0x40000

    cmp-long v2, p2, v0

    if-gtz v2, :cond_18

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

###### Class com.google.android.exoplayer2.extractor.BinarySearchSeeker.BinarySearchSeekMap (com.google.android.exoplayer2.extractor.BinarySearchSeeker$BinarySearchSeekMap)
.class public Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySearchSeekMap"
.end annotation


# instance fields
.field private final approxBytesPerFrame:J

.field private final ceilingBytePosition:J

.field private final ceilingTimePosition:J

.field private final durationUs:J

.field private final floorBytePosition:J

.field private final floorTimePosition:J

.field private final seekTimestampConverter:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->durationUs:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    iput-wide p10, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    iput-wide p12, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 16

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    iget-wide v11, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    invoke-static/range {v1 .. v12}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v2
.end method

.method public isSeekable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public timeUsToTargetTime(J)J
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide p1

    return-wide p1
.end method

###### Class com.google.android.exoplayer2.extractor.BinarySearchSeeker.DefaultSeekTimestampConverter (com.google.android.exoplayer2.extractor.BinarySearchSeeker$DefaultSeekTimestampConverter)
.class public final Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSeekTimestampConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeUsToTargetTime(J)J
    .registers 3

    return-wide p1
.end method

###### Class com.google.android.exoplayer2.extractor.BinarySearchSeeker.OutputFrameHolder (com.google.android.exoplayer2.extractor.BinarySearchSeeker$OutputFrameHolder)
.class public final Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFrameHolder"
.end annotation


# instance fields
.field public byteBuffer:Ljava/nio/ByteBuffer;

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;->timeUs:J

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekOperationParams (com.google.android.exoplayer2.extractor.BinarySearchSeeker$SeekOperationParams)
.class public Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SeekOperationParams"
.end annotation


# instance fields
.field private final approxBytesPerFrame:J

.field private ceilingBytePosition:J

.field private ceilingTimePosition:J

.field private floorBytePosition:J

.field private floorTimePosition:J

.field private nextSearchBytePosition:J

.field private final seekTimeUs:J

.field private final targetTimePosition:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iput-wide p9, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iput-wide p11, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iput-wide p13, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    invoke-static/range {p3 .. p14}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getSeekTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getFloorBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getCeilingBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getNextSearchBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getTargetTimePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekCeiling(JJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekFloor(JJ)V

    return-void
.end method

.method protected static calculateNextSearchBytePosition(JJJJJJ)J
    .registers 19

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v4, v2, p8

    if-gez v4, :cond_2e

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-ltz v4, :cond_f

    goto :goto_2e

    :cond_f
    sub-long v2, p0, p2

    sub-long v4, p8, p6

    long-to-float v4, v4

    sub-long v5, p4, p2

    long-to-float v5, v5

    div-float/2addr v4, v5

    long-to-float v2, v2

    mul-float v2, v2, v4

    float-to-long v2, v2

    const-wide/16 v4, 0x14

    div-long v4, v2, v4

    add-long/2addr v2, p6

    sub-long v2, v2, p10

    sub-long/2addr v2, v4

    sub-long v0, p8, v0

    move-wide p0, v2

    move-wide p2, p6

    move-wide p4, v0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2e
    :goto_2e
    return-wide p6
.end method

.method private getCeilingBytePosition()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    return-wide v0
.end method

.method private getFloorBytePosition()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    return-wide v0
.end method

.method private getNextSearchBytePosition()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-wide v0
.end method

.method private getSeekTimeUs()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    return-wide v0
.end method

.method private getTargetTimePosition()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    return-wide v0
.end method

.method private updateNextSearchBytePosition()V
    .registers 13

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method private updateSeekCeiling(JJ)V
    .registers 5

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method

.method private updateSeekFloor(JJ)V
    .registers 5

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter (com.google.android.exoplayer2.extractor.BinarySearchSeeker$SeekTimestampConverter)
.class public interface abstract Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "SeekTimestampConverter"
.end annotation


# virtual methods
.method public abstract timeUsToTargetTime(J)J
.end method

###### Class com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult (com.google.android.exoplayer2.extractor.BinarySearchSeeker$TimestampSearchResult)
.class public final Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampSearchResult"
.end annotation


# static fields
.field public static final NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

.field public static final TYPE_NO_TIMESTAMP:I = -0x3

.field public static final TYPE_POSITION_OVERESTIMATED:I = -0x1

.field public static final TYPE_POSITION_UNDERESTIMATED:I = -0x2

.field public static final TYPE_TARGET_TIMESTAMP_FOUND:I


# instance fields
.field private final bytePositionToUpdate:J

.field private final timestampToUpdate:J

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    sput-object v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-wide v0
.end method

.method public static overestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 11

    new-instance v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6
.end method

.method public static targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 9

    new-instance v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6
.end method

.method public static underestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 11

    new-instance v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6
.end method

###### Class com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker (com.google.android.exoplayer2.extractor.BinarySearchSeeker$TimestampSeeker)
.class public interface abstract Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TimestampSeeker"
.end annotation


# virtual methods
.method public abstract onSeekFinished()V
.end method

.method public abstract searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JLcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
.end method
