###### Class com.google.android.exoplayer2.source.hls.HlsMediaChunk (com.google.android.exoplayer2.source.hls.HlsMediaChunk)
.class final Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
.source ""


# static fields
.field public static final PRIV_TIMESTAMP_FRAME_OWNER:Ljava/lang/String; = "com.apple.streaming.transportStreamTimestamp"

.field private static final uidSource:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final discontinuitySequenceNumber:I

.field private final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final hasGapTag:Z

.field public final hlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

.field private final initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private initLoadCompleted:Z

.field private initSegmentBytesLoaded:I

.field private final isEncrypted:Z

.field private final isMasterTimestampSource:Z

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private nextLoadPosition:I

.field private output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final previousExtractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private final shouldSpliceIn:Z

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;Lcom/google/android/exoplayer2/drm/DrmInitData;[B[B)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "[B[B)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    move/from16 v15, p15

    move-object/from16 v10, p19

    move-object/from16 v11, p21

    move-object/from16 v0, p22

    invoke-static {v13, v11, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->buildDataSource(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v3, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    move-object v13, v10

    move-wide/from16 v10, p13

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    iput v15, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    move-object/from16 v0, p4

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-object v14, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move/from16 v0, p17

    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    move-object/from16 v0, p18

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p21, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    iput-boolean v2, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    move/from16 v2, p16

    iput-boolean v2, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->hasGapTag:Z

    move-object/from16 v2, p1

    iput-object v2, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    move-object/from16 v2, p6

    iput-object v2, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v2, p20

    iput-object v2, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x0

    if-eqz v13, :cond_73

    iget-object v3, v13, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    iput-object v3, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    iget-object v3, v13, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput-object v3, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v13, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v3, v14, :cond_64

    iget-boolean v3, v13, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    if-nez v3, :cond_63

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    :cond_64
    :goto_64
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    iget v0, v13, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    if-ne v0, v15, :cond_85

    iget-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v0, :cond_6f

    goto :goto_85

    :cond_6f
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    move-object v2, v0

    goto :goto_85

    :cond_73
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput-boolean v1, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    :cond_85
    :goto_85
    iput-object v2, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->previousExtractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    return-void
.end method

.method private static buildDataSource(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 4

    if-eqz p1, :cond_8

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)V

    return-object v0

    :cond_8
    return-object p0
.end method

.method private loadMedia()V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    :cond_16
    const/4 v2, 0x0

    :goto_17
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->waitUntilInitialized()V

    goto :goto_37

    :cond_21
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v3, v5

    if-nez v7, :cond_37

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    :cond_37
    :goto_37
    :try_start_37
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->prepareExtraction(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    move-result-object v0

    if-eqz v2, :cond_44

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_72

    :cond_44
    :goto_44
    if-nez v1, :cond_60

    :try_start_46
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v1
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_52

    goto :goto_44

    :catchall_52
    move-exception v1

    :try_start_53
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I

    throw v1

    :cond_60
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->nextLoadPosition:I
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_72

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-void

    :catchall_72
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto :goto_7a

    :goto_79
    throw v0

    :goto_7a
    goto :goto_79
.end method

.method private maybeLoadInitData()V
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-nez v0, :cond_9

    goto :goto_4f

    :cond_9
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    :try_start_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->prepareExtraction(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_48

    const/4 v1, 0x0

    :goto_17
    if-nez v1, :cond_33

    :try_start_19
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v1
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_25

    goto :goto_17

    :catchall_25
    move-exception v1

    :try_start_26
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    throw v1

    :cond_33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_48

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    return-void

    :catchall_48
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0

    :cond_4f
    :goto_4f
    return-void
.end method

.method private peekId3PrivTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .registers 10

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_8
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V
    :try_end_12
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_12} :catch_95

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    sget v5, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-eq v2, v5, :cond_22

    return-wide v0

    :cond_22
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    add-int/lit8 v5, v2, 0xa

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v6

    if-le v5, v6, :cond_46

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v7, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v3, v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    if-nez p1, :cond_5a

    return-wide v0

    :cond_5a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_5f
    if-ge v3, v2, :cond_95

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v6, :cond_92

    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    iget-object p1, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0x8

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide v2, 0x1ffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :catch_95
    :cond_95
    return-wide v0
.end method

.method private prepareExtraction(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p2}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v6

    new-instance v15, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v2, :cond_86

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->peekId3PrivTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->resetPeekPosition()V

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->previousExtractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object v10, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    move-object v4, v15

    move-object v15, v1

    move-object/from16 v16, v4

    invoke-interface/range {v8 .. v16}, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->createExtractor(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Landroid/util/Pair;

    move-result-object v1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/extractor/Extractor;

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->previousExtractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_47

    const/4 v5, 0x1

    goto :goto_48

    :cond_47
    const/4 v5, 0x0

    :goto_48
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v9

    if-eqz v6, :cond_64

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v6, v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    goto :goto_66

    :cond_64
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    :goto_66
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setSampleOffsetUs(J)V

    :cond_69
    if-eqz v5, :cond_70

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-eqz v1, :cond_70

    goto :goto_71

    :cond_70
    const/4 v7, 0x0

    :goto_71
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->init(IZZ)V

    if-nez v5, :cond_87

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    goto :goto_87

    :cond_86
    move-object v4, v15

    :cond_87
    :goto_87
    return-object v4
.end method


# virtual methods
.method public cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    return-void
.end method

.method public isLoadCompleted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->maybeLoadInitData()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->hasGapTag:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadMedia()V

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    :cond_11
    return-void
.end method
