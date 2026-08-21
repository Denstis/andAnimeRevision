###### Class com.google.android.gms.internal.ads.zzmc (com.google.android.gms.internal.ads.zzmc)
.class public final Lcom/google/android/gms/internal/ads/zzmc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjd;


# instance fields
.field private final zzant:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzazw:Lcom/google/android/gms/internal/ads/zznc;

.field private final zzbcl:I

.field private final zzbcm:Lcom/google/android/gms/internal/ads/zzma;

.field private final zzbcn:Lcom/google/android/gms/internal/ads/zzlz;

.field private final zzbco:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

.field private zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

.field private zzbcr:Lcom/google/android/gms/internal/ads/zzgo;

.field private zzbcs:Z

.field private zzbct:Lcom/google/android/gms/internal/ads/zzgo;

.field private zzbcu:J

.field private zzbcv:I

.field private zzbcw:Lcom/google/android/gms/internal/ads/zzme;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zznc;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzazw:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznc;->zzia()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzma;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzma;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzlz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzlz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcn:Lcom/google/android/gms/internal/ads/zzlz;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzoc;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbco:Ljava/util/concurrent/atomic/AtomicInteger;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzmb;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzmb;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

    return-void
.end method

.method private final zza(J[BI)V
    .registers 11

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmc;->zzed(J)V

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-ge v0, p4, :cond_3c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzmb;->zzbch:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    sub-int v1, p4, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzmb;->zzbcj:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzmz;->data:[B

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzmz;->zzay(I)I

    move-result v2

    invoke-static {v4, v2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v1

    add-long/2addr p1, v4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzmb;->zzaqu:J

    cmp-long v4, p1, v1

    if-nez v4, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzazw:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zznc;->zza(Lcom/google/android/gms/internal/ads/zzmz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzmb;->zzht()Lcom/google/android/gms/internal/ads/zzmb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    goto :goto_4

    :cond_3c
    return-void
.end method

.method private final zzat(I)I
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzbci:Z

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzbck:Lcom/google/android/gms/internal/ads/zzmb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzazw:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zznc;->zzhz()Lcom/google/android/gms/internal/ads/zzmz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzmb;->zzaqu:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzmb;-><init>(JI)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcj:Lcom/google/android/gms/internal/ads/zzmz;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzbck:Lcom/google/android/gms/internal/ads/zzmb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzbci:Z

    :cond_2d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final zzed(J)V
    .registers 7

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzaqu:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzazw:Lcom/google/android/gms/internal/ads/zznc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcj:Lcom/google/android/gms/internal/ads/zzmz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zznc;->zza(Lcom/google/android/gms/internal/ads/zzmz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmb;->zzht()Lcom/google/android/gms/internal/ads/zzmb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    goto :goto_0

    :cond_18
    return-void
.end method

.method private final zzhn()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzma;->zzhn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzbci:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzmb;->zzbci:Z

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzmb;->zzbch:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzbch:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    div-int/2addr v1, v3

    add-int/2addr v2, v1

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzmz;

    const/4 v2, 0x0

    :goto_1c
    array-length v3, v1

    if-ge v2, v3, :cond_2a

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzmb;->zzbcj:Lcom/google/android/gms/internal/ads/zzmz;

    aput-object v3, v1, v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmb;->zzht()Lcom/google/android/gms/internal/ads/zzmb;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzazw:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zznc;->zza([Lcom/google/android/gms/internal/ads/zzmz;)V

    :cond_2f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzmb;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcu:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzazw:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznc;->zzm()V

    return-void
.end method

.method private final zzhv()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbco:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private final zzhw()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbco:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhn()V

    :cond_d
    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbco:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhn()V

    :cond_c
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;ZZJ)I
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcr:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcn:Lcom/google/android/gms/internal/ads/zzlz;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzma;->zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;ZZLcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzlz;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_14d

    const/4 v2, -0x4

    if-eq v1, v2, :cond_26

    const/4 v2, -0x3

    if-ne v1, v2, :cond_20

    return v2

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_26
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzih;->zzfv()Z

    move-result v1

    if-nez v1, :cond_14c

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/zzik;->zzamb:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_37

    const/high16 v1, -0x80000000

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzih;->zzv(I)V

    :cond_37
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzik;->zzfx()Z

    move-result v1

    if-eqz v1, :cond_fd

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcn:Lcom/google/android/gms/internal/ads/zzlz;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlz;->zzauv:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzoc;->reset(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzmc;->zza(J[BI)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v9, v5, 0x80

    if-eqz v9, :cond_5e

    const/4 v9, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v9, 0x0

    :goto_5f
    and-int/lit8 v5, v5, 0x7f

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzik;->zzama:Lcom/google/android/gms/internal/ads/zzig;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzig;->iv:[B

    if-nez v11, :cond_6d

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzig;->iv:[B

    :cond_6d
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzik;->zzama:Lcom/google/android/gms/internal/ads/zzig;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzig;->iv:[B

    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zzmc;->zza(J[BI)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    if-eqz v9, :cond_90

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzoc;->reset(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzmc;->zza(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedShort()I

    move-result v6

    move v11, v6

    goto :goto_91

    :cond_90
    const/4 v11, 0x1

    :goto_91
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzik;->zzama:Lcom/google/android/gms/internal/ads/zzig;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzig;->numBytesOfClearData:[I

    if-eqz v5, :cond_9a

    array-length v6, v5

    if-ge v6, v11, :cond_9c

    :cond_9a
    new-array v5, v11, [I

    :cond_9c
    move-object v12, v5

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzik;->zzama:Lcom/google/android/gms/internal/ads/zzig;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzig;->numBytesOfEncryptedData:[I

    if-eqz v5, :cond_a6

    array-length v6, v5

    if-ge v6, v11, :cond_a8

    :cond_a6
    new-array v5, v11, [I

    :cond_a8
    move-object v13, v5

    if-eqz v9, :cond_d5

    mul-int/lit8 v5, v11, 0x6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzoc;->reset(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzmc;->zza(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    :goto_c0
    if-ge v7, v11, :cond_e1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedShort()I

    move-result v5

    aput v5, v12, v7

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v5

    aput v5, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c0

    :cond_d5
    aput v7, v12, v7

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzlz;->size:I

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzlz;->zzauv:J

    sub-long v9, v3, v9

    long-to-int v6, v9

    sub-int/2addr v5, v6

    aput v5, v13, v7

    :cond_e1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzlz;->zzapp:Lcom/google/android/gms/internal/ads/zzjg;

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzik;->zzama:Lcom/google/android/gms/internal/ads/zzig;

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzjg;->zzani:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzig;->iv:[B

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzjg;->zzanh:I

    move/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzig;->set(I[I[I[B[BI)V

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzlz;->zzauv:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    int-to-long v9, v4

    add-long/2addr v5, v9

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzlz;->zzauv:J

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzlz;->size:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzlz;->size:I

    :cond_fd
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcn:Lcom/google/android/gms/internal/ads/zzlz;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlz;->size:I

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzik;->zzx(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcn:Lcom/google/android/gms/internal/ads/zzlz;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlz;->zzauv:J

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlz;->size:I

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzmc;->zzed(J)V

    :cond_10f
    :goto_10f
    if-lez v1, :cond_145

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzmb;->zzbch:J

    sub-long v6, v3, v6

    long-to-int v7, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcl:I

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzmb;->zzbcj:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzmz;->data:[B

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzmz;->zzay(I)I

    move-result v7

    invoke-virtual {v5, v9, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v9, v6

    add-long/2addr v3, v9

    sub-int/2addr v1, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzmb;->zzaqu:J

    cmp-long v9, v3, v6

    if-nez v9, :cond_10f

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzazw:Lcom/google/android/gms/internal/ads/zznc;

    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/ads/zznc;->zza(Lcom/google/android/gms/internal/ads/zzmz;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzmb;->zzht()Lcom/google/android/gms/internal/ads/zzmb;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcp:Lcom/google/android/gms/internal/ads/zzmb;

    goto :goto_10f

    :cond_145
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcn:Lcom/google/android/gms/internal/ads/zzlz;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlz;->zzbbu:J

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzmc;->zzed(J)V

    :cond_14c
    return v2

    :cond_14d
    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgq;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcr:Lcom/google/android/gms/internal/ads/zzgo;

    return v2
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zziv;IZ)I
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhv()Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_14

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zziv;->zzaa(I)I

    move-result p1

    if-eq p1, v0, :cond_e

    return p1

    :cond_e
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_14
    :try_start_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzmc;->zzat(I)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzmb;->zzbcj:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzmz;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzmz;->zzay(I)I

    move-result p3

    invoke-interface {p1, v1, p3, p2}, Lcom/google/android/gms/internal/ads/zziv;->read([BII)I

    move-result p1

    if-eq p1, v0, :cond_39

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcu:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcu:J
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_3f

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhw()V

    return p1

    :cond_39
    :try_start_39
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhw()V

    throw p1
.end method

.method public final zza(JIIILcom/google/android/gms/internal/ads/zzjg;)V
    .registers 17

    move-object v1, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhv()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    move-wide v3, p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzma;->zzec(J)V

    return-void

    :cond_e
    move-wide v3, p1

    :try_start_f
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzmc;->zzbcu:J

    move v0, p4

    int-to-long v7, v0

    sub-long v7, v5, v7

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    move-wide v3, p1

    move v5, p3

    move-wide v6, v7

    move v8, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzma;->zza(JIJILcom/google/android/gms/internal/ads/zzjg;)V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_24

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhw()V

    return-void

    :catchall_24
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhw()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzme;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcw:Lcom/google/android/gms/internal/ads/zzme;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzoc;I)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhv()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    return-void

    :cond_a
    :goto_a
    if-lez p2, :cond_2c

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzmc;->zzat(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcq:Lcom/google/android/gms/internal/ads/zzmb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzmb;->zzbcj:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzmz;->data:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzmz;->zzay(I)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zze([BII)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcv:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcu:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcu:J

    sub-int/2addr p2, v0

    goto :goto_a

    :cond_2c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhw()V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzgo;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move-object v0, p1

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzma;->zzg(Lcom/google/android/gms/internal/ads/zzgo;)Z

    move-result v1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbct:Lcom/google/android/gms/internal/ads/zzgo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcs:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcw:Lcom/google/android/gms/internal/ads/zzme;

    if-eqz p1, :cond_19

    if-eqz v1, :cond_19

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzme;->zzf(Lcom/google/android/gms/internal/ads/zzgo;)V

    :cond_19
    return-void
.end method

.method public final zze(JZ)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzma;->zzd(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmc;->zzed(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzhh()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzma;->zzhh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzhp()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzma;->zzhp()I

    move-result v0

    return v0
.end method

.method public final zzhq()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzma;->zzhq()Z

    move-result v0

    return v0
.end method

.method public final zzhr()Lcom/google/android/gms/internal/ads/zzgo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzma;->zzhr()Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v0

    return-object v0
.end method

.method public final zzhu()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzma;->zzhs()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzmc;->zzed(J)V

    :cond_f
    return-void
.end method

.method public final zzj(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbco:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_8

    :cond_7
    const/4 p1, 0x2

    :goto_8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmc;->zzhn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcm:Lcom/google/android/gms/internal/ads/zzma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzma;->zzho()V

    if-ne p1, v1, :cond_19

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmc;->zzbcr:Lcom/google/android/gms/internal/ads/zzgo;

    :cond_19
    return-void
.end method
