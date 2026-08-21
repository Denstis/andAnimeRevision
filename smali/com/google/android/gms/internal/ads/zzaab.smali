###### Class com.google.android.gms.internal.ads.zzaab (com.google.android.gms.internal.ads.zzaab)
.class public final Lcom/google/android/gms/internal/ads/zzaab;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final lock:Ljava/lang/Object;

.field zzcut:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzcuu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzzz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcuv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcuw:Lcom/google/android/gms/internal/ads/zzaab;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuu:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuv:Ljava/util/Map;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->lock:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcut:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuv:Ljava/util/Map;

    const-string v0, "action"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuv:Ljava/util/Map;

    const-string p2, "ad_format"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/android/gms/internal/ads/zzzz;J[Ljava/lang/String;)Z
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    array-length v1, p4

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_16

    aget-object v3, p4, v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzzz;

    invoke-direct {v4, p2, p3, v3, p1}, Lcom/google/android/gms/internal/ads/zzzz;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzz;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuu:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    goto :goto_1d

    :goto_1c
    throw p1

    :goto_1d
    goto :goto_1c
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaab;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuw:Lcom/google/android/gms/internal/ads/zzaab;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzer(J)Lcom/google/android/gms/internal/ads/zzzz;
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcut:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzz;

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzzz;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzz;)V

    return-object v0
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcut:Z

    if-eqz v0, :cond_31

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_31

    :cond_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatr;->zzub()Lcom/google/android/gms/internal/ads/zzzr;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzr;->zzcl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzzv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuv:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Lcom/google/android/gms/internal/ads/zzzv;->zzi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_2e

    throw p1

    :cond_31
    :goto_31
    return-void
.end method

.method public final zzqc()Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuu:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzzz;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzzz;->zzpz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzzz;->zzqa()Lcom/google/android/gms/internal/ads/zzzz;

    move-result-object v3

    if-eqz v3, :cond_e

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-lez v9, :cond_e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzzz;->getTime()J

    move-result-wide v7

    sub-long/2addr v4, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuu:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_63

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_63
    :goto_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_69
    move-exception v0

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_8 .. :try_end_6b} :catchall_69

    goto :goto_6d

    :goto_6c
    throw v0

    :goto_6d
    goto :goto_6c
.end method

.method final zzqd()Ljava/util/Map;
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatr;->zzub()Lcom/google/android/gms/internal/ads/zzzr;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuw:Lcom/google/android/gms/internal/ads/zzaab;

    if-nez v2, :cond_12

    goto :goto_20

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuv:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuw:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaab;->zzqd()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzzr;->zza(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcuv:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method
