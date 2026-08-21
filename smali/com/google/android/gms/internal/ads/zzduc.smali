###### Class com.google.android.gms.internal.ads.zzduc (com.google.android.gms.internal.ads.zzduc)
.class final Lcom/google/android/gms/internal/ads/zzduc;
.super Lcom/google/android/gms/internal/ads/zzdtx;
.source ""


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtx;-><init>()V

    return-void
.end method

.method private static zza([BIJI)I
    .registers 7

    if-eqz p4, :cond_27

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/ads/zzdtw;->zzj(III)I

    move-result p0

    return p0

    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1e
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzdtw;->zzap(II)I

    move-result p0

    return p0

    :cond_27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtw;->zzhc(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method final zzb(I[BII)I
    .registers 20

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    or-int v3, v1, v2

    array-length v4, v0

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ltz v3, :cond_ba

    int-to-long v7, v1

    int-to-long v1, v2

    sub-long/2addr v1, v7

    long-to-int v2, v1

    const/16 v1, 0x10

    const-wide/16 v9, 0x1

    if-ge v2, v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_2e

    :cond_1c
    move-wide v11, v7

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v2, :cond_2d

    add-long v13, v11, v9

    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v3

    if-gez v3, :cond_29

    goto :goto_2e

    :cond_29
    add-int/lit8 v1, v1, 0x1

    move-wide v11, v13

    goto :goto_1e

    :cond_2d
    move v1, v2

    :goto_2e
    sub-int/2addr v2, v1

    int-to-long v11, v1

    add-long/2addr v7, v11

    :goto_31
    const/4 v1, 0x0

    :goto_32
    if-lez v2, :cond_40

    add-long v11, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v1

    if-ltz v1, :cond_41

    add-int/lit8 v2, v2, -0x1

    move-wide v7, v11

    goto :goto_32

    :cond_40
    move-wide v11, v7

    :cond_41
    if-nez v2, :cond_44

    return v6

    :cond_44
    add-int/lit8 v2, v2, -0x1

    const/16 v3, -0x20

    const/16 v7, -0x41

    const/4 v8, -0x1

    if-ge v1, v3, :cond_62

    if-nez v2, :cond_50

    return v1

    :cond_50
    add-int/lit8 v2, v2, -0x1

    const/16 v3, -0x3e

    if-lt v1, v3, :cond_61

    add-long v13, v11, v9

    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v1

    if-le v1, v7, :cond_5f

    goto :goto_61

    :cond_5f
    move-wide v7, v13

    goto :goto_31

    :cond_61
    :goto_61
    return v8

    :cond_62
    const/16 v13, -0x10

    if-ge v1, v13, :cond_8f

    if-ge v2, v4, :cond_6d

    invoke-static {v0, v1, v11, v12, v2}, Lcom/google/android/gms/internal/ads/zzduc;->zza([BIJI)I

    move-result v0

    return v0

    :cond_6d
    add-int/lit8 v2, v2, -0x2

    add-long v13, v11, v9

    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v11

    if-gt v11, v7, :cond_8e

    const/16 v12, -0x60

    if-ne v1, v3, :cond_7d

    if-lt v11, v12, :cond_8e

    :cond_7d
    const/16 v3, -0x13

    if-ne v1, v3, :cond_83

    if-ge v11, v12, :cond_8e

    :cond_83
    add-long v11, v13, v9

    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v1

    if-le v1, v7, :cond_8c

    goto :goto_8e

    :cond_8c
    move-wide v7, v11

    goto :goto_31

    :cond_8e
    :goto_8e
    return v8

    :cond_8f
    if-ge v2, v5, :cond_96

    invoke-static {v0, v1, v11, v12, v2}, Lcom/google/android/gms/internal/ads/zzduc;->zza([BIJI)I

    move-result v0

    return v0

    :cond_96
    add-int/lit8 v2, v2, -0x3

    add-long v13, v11, v9

    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v3

    if-gt v3, v7, :cond_b9

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_b9

    add-long v11, v13, v9

    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v1

    if-gt v1, v7, :cond_b9

    add-long v13, v11, v9

    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v1

    if-le v1, v7, :cond_5f

    :cond_b9
    return v8

    :cond_ba
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v5, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Array length=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_dd

    :goto_dc
    throw v3

    :goto_dd
    goto :goto_dc
.end method

.method final zzb(Ljava/lang/CharSequence;[BII)I
    .registers 27

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_146

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_146

    const/4 v2, 0x0

    :goto_1a
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_2f

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2f

    add-long/2addr v11, v4

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_1a

    :cond_2f
    if-ne v2, v8, :cond_33

    long-to-int v0, v4

    return v0

    :cond_33
    :goto_33
    if-ge v2, v8, :cond_144

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_4b

    cmp-long v14, v4, v6

    if-gez v14, :cond_4b

    add-long v14, v4, v11

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    :goto_47
    const/16 v11, 0x80

    goto/16 :goto_fb

    :cond_4b
    const/16 v14, 0x800

    if-ge v13, v14, :cond_75

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_75

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    move-wide/from16 v20, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v20

    goto/16 :goto_fb

    :cond_75
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_7f

    if-ge v3, v13, :cond_ae

    :cond_7f
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v17, v4, v15

    if-gtz v17, :cond_ae

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    const-wide/16 v14, 0x1

    add-long v18, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    move-wide/from16 v12, v18

    const-wide/16 v4, 0x1

    goto :goto_47

    :cond_ae
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v15, v4, v11

    if-gtz v15, :cond_10f

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_107

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_106

    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-static {v1, v4, v5, v15}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v1, v13, v14, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    invoke-static {v1, v14, v15, v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    move v2, v3

    :goto_fb
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x80

    move-wide/from16 v20, v4

    move-wide v4, v12

    move-wide/from16 v11, v20

    goto/16 :goto_33

    :cond_106
    move v2, v3

    :cond_107
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtz;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/ads/zzdtz;-><init>(II)V

    throw v0

    :cond_10f
    if-gt v14, v13, :cond_127

    if-gt v13, v3, :cond_127

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_121

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_127

    :cond_121
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtz;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/ads/zzdtz;-><init>(II)V

    throw v0

    :cond_127
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_144
    long-to-int v0, v4

    return v0

    :cond_146
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_16b

    :goto_16a
    throw v1

    :goto_16b
    goto :goto_16a
.end method

.method final zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    const-string v13, " at index "

    const-string v14, "Failed writing "

    cmp-long v15, v9, v11

    if-gtz v15, :cond_151

    const/4 v9, 0x0

    :goto_24
    const/16 v10, 0x80

    const-wide/16 v11, 0x1

    if-ge v9, v8, :cond_39

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v10, :cond_39

    add-long/2addr v11, v4

    int-to-byte v10, v15

    invoke-static {v4, v5, v10}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v11

    goto :goto_24

    :cond_39
    if-ne v9, v8, :cond_41

    sub-long/2addr v4, v2

    long-to-int v0, v4

    :goto_3d
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_41
    :goto_41
    if-ge v9, v8, :cond_148

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v10, :cond_5b

    cmp-long v16, v4, v6

    if-gez v16, :cond_5b

    add-long v16, v4, v11

    int-to-byte v15, v15

    invoke-static {v4, v5, v15}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    move-wide/from16 v4, v16

    const/16 v15, 0x80

    move-wide/from16 v17, v2

    goto/16 :goto_100

    :cond_5b
    const/16 v10, 0x800

    if-ge v15, v10, :cond_83

    const-wide/16 v17, 0x2

    sub-long v17, v6, v17

    cmp-long v10, v4, v17

    if-gtz v10, :cond_83

    move-wide/from16 v17, v2

    add-long v1, v4, v11

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    add-long v3, v1, v11

    and-int/lit8 v5, v15, 0x3f

    const/16 v10, 0x80

    or-int/2addr v5, v10

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    move-wide v4, v3

    :goto_7f
    const/16 v15, 0x80

    goto/16 :goto_100

    :cond_83
    move-wide/from16 v17, v2

    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_8f

    if-ge v1, v15, :cond_b9

    :cond_8f
    const-wide/16 v19, 0x3

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_b9

    add-long v1, v4, v11

    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    add-long v3, v1, v11

    ushr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v10, 0x80

    or-int/2addr v5, v10

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    add-long v1, v3, v11

    and-int/lit8 v5, v15, 0x3f

    or-int/2addr v5, v10

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    move-wide v4, v1

    goto :goto_7f

    :cond_b9
    const-wide/16 v19, 0x4

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_113

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_10a

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_10b

    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v9, v4, v11

    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    add-long v3, v9, v11

    ushr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    const/16 v15, 0x80

    or-int/2addr v5, v15

    int-to-byte v5, v5

    invoke-static {v9, v10, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    add-long v9, v3, v11

    ushr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v15

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    add-long v3, v9, v11

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v15

    int-to-byte v2, v2

    invoke-static {v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    move v9, v1

    move-wide v4, v3

    :goto_100
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move-wide/from16 v2, v17

    const/16 v10, 0x80

    goto/16 :goto_41

    :cond_10a
    move v1, v9

    :cond_10b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtz;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzdtz;-><init>(II)V

    throw v0

    :cond_113
    if-gt v2, v15, :cond_12b

    if-gt v15, v1, :cond_12b

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_125

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_12b

    :cond_125
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtz;

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzdtz;-><init>(II)V

    throw v0

    :cond_12b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_148
    move-wide/from16 v17, v2

    sub-long v4, v4, v17

    long-to-int v0, v4

    move-object/from16 v1, p2

    goto/16 :goto_3d

    :cond_151
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_179

    :goto_178
    throw v2

    :goto_179
    goto :goto_178
.end method

.method final zzn([BII)Ljava/lang/String;
    .registers 15

    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_c7

    add-int v0, p2, p3

    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_f
    if-ge p2, v0, :cond_25

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdty;->zzi(B)Z

    move-result v5

    if-eqz v5, :cond_25

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, p3, v3}, Lcom/google/android/gms/internal/ads/zzdty;->zzb(B[CI)V

    move v3, v5

    goto :goto_f

    :cond_25
    move v8, v3

    :goto_26
    if-ge p2, v0, :cond_c1

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdty;->zzi(B)Z

    move-result v4

    if-eqz v4, :cond_53

    add-int/lit8 v4, v8, 0x1

    invoke-static {p2, p3, v8}, Lcom/google/android/gms/internal/ads/zzdty;->zzb(B[CI)V

    :goto_3a
    if-ge v3, v0, :cond_50

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdty;->zzi(B)Z

    move-result v5

    if-eqz v5, :cond_50

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/ads/zzdty;->zzb(B[CI)V

    move v4, v5

    goto :goto_3a

    :cond_50
    move p2, v3

    move v8, v4

    goto :goto_26

    :cond_53
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdty;->zzj(B)Z

    move-result v4

    if-eqz v4, :cond_6f

    if-ge v3, v0, :cond_6a

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p2, v3, p3, v8}, Lcom/google/android/gms/internal/ads/zzdty;->zzb(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_26

    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbaj()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1

    :cond_6f
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdty;->zzk(B)Z

    move-result v4

    if-eqz v4, :cond_94

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_8f

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/ads/zzdty;->zzb(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_26

    :cond_8f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbaj()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1

    :cond_94
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_bc

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    int-to-long v6, v4

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJ)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdty;->zzb(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto/16 :goto_26

    :cond_bc
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbaj()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1

    :cond_c1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_c7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_eb

    :goto_ea
    throw v0

    :goto_eb
    goto :goto_ea
.end method
