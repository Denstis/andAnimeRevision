###### Class com.google.android.gms.internal.ads.zzni (com.google.android.gms.internal.ads.zzni)
.class public final Lcom/google/android/gms/internal/ads/zzni;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznc;


# instance fields
.field private final zzbfd:Z

.field private final zzbfe:I

.field private final zzbff:[B

.field private final zzbfg:[Lcom/google/android/gms/internal/ads/zzmz;

.field private zzbfh:I

.field private zzbfi:I

.field private zzbfj:I

.field private zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;


# direct methods
.method public constructor <init>(ZI)V
    .registers 4

    const/4 p1, 0x1

    const/high16 p2, 0x10000

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzni;-><init>(ZII)V

    return-void
.end method

.method private constructor <init>(ZII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfd:Z

    const/high16 p2, 0x10000

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfe:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    const/16 p2, 0x64

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zzmz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbff:[B

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzmz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfg:[Lcom/google/android/gms/internal/ads/zzmz;

    return-void
.end method


# virtual methods
.method public final declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfd:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzba(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzmz;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfg:[Lcom/google/android/gms/internal/ads/zzmz;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfg:[Lcom/google/android/gms/internal/ads/zzmz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzni;->zza([Lcom/google/android/gms/internal/ads/zzmz;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza([Lcom/google/android/gms/internal/ads/zzmz;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;

    array-length v1, v1

    shl-int/2addr v1, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    array-length v4, p1

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzmz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;

    :cond_21
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v0, :cond_47

    aget-object v4, p1, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzmz;->data:[B

    if-eqz v5, :cond_36

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzmz;->data:[B

    array-length v5, v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfe:I

    if-ne v5, v6, :cond_34

    goto :goto_36

    :cond_34
    const/4 v5, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v5, 0x1

    :goto_37
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    aput-object v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_47
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfi:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfi:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    goto :goto_56

    :goto_55
    throw p1

    :goto_56
    goto :goto_55
.end method

.method public final declared-synchronized zzba(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfh:I

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfh:I

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzni;->zzm()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzhz()Lcom/google/android/gms/internal/ads/zzmz;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfi:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_27

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfe:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzmz;-><init>([BI)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    :goto_27
    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzia()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfe:I

    return v0
.end method

.method public final declared-synchronized zzid()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfi:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfe:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzm()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfe:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzof;->zze(II)I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfi:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    if-lt v0, v1, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfk:[Lcom/google/android/gms/internal/ads/zzmz;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfj:I
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method
