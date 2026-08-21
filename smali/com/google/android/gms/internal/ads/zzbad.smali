###### Class com.google.android.gms.internal.ads.zzbad (com.google.android.gms.internal.ads.zzbad)
.class public final Lcom/google/android/gms/internal/ads/zzbad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgs;


# instance fields
.field private zzbfh:I

.field private final zzecc:Lcom/google/android/gms/internal/ads/zzni;

.field private zzecd:J

.field private zzece:J

.field private zzecf:J

.field private zzecg:J

.field private zzech:Z


# direct methods
.method constructor <init>()V
    .registers 8

    const/16 v1, 0x3a98

    const/16 v2, 0x7530

    const-wide/16 v3, 0x9c4

    const-wide/16 v5, 0x1388

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbad;-><init>(IIJJ)V

    return-void
.end method

.method private constructor <init>(IIJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzni;

    const/4 p2, 0x1

    const/high16 p3, 0x10000

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzni;-><init>(ZI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecc:Lcom/google/android/gms/internal/ads/zzni;

    const-wide/32 p1, 0xe4e1c0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecd:J

    const-wide/32 p1, 0x1c9c380

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzece:J

    const-wide/32 p1, 0x2625a0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecf:J

    const-wide/32 p1, 0x4c4b40

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecg:J

    return-void
.end method

.method private final zzj(Z)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzbfh:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzech:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecc:Lcom/google/android/gms/internal/ads/zzni;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzni;->reset()V

    :cond_c
    return-void
.end method


# virtual methods
.method public final onStopped()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzj(Z)V

    return-void
.end method

.method public final zza([Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzmv;)V
    .registers 6

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzbfh:I

    :goto_3
    array-length v0, p1

    if-ge p2, v0, :cond_1e

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzmv;->zzax(I)Lcom/google/android/gms/internal/ads/zzmt;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzbfh:I

    aget-object v1, p1, p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgx;->getTrackType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzof;->zzbk(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzbfh:I

    :cond_1b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecc:Lcom/google/android/gms/internal/ads/zzni;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzbfh:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzni;->zzba(I)V

    return-void
.end method

.method public final declared-synchronized zzc(JZ)Z
    .registers 8

    monitor-enter p0

    if-eqz p3, :cond_6

    :try_start_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecg:J

    goto :goto_8

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecf:J
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    :goto_8
    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_16

    cmp-long p3, p1, v0

    if-ltz p3, :cond_13

    goto :goto_16

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit p0

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x1

    goto :goto_14

    :catchall_18
    move-exception p1

    monitor-exit p0

    goto :goto_1c

    :goto_1b
    throw p1

    :goto_1c
    goto :goto_1b
.end method

.method public final declared-synchronized zzcu(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecf:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcv(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecg:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcz(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecd:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzda(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzece:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzdn(J)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzece:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmp-long v5, p1, v0

    if-lez v5, :cond_c

    const/4 p1, 0x0

    goto :goto_15

    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecd:J

    cmp-long v5, p1, v0

    if-gez v5, :cond_14

    const/4 p1, 0x2

    goto :goto_15

    :cond_14
    const/4 p1, 0x1

    :goto_15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecc:Lcom/google/android/gms/internal/ads/zzni;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzni;->zzid()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzbfh:I

    if-lt p2, v0, :cond_21

    const/4 p2, 0x1

    goto :goto_22

    :cond_21
    const/4 p2, 0x0

    :goto_22
    if-eq p1, v2, :cond_2c

    if-ne p1, v4, :cond_2d

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzech:Z

    if-eqz p1, :cond_2d

    if-nez p2, :cond_2d

    :cond_2c
    const/4 v3, 0x1

    :cond_2d
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzech:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzech:Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return p1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzel()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzj(Z)V

    return-void
.end method

.method public final zzem()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzj(Z)V

    return-void
.end method

.method public final zzen()Lcom/google/android/gms/internal/ads/zznc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzecc:Lcom/google/android/gms/internal/ads/zzni;

    return-object v0
.end method
