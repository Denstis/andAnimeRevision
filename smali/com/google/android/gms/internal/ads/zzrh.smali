###### Class com.google.android.gms.internal.ads.zzrh (com.google.android.gms.internal.ads.zzrh)
.class public final Lcom/google/android/gms/internal/ads/zzrh;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzbrb:Ljava/lang/Runnable;

.field private zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

.field private zzbrd:Lcom/google/android/gms/internal/ads/zzru;

.field private zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzrk;-><init>(Lcom/google/android/gms/internal/ads/zzrh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrb:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    return-void
.end method

.method private final connect()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzlk:Landroid/content/Context;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v1, :cond_c

    goto :goto_23

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzrh;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzrl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzrl;-><init>(Lcom/google/android/gms/internal/ads/zzrh;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrh;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zzrq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    monitor-exit v0

    return-void

    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private final disconnect()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrd:Lcom/google/android/gms/internal/ads/zzru;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zzrq;
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzlk:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawk;->zzwd()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzrq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzrh;Lcom/google/android/gms/internal/ads/zzrq;)Lcom/google/android/gms/internal/ads/zzrq;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzrh;Lcom/google/android/gms/internal/ads/zzru;)Lcom/google/android/gms/internal/ads/zzru;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrd:Lcom/google/android/gms/internal/ads/zzru;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzrh;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrh;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzrh;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrh;->connect()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzrh;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzrh;)Lcom/google/android/gms/internal/ads/zzrq;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    return-object p0
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzlk:Landroid/content/Context;

    if-eqz v1, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzlk:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcpo:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrh;->connect()V

    goto :goto_46

    :cond_28
    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcpn:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_46

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzrj;-><init>(Lcom/google/android/gms/internal/ads/zzrh;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkm()Lcom/google/android/gms/internal/ads/zzpv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzpv;->zza(Lcom/google/android/gms/internal/ads/zzqa;)V

    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzrp;)Lcom/google/android/gms/internal/ads/zzro;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrd:Lcom/google/android/gms/internal/ads/zzru;

    if-nez v1, :cond_e

    new-instance p1, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzro;-><init>()V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    return-object p1

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrd:Lcom/google/android/gms/internal/ads/zzru;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzru;->zza(Lcom/google/android/gms/internal/ads/zzrp;)Lcom/google/android/gms/internal/ads/zzro;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_16
    .catchall {:try_start_e .. :try_end_14} :catchall_23

    :try_start_14
    monitor-exit v0

    return-object p1

    :catch_16
    move-exception p1

    const-string v1, "Unable to call into cache service."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzro;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final zzmh()V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcpp:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrh;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrh;->connect()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrb:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrh;->zzbrb:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzza;->zzcpq:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_3e

    throw v1

    :cond_41
    return-void
.end method
