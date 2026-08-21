###### Class com.google.android.gms.internal.ads.zzatq (com.google.android.gms.internal.ads.zzatq)
.class public final Lcom/google/android/gms/internal/ads/zzatq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzbmp:Lcom/google/android/gms/common/util/Clock;

.field private final zzdjg:Ljava/lang/String;

.field private zzdkq:Z

.field private zzdku:J

.field private final zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

.field private final zzdqf:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzatp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdqg:Ljava/lang/String;

.field private zzdqh:J

.field private zzdqi:J

.field private zzdqj:J

.field private zzdqk:J

.field private zzdql:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzatz;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->lock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdku:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqh:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdkq:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqi:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdql:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdjg:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqf:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/common/util/Clock;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdjg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ismediation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "treq"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqk:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tresponse"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdql:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "timp"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqh:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tload"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqi:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pcc"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqj:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tfetch"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdku:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqf:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzatp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzatp;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_65
    const-string v3, "tclick"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v0

    return-object v1

    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    goto :goto_70

    :goto_6f
    throw v1

    :goto_70
    goto :goto_6f
.end method

.method public final zzag(Z)V
    .registers 7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatq;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdql:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqi:J

    :cond_13
    monitor-exit p1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zztx;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqk:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqk:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzatz;->zza(Lcom/google/android/gms/internal/ads/zztx;J)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final zzes(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdql:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdql:J

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzatz;->zzb(Lcom/google/android/gms/internal/ads/zzatq;)V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final zztx()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdql:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1e

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqh:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqh:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzatz;->zzb(Lcom/google/android/gms/internal/ads/zzatq;)V

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatz;->zztx()V

    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public final zzty()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdql:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_29

    new-instance v1, Lcom/google/android/gms/internal/ads/zzatp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzatp;-><init>(Lcom/google/android/gms/internal/ads/zzatq;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatp;->zztw()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqf:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqj:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqj:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatz;->zzty()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzatz;->zzb(Lcom/google/android/gms/internal/ads/zzatq;)V

    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public final zztz()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdql:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqf:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqf:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzatp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatp;->zztu()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_2b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatp;->zztv()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzatz;->zzb(Lcom/google/android/gms/internal/ads/zzatq;)V

    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public final zzua()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdqg:Ljava/lang/String;

    return-object v0
.end method
