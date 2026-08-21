###### Class com.google.android.gms.internal.ads.zzoc (com.google.android.gms.internal.ads.zzoc)
.class public final Lcom/google/android/gms/internal/ads/zzoc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public data:[B

.field private limit:I

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->limit:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->limit:I

    return-void
.end method


# virtual methods
.method public final capacity()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    array-length v0, v0

    return v0
.end method

.method public final getPosition()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    return v0
.end method

.method public final limit()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->limit:I

    return v0
.end method

.method public final readInt()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final readLong()J
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public final readShort()S
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final readUnsignedByte()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->limit:I

    return-void
.end method

.method public final reset(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [B

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    :goto_b
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzb([BI)V

    return-void
.end method

.method public final zzb([BI)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoc;->limit:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    return-void
.end method

.method public final zzbf(I)V
    .registers 3

    if-ltz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->limit:I

    return-void
.end method

.method public final zzbg(I)V
    .registers 3

    if-ltz p1, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->limit:I

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    return-void
.end method

.method public final zzbh(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    return-void
.end method

.method public final zzbi(I)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->limit:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    aget-byte v0, v1, v0

    if-nez v0, :cond_17

    add-int/lit8 v0, p1, -0x1

    goto :goto_18

    :cond_17
    move v0, p1

    :goto_18
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    return-object v1
.end method

.method public final zze([BII)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    return-void
.end method

.method public final zzim()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzin()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzio()J
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x18

    shl-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public final zzip()J
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public final zziq()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzoc;->position:I

    return v0
.end method

.method public final zzir()I
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzis()J
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_b

    return-wide v0

    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
