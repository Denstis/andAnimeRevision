###### Class com.google.android.gms.internal.ads.zzdmo (com.google.android.gms.internal.ads.zzdmo)
.class final Lcom/google/android/gms/internal/ads/zzdmo;
.super Lcom/google/android/gms/internal/ads/zzdml;
.source ""


# static fields
.field private static final zzhbl:[I

.field private static final zzhbm:[I


# instance fields
.field private state:I

.field private value:I

.field private final zzhbn:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdmo;->zzhbl:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_216

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdmo;->zzhbm:[I

    return-void

    nop

    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_216
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdml;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdml;->zzhbj:[B

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdmo;->zzhbl:[I

    goto :goto_e

    :cond_c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdmo;->zzhbm:[I

    :goto_e
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzhbn:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdmo;->state:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdmo;->value:I

    return-void
.end method


# virtual methods
.method public final zzb([BIIZ)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzdmo;->state:I

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-ne v2, v4, :cond_b

    return v3

    :cond_b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdml;->zzhbj:[B

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdmo;->zzhbn:[I

    const/4 v7, 0x5

    const/4 v8, 0x4

    move v9, v2

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_15
    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v2, v1, :cond_f3

    if-nez v9, :cond_60

    :goto_1c
    add-int/lit8 v15, v2, 0x4

    if-gt v15, v1, :cond_5e

    aget-byte v10, p1, v2

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v16, v2, 0x1

    aget-byte v3, p1, v16

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v3, v10

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shl-int/2addr v10, v4

    or-int/2addr v3, v10

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    or-int/2addr v10, v3

    if-ltz v10, :cond_5e

    add-int/lit8 v2, v11, 0x2

    int-to-byte v3, v10

    aput-byte v3, v5, v2

    add-int/lit8 v2, v11, 0x1

    shr-int/lit8 v3, v10, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    shr-int/lit8 v2, v10, 0x10

    int-to-byte v2, v2

    aput-byte v2, v5, v11

    add-int/lit8 v11, v11, 0x3

    move v2, v15

    const/4 v3, 0x0

    goto :goto_1c

    :cond_5e
    if-ge v2, v1, :cond_f3

    :cond_60
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    const/4 v15, -0x1

    if-eqz v9, :cond_e3

    if-eq v9, v14, :cond_d5

    const/4 v14, -0x2

    if-eq v9, v13, :cond_c0

    if-eq v9, v12, :cond_87

    if-eq v9, v8, :cond_7e

    if-eq v9, v7, :cond_78

    goto/16 :goto_ef

    :cond_78
    if-eq v2, v15, :cond_ef

    :goto_7a
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzdmo;->state:I

    const/4 v12, 0x0

    return v12

    :cond_7e
    const/4 v12, 0x0

    if-ne v2, v14, :cond_82

    goto :goto_db

    :cond_82
    if-eq v2, v15, :cond_ef

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzdmo;->state:I

    return v12

    :cond_87
    if-ltz v2, :cond_a5

    shl-int/lit8 v9, v10, 0x6

    or-int v10, v9, v2

    add-int/lit8 v2, v11, 0x2

    int-to-byte v9, v10

    aput-byte v9, v5, v2

    add-int/lit8 v2, v11, 0x1

    shr-int/lit8 v9, v10, 0x8

    int-to-byte v9, v9

    aput-byte v9, v5, v2

    shr-int/lit8 v2, v10, 0x10

    int-to-byte v2, v2

    aput-byte v2, v5, v11

    add-int/lit8 v11, v11, 0x3

    move v2, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_15

    :cond_a5
    if-ne v2, v14, :cond_ba

    add-int/lit8 v2, v11, 0x1

    shr-int/lit8 v9, v10, 0x2

    int-to-byte v9, v9

    aput-byte v9, v5, v2

    shr-int/lit8 v2, v10, 0xa

    int-to-byte v2, v2

    aput-byte v2, v5, v11

    add-int/lit8 v11, v11, 0x2

    move v2, v3

    const/4 v3, 0x0

    const/4 v9, 0x5

    goto/16 :goto_15

    :cond_ba
    if-eq v2, v15, :cond_ef

    :cond_bc
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzdmo;->state:I

    const/4 v1, 0x0

    return v1

    :cond_c0
    if-ltz v2, :cond_c3

    goto :goto_d8

    :cond_c3
    if-ne v2, v14, :cond_d2

    add-int/lit8 v2, v11, 0x1

    shr-int/lit8 v9, v10, 0x4

    int-to-byte v9, v9

    aput-byte v9, v5, v11

    move v11, v2

    move v2, v3

    const/4 v3, 0x0

    const/4 v9, 0x4

    goto/16 :goto_15

    :cond_d2
    if-eq v2, v15, :cond_ef

    goto :goto_7a

    :cond_d5
    const/4 v12, 0x0

    if-ltz v2, :cond_de

    :goto_d8
    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v2

    :goto_db
    add-int/lit8 v9, v9, 0x1

    goto :goto_ef

    :cond_de
    if-eq v2, v15, :cond_ef

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzdmo;->state:I

    return v12

    :cond_e3
    const/4 v12, 0x0

    if-ltz v2, :cond_ea

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    goto :goto_ef

    :cond_ea
    if-eq v2, v15, :cond_ef

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzdmo;->state:I

    return v12

    :cond_ef
    :goto_ef
    move v2, v3

    const/4 v3, 0x0

    goto/16 :goto_15

    :cond_f3
    if-eqz v9, :cond_115

    if-eq v9, v14, :cond_bc

    if-eq v9, v13, :cond_10d

    if-eq v9, v12, :cond_fe

    if-eq v9, v8, :cond_bc

    goto :goto_115

    :cond_fe
    add-int/lit8 v1, v11, 0x1

    shr-int/lit8 v2, v10, 0xa

    int-to-byte v2, v2

    aput-byte v2, v5, v11

    add-int/lit8 v11, v1, 0x1

    shr-int/lit8 v2, v10, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    goto :goto_115

    :cond_10d
    add-int/lit8 v1, v11, 0x1

    shr-int/lit8 v2, v10, 0x4

    int-to-byte v2, v2

    aput-byte v2, v5, v11

    move v11, v1

    :cond_115
    :goto_115
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzdmo;->state:I

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzdml;->zzhbk:I

    return v14
.end method
