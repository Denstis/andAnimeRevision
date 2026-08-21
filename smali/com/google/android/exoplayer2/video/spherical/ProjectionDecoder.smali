###### Class com.google.android.exoplayer2.video.spherical.ProjectionDecoder (com.google.android.exoplayer2.video.spherical.ProjectionDecoder)
.class public final Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_COORDINATE_COUNT:I = 0x2710

.field private static final MAX_TRIANGLE_INDICES:I = 0x1f400

.field private static final MAX_VERTEX_COUNT:I = 0x7d00

.field private static final TYPE_DFL8:I

.field private static final TYPE_MESH:I

.field private static final TYPE_MSHP:I

.field private static final TYPE_PROJ:I

.field private static final TYPE_RAW:I

.field private static final TYPE_YTMP:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ytmp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_YTMP:I

    const-string v0, "mshp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_MSHP:I

    const-string v0, "raw "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_RAW:I

    const-string v0, "dfl8"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_DFL8:I

    const-string v0, "mesh"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_MESH:I

    const-string v0, "proj"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_PROJ:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Lcom/google/android/exoplayer2/video/spherical/Projection;
    .registers 7

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    const/4 p0, 0x0

    :try_start_6
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->isProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_17

    :cond_11
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-object v0, p0

    :goto_17
    if-nez v0, :cond_1a

    return-object p0

    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_38

    const/4 v4, 0x2

    if-eq v1, v4, :cond_26

    return-object p0

    :cond_26
    new-instance p0, Lcom/google/android/exoplayer2/video/spherical/Projection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    return-object p0

    :cond_38
    new-instance p0, Lcom/google/android/exoplayer2/video/spherical/Projection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    return-object p0
.end method

.method private static decodeZigZag(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private static isProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    sget p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_PROJ:I

    if-ne v0, p0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method private static parseMesh(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    .registers 24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_a

    return-object v1

    :cond_a
    new-array v2, v0, [F

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readFloat()F

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const/16 v5, 0x7d00

    if-le v4, v5, :cond_21

    return-object v1

    :cond_21
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    int-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    new-instance v10, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    const/16 v12, 0x8

    mul-int/lit8 v11, v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    mul-int/lit8 v11, v4, 0x5

    new-array v11, v11, [F

    const/4 v13, 0x5

    new-array v14, v13, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_55
    if-ge v15, v4, :cond_7e

    const/4 v3, 0x0

    :goto_58
    if-ge v3, v13, :cond_7a

    aget v17, v14, v3

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v18

    add-int v13, v17, v18

    if-ge v13, v0, :cond_79

    if-gez v13, :cond_6b

    goto :goto_79

    :cond_6b
    add-int/lit8 v17, v16, 0x1

    aget v18, v2, v13

    aput v18, v11, v16

    aput v13, v14, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v17

    const/4 v13, 0x5

    goto :goto_58

    :cond_79
    :goto_79
    return-object v1

    :cond_7a
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x5

    goto :goto_55

    :cond_7e
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/16 v0, 0x20

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    new-array v3, v2, [Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    const/4 v9, 0x0

    :goto_92
    if-ge v9, v2, :cond_111

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    const v0, 0x1f400

    if-le v15, v0, :cond_a6

    return-object v1

    :cond_a6
    move/from16 v16, v13

    int-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    div-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    mul-int/lit8 v13, v15, 0x3

    new-array v13, v13, [F

    mul-int/lit8 v0, v15, 0x2

    new-array v0, v0, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_c2
    if-ge v5, v15, :cond_ff

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v19

    add-int v6, v6, v19

    if-ltz v6, :cond_fe

    if-lt v6, v4, :cond_d3

    goto :goto_fe

    :cond_d3
    mul-int/lit8 v19, v5, 0x3

    mul-int/lit8 v20, v6, 0x5

    aget v21, v11, v20

    aput v21, v13, v19

    add-int/lit8 v21, v19, 0x1

    add-int/lit8 v22, v20, 0x1

    aget v22, v11, v22

    aput v22, v13, v21

    add-int/lit8 v19, v19, 0x2

    add-int/lit8 v21, v20, 0x2

    aget v21, v11, v21

    aput v21, v13, v19

    mul-int/lit8 v19, v5, 0x2

    add-int/lit8 v21, v20, 0x3

    aget v21, v11, v21

    aput v21, v0, v19

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v20, 0x4

    aget v20, v11, v20

    aput v20, v0, v19

    add-int/lit8 v5, v5, 0x1

    goto :goto_c2

    :cond_fe
    :goto_fe
    return-object v1

    :cond_ff
    new-instance v5, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move/from16 v6, v16

    invoke-direct {v5, v6, v13, v0, v14}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    aput-object v5, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/16 v0, 0x20

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/16 v12, 0x8

    goto :goto_92

    :cond_111
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;-><init>([Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    return-object v0
.end method

.method private static parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_DFL8:I

    if-ne v0, v2, :cond_30

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    :try_start_1f
    invoke-static {p0, v0, v2}, Lcom/google/android/exoplayer2/util/Util;->inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_2b

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    if-nez p0, :cond_29

    return-object v1

    :cond_29
    move-object p0, v0

    goto :goto_35

    :catchall_2b
    move-exception p0

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    throw p0

    :cond_30
    sget v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_RAW:I

    if-eq v0, v2, :cond_35

    return-object v1

    :cond_35
    :goto_35
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseRawMshpData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static parseProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    :goto_d
    const/4 v2, 0x0

    if-ge v0, v1, :cond_34

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v0

    if-le v3, v0, :cond_34

    if-le v3, v1, :cond_1a

    goto :goto_34

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_YTMP:I

    if-eq v0, v2, :cond_2c

    sget v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_MSHP:I

    if-ne v0, v2, :cond_27

    goto :goto_2c

    :cond_27
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v0, v3

    goto :goto_d

    :cond_2c
    :goto_2c
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_34
    :goto_34
    return-object v2
.end method

.method private static parseRawMshpData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_d
    if-ge v1, v2, :cond_32

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    if-le v3, v1, :cond_31

    if-le v3, v2, :cond_1a

    goto :goto_31

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    sget v5, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_MESH:I

    if-ne v1, v5, :cond_2c

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMesh(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    move-result-object v1

    if-nez v1, :cond_29

    return-object v4

    :cond_29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v1, v3

    goto :goto_d

    :cond_31
    :goto_31
    return-object v4

    :cond_32
    return-object v0
.end method
