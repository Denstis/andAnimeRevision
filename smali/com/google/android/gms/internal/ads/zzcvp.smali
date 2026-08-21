###### Class com.google.android.gms.internal.ads.zzcvp (com.google.android.gms.internal.ads.zzcvp)
.class public final Lcom/google/android/gms/internal/ads/zzcvp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzbmp:Lcom/google/android/gms/common/util/Clock;

.field private volatile zzdri:J

.field private volatile zzgix:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->lock:Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgix:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzdri:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzamw()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvp;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgix:I

    sget v4, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjs:I

    if-ne v3, v4, :cond_2a

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzdri:J

    sget-object v5, Lcom/google/android/gms/internal/ads/zzza;->zzcsl:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_2a

    sget v0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgix:I

    :cond_2a
    monitor-exit v2

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private final zzq(II)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcvp;->zzamw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvp;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgix:I

    if-eq v3, p1, :cond_12

    monitor-exit v2

    return-void

    :cond_12
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgix:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgix:I

    sget p2, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjs:I

    if-ne p1, p2, :cond_1c

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzdri:J

    :cond_1c
    monitor-exit v2

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw p1
.end method


# virtual methods
.method public final zzamx()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcvp;->zzamw()V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgix:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjr:I

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0

    return v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final zzamy()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcvp;->zzamw()V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgix:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjs:I

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0

    return v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final zzbd(Z)V
    .registers 3

    if-eqz p1, :cond_a

    sget p1, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjq:I

    sget v0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjr:I

    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcvp;->zzq(II)V

    return-void

    :cond_a
    sget p1, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjr:I

    sget v0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjq:I

    goto :goto_6
.end method

.method public final zzud()V
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjr:I

    sget v1, Lcom/google/android/gms/internal/ads/zzcvs;->zzgjs:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcvp;->zzq(II)V

    return-void
.end method
