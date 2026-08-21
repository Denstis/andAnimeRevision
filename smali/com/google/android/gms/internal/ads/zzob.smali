###### Class com.google.android.gms.internal.ads.zzob (com.google.android.gms.internal.ads.zzob)
.class public final Lcom/google/android/gms/internal/ads/zzob;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private data:[B

.field private zzbgg:I

.field private zzbgh:I

.field private zzbgi:I


# direct methods
.method public constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzob;->data:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgi:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgh:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzob;->zzil()V

    return-void
.end method

.method private final zzbe(I)Z
    .registers 5

    const/4 v0, 0x2

    if-gt v0, p1, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgi:I

    if-ge p1, v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzob;->data:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p1, v0, p1

    if-nez p1, :cond_1b

    return v1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method private final zzik()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzob;->zzih()Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_15

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzob;->zzbc(I)I

    move-result v0

    :cond_15
    add-int/2addr v3, v0

    return v3
.end method

.method private final zzil()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    if-ltz v0, :cond_16

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgh:I

    if-ltz v1, :cond_16

    const/16 v2, 0x8

    if-ge v1, v2, :cond_16

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgi:I

    if-lt v0, v2, :cond_14

    if-ne v0, v2, :cond_16

    if-nez v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public final zzbc(I)I
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    div-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v0, v1, :cond_44

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzob;->zzbe(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 v5, v5, 0x2

    goto :goto_20

    :cond_1c
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 v5, v5, 0x1

    :goto_20
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgh:I

    if-eqz v6, :cond_34

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzob;->data:[B

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    aget-byte v8, v7, v8

    and-int/2addr v8, v3

    shl-int/2addr v8, v6

    aget-byte v7, v7, v5

    and-int/2addr v7, v3

    sub-int/2addr v4, v6

    ushr-int v4, v7, v4

    or-int/2addr v4, v8

    goto :goto_3a

    :cond_34
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzob;->data:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    aget-byte v4, v4, v6

    :goto_3a
    add-int/lit8 p1, p1, -0x8

    and-int/2addr v3, v4

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_44
    if-lez p1, :cond_88

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgh:I

    add-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, v3, p1

    int-to-byte p1, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzob;->zzbe(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 v1, v1, 0x2

    goto :goto_61

    :cond_5d
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 v1, v1, 0x1

    :goto_61
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzob;->data:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    if-le v0, v4, :cond_79

    aget-byte v6, v5, v6

    and-int/2addr v6, v3

    add-int/lit8 v7, v0, -0x8

    shl-int/2addr v6, v7

    aget-byte v5, v5, v1

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v0, 0x10

    shr-int/2addr v3, v5

    or-int/2addr v3, v6

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    :goto_76
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    goto :goto_84

    :cond_79
    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v0, 0x8

    shr-int/2addr v3, v5

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    if-ne v0, v4, :cond_84

    goto :goto_76

    :cond_84
    :goto_84
    move v2, p1

    rem-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgh:I

    :cond_88
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzob;->zzil()V

    return v2
.end method

.method public final zzbd(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgh:I

    rem-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgh:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgh:I

    const/4 v1, 0x7

    if-le p1, v1, :cond_1d

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgh:I

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    if-gt v0, p1, :cond_32

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzob;->zzbe(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzob;->zzbgg:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_1d

    :cond_32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzob;->zzil()V

    return-void
.end method

.method public final zzih()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzob;->zzbc(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzii()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzob;->zzik()I

    move-result v0

    return v0
.end method

.method public final zzij()I
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzob;->zzik()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_b

    const/4 v1, -0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    :goto_c
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int v1, v1, v0

    return v1
.end method
