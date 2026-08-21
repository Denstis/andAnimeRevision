###### Class com.google.android.gms.internal.ads.zzrv (com.google.android.gms.internal.ads.zzrv)
.class public final Lcom/google/android/gms/internal/ads/zzrv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

.field private zzbrp:Z

.field private final zzlk:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzlk:Landroid/content/Context;

    return-void
.end method

.method private final disconnect()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzrv;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrv;->disconnect()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzrv;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzbrp:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzrv;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrv;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzrv;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzbrp:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzrv;)Lcom/google/android/gms/internal/ads/zzrq;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    return-object p0
.end method


# virtual methods
.method final zzb(Lcom/google/android/gms/internal/ads/zzrp;)Ljava/util/concurrent/Future;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzrp;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzry;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzry;-><init>(Lcom/google/android/gms/internal/ads/zzrv;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrx;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzrv;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzaxv;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzsb;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzsb;-><init>(Lcom/google/android/gms/internal/ads/zzrv;Lcom/google/android/gms/internal/ads/zzaxv;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrv;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
    new-instance v3, Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzlk:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzawk;->zzwd()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzrq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzbrc:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    monitor-exit v2

    return-object v0

    :catchall_2a
    move-exception p1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2a

    throw p1
.end method
