###### Class com.google.android.exoplayer2.source.hls.DefaultHlsExtractorFactory (com.google.android.exoplayer2.source.hls.DefaultHlsExtractorFactory)
.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# static fields
.field public static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final CMF_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".cmf"

.field public static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field public static final M4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".m4"

.field public static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final MP4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".mp4"

.field public static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field public static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final payloadReaderFactoryFlags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    return-void
.end method

.method private static buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_11

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_11

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    const-string v0, ".webvtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a5

    const-string v0, ".vtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_a5

    :cond_24
    const-string v0, ".aac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    return-object p1

    :cond_32
    const-string v0, ".ac3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9f

    const-string v0, ".ec3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_9f

    :cond_43
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object p1

    :cond_54
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ".m4"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    const-string v1, ".cmf"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_85

    goto :goto_8c

    :cond_85
    iget p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    invoke-static {p1, p2, p3, p5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object p1

    return-object p1

    :cond_8c
    :goto_8c
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_93

    goto :goto_97

    :cond_93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_97
    move-object v5, p3

    move-object v0, p1

    move-object v2, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    return-object p1

    :cond_9f
    :goto_9f
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    return-object p1

    :cond_a5
    :goto_a5
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p1, p2, p5}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object p1
.end method

.method private static createTsExtractor(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    if-eqz p2, :cond_7

    or-int/lit8 p0, p0, 0x20

    goto :goto_13

    :cond_7
    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, "application/cea-608"

    invoke-static {v0, v1, p2, v0}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_13
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    or-int/lit8 p0, p0, 0x2

    :cond_29
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "video/avc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    or-int/lit8 p0, p0, 0x4

    :cond_37
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p3, v0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    return-object p1
.end method

.method private static sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_4} :catch_d
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_11

    :catchall_8
    move-exception p0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    throw p0

    :catch_d
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public createExtractor(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5d

    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez p2, :cond_58

    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p2, :cond_b

    goto :goto_58

    :cond_b
    instance-of p2, p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-eqz p2, :cond_1b

    new-instance p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p2, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p1, p2, p6}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    :goto_16
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_1b
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-eqz p2, :cond_25

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    goto :goto_16

    :cond_25
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-eqz p2, :cond_2f

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    goto :goto_16

    :cond_2f
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz p2, :cond_39

    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    goto :goto_16

    :cond_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected previousExtractor type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_58
    :goto_58
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_5d
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    invoke-interface {p8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-static {p1, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_75

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_75
    instance-of p2, p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-nez p2, :cond_8b

    new-instance p2, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p7, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p2, p7, p6}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_8b

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_8b
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez p2, :cond_9f

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_9f

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_9f
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez p2, :cond_b3

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_b3

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_b3
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-nez p2, :cond_ca

    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 p7, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p2, p7, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_ca

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_ca
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-nez p2, :cond_ec

    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p4, :cond_d6

    move-object v5, p4

    goto :goto_db

    :cond_d6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p7

    move-object v5, p7

    :goto_db
    move-object v0, p2

    move-object v2, p6

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p5

    if-eqz p5, :cond_ec

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_ec
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez p2, :cond_101

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    invoke-static {p2, p3, p4, p6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object p2

    invoke-static {p2, p8}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p3

    if-eqz p3, :cond_101

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_101
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
