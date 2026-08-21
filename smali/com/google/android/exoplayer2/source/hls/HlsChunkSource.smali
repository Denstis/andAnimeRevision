###### Class com.google.android.exoplayer2.source.hls.HlsChunkSource (com.google.android.exoplayer2.source.hls.HlsChunkSource)
.class Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# instance fields
.field private final encryptionDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private fatalError:Ljava/io/IOException;

.field private independentSegments:Z

.field private isTimestampMaster:Z

.field private liveEdgeInPeriodTimeUs:J

.field private final mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private scratchSpace:[B

.field private seenExpectedPlaylistError:Z

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

.field private final variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            "Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    array-length p1, p3

    new-array p1, p1, [Lcom/google/android/exoplayer2/Format;

    array-length p2, p3

    new-array p2, p2, [I

    const/4 p6, 0x0

    :goto_1b
    array-length p7, p3

    if-ge p6, p7, :cond_29

    aget-object p7, p3, p6

    iget-object p7, p7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    aput-object p7, p1, p6

    aput p6, p2, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_1b

    :cond_29
    const/4 p3, 0x1

    invoke-interface {p4, p3}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz p5, :cond_37

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {p3, p5}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_37
    const/4 p3, 0x3

    invoke-interface {p4, p3}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    new-instance p3, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p1, p3, p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-void
.end method

.method private clearEncryptionData()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    return-void
.end method

.method private getChunkMediaSequence(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)J
    .registers 10

    if-eqz p1, :cond_a

    if-eqz p2, :cond_5

    goto :goto_a

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide p1

    return-wide p1

    :cond_a
    :goto_a
    iget-wide v0, p3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, p4

    if-eqz p1, :cond_16

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->independentSegments:Z

    if-eqz p2, :cond_14

    goto :goto_16

    :cond_14
    iget-wide p6, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    :cond_16
    :goto_16
    iget-boolean p2, p3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez p2, :cond_29

    cmp-long p2, p6, v0

    if-ltz p2, :cond_29

    iget-wide p1, p3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object p3, p3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    :goto_27
    add-long/2addr p1, p3

    return-wide p1

    :cond_29
    sub-long/2addr p6, p4

    iget-object p2, p3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result p5

    const/4 p6, 0x1

    if-eqz p5, :cond_3e

    if-nez p1, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p1, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p1, 0x1

    :goto_3f
    invoke-static {p2, p4, p6, p1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    int-to-long p1, p1

    iget-wide p3, p3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    goto :goto_27
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    .registers 15

    new-instance v8, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object p3, v0, p3

    iget-object v3, p3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v0, p1

    move-object v2, v8

    move v4, p4

    move-object v5, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object p1
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .registers 8

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    sub-long v2, v0, p1

    :cond_14
    return-wide v2
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 9

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, p2

    :goto_13
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    new-array v1, v2, [B

    array-length v3, v0

    if-le v3, v2, :cond_26

    array-length v3, v0

    sub-int/2addr v3, v2

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    array-length v2, v1

    array-length v4, v0

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    return-void
.end method

.method private updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .registers 6

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_a

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_15

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    return-void
.end method


# virtual methods
.method public createMediaChunkIterators(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;J)[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .registers 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_9

    const/4 v0, -0x1

    const/4 v10, -0x1

    goto :goto_12

    :cond_9
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, v9, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    move v10, v0

    :goto_12
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    new-array v11, v0, [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1c
    array-length v0, v11

    if-ge v13, v0, :cond_71

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, v13}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v0

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v1, v1, v0

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z

    move-result v2

    if-nez v2, :cond_36

    sget-object v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    aput-object v0, v11, v13

    goto :goto_6e

    :cond_36
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2, v1, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v14

    iget-wide v1, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v3

    sub-long v6, v1, v3

    if-eq v0, v10, :cond_4b

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v14

    move-wide v4, v6

    move-wide v15, v6

    move-wide/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkMediaSequence(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)J

    move-result-wide v0

    iget-wide v2, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_64

    sget-object v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    aput-object v0, v11, v13

    goto :goto_6e

    :cond_64
    sub-long/2addr v0, v2

    long-to-int v1, v0

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;

    move-wide v2, v15

    invoke-direct {v0, v14, v2, v3, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JI)V

    aput-object v0, v11, v13

    :goto_6e
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    :cond_71
    return-object v11
.end method

.method public getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;",
            "Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v6, p3

    move-object/from16 v9, p6

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_11

    move-object/from16 v1, p5

    const/4 v4, 0x0

    goto :goto_1f

    :cond_11
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-object v4, v0

    :goto_1f
    if-nez v4, :cond_24

    const/4 v0, -0x1

    const/4 v5, -0x1

    goto :goto_2d

    :cond_24
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    move v5, v0

    :goto_2d
    sub-long v2, v6, p1

    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v12

    if-eqz v4, :cond_56

    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->independentSegments:Z

    if-nez v0, :cond_56

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getDurationUs()J

    move-result-wide v14

    sub-long/2addr v2, v14

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v12, v16

    if-eqz v0, :cond_56

    sub-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v15, v2

    move-wide/from16 v17, v10

    goto :goto_59

    :cond_56
    move-wide v15, v2

    move-wide/from16 v17, v12

    :goto_59
    invoke-virtual {v8, v4, v6, v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->createMediaChunkIterators(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;J)[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    move-result-object v20

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v13, p1

    move-object/from16 v19, p5

    invoke-interface/range {v12 .. v20}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v10

    const/4 v11, 0x0

    if-eq v5, v10, :cond_71

    const/4 v12, 0x1

    goto :goto_72

    :cond_71
    const/4 v12, 0x0

    :goto_72
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v13, v0, v10

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v13}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z

    move-result v0

    if-nez v0, :cond_8d

    iput-object v13, v9, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v1, v13, :cond_87

    const/4 v11, 0x1

    :cond_87
    and-int/2addr v0, v11

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iput-object v13, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-void

    :cond_8d
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    const/4 v1, 0x1

    invoke-interface {v0, v13, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v14

    iget-boolean v0, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->independentSegments:Z

    invoke-direct {v8, v14}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    iget-wide v0, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long v15, v0, v2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v12

    move-object v3, v14

    move-object/from16 v31, v4

    move/from16 v17, v5

    move-wide v4, v15

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkMediaSequence(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;ZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJ)J

    move-result-wide v0

    iget-wide v2, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_e5

    if-eqz v31, :cond_dd

    if-eqz v12, :cond_dd

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v0, v0, v17

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Z)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v14

    iget-wide v1, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v3

    sub-long v15, v1, v3

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide v1

    move-wide/from16 v25, v1

    move/from16 v3, v17

    goto :goto_e9

    :cond_dd
    new-instance v0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void

    :cond_e5
    move-wide/from16 v25, v0

    move v3, v10

    move-object v0, v13

    :goto_e9
    iget-wide v1, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v1, v25, v1

    long-to-int v2, v1

    iget-object v1, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_10f

    iget-boolean v1, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v1, :cond_fe

    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto :goto_10e

    :cond_fe
    const/4 v1, 0x1

    iput-object v0, v9, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-boolean v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v3, v0, :cond_108

    const/4 v11, 0x1

    :cond_108
    and-int v1, v2, v11

    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    :goto_10e
    return-void

    :cond_10f
    iput-boolean v11, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v4, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-eqz v4, :cond_15a

    iget-object v5, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_148

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v5

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v4

    move v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void

    :cond_148
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15d

    iget-object v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    invoke-direct {v8, v4, v3, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_15d

    :cond_15a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->clearEncryptionData()V

    :cond_15d
    :goto_15d
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v3, :cond_17a

    iget-object v1, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/16 v23, 0x0

    move-object/from16 v17, v1

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    invoke-direct/range {v17 .. v23}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :cond_17a
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long/2addr v3, v15

    move-wide/from16 v21, v3

    iget v5, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v6, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int/2addr v5, v6

    move/from16 v27, v5

    iget-object v6, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(I)Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    move-result-object v30

    iget-object v5, v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    new-instance v32, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v15, v32

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v10, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/16 v38, 0x0

    move-wide/from16 v34, v5

    move-wide/from16 v36, v10

    invoke-direct/range {v32 .. v38}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    new-instance v5, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-object v12, v5

    iget-object v13, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v14, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->mediaDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v6, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v18, v6

    iget-object v6, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v19

    iget-object v6, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v20

    iget-wide v6, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long v23, v3, v6

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->hasGapTag:Z

    move/from16 v28, v3

    iget-boolean v3, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    move/from16 v29, v3

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v32, v2

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v33, v2

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v34, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v34}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;Lcom/google/android/exoplayer2/drm/DrmInitData;[B[B)V

    iput-object v5, v9, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public getTrackSelection()Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-object v0
.end method

.method public maybeBlacklistTrack(Lcom/google/android/exoplayer2/source/chunk/Chunk;J)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result p1

    return p1
.end method

.method public maybeThrowError()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    :cond_11
    return-void

    :cond_12
    throw v0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .registers 4

    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    :cond_19
    return-void
.end method

.method public onPlaylistError(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)Z
    .registers 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->expectedPlaylistUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v4, 0x0

    if-ne v3, p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v5

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :cond_36
    :goto_36
    return v2
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public selectTracks(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->isTimestampMaster:Z

    return-void
.end method

###### Class com.google.android.exoplayer2.source.hls.HlsChunkSource.EncryptionKeyChunk (com.google.android.exoplayer2.source.hls.HlsChunkSource$EncryptionKeyChunk)
.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
.super Lcom/google/android/exoplayer2/source/chunk/DataChunk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptionKeyChunk"
.end annotation


# instance fields
.field public final iv:Ljava/lang/String;

.field private result:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V
    .registers 16

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/chunk/DataChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;[B)V

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected consume([BI)V
    .registers 3

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-void
.end method

.method public getResult()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-object v0
.end method

###### Class com.google.android.exoplayer2.source.hls.HlsChunkSource.HlsChunkHolder (com.google.android.exoplayer2.source.hls.HlsChunkSource$HlsChunkHolder)
.class public final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HlsChunkHolder"
.end annotation


# instance fields
.field public chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

.field public endOfStream:Z

.field public playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-void
.end method

###### Class com.google.android.exoplayer2.source.hls.HlsChunkSource.HlsMediaPlaylistSegmentIterator (com.google.android.exoplayer2.source.hls.HlsChunkSource$HlsMediaPlaylistSegmentIterator)
.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HlsMediaPlaylistSegmentIterator"
.end annotation


# instance fields
.field private final playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field private final startOfPlaylistInPeriodUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JI)V
    .registers 9

    int-to-long v0, p4

    iget-object p4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    int-to-long v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    return-void
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->checkInBounds()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->getCurrentIndex()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getChunkStartTimeUs()J
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->checkInBounds()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->getCurrentIndex()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getDataSpec()Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 11

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->checkInBounds()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;->getCurrentIndex()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    return-object v1
.end method

###### Class com.google.android.exoplayer2.source.hls.HlsChunkSource.InitializationTrackSelection (com.google.android.exoplayer2.source.hls.HlsChunkSource$InitializationTrackSelection)
.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result p3

    if-nez p3, :cond_d

    return-void

    :cond_d
    iget p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    add-int/lit8 p3, p3, -0x1

    :goto_11
    if-ltz p3, :cond_1f

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result p4

    if-nez p4, :cond_1c

    iput p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void

    :cond_1c
    add-int/lit8 p3, p3, -0x1

    goto :goto_11

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_26

    :goto_25
    throw p1

    :goto_26
    goto :goto_25
.end method
