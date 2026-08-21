###### Class com.google.android.gms.internal.ads.zzatw (com.google.android.gms.internal.ads.zzatw)
.class final Lcom/google/android/gms/internal/ads/zzatw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final lock:Ljava/lang/Object;

.field private volatile zzdrh:I

.field private volatile zzdri:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatw;->lock:Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/ads/zzatv;->zzdrd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatw;->zzdrh:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatw;->zzdri:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzatt;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzud()V
    .registers 8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatw;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzatw;->zzdrh:I

    sget v4, Lcom/google/android/gms/internal/ads/zzatv;->zzdrf:I

    if-ne v3, v4, :cond_2c

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzatw;->zzdri:J

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

    if-gtz v5, :cond_2c

    sget v0, Lcom/google/android/gms/internal/ads/zzatv;->zzdrd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatw;->zzdrh:I

    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_4f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzatw;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_38
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzatw;->zzdrh:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3f

    monitor-exit v3

    return-void

    :cond_3f
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzatw;->zzdrh:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzatw;->zzdrh:I

    sget v4, Lcom/google/android/gms/internal/ads/zzatv;->zzdrf:I

    if-ne v2, v4, :cond_4a

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatw;->zzdri:J

    :cond_4a
    monitor-exit v3

    return-void

    :catchall_4c
    move-exception v0

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_4c

    throw v0

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method
