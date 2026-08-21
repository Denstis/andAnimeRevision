###### Class com.google.android.gms.internal.ads.zzit (com.google.android.gms.internal.ads.zzit)
.class public final Lcom/google/android/gms/internal/ads/zzit;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziv;


# static fields
.field private static final zzamn:[B


# instance fields
.field private final zzamo:Lcom/google/android/gms/internal/ads/zzne;

.field private final zzamp:J

.field private zzamq:J

.field private zzamr:[B

.field private zzams:I

.field private zzamt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzit;->zzamn:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzne;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamo:Lcom/google/android/gms/internal/ads/zzne;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamq:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamp:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    return-void
.end method

.method private final zza([BIIIZ)I
    .registers 7

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamo:Lcom/google/android/gms/internal/ads/zzne;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzne;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1c

    if-nez p4, :cond_16

    if-eqz p5, :cond_16

    return p2

    :cond_16
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1c
    add-int/2addr p4, p1

    return p4

    :cond_1e
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private final zzad(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamt:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzae(I)V

    return p1
.end method

.method private final zzae(I)V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamt:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzams:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamt:I

    array-length v3, v1

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_17

    const/high16 v1, 0x10000

    add-int/2addr v2, v1

    new-array v1, v2, [B

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamt:I

    invoke-static {v2, p1, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    return-void
.end method

.method private final zzaf(I)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamq:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamq:J

    :cond_9
    return-void
.end method

.method private final zzb([BII)I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamt:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzit;->zzae(I)V

    return p3
.end method

.method private final zzd(IZ)Z
    .registers 12

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzams:I

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    array-length v1, v0

    const/4 v2, 0x1

    if-le p2, v1, :cond_1d

    array-length v0, v0

    shl-int/2addr v0, v2

    const/high16 v1, 0x10000

    add-int/2addr v1, p2

    const/high16 v3, 0x80000

    add-int/2addr p2, v3

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzof;->zzd(III)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    :cond_1d
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamt:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzams:I

    sub-int/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v7, p2

    :cond_27
    if-ge v7, p1, :cond_39

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzit;->zzams:I

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzit;->zza([BIIIZ)I

    move-result v7

    const/4 p2, -0x1

    if-ne v7, p2, :cond_27

    const/4 p1, 0x0

    return p1

    :cond_39
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzams:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzams:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamt:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzit;->zzams:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamt:I

    return v2
.end method


# virtual methods
.method public final getLength()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamp:J

    return-wide v0
.end method

.method public final getPosition()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamq:J

    return-wide v0
.end method

.method public final read([BII)I
    .registers 11

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzit;->zzb([BII)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzit;->zza([BIIIZ)I

    move-result v0

    :cond_10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzaf(I)V

    return v0
.end method

.method public final readFully([BII)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzit;->zza([BIIZ)Z

    return-void
.end method

.method public final zza([BII)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzd(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_10

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzamr:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzit;->zzams:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_10
    return-void
.end method

.method public final zza([BIIZ)Z
    .registers 12

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzit;->zzb([BII)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p3, :cond_14

    if-eq v5, v0, :cond_14

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzit;->zza([BIIIZ)I

    move-result v5

    goto :goto_5

    :cond_14
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzit;->zzaf(I)V

    if-eq v5, v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public final zzaa(I)I
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzad(I)I

    move-result v0

    if-nez v0, :cond_15

    sget-object v2, Lcom/google/android/gms/internal/ads/zzit;->zzamn:[B

    const/4 v3, 0x0

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzit;->zza([BIIIZ)I

    move-result v0

    :cond_15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzaf(I)V

    return v0
.end method

.method public final zzab(I)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzit;->zzad(I)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p1, :cond_1a

    if-eq v5, v0, :cond_1a

    sget-object v2, Lcom/google/android/gms/internal/ads/zzit;->zzamn:[B

    neg-int v3, v5

    array-length v0, v2

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzit;->zza([BIIIZ)I

    move-result v5

    goto :goto_5

    :cond_1a
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzit;->zzaf(I)V

    return-void
.end method

.method public final zzac(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzd(IZ)Z

    return-void
.end method

.method public final zzgb()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzit;->zzams:I

    return-void
.end method
