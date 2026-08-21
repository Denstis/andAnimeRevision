###### Class com.google.android.gms.internal.ads.zzbhk (com.google.android.gms.internal.ads.zzbhk)
.class public final Lcom/google/android/gms/internal/ads/zzbhk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;
.implements Lcom/google/android/gms/internal/ads/zzbnj;
.implements Lcom/google/android/gms/internal/ads/zzbnm;
.implements Lcom/google/android/gms/internal/ads/zzpj;


# instance fields
.field private final zzbmp:Lcom/google/android/gms/common/util/Clock;

.field private final zzfbt:Lcom/google/android/gms/internal/ads/zzbhf;

.field private final zzfbu:Lcom/google/android/gms/internal/ads/zzbhi;

.field private final zzfbv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfbw:Lcom/google/android/gms/internal/ads/zzajj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzajj<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfbx:Ljava/util/concurrent/Executor;

.field private final zzfby:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

.field private zzfca:Z

.field private zzfcb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajc;Lcom/google/android/gms/internal/ads/zzbhi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbhf;Lcom/google/android/gms/common/util/Clock;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbv:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfby:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfca:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfcb:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbt:Lcom/google/android/gms/internal/ads/zzbhf;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzais;->zzday:Lcom/google/android/gms/internal/ads/zzait;

    const-string v0, "google.afma.activeView.handleUpdate"

    invoke-virtual {p1, v0, p4, p4}, Lcom/google/android/gms/internal/ads/zzajc;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzair;)Lcom/google/android/gms/internal/ads/zzajj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbw:Lcom/google/android/gms/internal/ads/zzajj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbu:Lcom/google/android/gms/internal/ads/zzbhi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbx:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzaej()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbv:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbt:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhf;->zze(Lcom/google/android/gms/internal/ads/zzbbw;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbt:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzaeh()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfby:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbt:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/internal/ads/zzbhk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaei()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPause()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbhm;->zzfcd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaei()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbhm;->zzfcd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaei()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzpk;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzpk;->zzbnp:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbhm;->zzbnp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzbhm;->zzfcg:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaei()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzaei()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfcb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaek()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_63

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfca:Z

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfby:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_63

    if-eqz v0, :cond_61

    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbhm;->timestamp:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbu:Lcom/google/android/gms/internal/ads/zzbhi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhi;->zza(Lcom/google/android/gms/internal/ads/zzbhm;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbv:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbx:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzbhn;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_37

    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbw:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzajj;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxr;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_59} :catch_5b
    .catchall {:try_start_1f .. :try_end_59} :catchall_63

    monitor-exit p0

    return-void

    :catch_5b
    move-exception v0

    :try_start_5c
    const-string v1, "Failed to call ActiveViewJS"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaug;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_63

    :cond_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception v0

    monitor-exit p0

    goto :goto_67

    :goto_66
    throw v0

    :goto_67
    goto :goto_66
.end method

.method public final declared-synchronized zzaek()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaej()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfca:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzbu(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbhm;->zzfcd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaei()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbv(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbhm;->zzfcd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaei()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbw(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    const-string v0, "u"

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzbhm;->zzfcf:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaei()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zzaej()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfca:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbv:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfbt:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhf;->zzd(Lcom/google/android/gms/internal/ads/zzbbw;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzo(Ljava/lang/Object;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzfcb:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final zzsi()V
    .registers 1

    return-void
.end method

.method public final zzsj()V
    .registers 1

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbhn (com.google.android.gms.internal.ads.zzbhn)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbhn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzfch:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzfch:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzfch:Lorg/json/JSONObject;

    const-string v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzahk;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
