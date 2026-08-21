###### Class com.google.android.gms.internal.ads.zzdqa (com.google.android.gms.internal.ads.zzdqa)
.class final Lcom/google/android/gms/internal/ads/zzdqa;
.super Lcom/google/android/gms/internal/ads/zzdpy;
.source ""


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private final zzhgo:Z

.field private zzhgp:I

.field private zzhgq:I

.field private zzhgr:I

.field private zzhgs:I


# direct methods
.method private constructor <init>([BIIZ)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdpy;-><init>(Lcom/google/android/gms/internal/ads/zzdqb;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgs:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgq:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgo:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/ads/zzdqb;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdqa;-><init>([BIIZ)V

    return-void
.end method

.method private final zzaym()I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    if-eq v1, v0, :cond_6b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_11

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    return v0

    :cond_11
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6b

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_22

    xor-int/lit8 v0, v0, -0x80

    goto :goto_68

    :cond_22
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2f

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2d
    move v1, v3

    goto :goto_68

    :cond_2f
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3d

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_68

    :cond_3d
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_68

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_68

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6b

    :cond_68
    :goto_68
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    return v0

    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayj()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private final zzayn()J
    .registers 12

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    if-eq v1, v0, :cond_b5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_b5

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_26

    xor-int/lit8 v0, v0, -0x80

    :goto_22
    int-to-long v2, v0

    move-wide v3, v2

    goto/16 :goto_b2

    :cond_26
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_37

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v3, v9

    goto/16 :goto_b2

    :cond_37
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_45

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_22

    :cond_45
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5c

    const-wide/32 v1, 0xfe03f80

    :goto_58
    xor-long/2addr v1, v3

    move-wide v3, v1

    :cond_5a
    move v1, v0

    goto :goto_b2

    :cond_5c
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_70

    const-wide v5, -0x7f01fc080L

    :goto_6e
    xor-long/2addr v3, v5

    goto :goto_b2

    :cond_70
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_83

    const-wide v1, 0x3f80fe03f80L

    goto :goto_58

    :cond_83
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_96

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_6e

    :cond_96
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_5a

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_b5

    :goto_b2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    return-wide v3

    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayj()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzayo()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0
.end method

.method private final zzayp()J
    .registers 10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0
.end method

.method private final zzayq()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgq:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgs:I

    if-le v1, v2, :cond_1a

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgp:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    return-void

    :cond_1a
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgp:I

    return-void
.end method

.method private final zzayr()B
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    aget-byte v0, v1, v0

    return v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0
.end method

.method private final zzfu(I)V
    .registers 4

    if-ltz p1, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    return-void

    :cond_d
    if-gez p1, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final readDouble()D
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaym()I

    move-result v0

    if-lez v0, :cond_1c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdqx;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    return-object v1

    :cond_1c
    if-nez v0, :cond_21

    const-string v0, ""

    return-object v0

    :cond_21
    if-gez v0, :cond_28

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0
.end method

.method public final zzaxu()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayk()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgr:I

    return v0

    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaym()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgr:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgr:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_17

    return v0

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbaf()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0
.end method

.method public final zzaxv()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzaxw()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzaxx()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaym()I

    move-result v0

    return v0
.end method

.method public final zzaxy()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzaxz()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayo()I

    move-result v0

    return v0
.end method

.method public final zzaya()Z
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzayb()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaym()I

    move-result v0

    if-lez v0, :cond_19

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdtw;->zzn([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    const-string v0, ""

    return-object v0

    :cond_1e
    if-gtz v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0
.end method

.method public final zzayc()Lcom/google/android/gms/internal/ads/zzdpm;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaym()I

    move-result v0

    if-lez v0, :cond_19

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzh([BII)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpm;->zzhgb:Lcom/google/android/gms/internal/ads/zzdpm;

    return-object v0

    :cond_1e
    if-lez v0, :cond_33

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_33

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_39

    :cond_33
    if-gtz v0, :cond_43

    if-nez v0, :cond_3e

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqx;->zzhlj:[B

    :goto_39
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzz([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v0

    return-object v0

    :cond_3e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0

    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0
.end method

.method public final zzayd()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaym()I

    move-result v0

    return v0
.end method

.method public final zzaye()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaym()I

    move-result v0

    return v0
.end method

.method public final zzayf()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayo()I

    move-result v0

    return v0
.end method

.method public final zzayg()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzayh()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaym()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdpy;->zzft(I)I

    move-result v0

    return v0
.end method

.method public final zzayi()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayn()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpy;->zzez(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzayj()J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayr()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbae()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method public final zzayk()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzayl()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgq:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzfp(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgr:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbag()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1
.end method

.method public final zzfq(I)Z
    .registers 7

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    if-eq v0, v2, :cond_39

    const/4 v3, 0x2

    if-eq v0, v3, :cond_31

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1d

    const/4 p1, 0x5

    if-ne v0, p1, :cond_18

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzdqa;->zzfu(I)V

    return v2

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbah()Lcom/google/android/gms/internal/ads/zzdrf;

    move-result-object p1

    throw p1

    :cond_1d
    return v1

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaxu()I

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzfq(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_2a
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqa;->zzfp(I)V

    return v2

    :cond_31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaym()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqa;->zzfu(I)V

    return v2

    :cond_39
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqa;->zzfu(I)V

    return v2

    :cond_3f
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->limit:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_5e

    :goto_48
    if-ge v1, v0, :cond_59

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzdqa;->pos:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_69

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbae()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1

    :cond_5e
    :goto_5e
    if-ge v1, v0, :cond_6a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayr()B

    move-result p1

    if-gez p1, :cond_69

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_69
    return v2

    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbae()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    goto :goto_70

    :goto_6f
    throw p1

    :goto_70
    goto :goto_6f
.end method

.method public final zzfr(I)I
    .registers 3

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayl()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgs:I

    if-gt p1, v0, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgs:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayq()V

    return v0

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1
.end method

.method public final zzfs(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhgs:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzayq()V

    return-void
.end method
