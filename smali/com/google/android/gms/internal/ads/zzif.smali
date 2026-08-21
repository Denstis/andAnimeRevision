###### Class com.google.android.gms.internal.ads.zzif (com.google.android.gms.internal.ads.zzif)
.class final Lcom/google/android/gms/internal/ads/zzif;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzafn:I

.field private zzaga:F

.field private zzagb:F

.field private final zzala:I

.field private final zzalb:I

.field private final zzalc:I

.field private final zzald:I

.field private final zzale:[S

.field private zzalf:I

.field private zzalg:[S

.field private zzalh:I

.field private zzali:[S

.field private zzalj:I

.field private zzalk:[S

.field private zzall:I

.field private zzalm:I

.field private zzaln:I

.field private zzalo:I

.field private zzalp:I

.field private zzalq:I

.field private zzalr:I

.field private zzals:I

.field private zzalt:I

.field private zzalu:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzafn:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalb:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalc:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalc:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzald:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzald:I

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzale:[S

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalf:I

    mul-int v0, p1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalh:I

    mul-int v0, p1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalj:I

    mul-int p1, p1, p2

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalk:[S

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzall:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalm:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalr:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaga:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzagb:F

    return-void
.end method

.method private final zza([SIII)I
    .registers 14

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xff

    :goto_c
    if-gt p3, p4, :cond_38

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_10
    if-ge v5, p3, :cond_25

    add-int v7, p2, v5

    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    aget-short v8, p1, v8

    if-lt v7, v8, :cond_1f

    sub-int/2addr v7, v8

    goto :goto_21

    :cond_1f
    sub-int v7, v8, v7

    :goto_21
    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_25
    mul-int v5, v6, v2

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_2d

    move v2, p3

    move v0, v6

    :cond_2d
    mul-int v5, v6, v4

    mul-int v7, v3, p3

    if-le v5, v7, :cond_35

    move v4, p3

    move v3, v6

    :cond_35
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_38
    div-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalt:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalu:I

    return v2
.end method

.method private static zza(II[SI[SI[SI)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_2a

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    move v5, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_10
    if-ge v2, p0, :cond_27

    aget-short v6, p4, v4

    sub-int v7, p0, v2

    mul-int v6, v6, v7

    aget-short v7, p6, v5

    mul-int v7, v7, v2

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v3

    add-int/2addr v3, p1

    add-int/2addr v4, p1

    add-int/2addr v5, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    return-void
.end method

.method private final zza([SII)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzif;->zzt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int p2, p2, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    mul-int v2, v2, v0

    mul-int v0, v0, p3

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    return-void
.end method

.method private final zzb([SII)V
    .registers 10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzald:I

    div-int/2addr v0, p3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int p3, p3, v1

    mul-int p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_24

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, p3, :cond_1b

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    div-int/2addr v4, p3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzif;->zzale:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    return-void
.end method

.method private final zzfs()V
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzaga:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzagb:F

    div-float/2addr v2, v3

    float-to-double v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide v8, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v10, v3, v8

    if-gtz v10, :cond_2c

    const-wide v8, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v10, v3, v8

    if-gez v10, :cond_21

    goto :goto_2c

    :cond_21
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    invoke-direct {v0, v2, v6, v3}, Lcom/google/android/gms/internal/ads/zzif;->zza([SII)V

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    goto/16 :goto_170

    :cond_2c
    :goto_2c
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzif;->zzald:I

    if-lt v8, v9, :cond_170

    const/4 v9, 0x0

    :goto_33
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalq:I

    if-lez v10, :cond_4a

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzald:I

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    invoke-direct {v0, v11, v9, v10}, Lcom/google/android/gms/internal/ads/zzif;->zza([SII)V

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalq:I

    sub-int/2addr v11, v10

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalq:I

    add-int/2addr v9, v10

    goto/16 :goto_157

    :cond_4a
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzafn:I

    const/16 v12, 0xfa0

    if-le v11, v12, :cond_55

    div-int/lit16 v11, v11, 0xfa0

    goto :goto_56

    :cond_55
    const/4 v11, 0x1

    :goto_56
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    if-ne v12, v7, :cond_65

    if-ne v11, v7, :cond_65

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalb:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalc:I

    :goto_60
    invoke-direct {v0, v10, v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzif;->zza([SIII)I

    move-result v10

    goto :goto_98

    :cond_65
    invoke-direct {v0, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzif;->zzb([SII)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzif;->zzale:[S

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalb:I

    div-int/2addr v13, v11

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalc:I

    div-int/2addr v14, v11

    invoke-direct {v0, v12, v6, v13, v14}, Lcom/google/android/gms/internal/ads/zzif;->zza([SIII)I

    move-result v12

    if-eq v11, v7, :cond_97

    mul-int v12, v12, v11

    shl-int/lit8 v11, v11, 0x2

    sub-int v13, v12, v11

    add-int/2addr v12, v11

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalb:I

    if-ge v13, v11, :cond_82

    goto :goto_83

    :cond_82
    move v11, v13

    :goto_83
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalc:I

    if-le v12, v13, :cond_88

    move v12, v13

    :cond_88
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    if-ne v13, v7, :cond_8d

    goto :goto_60

    :cond_8d
    invoke-direct {v0, v10, v9, v7}, Lcom/google/android/gms/internal/ads/zzif;->zzb([SII)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzale:[S

    invoke-direct {v0, v10, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzif;->zza([SIII)I

    move-result v10

    goto :goto_98

    :cond_97
    move v10, v12

    :goto_98
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalt:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalu:I

    if-eqz v11, :cond_b3

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalr:I

    if-nez v13, :cond_a3

    goto :goto_b3

    :cond_a3
    mul-int/lit8 v13, v11, 0x3

    if-le v12, v13, :cond_a8

    goto :goto_b3

    :cond_a8
    shl-int/lit8 v11, v11, 0x1

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzif;->zzals:I

    mul-int/lit8 v12, v12, 0x3

    if-gt v11, v12, :cond_b1

    goto :goto_b3

    :cond_b1
    const/4 v11, 0x1

    goto :goto_b4

    :cond_b3
    :goto_b3
    const/4 v11, 0x0

    :goto_b4
    if-eqz v11, :cond_ba

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalr:I

    move v15, v11

    goto :goto_bb

    :cond_ba
    move v15, v10

    :goto_bb
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalt:I

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzals:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalr:I

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v12, 0x40000000    # 2.0f

    cmpl-double v13, v3, v10

    if-lez v13, :cond_104

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    cmpl-float v10, v2, v12

    if-ltz v10, :cond_d6

    int-to-float v10, v15

    sub-float v11, v2, v5

    div-float/2addr v10, v11

    float-to-int v10, v10

    move v13, v10

    goto :goto_e1

    :cond_d6
    int-to-float v10, v15

    sub-float/2addr v12, v2

    mul-float v10, v10, v12

    sub-float v11, v2, v5

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalq:I

    move v13, v15

    :goto_e1
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzif;->zzt(I)V

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    add-int v17, v9, v15

    move/from16 v16, v10

    move v10, v13

    move/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move v7, v15

    move v15, v9

    invoke-static/range {v10 .. v17}, Lcom/google/android/gms/internal/ads/zzif;->zza(II[SI[SI[SI)V

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    add-int v10, v10, v18

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    add-int v15, v7, v18

    add-int/2addr v9, v15

    goto :goto_157

    :cond_104
    move v7, v15

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, v2, v10

    if-gez v10, :cond_117

    int-to-float v10, v7

    mul-float v10, v10, v2

    sub-float v11, v5, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    move/from16 v18, v10

    goto :goto_125

    :cond_117
    int-to-float v10, v7

    mul-float v12, v12, v2

    sub-float/2addr v12, v5

    mul-float v10, v10, v12

    sub-float v11, v5, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalq:I

    move/from16 v18, v7

    :goto_125
    add-int v14, v7, v18

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/zzif;->zzt(I)V

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v11, v9, v10

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    mul-int v13, v13, v10

    mul-int v10, v10, v7

    invoke-static {v15, v11, v12, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    add-int v13, v10, v7

    add-int/2addr v7, v9

    move/from16 v10, v18

    move/from16 v19, v14

    move-object v14, v15

    move-object/from16 v16, v15

    move v15, v7

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/google/android/gms/internal/ads/zzif;->zza(II[SI[SI[SI)V

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    add-int v7, v7, v19

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    add-int v9, v9, v18

    :goto_157
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzald:I

    add-int/2addr v7, v9

    if-le v7, v8, :cond_16d

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    sub-int/2addr v2, v9

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v9, v9, v4

    mul-int v4, v4, v2

    invoke-static {v3, v9, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    goto :goto_170

    :cond_16d
    const/4 v7, 0x1

    goto/16 :goto_33

    :cond_170
    :goto_170
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzagb:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_248

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    if-eq v3, v1, :cond_248

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzafn:I

    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v2, v4

    :goto_17f
    const/16 v4, 0x4000

    if-gt v2, v4, :cond_241

    if-le v3, v4, :cond_187

    goto/16 :goto_241

    :cond_187
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    sub-int/2addr v4, v1

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalp:I

    add-int/2addr v5, v4

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalj:I

    if-le v5, v7, :cond_1a5

    div-int/lit8 v5, v7, 0x2

    add-int/2addr v5, v4

    add-int/2addr v7, v5

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalj:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalk:[S

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalj:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v7, v7, v8

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalk:[S

    :cond_1a5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v8, v1, v7

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalk:[S

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalp:I

    mul-int v10, v10, v7

    mul-int v7, v7, v4

    invoke-static {v5, v8, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalp:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalp:I

    const/4 v1, 0x0

    :goto_1be
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalp:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_22b

    :goto_1c4
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzall:I

    add-int/lit8 v5, v4, 0x1

    mul-int v5, v5, v2

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalm:I

    mul-int v8, v7, v3

    if-le v5, v8, :cond_213

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzif;->zzt(I)V

    const/4 v4, 0x0

    :goto_1d5
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    if-ge v4, v5, :cond_207

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    mul-int v8, v8, v5

    add-int/2addr v8, v4

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalk:[S

    mul-int v10, v1, v5

    add-int/2addr v10, v4

    aget-short v11, v9, v10

    add-int/2addr v10, v5

    aget-short v5, v9, v10

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalm:I

    mul-int v9, v9, v3

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzif;->zzall:I

    mul-int v12, v10, v2

    const/4 v13, 0x1

    add-int/2addr v10, v13

    mul-int v10, v10, v2

    sub-int v9, v10, v9

    sub-int/2addr v10, v12

    mul-int v11, v11, v9

    sub-int v9, v10, v9

    mul-int v9, v9, v5

    add-int/2addr v11, v9

    div-int/2addr v11, v10

    int-to-short v5, v11

    aput-short v5, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d5

    :cond_207
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalm:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalm:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    goto :goto_1c4

    :cond_213
    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzall:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzall:I

    if-ne v4, v3, :cond_228

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzif;->zzall:I

    if-ne v7, v2, :cond_222

    const/4 v4, 0x1

    goto :goto_223

    :cond_222
    const/4 v4, 0x0

    :goto_223
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalm:I

    :cond_228
    add-int/lit8 v1, v1, 0x1

    goto :goto_1be

    :cond_22b
    add-int/lit8 v1, v4, -0x1

    if-eqz v1, :cond_248

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalk:[S

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v5, v1, v3

    sub-int/2addr v4, v1

    mul-int v4, v4, v3

    invoke-static {v2, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalp:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzalp:I

    goto :goto_248

    :cond_241
    :goto_241
    const/4 v5, 0x1

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_17f

    :cond_248
    :goto_248
    return-void
.end method

.method private final zzt(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalh:I

    if-le v0, v1, :cond_1b

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalh:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    :cond_1b
    return-void
.end method

.method private final zzu(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalf:I

    if-le v0, v1, :cond_1b

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalf:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalf:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    :cond_1b
    return-void
.end method


# virtual methods
.method public final setSpeed(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaga:F

    return-void
.end method

.method public final zza(Ljava/nio/ShortBuffer;)V
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    div-int/2addr v0, v1

    mul-int v1, v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzif;->zzu(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v3, v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzif;->zzfs()V

    return-void
.end method

.method public final zzb(Ljava/nio/ShortBuffer;)V
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzali:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v0, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    mul-int v2, v2, v1

    invoke-static {p1, v0, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzc(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzagb:F

    return-void
.end method

.method public final zzev()V
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaga:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzagb:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalp:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    div-float/2addr v4, v2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v3, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzald:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzif;->zzu(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1f
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzif;->zzald:I

    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzif;->zzala:I

    mul-int v5, v5, v6

    if-ge v2, v5, :cond_33

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalg:[S

    mul-int v6, v6, v0

    add-int/2addr v6, v2

    aput-short v1, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzif;->zzfs()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    if-le v0, v3, :cond_43

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    :cond_43
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaln:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalq:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalp:I

    return-void
.end method

.method public final zzfr()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzalo:I

    return v0
.end method
