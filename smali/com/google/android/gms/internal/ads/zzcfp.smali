###### Class com.google.android.gms.internal.ads.zzcfp (com.google.android.gms.internal.ads.zzcfp)
.class public final Lcom/google/android/gms/internal/ads/zzcfp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private responseCode:I

.field private zzfwf:J

.field private zzfwg:J

.field private zzfwh:J

.field private final zzfwi:Ljava/lang/Object;

.field private final zzfwj:Ljava/lang/Object;

.field private final zzfwk:Ljava/lang/Object;

.field private final zzfwl:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->responseCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwh:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwi:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwk:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwl:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getResponseCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwi:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcfp;->responseCode:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzako()J
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwf:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final declared-synchronized zzakp()J
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwk:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    :try_start_4
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwg:J

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v1

    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    :try_start_b
    throw v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzakq()J
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwl:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    :try_start_4
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwh:J

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v1

    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    :try_start_b
    throw v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzdh(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwi:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcfp;->responseCode:I

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzek(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwf:J

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final declared-synchronized zzel(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwl:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    :try_start_4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwh:J

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    :try_start_b
    throw p1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzey(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwk:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    :try_start_4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zzfwg:J

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    :try_start_b
    throw p1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
