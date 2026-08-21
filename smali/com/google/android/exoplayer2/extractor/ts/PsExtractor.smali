###### Class com.google.android.exoplayer2.extractor.ts.PsExtractor (com.google.android.exoplayer2.extractor.ts.PsExtractor)
.class public final Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final AUDIO_STREAM:I = 0xc0

.field public static final AUDIO_STREAM_MASK:I = 0xe0

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_SEARCH_LENGTH:J = 0x100000L

.field private static final MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND:J = 0x2000L

.field private static final MAX_STREAM_ID_PLUS_ONE:I = 0x100

.field static final MPEG_PROGRAM_END_CODE:I = 0x1b9

.field static final PACKET_START_CODE_PREFIX:I = 0x1

.field static final PACK_START_CODE:I = 0x1ba

.field public static final PRIVATE_STREAM_1:I = 0xbd

.field static final SYSTEM_HEADER_START_CODE:I = 0x1bb

.field public static final VIDEO_STREAM:I = 0xe0

.field public static final VIDEO_STREAM_MASK:I = 0xf0


# instance fields
.field private final durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private hasOutputSeekMap:Z

.field private lastTrackPosition:J

.field private output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

.field private final psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/ts/c;->a:Lcom/google/android/exoplayer2/extractor/ts/c;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    return-void
.end method

.method static synthetic a()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .registers 14

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_44

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_34

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->getScrTimestampAdjuster()Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v7

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;JJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object p2

    goto :goto_41

    :cond_34
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_41
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :cond_44
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 13

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_f

    :cond_e
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->isDurationReadFinished()Z

    move-result v6

    if-nez v6, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    :cond_20
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->maybeOutputSeekMap(J)V

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    const/4 v7, 0x0

    if-eqz v6, :cond_35

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v0, p1, p2, v7}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$OutputFrameHolder;)I

    move-result p1

    return p1

    :cond_35
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    cmp-long p2, v0, v2

    if-eqz p2, :cond_42

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v8

    sub-long/2addr v0, v8

    goto :goto_43

    :cond_42
    move-wide v0, v2

    :goto_43
    const/4 p2, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4f

    const-wide/16 v2, 0x4

    cmp-long v6, v0, v2

    if-gez v6, :cond_4f

    return p2

    :cond_4f
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v5, v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5b

    return p2

    :cond_5b
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_6b

    return p2

    :cond_6b
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_8d

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v0, 0xa

    invoke-interface {p1, p2, v5, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    :goto_89
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_8d
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne v0, p2, :cond_a7

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, p2, v5, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v2

    goto :goto_89

    :cond_a7
    and-int/lit16 p2, v0, -0x100

    shr-int/lit8 p2, p2, 0x8

    if-eq p2, v4, :cond_b1

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_b1
    and-int/lit16 p2, v0, 0xff

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v3, :cond_127

    if-nez v0, :cond_107

    const/16 v3, 0xbd

    if-ne p2, v3, :cond_d3

    new-instance v7, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>()V

    :goto_ca
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    :goto_cc
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_ed

    :cond_d3
    and-int/lit16 v3, p2, 0xe0

    const/16 v6, 0xc0

    if-ne v3, v6, :cond_df

    new-instance v7, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>()V

    goto :goto_ca

    :cond_df
    and-int/lit16 v3, p2, 0xf0

    const/16 v6, 0xe0

    if-ne v3, v6, :cond_ed

    new-instance v7, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>()V

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundVideoTrack:Z

    goto :goto_cc

    :cond_ed
    :goto_ed
    if-eqz v7, :cond_107

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v3, 0x100

    invoke-direct {v0, p2, v3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v7, v3, v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-direct {v0, v7, v3}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_107
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz p2, :cond_115

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz p2, :cond_115

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_118

    :cond_115
    const-wide/32 v6, 0x100000

    :goto_118
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_127

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAllTracks:Z

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    :cond_127
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, p2, v5, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v2

    if-nez v0, :cond_140

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_15f

    :cond_140
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    :goto_15f
    return v5
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 9

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide p1

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_35

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide p1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_35

    :cond_2b
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->reset()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    :cond_35
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_3c

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_52

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seek()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_52
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 11

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_2a

    return v2

    :cond_2a
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_34

    return v2

    :cond_34
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3b

    return v2

    :cond_3b
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_41

    return v2

    :cond_41
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_49

    return v2

    :cond_49
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_51

    return v2

    :cond_51
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    invoke-interface {p1, v1, v2, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_71

    const/4 v2, 0x1

    :cond_71
    return v2
.end method

###### Class com.google.android.exoplayer2.extractor.ts.PsExtractor.PesReader (com.google.android.exoplayer2.extractor.ts.PsExtractor$PesReader)
.class final Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# static fields
.field private static final PES_SCRATCH_SIZE:I = 0x40


# instance fields
.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private final pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private final pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private ptsFlag:Z

.field private seenFirstDts:Z

.field private timeUs:J

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    return-void
.end method

.method private parseHeader()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    return-void
.end method

.method private parseHeaderExtension()V
    .registers 11

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v5, :cond_79

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v5, :cond_79

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    :cond_79
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    :cond_81
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->parseHeader()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->parseHeaderExtension()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    return-void
.end method

.method public seek()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.ts.c (com.google.android.exoplayer2.extractor.ts.c)
.class public final synthetic Lcom/google/android/exoplayer2/extractor/ts/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/extractor/ts/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/c;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/c;->a:Lcom/google/android/exoplayer2/extractor/ts/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 2

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->a()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
