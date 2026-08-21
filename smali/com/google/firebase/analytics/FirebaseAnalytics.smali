###### Class com.google.firebase.analytics.FirebaseAnalytics (com.google.firebase.analytics.FirebaseAnalytics)
.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/analytics/FirebaseAnalytics$UserProperty;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$Param;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$Event;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzga;

.field private final zzc:Lcom/google/android/gms/internal/measurement/zzx;

.field private final zzd:Z

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private final zzg:Ljava/lang/Object;

.field private zzh:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzx;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzg:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzga;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzg:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_2d

    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v1, :cond_28

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzx;->zzb(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object p0

    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/measurement/zzx;)V

    :goto_1a
    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    goto :goto_28

    :cond_1d
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object p0

    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/measurement/internal/zzga;)V

    goto :goto_1a

    :cond_28
    :goto_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    :goto_2d
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static getScionFrontendApiImplementation(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzia;
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzx;->zzb(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {p0, v1, v1, v1, p1}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v1

    :cond_f
    new-instance p1, Lcom/google/firebase/analytics/zza;

    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/zza;-><init>(Lcom/google/android/gms/internal/measurement/zzx;)V

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zza()Ljava/util/concurrent/ExecutorService;
    .registers 10

    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzh:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1c

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzh:Ljava/util/concurrent/ExecutorService;

    :cond_1c
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzh:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zze:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    :goto_11
    iput-wide v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzf:J

    goto :goto_1f

    :cond_14
    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_11

    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method private final zzb()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_17

    :cond_10
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    goto :goto_b

    :goto_17
    iget-wide v3, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzf:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_28

    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zze:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_28
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw v1

    :goto_2f
    goto :goto_2e
.end method

.method static synthetic zzb(Lcom/google/firebase/analytics/FirebaseAnalytics;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/internal/measurement/zzx;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/measurement/internal/zzga;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    return-object p0
.end method


# virtual methods
.method public final getAppInstanceId()Lcom/google/android/gms/tasks/Task;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/analytics/zzb;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/zzb;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    iget-boolean v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v1, :cond_2a

    iget-object v2, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "Failed to schedule task for getAppInstanceId"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzx;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    :cond_2a
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Failed to schedule task for getAppInstanceId"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    :goto_39
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "app"

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final resetAnalyticsData()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzx;->zzb()V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zzd(J)V

    return-void
.end method

.method public final setAnalyticsCollectionEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Z)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Z)V

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzw;->zza()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called from the main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzv()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzx;->zza(J)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzx;->zzb(J)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb(J)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "app"

    const-string v3, "_id"

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app"

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.Event (com.google.firebase.analytics.FirebaseAnalytics$Event)
.class public Lcom/google/firebase/analytics/FirebaseAnalytics$Event;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final ADD_PAYMENT_INFO:Ljava/lang/String; = "add_payment_info"

.field public static final ADD_TO_CART:Ljava/lang/String; = "add_to_cart"

.field public static final ADD_TO_WISHLIST:Ljava/lang/String; = "add_to_wishlist"

.field public static final APP_OPEN:Ljava/lang/String; = "app_open"

.field public static final BEGIN_CHECKOUT:Ljava/lang/String; = "begin_checkout"

.field public static final CAMPAIGN_DETAILS:Ljava/lang/String; = "campaign_details"

.field public static final CHECKOUT_PROGRESS:Ljava/lang/String; = "checkout_progress"

.field public static final EARN_VIRTUAL_CURRENCY:Ljava/lang/String; = "earn_virtual_currency"

.field public static final ECOMMERCE_PURCHASE:Ljava/lang/String; = "ecommerce_purchase"

.field public static final GENERATE_LEAD:Ljava/lang/String; = "generate_lead"

.field public static final JOIN_GROUP:Ljava/lang/String; = "join_group"

.field public static final LEVEL_END:Ljava/lang/String; = "level_end"

.field public static final LEVEL_START:Ljava/lang/String; = "level_start"

.field public static final LEVEL_UP:Ljava/lang/String; = "level_up"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final POST_SCORE:Ljava/lang/String; = "post_score"

.field public static final PRESENT_OFFER:Ljava/lang/String; = "present_offer"

.field public static final PURCHASE_REFUND:Ljava/lang/String; = "purchase_refund"

.field public static final REMOVE_FROM_CART:Ljava/lang/String; = "remove_from_cart"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SELECT_CONTENT:Ljava/lang/String; = "select_content"

.field public static final SET_CHECKOUT_OPTION:Ljava/lang/String; = "set_checkout_option"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SIGN_UP:Ljava/lang/String; = "sign_up"

.field public static final SPEND_VIRTUAL_CURRENCY:Ljava/lang/String; = "spend_virtual_currency"

.field public static final TUTORIAL_BEGIN:Ljava/lang/String; = "tutorial_begin"

.field public static final TUTORIAL_COMPLETE:Ljava/lang/String; = "tutorial_complete"

.field public static final UNLOCK_ACHIEVEMENT:Ljava/lang/String; = "unlock_achievement"

.field public static final VIEW_ITEM:Ljava/lang/String; = "view_item"

.field public static final VIEW_ITEM_LIST:Ljava/lang/String; = "view_item_list"

.field public static final VIEW_SEARCH_RESULTS:Ljava/lang/String; = "view_search_results"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.Param (com.google.firebase.analytics.FirebaseAnalytics$Param)
.class public Lcom/google/firebase/analytics/FirebaseAnalytics$Param;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# static fields
.field public static final ACHIEVEMENT_ID:Ljava/lang/String; = "achievement_id"

.field public static final ACLID:Ljava/lang/String; = "aclid"

.field public static final AFFILIATION:Ljava/lang/String; = "affiliation"

.field public static final CAMPAIGN:Ljava/lang/String; = "campaign"

.field public static final CHARACTER:Ljava/lang/String; = "character"

.field public static final CHECKOUT_OPTION:Ljava/lang/String; = "checkout_option"

.field public static final CHECKOUT_STEP:Ljava/lang/String; = "checkout_step"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final COUPON:Ljava/lang/String; = "coupon"

.field public static final CP1:Ljava/lang/String; = "cp1"

.field public static final CREATIVE_NAME:Ljava/lang/String; = "creative_name"

.field public static final CREATIVE_SLOT:Ljava/lang/String; = "creative_slot"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final DESTINATION:Ljava/lang/String; = "destination"

.field public static final END_DATE:Ljava/lang/String; = "end_date"

.field public static final EXTEND_SESSION:Ljava/lang/String; = "extend_session"

.field public static final FLIGHT_NUMBER:Ljava/lang/String; = "flight_number"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final ITEM_BRAND:Ljava/lang/String; = "item_brand"

.field public static final ITEM_CATEGORY:Ljava/lang/String; = "item_category"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final ITEM_LIST:Ljava/lang/String; = "item_list"

.field public static final ITEM_LOCATION_ID:Ljava/lang/String; = "item_location_id"

.field public static final ITEM_NAME:Ljava/lang/String; = "item_name"

.field public static final ITEM_VARIANT:Ljava/lang/String; = "item_variant"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final LEVEL_NAME:Ljava/lang/String; = "level_name"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MEDIUM:Ljava/lang/String; = "medium"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final NUMBER_OF_NIGHTS:Ljava/lang/String; = "number_of_nights"

.field public static final NUMBER_OF_PASSENGERS:Ljava/lang/String; = "number_of_passengers"

.field public static final NUMBER_OF_ROOMS:Ljava/lang/String; = "number_of_rooms"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final QUANTITY:Ljava/lang/String; = "quantity"

.field public static final SCORE:Ljava/lang/String; = "score"

.field public static final SEARCH_TERM:Ljava/lang/String; = "search_term"

.field public static final SHIPPING:Ljava/lang/String; = "shipping"

.field public static final SIGN_UP_METHOD:Ljava/lang/String; = "sign_up_method"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final START_DATE:Ljava/lang/String; = "start_date"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final TAX:Ljava/lang/String; = "tax"

.field public static final TERM:Ljava/lang/String; = "term"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field public static final TRAVEL_CLASS:Ljava/lang/String; = "travel_class"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VIRTUAL_CURRENCY_NAME:Ljava/lang/String; = "virtual_currency_name"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.UserProperty (com.google.firebase.analytics.FirebaseAnalytics$UserProperty)
.class public Lcom/google/firebase/analytics/FirebaseAnalytics$UserProperty;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProperty"
.end annotation


# static fields
.field public static final ALLOW_AD_PERSONALIZATION_SIGNALS:Ljava/lang/String; = "allow_personalized_ads"

.field public static final SIGN_UP_METHOD:Ljava/lang/String; = "sign_up_method"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
