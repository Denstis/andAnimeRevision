###### Class com.google.android.exoplayer2.extractor.mp4.Sniffer (com.google.android.exoplayer2.extractor.mp4.Sniffer)
.class final Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x18

    new-array v0, v0, [I

    const-string v1, "isom"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "iso2"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "iso3"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "iso4"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string v1, "iso5"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const-string v1, "iso6"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const-string v1, "avc1"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const-string v1, "hvc1"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-string v1, "hev1"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const-string v1, "mp41"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const-string v1, "mp42"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    const-string v1, "3g2a"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    const-string v1, "3g2b"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    const-string v1, "3gr6"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    const-string v1, "3gs6"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    const-string v1, "3ge6"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    aput v1, v0, v2

    const-string v1, "3gg6"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x10

    aput v1, v0, v2

    const-string v1, "M4V "

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    aput v1, v0, v2

    const-string v1, "M4A "

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x12

    aput v1, v0, v2

    const-string v1, "f4v "

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x13

    aput v1, v0, v2

    const-string v1, "kddi"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    aput v1, v0, v2

    const-string v1, "M4VP"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    aput v1, v0, v2

    const-string v1, "qt  "

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x16

    aput v1, v0, v2

    const-string v1, "MSNV"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x17

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .registers 7

    ushr-int/lit8 v0, p0, 0x8

    const-string v1, "3gp"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    return v2

    :cond_c
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v1, :cond_1b

    aget v5, v0, v4

    if-ne v5, p0, :cond_18

    return v2

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1b
    return v3
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .registers 23

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_14

    cmp-long v7, v1, v3

    if-lez v7, :cond_13

    goto :goto_14

    :cond_13
    move-wide v3, v1

    :cond_14
    :goto_14
    long-to-int v4, v3

    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x40

    invoke-direct {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const/4 v7, 0x0

    move v8, v4

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_20
    if-ge v4, v8, :cond_eb

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v12, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v12, v7, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    const-wide/16 v15, 0x1

    const/16 v10, 0x10

    cmp-long v17, v12, v15

    if-nez v17, :cond_49

    iget-object v12, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v12, v11, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v12

    goto :goto_60

    :cond_49
    const-wide/16 v15, 0x0

    cmp-long v10, v12, v15

    if-nez v10, :cond_5e

    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v15

    cmp-long v10, v15, v5

    if-eqz v10, :cond_5e

    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v12

    sub-long/2addr v15, v12

    int-to-long v12, v11

    add-long/2addr v12, v15

    :cond_5e
    const/16 v10, 0x8

    :goto_60
    cmp-long v15, v1, v5

    if-eqz v15, :cond_6b

    int-to-long v5, v4

    add-long/2addr v5, v12

    cmp-long v17, v5, v1

    if-lez v17, :cond_6b

    return v7

    :cond_6b
    int-to-long v5, v10

    cmp-long v17, v12, v5

    if-gez v17, :cond_71

    return v7

    :cond_71
    add-int/2addr v4, v10

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v14, v10, :cond_86

    long-to-int v5, v12

    add-int/2addr v8, v5

    const-wide/16 v15, -0x1

    cmp-long v5, v1, v15

    if-eqz v5, :cond_84

    int-to-long v5, v8

    cmp-long v10, v5, v1

    if-lez v10, :cond_84

    long-to-int v8, v1

    :cond_84
    move-wide v5, v15

    goto :goto_20

    :cond_86
    const-wide/16 v15, -0x1

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-eq v14, v10, :cond_e6

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    if-ne v14, v10, :cond_91

    goto :goto_e6

    :cond_91
    move/from16 v17, v8

    int-to-long v7, v4

    add-long/2addr v7, v12

    sub-long/2addr v7, v5

    move-wide/from16 v19, v12

    move/from16 v10, v17

    int-to-long v11, v10

    cmp-long v13, v7, v11

    if-ltz v13, :cond_a0

    goto :goto_eb

    :cond_a0
    sub-long v12, v19, v5

    long-to-int v5, v12

    add-int/2addr v4, v5

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v14, v6, :cond_da

    const/16 v6, 0x8

    if-ge v5, v6, :cond_ae

    const/4 v6, 0x0

    return v6

    :cond_ae
    const/4 v6, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v7, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v7, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    div-int/lit8 v5, v5, 0x4

    const/4 v7, 0x0

    :goto_ba
    if-ge v7, v5, :cond_d2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c4

    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_cf

    :cond_c4
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v11

    if-eqz v11, :cond_cf

    goto :goto_d3

    :cond_cf
    :goto_cf
    add-int/lit8 v7, v7, 0x1

    goto :goto_ba

    :cond_d2
    move v8, v9

    :goto_d3
    const/16 v18, 0x0

    if-nez v8, :cond_d8

    return v18

    :cond_d8
    move v9, v8

    goto :goto_e1

    :cond_da
    const/16 v18, 0x0

    if-eqz v5, :cond_e1

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    :cond_e1
    :goto_e1
    move v8, v10

    move-wide v5, v15

    const/4 v7, 0x0

    goto/16 :goto_20

    :cond_e6
    :goto_e6
    const/4 v8, 0x1

    const/16 v18, 0x0

    const/4 v0, 0x1

    goto :goto_ef

    :cond_eb
    :goto_eb
    const/4 v8, 0x1

    const/16 v18, 0x0

    const/4 v0, 0x0

    :goto_ef
    if-eqz v9, :cond_f7

    move/from16 v1, p1

    if-ne v1, v0, :cond_f7

    const/16 v18, 0x1

    :cond_f7
    return v18
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method
