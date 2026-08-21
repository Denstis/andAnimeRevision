###### Class com.google.android.exoplayer2.extractor.mp4.AtomParsers (com.google.android.exoplayer2.extractor.mp4.AtomParsers)
.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I

.field private static final TYPE_mdta:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    const-string v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    const-string v0, "subt"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    const-string v0, "clcp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    const-string v0, "meta"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    const-string v0, "mdta"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_mdta:I

    const-string v0, "OpusHead"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .registers 14

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    array-length v5, p0

    sub-int/2addr v5, v2

    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_26

    aget-wide v4, p0, v4

    cmp-long v2, p3, v4

    if-gez v2, :cond_26

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_26

    cmp-long p0, p5, p1

    if-gtz p0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_24

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_22

    return v0

    :cond_22
    add-int/2addr v0, v1

    goto :goto_4

    :cond_24
    const/4 p0, -0x1

    return p0
.end method

.method private static getTrackTypeForHdlr(I)I
    .registers 2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    if-ne p0, v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    if-eq p0, v0, :cond_25

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    if-eq p0, v0, :cond_25

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    if-eq p0, v0, :cond_25

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    if-ne p0, v0, :cond_1d

    goto :goto_25

    :cond_1d
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    if-ne p0, v0, :cond_23

    const/4 p0, 0x4

    return p0

    :cond_23
    const/4 p0, -0x1

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x3

    return p0
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 38

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v3, p7

    move-object/from16 v15, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v4, 0x6

    const/4 v13, 0x0

    if-eqz p6, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_24

    :cond_20
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v5, 0x0

    :goto_24
    const/4 v12, 0x2

    const/16 v6, 0x10

    const/4 v11, 0x1

    if-eqz v5, :cond_48

    if-ne v5, v11, :cond_2d

    goto :goto_48

    :cond_2d
    if-ne v5, v12, :cond_47

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v7, v4

    move v4, v5

    goto :goto_58

    :cond_47
    return-void

    :cond_48
    :goto_48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v4

    if-ne v5, v11, :cond_58

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_58
    :goto_58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v6, :cond_8c

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_89

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_77

    move-object/from16 v3, v16

    goto :goto_81

    :cond_77
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    :goto_81
    iget-object v9, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v6, v9, p9

    :cond_89
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_8c
    move-object v10, v3

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    const-string v9, "audio/raw"

    if-ne v8, v3, :cond_97

    const-string v3, "audio/ac3"

    goto/16 :goto_ff

    :cond_97
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-ne v8, v3, :cond_9f

    const-string v3, "audio/eac3"

    goto/16 :goto_ff

    :cond_9f
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-ne v8, v3, :cond_a7

    const-string v3, "audio/vnd.dts"

    goto/16 :goto_ff

    :cond_a7
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v8, v3, :cond_fd

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-ne v8, v3, :cond_b0

    goto :goto_fd

    :cond_b0
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-ne v8, v3, :cond_b7

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_ff

    :cond_b7
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-ne v8, v3, :cond_be

    const-string v3, "audio/3gpp"

    goto :goto_ff

    :cond_be
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-ne v8, v3, :cond_c5

    const-string v3, "audio/amr-wb"

    goto :goto_ff

    :cond_c5
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v8, v3, :cond_fb

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v8, v3, :cond_ce

    goto :goto_fb

    :cond_ce
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-ne v8, v3, :cond_d5

    const-string v3, "audio/mpeg"

    goto :goto_ff

    :cond_d5
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v8, v3, :cond_dc

    const-string v3, "audio/alac"

    goto :goto_ff

    :cond_dc
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alaw:I

    if-ne v8, v3, :cond_e3

    const-string v3, "audio/g711-alaw"

    goto :goto_ff

    :cond_e3
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ulaw:I

    if-ne v8, v3, :cond_ea

    const-string v3, "audio/g711-mlaw"

    goto :goto_ff

    :cond_ea
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_Opus:I

    if-ne v8, v3, :cond_f1

    const-string v3, "audio/opus"

    goto :goto_ff

    :cond_f1
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_fLaC:I

    if-ne v8, v3, :cond_f8

    const-string v3, "audio/flac"

    goto :goto_ff

    :cond_f8
    move-object/from16 v3, v16

    goto :goto_ff

    :cond_fb
    :goto_fb
    move-object v3, v9

    goto :goto_ff

    :cond_fd
    :goto_fd
    const-string v3, "audio/vnd.dts.hd"

    :goto_ff
    move/from16 v18, v4

    move v8, v5

    move/from16 v17, v7

    move-object/from16 v19, v16

    move-object v7, v3

    :goto_107
    sub-int v3, v8, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_245

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lez v6, :cond_117

    const/4 v3, 0x1

    goto :goto_118

    :cond_117
    const/4 v3, 0x0

    :goto_118
    const-string v5, "childAtomSize should be positive"

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v3, v5, :cond_1f4

    if-eqz p6, :cond_12d

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    if-ne v3, v5, :cond_12d

    goto/16 :goto_1f4

    :cond_12d
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v3, v4, :cond_14f

    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    :goto_13e
    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move v5, v6

    move-object/from16 v25, v7

    move v6, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_1f1

    :cond_14f
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v3, v4, :cond_161

    add-int/lit8 v3, v8, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    goto :goto_13e

    :cond_161
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    if-ne v3, v4, :cond_19d

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v4, v7

    move/from16 v24, v6

    move/from16 v6, v20

    move-object/from16 v25, v7

    move/from16 v7, v21

    move/from16 v26, v8

    move/from16 v8, v17

    move-object/from16 v27, v9

    move/from16 v9, v18

    move-object/from16 v20, v10

    move-object/from16 v10, v22

    const/16 v21, 0x1

    move-object/from16 v11, v20

    const/16 v22, 0x2

    move/from16 v12, v23

    const/4 v1, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v5, v24

    move/from16 v6, v26

    goto :goto_1f1

    :cond_19d
    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    move/from16 v5, v24

    if-ne v3, v4, :cond_1bf

    new-array v3, v5, [B

    move/from16 v6, v26

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0, v3, v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v3

    goto :goto_1f1

    :cond_1bf
    move/from16 v6, v26

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dOps:I

    if-ne v3, v4, :cond_1df

    add-int/lit8 v3, v5, -0x8

    sget-object v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v7, v4

    add-int/2addr v7, v3

    new-array v7, v7, [B

    array-length v8, v4

    invoke-static {v4, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, 0x8

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    sget-object v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v4, v4

    invoke-virtual {v0, v7, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v7

    goto :goto_1f1

    :cond_1df
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dfLa:I

    if-ne v5, v3, :cond_1f1

    add-int/lit8 v3, v5, -0xc

    new-array v4, v3, [B

    add-int/lit8 v8, v6, 0xc

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v4

    :cond_1f1
    :goto_1f1
    move-object/from16 v7, v25

    goto :goto_238

    :cond_1f4
    :goto_1f4
    move v5, v6

    move-object/from16 v25, v7

    move v6, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v3, v7, :cond_207

    move v8, v6

    goto :goto_20b

    :cond_207
    invoke-static {v0, v6, v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I

    move-result v8

    :goto_20b
    if-eq v8, v4, :cond_1f1

    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, [B

    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_238

    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :cond_238
    :goto_238
    add-int v8, v6, v5

    move/from16 v1, p2

    move-object/from16 v10, v20

    move-object/from16 v9, v27

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_107

    :cond_245
    move-object/from16 v25, v7

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/16 v22, 0x2

    iget-object v0, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_283

    move-object/from16 v7, v25

    if-eqz v7, :cond_283

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25e

    goto :goto_260

    :cond_25e
    const/16 v22, -0x1

    :goto_260
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-nez v19, :cond_26c

    move-object/from16 v8, v16

    goto :goto_271

    :cond_26c
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    :goto_271
    const/4 v10, 0x0

    move-object v1, v7

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v22

    move-object/from16 v9, v20

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_283
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_9
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3a

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v9, v10, :cond_25

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_38

    :cond_25
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v9, v10, :cond_32

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_38

    :cond_32
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v9, v10, :cond_38

    move v6, v0

    move v7, v8

    :cond_38
    :goto_38
    add-int/2addr v0, v8

    goto :goto_9

    :cond_3a
    const-string p1, "cenc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    const-string p1, "cens"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    return-object v2

    :cond_5c
    :goto_5c
    const/4 p1, 0x1

    if-eqz v5, :cond_61

    const/4 p2, 0x1

    goto :goto_62

    :cond_61
    const/4 p2, 0x0

    :goto_62
    const-string v0, "frma atom is mandatory"

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eq v6, v1, :cond_6b

    const/4 p2, 0x1

    goto :goto_6c

    :cond_6b
    const/4 p2, 0x0

    :goto_6c
    const-string v0, "schi atom is mandatory"

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0, v6, v7, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_78

    goto :goto_79

    :cond_78
    const/4 p1, 0x0

    :goto_79
    const-string p2, "tenc atom is mandatory"

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {v5, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5b

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_5b

    :cond_b
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v1, :cond_56

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_31
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_3f

    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_3f
    aput-wide v6, v3, v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_4e

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5b
    :goto_5b
    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1d

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1d
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_28
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2f

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "audio/vnd.dts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "audio/vnd.dts.hd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_6d

    :cond_56
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6d
    :goto_6d
    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1a

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    goto :goto_27

    :cond_22
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_27
    return-object p0
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_12

    const/16 v2, 0x8

    goto :goto_14

    :cond_12
    const/16 v2, 0x10

    :goto_14
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    if-nez v1, :cond_1e

    const/4 v0, 0x4

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 10

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_keys:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_a1

    if-eqz v1, :cond_a1

    if-eqz p0, :cond_a1

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_mdta:I

    if-eq v0, v3, :cond_25

    goto/16 :goto_a1

    :cond_25
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_33
    const/16 v5, 0x8

    if-ge v4, v1, :cond_49

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_49
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_53
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-le v1, v5, :cond_95

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_7a

    array-length v7, v3

    if-ge v6, v7, :cond_7a

    aget-object v6, v3, v6

    add-int v7, v1, v4

    invoke-static {p0, v7, v6}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    move-result-object v6

    if-eqz v6, :cond_90

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_90

    :cond_7a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped metadata with unknown key index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AtomParsers"

    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    :goto_90
    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_53

    :cond_95
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9c

    goto :goto_a1

    :cond_9c
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :cond_a1
    :goto_a1
    return-object v2
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    const/16 v0, 0x10

    :goto_12
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .registers 2

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .registers 7

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1f

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v2, v3, :cond_1d

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_1d
    add-int/2addr v0, v1

    goto :goto_2

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2a

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v2, v3, :cond_28

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_28

    return-object v2

    :cond_28
    add-int/2addr v0, v1

    goto :goto_4

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .registers 15

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_64

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v3, v4, :cond_62

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_2b

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_37

    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    array-length p1, v7

    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_59

    if-nez v6, :cond_59

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    new-array v2, p1, [B

    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    :cond_59
    move-object v10, v2

    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_62
    add-int/2addr v0, v1

    goto :goto_2

    :cond_64
    return-object v2
.end method

.method public static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .registers 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_14

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_21

    :cond_14
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_4cf

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    :goto_21
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_42

    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_42
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_53

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_54

    :cond_53
    const/4 v8, 0x0

    :goto_54
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_72

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_73

    :cond_72
    move-object v11, v12

    :goto_73
    sget v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_7f

    :cond_7e
    move-object v0, v12

    :goto_7f
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v6, 0xc

    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    if-eqz v0, :cond_a0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_a1

    :cond_a0
    const/4 v15, 0x0

    :goto_a1
    const/16 v16, -0x1

    if-eqz v11, :cond_b7

    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-lez v6, :cond_b5

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    goto :goto_b8

    :cond_b5
    move-object v11, v12

    goto :goto_b8

    :cond_b7
    const/4 v6, 0x0

    :goto_b8
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v12

    if-eqz v12, :cond_d2

    iget-object v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v12, v12, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/raw"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d2

    if-nez v8, :cond_d2

    if-nez v15, :cond_d2

    if-nez v6, :cond_d2

    const/4 v5, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v5, 0x0

    :goto_d3
    const-wide/16 v18, 0x0

    if-nez v5, :cond_244

    new-array v5, v3, [J

    new-array v12, v3, [I

    new-array v7, v3, [J

    move/from16 p1, v6

    new-array v6, v3, [I

    move/from16 v28, v8

    move-object/from16 v27, v10

    move v10, v14

    move-wide/from16 v21, v18

    move-wide/from16 v23, v21

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v14, p1

    move/from16 p1, v15

    move v15, v9

    move/from16 v9, v16

    const/16 v16, 0x0

    :goto_f9
    const-string v2, "AtomParsers"

    if-ge v8, v3, :cond_1b9

    move-wide/from16 v29, v23

    const/16 v23, 0x1

    :goto_101
    if-nez v16, :cond_11e

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v23

    if-eqz v23, :cond_11e

    move/from16 v24, v14

    move/from16 v31, v15

    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move/from16 v32, v3

    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v16, v3

    move-wide/from16 v29, v14

    move/from16 v14, v24

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_101

    :cond_11e
    move/from16 v32, v3

    move/from16 v24, v14

    move/from16 v31, v15

    if-nez v23, :cond_13f

    const-string v3, "Unexpected end of chunk data"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    invoke-static {v12, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    move/from16 v32, v8

    goto/16 :goto_1bf

    :cond_13f
    if-eqz v0, :cond_156

    move/from16 v2, p1

    :goto_143
    if-nez v25, :cond_152

    if-lez v2, :cond_152

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v25

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v26

    add-int/lit8 v2, v2, -0x1

    goto :goto_143

    :cond_152
    add-int/lit8 v25, v25, -0x1

    move v3, v2

    goto :goto_158

    :cond_156
    move/from16 v3, p1

    :goto_158
    move/from16 v2, v26

    aput-wide v29, v5, v8

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v14

    aput v14, v12, v8

    aget v14, v12, v8

    if-le v14, v1, :cond_168

    aget v1, v12, v8

    :cond_168
    int-to-long v14, v2

    add-long v14, v21, v14

    aput-wide v14, v7, v8

    if-nez v11, :cond_171

    const/4 v14, 0x1

    goto :goto_172

    :cond_171
    const/4 v14, 0x0

    :goto_172
    aput v14, v6, v8

    if-ne v8, v9, :cond_187

    const/4 v14, 0x1

    aput v14, v6, v8

    add-int/lit8 v15, v24, -0x1

    if-lez v15, :cond_182

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    sub-int/2addr v9, v14

    :cond_182
    move/from16 p1, v1

    move v14, v15

    move v15, v2

    goto :goto_18c

    :cond_187
    move/from16 p1, v1

    move v15, v2

    move/from16 v14, v24

    :goto_18c
    int-to-long v1, v10

    add-long v21, v21, v1

    add-int/lit8 v1, v31, -0x1

    if-nez v1, :cond_1a0

    if-lez v28, :cond_1a0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    add-int/lit8 v28, v28, -0x1

    move v10, v2

    :cond_1a0
    aget v2, v12, v8

    move/from16 v23, v1

    int-to-long v1, v2

    add-long v1, v29, v1

    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v26, v15

    move/from16 v15, v23

    move-wide/from16 v23, v1

    move/from16 v1, p1

    move/from16 p1, v3

    move/from16 v3, v32

    goto/16 :goto_f9

    :cond_1b9
    move/from16 v32, v3

    move/from16 v24, v14

    move/from16 v31, v15

    :goto_1bf
    move/from16 v3, v16

    move/from16 v15, v26

    int-to-long v8, v15

    add-long v21, v21, v8

    move/from16 v4, p1

    :goto_1c8
    if-lez v4, :cond_1d8

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    if-eqz v8, :cond_1d2

    const/4 v0, 0x0

    goto :goto_1d9

    :cond_1d2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v4, v4, -0x1

    goto :goto_1c8

    :cond_1d8
    const/4 v0, 0x1

    :goto_1d9
    if-nez v24, :cond_1ec

    if-nez v31, :cond_1ec

    if-nez v3, :cond_1ec

    if-nez v28, :cond_1ec

    move/from16 v4, v25

    if-nez v4, :cond_1ee

    if-nez v0, :cond_1e8

    goto :goto_1ee

    :cond_1e8
    move v9, v1

    move-object/from16 v1, p0

    goto :goto_23f

    :cond_1ec
    move/from16 v4, v25

    :cond_1ee
    :goto_1ee
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inconsistent stbl box for track "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v1

    move-object/from16 v1, p0

    iget v10, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": remainingSynchronizationSamples "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v24

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v31

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", remainingSamplesInChunk "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingTimestampDeltaChanges "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v28

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_233

    const-string v0, ", ctts invalid"

    goto :goto_235

    :cond_233
    const-string v0, ""

    :goto_235
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23f
    move-object v2, v5

    move-object v5, v7

    move v4, v9

    move-object v3, v12

    goto :goto_27a

    :cond_244
    move/from16 v32, v3

    iget v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v2, v0, [J

    new-array v0, v0, [I

    :goto_24c
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v3

    if-eqz v3, :cond_25d

    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v4, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v4, v2, v3

    iget v4, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v4, v0, v3

    goto :goto_24c

    :cond_25d
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v3, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v3

    int-to-long v4, v14

    invoke-static {v3, v2, v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-wide/from16 v21, v7

    :goto_27a
    move/from16 v0, v32

    const-wide/32 v11, 0xf4240

    iget-wide v13, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v9, v21

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    iget-object v9, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v14, 0xf4240

    if-eqz v9, :cond_4b2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v9

    if-eqz v9, :cond_296

    goto/16 :goto_4b2

    :cond_296
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_326

    iget v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v8, v9, :cond_326

    array-length v8, v5

    const/4 v9, 0x2

    if-lt v8, v9, :cond_326

    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v9, 0x0

    aget-wide v23, v8, v9

    aget-wide v25, v7, v9

    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v9, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v27, v7

    move-wide/from16 v29, v9

    invoke-static/range {v25 .. v30}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    add-long v7, v23, v7

    move-object v9, v5

    move-wide/from16 v10, v21

    move-wide/from16 v12, v23

    move-object/from16 v16, v3

    move/from16 p1, v4

    move-wide v3, v14

    move-wide v14, v7

    invoke-static/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v9

    if-eqz v9, :cond_32a

    sub-long v10, v21, v7

    const/4 v7, 0x0

    aget-wide v8, v5, v7

    sub-long v25, v23, v8

    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v7, v7

    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v27, v7

    move-wide/from16 v29, v12

    invoke-static/range {v25 .. v30}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    iget-object v9, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v9, v9, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v12, v9

    iget-wide v14, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    cmp-long v11, v7, v18

    if-nez v11, :cond_2f3

    cmp-long v11, v9, v18

    if-eqz v11, :cond_32a

    :cond_2f3
    const-wide/32 v11, 0x7fffffff

    cmp-long v13, v7, v11

    if-gtz v13, :cond_32a

    cmp-long v13, v9, v11

    if-gtz v13, :cond_32a

    long-to-int v0, v7

    move-object/from16 v7, p2

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v0, v9

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v5, v3, v4, v7, v8}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v3, 0x0

    aget-wide v7, v0, v3

    const-wide/32 v9, 0xf4240

    iget-wide v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move/from16 v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_326
    move-object/from16 v16, v3

    move/from16 p1, v4

    :cond_32a
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v3

    const/4 v7, 0x1

    if-ne v4, v7, :cond_369

    const/4 v4, 0x0

    aget-wide v7, v3, v4

    cmp-long v3, v7, v18

    if-nez v3, :cond_369

    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v7, v0, v4

    const/4 v0, 0x0

    :goto_33c
    array-length v3, v5

    if-ge v0, v3, :cond_351

    aget-wide v3, v5, v0

    sub-long v9, v3, v7

    const-wide/32 v11, 0xf4240

    iget-wide v13, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    aput-wide v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33c

    :cond_351
    sub-long v9, v21, v7

    const-wide/32 v11, 0xf4240

    iget-wide v13, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move/from16 v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_369
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_370

    const/4 v3, 0x1

    goto :goto_371

    :cond_370
    const/4 v3, 0x0

    :goto_371
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v7, v4

    new-array v7, v7, [I

    array-length v4, v4

    new-array v4, v4, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_37d
    iget-object v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v13, v12

    if-ge v8, v13, :cond_3e1

    iget-object v13, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v14, v13, v8

    const-wide/16 v21, -0x1

    cmp-long v13, v14, v21

    if-eqz v13, :cond_3d3

    aget-wide v21, v12, v8

    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 p2, v9

    move/from16 v27, v10

    iget-wide v9, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v23, v12

    move-wide/from16 v25, v9

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    const/4 v12, 0x1

    invoke-static {v5, v14, v15, v12, v12}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v13

    aput v13, v7, v8

    add-long/2addr v14, v9

    const/4 v9, 0x0

    invoke-static {v5, v14, v15, v3, v9}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v10

    aput v10, v4, v8

    :goto_3ad
    aget v10, v7, v8

    aget v13, v4, v8

    if-ge v10, v13, :cond_3c0

    aget v10, v7, v8

    aget v10, v6, v10

    and-int/2addr v10, v12

    if-nez v10, :cond_3c0

    aget v10, v7, v8

    add-int/2addr v10, v12

    aput v10, v7, v8

    goto :goto_3ad

    :cond_3c0
    aget v10, v4, v8

    aget v13, v7, v8

    sub-int/2addr v10, v13

    add-int v10, v27, v10

    aget v13, v7, v8

    if-eq v11, v13, :cond_3cd

    const/4 v11, 0x1

    goto :goto_3ce

    :cond_3cd
    const/4 v11, 0x0

    :goto_3ce
    or-int v11, p2, v11

    aget v13, v4, v8

    goto :goto_3dc

    :cond_3d3
    move/from16 p2, v9

    move/from16 v27, v10

    const/4 v9, 0x0

    const/4 v12, 0x1

    move v13, v11

    move/from16 v11, p2

    :goto_3dc
    add-int/lit8 v8, v8, 0x1

    move v9, v11

    move v11, v13

    goto :goto_37d

    :cond_3e1
    move/from16 p2, v9

    const/4 v9, 0x0

    const/4 v12, 0x1

    if-eq v10, v0, :cond_3e8

    goto :goto_3e9

    :cond_3e8
    const/4 v12, 0x0

    :goto_3e9
    or-int v0, p2, v12

    if-eqz v0, :cond_3f0

    new-array v3, v10, [J

    goto :goto_3f1

    :cond_3f0
    move-object v3, v2

    :goto_3f1
    if-eqz v0, :cond_3f6

    new-array v8, v10, [I

    goto :goto_3f8

    :cond_3f6
    move-object/from16 v8, v16

    :goto_3f8
    if-eqz v0, :cond_3fc

    const/4 v11, 0x0

    goto :goto_3fe

    :cond_3fc
    move/from16 v11, p1

    :goto_3fe
    if-eqz v0, :cond_403

    new-array v12, v10, [I

    goto :goto_404

    :cond_403
    move-object v12, v6

    :goto_404
    new-array v10, v10, [J

    move/from16 p1, v11

    move-wide/from16 v13, v18

    const/4 v15, 0x0

    :goto_40b
    iget-object v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v11, v11

    if-ge v9, v11, :cond_492

    iget-object v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v23, v11, v9

    aget v11, v7, v9

    move-object/from16 v25, v7

    aget v7, v4, v9

    if-eqz v0, :cond_42e

    move-object/from16 v26, v4

    sub-int v4, v7, v11

    invoke-static {v2, v11, v3, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v27, v2

    move-object/from16 v2, v16

    invoke-static {v2, v11, v8, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v11, v12, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_434

    :cond_42e
    move-object/from16 v27, v2

    move-object/from16 v26, v4

    move-object/from16 v2, v16

    :goto_434
    move/from16 v4, p1

    :goto_436
    if-ge v11, v7, :cond_474

    const-wide/32 v19, 0xf4240

    move-object/from16 v16, v6

    move/from16 p2, v7

    iget-wide v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v17, v13

    move-wide/from16 v21, v6

    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    aget-wide v17, v5, v11

    sub-long v28, v17, v23

    const-wide/32 v30, 0xf4240

    move-object/from16 v34, v12

    move-wide/from16 v17, v13

    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v32, v12

    invoke-static/range {v28 .. v33}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long/2addr v6, v12

    aput-wide v6, v10, v15

    if-eqz v0, :cond_467

    aget v6, v8, v15

    if-le v6, v4, :cond_467

    aget v4, v2, v11

    :cond_467
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p2

    move-object/from16 v6, v16

    move-wide/from16 v13, v17

    move-object/from16 v12, v34

    goto :goto_436

    :cond_474
    move-object/from16 v16, v6

    move-object/from16 v34, v12

    move-wide/from16 v17, v13

    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v11, v6, v9

    add-long v13, v17, v11

    add-int/lit8 v9, v9, 0x1

    move/from16 p1, v4

    move-object/from16 v6, v16

    move-object/from16 v7, v25

    move-object/from16 v4, v26

    move-object/from16 v12, v34

    move-object/from16 v16, v2

    move-object/from16 v2, v27

    goto/16 :goto_40b

    :cond_492
    move-object/from16 v34, v12

    move-wide/from16 v17, v13

    const-wide/32 v19, 0xf4240

    iget-wide v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v8

    move/from16 v4, p1

    move-object v5, v10

    move-object/from16 v6, v34

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_4b2
    :goto_4b2
    move-object/from16 v27, v2

    move-object v2, v3

    move/from16 p1, v4

    move-object/from16 v16, v6

    move-wide v3, v14

    iget-wide v9, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v5, v3, v4, v9, v10}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v2

    move-object/from16 v2, v27

    move/from16 v4, p1

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_4cf
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_4d8

    :goto_4d7
    throw v0

    :goto_4d8
    goto :goto_4d7
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .registers 23

    move-object/from16 v10, p0

    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v12, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v11, :cond_fb

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    if-lez v16, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v1, v0, :cond_e2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v1, v0, :cond_e2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v1, v0, :cond_e2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v1, v0, :cond_e2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v1, v0, :cond_e2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v1, v0, :cond_e2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v1, v0, :cond_e2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v1, v0, :cond_e2

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v1, v0, :cond_50

    goto/16 :goto_e2

    :cond_50
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alaw:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ulaw:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_Opus:I

    if-eq v1, v0, :cond_cf

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_fLaC:I

    if-ne v1, v0, :cond_99

    goto :goto_cf

    :cond_99
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-eq v1, v0, :cond_c1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-eq v1, v0, :cond_c1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-eq v1, v0, :cond_c1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-eq v1, v0, :cond_c1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v1, v0, :cond_ae

    goto :goto_c1

    :cond_ae
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    if-ne v1, v0, :cond_f2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "application/x-camera-motion"

    invoke-static {v0, v3, v2, v1, v2}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_f2

    :cond_c1
    :goto_c1
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_f2

    :cond_cf
    :goto_cf
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v14

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_f2

    :cond_e2
    :goto_e2
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v14

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    :cond_f2
    :goto_f2
    add-int v15, v15, v16

    invoke-virtual {v10, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_12

    :cond_fb
    return-object v12
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    const-string v4, "application/ttml+xml"

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    if-ne v1, v3, :cond_1f

    :goto_19
    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_4c

    :cond_1f
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v1, v3, :cond_34

    add-int/lit8 v1, p3, -0x8

    add-int/lit8 v1, v1, -0x8

    new-array v3, v1, [B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v4, "application/x-quicktime-tx3g"

    goto :goto_19

    :cond_34
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v1, v0, :cond_3b

    const-string v4, "application/x-mp4-vtt"

    goto :goto_19

    :cond_3b
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v1, v0, :cond_42

    const-wide/16 v6, 0x0

    goto :goto_19

    :cond_42
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v1, v0, :cond_5e

    const/4 v0, 0x1

    iput v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v4, "application/x-mp4-cea-608"

    goto :goto_19

    :goto_4c
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v8 .. v18}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_65

    :goto_64
    throw v0

    :goto_65
    goto :goto_64
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .registers 12

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_14

    const/16 v3, 0x8

    goto :goto_16

    :cond_14
    const/16 v3, 0x10

    :goto_16
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-nez v1, :cond_28

    const/4 v0, 0x4

    :cond_28
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2a
    if-ge v7, v0, :cond_3a

    iget-object v8, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_37

    const/4 v5, 0x0

    goto :goto_3b

    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_3a
    const/4 v5, 0x1

    :goto_3b
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_46

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_59

    :cond_46
    if-nez v1, :cond_4d

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_51

    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_51
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_58

    goto :goto_59

    :cond_58
    move-wide v7, v0

    :goto_59
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7e

    if-ne v1, v4, :cond_7e

    if-ne v2, v5, :cond_7e

    if-nez p0, :cond_7e

    const/16 v6, 0x5a

    goto :goto_93

    :cond_7e
    if-nez v0, :cond_89

    if-ne v1, v5, :cond_89

    if-ne v2, v4, :cond_89

    if-nez p0, :cond_89

    const/16 v6, 0x10e

    goto :goto_93

    :cond_89
    if-ne v0, v5, :cond_93

    if-nez v1, :cond_93

    if-nez v2, :cond_93

    if-ne p0, v5, :cond_93

    const/16 v6, 0xb4

    :cond_93
    :goto_93
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method public static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 29

    move-object/from16 v0, p0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_1d

    return-object v2

    :cond_1d
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_39

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-object/from16 v4, p1

    goto :goto_3d

    :cond_39
    move-object/from16 v4, p1

    move-wide/from16 v8, p2

    :goto_3d
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v14

    cmp-long v4, v8, v6

    if-nez v4, :cond_48

    goto :goto_50

    :cond_48
    const-wide/32 v10, 0xf4240

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    :goto_50
    move-wide v10, v6

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v17

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v18

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/String;

    move-object/from16 v16, v4

    move-object/from16 v20, p4

    move/from16 v21, p6

    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    if-nez p5, :cond_a2

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_a6

    :cond_a2
    move-object/from16 v16, v2

    move-object/from16 v17, v16

    :goto_a6
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_ac

    move-object v0, v2

    goto :goto_cb

    :cond_ac
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    iget v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v3, v0

    move v4, v2

    move v2, v8

    move-wide v8, v14

    move-object v14, v1

    move v15, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_cb
    return-object v0
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lt v1, p1, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v3, v4, :cond_2a

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_2a
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_b

    :cond_2f
    return-object v0
.end method

.method private static parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 6

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_29

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v2, v3, :cond_24

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_24
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_5

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    const/4 v7, 0x0

    move/from16 v8, p1

    if-ne v8, v6, :cond_55

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_52

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_40

    move-object v3, v7

    goto :goto_4a

    :cond_40
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    :goto_4a
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v6, v9, p8

    :cond_52
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_55
    move-object/from16 v20, v3

    const/4 v3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v14, v7

    move-object/from16 v17, v14

    const/4 v3, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, -0x1

    :goto_62
    sub-int v9, v5, v1

    if-ge v9, v2, :cond_14e

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    if-nez v10, :cond_7c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v13

    sub-int/2addr v13, v1

    if-ne v13, v2, :cond_7c

    goto/16 :goto_14e

    :cond_7c
    if-lez v10, :cond_80

    const/4 v15, 0x1

    goto :goto_81

    :cond_80
    const/4 v15, 0x0

    :goto_81
    const-string v6, "childAtomSize should be positive"

    invoke-static {v15, v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    const/4 v13, 0x3

    if-ne v6, v15, :cond_b0

    if-nez v7, :cond_93

    const/4 v6, 0x1

    goto :goto_94

    :cond_93
    const/4 v6, 0x0

    :goto_94
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v6

    iget-object v14, v6, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    iget v7, v6, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v3, :cond_ac

    iget v6, v6, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    move/from16 v16, v6

    :cond_ac
    const-string v7, "video/avc"

    goto/16 :goto_14b

    :cond_b0
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v6, v15, :cond_cf

    if-nez v7, :cond_b8

    const/4 v6, 0x1

    goto :goto_b9

    :cond_b8
    const/4 v6, 0x0

    :goto_b9
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v6

    iget-object v14, v6, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    iget v6, v6, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    const-string v7, "video/hevc"

    goto/16 :goto_14b

    :cond_cf
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    if-ne v6, v15, :cond_e7

    if-nez v7, :cond_d7

    const/4 v6, 0x1

    goto :goto_d8

    :cond_d7
    const/4 v6, 0x0

    :goto_d8
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-ne v8, v6, :cond_e2

    const-string v6, "video/x-vnd.on2.vp8"

    goto :goto_e4

    :cond_e2
    const-string v6, "video/x-vnd.on2.vp9"

    :goto_e4
    move-object v7, v6

    goto/16 :goto_14b

    :cond_e7
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v6, v15, :cond_f6

    if-nez v7, :cond_ef

    const/4 v6, 0x1

    goto :goto_f0

    :cond_ef
    const/4 v6, 0x0

    :goto_f0
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-string v7, "video/3gpp"

    goto :goto_14b

    :cond_f6
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v6, v15, :cond_111

    if-nez v7, :cond_fe

    const/4 v6, 0x1

    goto :goto_ff

    :cond_fe
    const/4 v6, 0x0

    :goto_ff
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_14b

    :cond_111
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v6, v15, :cond_11b

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v16

    const/4 v3, 0x1

    goto :goto_14b

    :cond_11b
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    if-ne v6, v15, :cond_124

    invoke-static {v0, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v17

    goto :goto_14b

    :cond_124
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    if-ne v6, v9, :cond_14b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v6, :cond_14b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    if-eqz v6, :cond_149

    const/4 v9, 0x1

    if-eq v6, v9, :cond_146

    const/4 v15, 0x2

    if-eq v6, v15, :cond_143

    if-eq v6, v13, :cond_140

    goto :goto_14b

    :cond_140
    const/16 v18, 0x3

    goto :goto_14b

    :cond_143
    const/16 v18, 0x2

    goto :goto_14b

    :cond_146
    const/16 v18, 0x1

    goto :goto_14b

    :cond_149
    const/16 v18, 0x0

    :cond_14b
    :goto_14b
    add-int/2addr v5, v10

    goto/16 :goto_62

    :cond_14e
    :goto_14e
    if-nez v7, :cond_151

    return-void

    :cond_151
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move/from16 v15, p5

    invoke-static/range {v6 .. v20}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.mp4.AtomParsers.ChunkIterator (com.google.android.exoplayer2.extractor.mp4.AtomParsers$ChunkIterator)
.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkIterator"
.end annotation


# instance fields
.field private final chunkOffsets:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final chunkOffsetsAreLongs:Z

.field public index:I

.field public final length:I

.field private nextSamplesPerChunkChangeIndex:I

.field public numSamples:I

.field public offset:J

.field private remainingSamplesPerChunkChanges:I

.field private final stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    return-void
.end method


# virtual methods
.method public moveNext()Z
    .registers 5

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    if-ne v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    if-ne v0, v2, :cond_45

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    if-lez v0, :cond_42

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_43

    :cond_42
    const/4 v0, -0x1

    :goto_43
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    :cond_45
    return v1
.end method

###### Class com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox (com.google.android.exoplayer2.extractor.mp4.AtomParsers$SampleSizeBox)
.class interface abstract Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SampleSizeBox"
.end annotation


# virtual methods
.method public abstract getSampleCount()I
.end method

.method public abstract isFixedSampleSize()Z
.end method

.method public abstract readNextSampleSize()I
.end method

###### Class com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData (com.google.android.exoplayer2.extractor.mp4.AtomParsers$StsdData)
.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StsdData"
.end annotation


# static fields
.field public static final STSD_HEADER_SIZE:I = 0x8


# instance fields
.field public format:Lcom/google/android/exoplayer2/Format;

.field public nalUnitLengthFieldLength:I

.field public requiredSampleTransformation:I

.field public final trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.mp4.AtomParsers.StszSampleSizeBox (com.google.android.exoplayer2.extractor.mp4.AtomParsers$StszSampleSizeBox)
.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field private final data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final fixedSampleSize:I

.field private final sampleCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->sampleCount:I

    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->sampleCount:I

    return v0
.end method

.method public isFixedSampleSize()Z
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public readNextSampleSize()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    :cond_a
    return v0
.end method

###### Class com.google.android.exoplayer2.extractor.mp4.AtomParsers.Stz2SampleSizeBox (com.google.android.exoplayer2.extractor.mp4.AtomParsers$Stz2SampleSizeBox)
.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field private currentByte:I

.field private final data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final fieldSize:I

.field private final sampleCount:I

.field private sampleIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    return v0
.end method

.method public isFixedSampleSize()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readNextSampleSize()I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    return v0

    :cond_d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    return v0

    :cond_18
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_31
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

###### Class com.google.android.exoplayer2.extractor.mp4.AtomParsers.TkhdData (com.google.android.exoplayer2.extractor.mp4.AtomParsers$TkhdData)
.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TkhdData"
.end annotation


# instance fields
.field private final duration:J

.field private final id:I

.field private final rotationDegrees:I


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->duration:J

    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->duration:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    return p0
.end method
