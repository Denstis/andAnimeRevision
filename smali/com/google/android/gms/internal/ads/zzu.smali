###### Class com.google.android.gms.internal.ads.zzu (com.google.android.gms.internal.ads.zzu)
.class public final Lcom/google/android/gms/internal/ads/zzu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzaa:Lcom/google/android/gms/internal/ads/zzn;

.field private final zzav:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzaw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzax:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzay:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzaz:[Lcom/google/android/gms/internal/ads/zzm;

.field private final zzba:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zza;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaa;

.field private zzo:Lcom/google/android/gms/internal/ads/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzn;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzn;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzn;I)V
    .registers 6

    new-instance p3, Lcom/google/android/gms/internal/ads/zzj;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzj;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzn;ILcom/google/android/gms/internal/ads/zzaa;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzn;ILcom/google/android/gms/internal/ads/zzaa;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzu;->zzav:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaw:Ljava/util/Set;

    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzu;->zzax:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzu;->zzay:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzu;->zzba:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzu;->zzbb:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzu;->zzc:Lcom/google/android/gms/internal/ads/zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaa:Lcom/google/android/gms/internal/ads/zzn;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaz:[Lcom/google/android/gms/internal/ads/zzm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzu;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    return-void
.end method


# virtual methods
.method public final start()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzo:Lcom/google/android/gms/internal/ads/zzc;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzc;->quit()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaz:[Lcom/google/android/gms/internal/ads/zzm;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzm;->quit()V

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzu;->zzax:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzu;->zzay:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzu;->zzc:Lcom/google/android/gms/internal/ads/zza;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzu;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzc;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzaa;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzo:Lcom/google/android/gms/internal/ads/zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzo:Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaz:[Lcom/google/android/gms/internal/ads/zzm;

    array-length v0, v0

    if-ge v2, v0, :cond_48

    new-instance v0, Lcom/google/android/gms/internal/ads/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzu;->zzay:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaa:Lcom/google/android/gms/internal/ads/zzn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzu;->zzc:Lcom/google/android/gms/internal/ads/zza;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzu;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzm;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzaa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaz:[Lcom/google/android/gms/internal/ads/zzm;

    aput-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_48
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzq;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzbb:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzu;->zzbb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzx;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzb(Lcom/google/android/gms/internal/ads/zzq;I)V

    goto :goto_9

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    goto :goto_1f

    :goto_1e
    throw p1

    :goto_1f
    goto :goto_1e
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzq;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzq;->zza(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaw:Ljava/util/Set;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaw:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzav:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzq;->zzb(I)Lcom/google/android/gms/internal/ads/zzq;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzu;->zza(Lcom/google/android/gms/internal/ads/zzq;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzq;->zzg()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzay:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_26
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzax:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_26

    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method

.method final zzf(Lcom/google/android/gms/internal/ads/zzq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaw:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzu;->zzaw:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzu;->zzba:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzba:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzw;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzw;->zzg(Lcom/google/android/gms/internal/ads/zzq;)V

    goto :goto_12

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_28

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzu;->zza(Lcom/google/android/gms/internal/ads/zzq;I)V

    return-void

    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1

    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw p1

    :goto_2f
    goto :goto_2e
.end method
