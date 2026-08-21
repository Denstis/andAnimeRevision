###### Class com.google.android.gms.internal.ads.zznz (com.google.android.gms.internal.ads.zznz)
.class public final Lcom/google/android/gms/internal/ads/zznz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private data:[B

.field private zzbgg:I

.field private zzbgh:I

.field private zzbgi:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zznz;-><init>([BI)V

    return-void
.end method

.method private constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznz;->data:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgi:I

    return-void
.end method


# virtual methods
.method public final zzbc(I)I
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    div-int/lit8 v1, p1, 0x8

    move v2, p1

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_9
    const/4 v4, 0x1

    const/16 v5, 0xff

    const/16 v6, 0x8

    if-ge p1, v1, :cond_38

    iget v7, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgh:I

    if-eqz v7, :cond_25

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zznz;->data:[B

    iget v9, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgg:I

    aget-byte v10, v8, v9

    and-int/2addr v10, v5

    shl-int/2addr v10, v7

    add-int/2addr v9, v4

    aget-byte v8, v8, v9

    and-int/2addr v8, v5

    sub-int/2addr v6, v7

    ushr-int v6, v8, v6

    or-int/2addr v6, v10

    goto :goto_2b

    :cond_25
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zznz;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgg:I

    aget-byte v6, v6, v7

    :goto_2b
    add-int/lit8 v2, v2, -0x8

    and-int/2addr v5, v6

    shl-int/2addr v5, v2

    or-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgg:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgg:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_38
    if-lez v2, :cond_6c

    iget p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgh:I

    add-int/2addr p1, v2

    rsub-int/lit8 v1, v2, 0x8

    shr-int v1, v5, v1

    int-to-byte v1, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznz;->data:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgg:I

    if-le p1, v6, :cond_5d

    aget-byte v8, v2, v7

    and-int/2addr v8, v5

    add-int/lit8 v9, p1, -0x8

    shl-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    aget-byte v2, v2, v9

    and-int/2addr v2, v5

    rsub-int/lit8 v5, p1, 0x10

    shr-int/2addr v2, v5

    or-int/2addr v2, v8

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    :goto_59
    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgg:I

    goto :goto_68

    :cond_5d
    aget-byte v2, v2, v7

    and-int/2addr v2, v5

    rsub-int/lit8 v5, p1, 0x8

    shr-int/2addr v2, v5

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    if-ne p1, v6, :cond_68

    goto :goto_59

    :cond_68
    :goto_68
    move v3, v1

    rem-int/2addr p1, v6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgh:I

    :cond_6c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgg:I

    if-ltz p1, :cond_7f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgh:I

    if-ltz v1, :cond_7f

    if-ge v1, v6, :cond_7f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbgi:I

    if-lt p1, v2, :cond_7e

    if-ne p1, v2, :cond_7f

    if-nez v1, :cond_7f

    :cond_7e
    const/4 v0, 0x1

    :cond_7f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    return v3
.end method
