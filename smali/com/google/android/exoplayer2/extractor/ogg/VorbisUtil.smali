###### Class com.google.android.exoplayer2.extractor.ogg.VorbisUtil (com.google.android.exoplayer2.extractor.ogg.VorbisUtil)
.class final Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;,
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;,
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;,
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iLog(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .registers 6

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method private static readBook(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    .registers 15

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    if-ne v1, v2, :cond_bf

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    new-array v5, v4, [J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v8, 0x1

    if-nez v7, :cond_48

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v9

    :goto_26
    array-length v10, v5

    if-ge v2, v10, :cond_6f

    if-eqz v9, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    goto :goto_45

    :cond_3a
    aput-wide v0, v5, v2

    goto :goto_45

    :cond_3d
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_48
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v8

    move v9, v6

    const/4 v6, 0x0

    :goto_4f
    array-length v10, v5

    if-ge v6, v10, :cond_6f

    sub-int v10, v4, v6

    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    move v11, v6

    const/4 v6, 0x0

    :goto_5e
    if-ge v6, v10, :cond_6b

    array-length v12, v5

    if-ge v11, v12, :cond_6b

    int-to-long v12, v9

    aput-wide v12, v5, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    :cond_6b
    add-int/lit8 v9, v9, 0x1

    move v6, v11

    goto :goto_4f

    :cond_6f
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v9, 0x2

    if-gt v6, v9, :cond_a8

    if-eq v6, v8, :cond_7b

    if-ne v6, v9, :cond_a1

    :cond_7b
    const/16 v9, 0x20

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    if-ne v6, v8, :cond_96

    if-eqz v3, :cond_9a

    int-to-long v0, v4

    int-to-long v8, v3

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v0

    goto :goto_9a

    :cond_96
    int-to-long v0, v4

    int-to-long v8, v3

    mul-long v0, v0, v8

    :cond_9a
    :goto_9a
    int-to-long v8, v2

    mul-long v0, v0, v8

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_a1
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object p0

    :cond_a8
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lookup type greater than 2 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bf
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_db

    :goto_da
    throw v0

    :goto_db
    goto :goto_da
.end method

.method private static readFloors(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .registers 15

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_af

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_8e

    if-ne v6, v2, :cond_77

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, -0x1

    new-array v9, v5, [I

    const/4 v6, 0x0

    const/4 v10, -0x1

    :goto_22
    if-ge v6, v5, :cond_33

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v9, v6

    aget v11, v9, v6

    if-le v11, v10, :cond_30

    aget v10, v9, v6

    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_33
    add-int/lit8 v10, v10, 0x1

    new-array v6, v10, [I

    const/4 v10, 0x0

    :goto_38
    array-length v11, v6

    const/4 v12, 0x2

    if-ge v10, v11, :cond_5b

    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v2

    aput v11, v6, v10

    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v11

    if-lez v11, :cond_4d

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_4d
    const/4 v12, 0x0

    :goto_4e
    shl-int v13, v2, v11

    if-ge v12, v13, :cond_58

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4e

    :cond_58
    add-int/lit8 v10, v10, 0x1

    goto :goto_38

    :cond_5b
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_65
    if-ge v8, v5, :cond_ab

    aget v12, v9, v8

    aget v12, v6, v12

    add-int/2addr v10, v12

    :goto_6c
    if-ge v11, v10, :cond_74

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6c

    :cond_74
    add-int/lit8 v8, v8, 0x1

    goto :goto_65

    :cond_77
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "floor type greater than 1 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8e
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x0

    :goto_a3
    if-ge v6, v5, :cond_ab

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a3

    :cond_ab
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_af
    return-void
.end method

.method private static readMappings(ILcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .registers 13

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_87

    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_37

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_38

    :cond_37
    const/4 v4, 0x1

    :goto_38
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_5b

    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    const/4 v8, 0x0

    :goto_46
    if-ge v8, v6, :cond_5b

    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_5b
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_7f

    if-le v4, v1, :cond_6d

    const/4 v6, 0x0

    :goto_65
    if-ge v6, p0, :cond_6d

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    :cond_6d
    const/4 v5, 0x0

    :goto_6e
    if-ge v5, v4, :cond_7c

    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_7f
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    return-void
.end method

.method private static readModes(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .registers 9

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    new-instance v7, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2a
    return-object v1
.end method

.method private static readResidues(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .registers 13

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_69

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_61

    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_2c
    if-ge v8, v5, :cond_48

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_3f

    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    goto :goto_40

    :cond_3f
    const/4 v10, 0x0

    :goto_40
    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v9

    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_48
    const/4 v8, 0x0

    :goto_49
    if-ge v8, v5, :cond_5e

    const/4 v9, 0x0

    :goto_4c
    if-ge v9, v6, :cond_5b

    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_58

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_61
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "residueType greater than 2 is not decodable"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    return-void
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v2, v2, [Ljava/lang/String;

    add-int/lit8 v3, v3, 0x4

    :goto_1e
    int-to-long v6, v0

    cmp-long v8, v6, v4

    if-gez v8, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v6

    long-to-int v7, v6

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_4a

    add-int/lit8 v3, v3, 0x1

    new-instance p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0

    :cond_4a
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "framing bit expected to be set"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :goto_52
    throw p0

    :goto_53
    goto :goto_52
.end method

.method public static readVorbisIdentificationHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v12, v3, 0xf

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-double v1, v3

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-lez v2, :cond_41

    const/4 v14, 0x1

    goto :goto_42

    :cond_41
    const/4 v14, 0x0

    :goto_42
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-object v3, v0

    move v13, v1

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;-><init>(JIJIIIIIZ[B)V

    return-object v0
.end method

.method public static readVorbisModes(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;-><init>([B)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    const/4 p0, 0x0

    :goto_1c
    if-ge p0, v1, :cond_24

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readBook(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :cond_24
    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_2b
    if-ge v0, p0, :cond_40

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    if-nez v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_38
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "placeholder of time domain transforms not zeroed out"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readFloors(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readResidues(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readMappings(ILcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readModes(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    move-result-object p0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_54

    return-object p0

    :cond_54
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "framing bit after modes not set as expected"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    :goto_5c
    throw p0

    :goto_5d
    goto :goto_5c
.end method

.method public static verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_26

    if-eqz p2, :cond_b

    return v1

    :cond_b
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "too short header: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_4a

    if-eqz p2, :cond_2f

    return v1

    :cond_2f
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expected header type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_7d

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 p0, 0x1

    return p0

    :cond_7d
    :goto_7d
    if-eqz p2, :cond_80

    return v1

    :cond_80
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.google.android.exoplayer2.extractor.ogg.VorbisUtil.CodeBook (com.google.android.exoplayer2.extractor.ogg.VorbisUtil$CodeBook)
.class public final Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeBook"
.end annotation


# instance fields
.field public final dimensions:I

.field public final entries:I

.field public final isOrdered:Z

.field public final lengthMap:[J

.field public final lookupType:I


# direct methods
.method public constructor <init>(II[JIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->dimensions:I

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->entries:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->lengthMap:[J

    iput p4, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->lookupType:I

    iput-boolean p5, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;->isOrdered:Z

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.ogg.VorbisUtil.CommentHeader (com.google.android.exoplayer2.extractor.ogg.VorbisUtil$CommentHeader)
.class public final Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentHeader"
.end annotation


# instance fields
.field public final comments:[Ljava/lang/String;

.field public final length:I

.field public final vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;->vendor:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;->length:I

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.ogg.VorbisUtil.Mode (com.google.android.exoplayer2.extractor.ogg.VorbisUtil$Mode)
.class public final Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# instance fields
.field public final blockFlag:Z

.field public final mapping:I

.field public final transformType:I

.field public final windowType:I


# direct methods
.method public constructor <init>(ZIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;->blockFlag:Z

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;->windowType:I

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;->transformType:I

    iput p4, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;->mapping:I

    return-void
.end method

###### Class com.google.android.exoplayer2.extractor.ogg.VorbisUtil.VorbisIdHeader (com.google.android.exoplayer2.extractor.ogg.VorbisUtil$VorbisIdHeader)
.class public final Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisIdHeader"
.end annotation


# instance fields
.field public final bitrateMax:I

.field public final bitrateMin:I

.field public final bitrateNominal:I

.field public final blockSize0:I

.field public final blockSize1:I

.field public final channels:I

.field public final data:[B

.field public final framingFlag:Z

.field public final sampleRate:J

.field public final version:J


# direct methods
.method public constructor <init>(JIJIIIIIZ[B)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->version:J

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    iput p6, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMax:I

    iput p7, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    iput p8, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMin:I

    iput p9, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    iput p10, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    iput-boolean p11, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->framingFlag:Z

    iput-object p12, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    return-void
.end method


# virtual methods
.method public getApproximateBitrate()I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMin:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMax:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :cond_b
    return v0
.end method
