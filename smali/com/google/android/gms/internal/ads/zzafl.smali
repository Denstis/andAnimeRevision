###### Class com.google.android.gms.internal.ads.zzafl (com.google.android.gms.internal.ads.zzafl)
.class public final Lcom/google/android/gms/internal/ads/zzafl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field private volatile zzcyl:Lcom/google/android/gms/internal/ads/zzafa;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafl;->zzlk:Landroid/content/Context;

    return-void
.end method

.method private final disconnect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafl;->zzcyl:Lcom/google/android/gms/internal/ads/zzafa;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafl;->zzcyl:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzafl;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafl;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzafl;)Lcom/google/android/gms/internal/ads/zzafa;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafl;->zzcyl:Lcom/google/android/gms/internal/ads/zzafa;

    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzo;"
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Http assets remote cache took "

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafd;->zzh(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzafd;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x34

    :try_start_13
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzafp;

    invoke-direct {v7, p0, v6}, Lcom/google/android/gms/internal/ads/zzafp;-><init>(Lcom/google/android/gms/internal/ads/zzafl;Lcom/google/android/gms/internal/ads/zzaxv;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzafo;

    invoke-direct {v8, p0, v6}, Lcom/google/android/gms/internal/ads/zzafo;-><init>(Lcom/google/android/gms/internal/ads/zzafl;Lcom/google/android/gms/internal/ads/zzaxv;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzafa;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzafl;->zzlk:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzawk;->zzwd()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7, v8}, Lcom/google/android/gms/internal/ads/zzafa;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzafl;->zzcyl:Lcom/google/android/gms/internal/ads/zzafa;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzafl;->zzcyl:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzafk;

    invoke-direct {v7, p0, p1}, Lcom/google/android/gms/internal/ads/zzafk;-><init>(Lcom/google/android/gms/internal/ads/zzafl;Lcom/google/android/gms/internal/ads/zzafd;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwi:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    sget-object v6, Lcom/google/android/gms/internal/ads/zzza;->zzcpx:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwl:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzdcy;->zza(Lcom/google/android/gms/internal/ads/zzddi;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    new-instance v6, Lcom/google/android/gms/internal/ads/zzafm;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzafm;-><init>(Lcom/google/android/gms/internal/ads/zzafl;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwi:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-interface {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzddi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_6c} :catch_f5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_6c} :catch_f5
    .catchall {:try_start_13 .. :try_end_6c} :catchall_d5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaoz;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaff;

    if-nez p1, :cond_9a

    return-object v4

    :cond_9a
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaff;->zzcyi:Z

    if-nez v0, :cond_cd

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaff;->zzcyg:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaff;->zzcyh:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_a7

    return-object v4

    :cond_a7
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_ad
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaff;->zzcyg:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_be

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaff;->zzcyh:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_be
    new-instance v0, Lcom/google/android/gms/internal/ads/zzo;

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzaff;->statusCode:I

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzaff;->data:[B

    iget-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzaff;->zzac:Z

    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzaff;->zzad:J

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzo;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v0

    :cond_cd
    new-instance v0, Lcom/google/android/gms/internal/ads/zzae;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaff;->zzcyj:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzae;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_d5
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    throw p1

    :catch_f5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    return-object v4
.end method
