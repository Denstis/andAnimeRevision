###### Class com.google.firebase.iid.FirebaseInstanceId (com.google.firebase.iid.FirebaseInstanceId)
.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseInstanceId$zza;
    }
.end annotation


# static fields
.field private static final zza:J

.field private static zzb:Lcom/google/firebase/iid/zzat;

.field private static zzc:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final zzd:Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zze:Lcom/google/firebase/FirebaseApp;

.field private final zzf:Lcom/google/firebase/iid/zzai;

.field private final zzg:Lcom/google/firebase/iid/zzl;

.field private final zzh:Lcom/google/firebase/iid/zzan;

.field private final zzi:Lcom/google/firebase/iid/zzax;

.field private zzj:Z

.field private final zzk:Lcom/google/firebase/iid/FirebaseInstanceId$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zza:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V
    .registers 11

    new-instance v2, Lcom/google/firebase/iid/zzai;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/zzai;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/firebase/iid/zza;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {}, Lcom/google/firebase/iid/zza;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzai;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzai;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj:Z

    invoke-static {p1}, Lcom/google/firebase/iid/zzai;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_f
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    if-nez v1, :cond_1e

    new-instance v1, Lcom/google/firebase/iid/zzat;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/iid/zzat;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_4c

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzai;

    new-instance v0, Lcom/google/firebase/iid/zzl;

    invoke-direct {v0, p1, p2, p3, p6}, Lcom/google/firebase/iid/zzl;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzai;Ljava/util/concurrent/Executor;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzl;

    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/firebase/iid/zzax;

    sget-object p2, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    invoke-direct {p1, p2}, Lcom/google/firebase/iid/zzax;-><init>(Lcom/google/firebase/iid/zzat;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi:Lcom/google/firebase/iid/zzax;

    new-instance p1, Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-direct {p1, p0, p5}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/events/Subscriber;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    new-instance p1, Lcom/google/firebase/iid/zzan;

    invoke-direct {p1, p3}, Lcom/google/firebase/iid/zzan;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzh:Lcom/google/firebase/iid/zzan;

    new-instance p1, Lcom/google/firebase/iid/zzh;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/zzh;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1

    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 1

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/iid/zzg;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/iid/zzg;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x7530

    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_8} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INSTANCE_ID_RESET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zze()V

    :cond_29
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2c
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_33

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_33
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zza(Ljava/lang/Runnable;J)V
    .registers 8

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_16

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v4, "FirebaseInstanceId"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_16
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzas;
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    const-string v1, ""

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzas;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()V

    return-void
.end method

.method private static zzd(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "gcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return-object p0

    :cond_18
    :goto_18
    const-string p0, "*"

    return-object p0
.end method

.method static zzd()Z
    .registers 4

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_18

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method private final zzj()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb()Lcom/google/firebase/iid/zzas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzas;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi:Lcom/google/firebase/iid/zzax;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzax;->zza()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_12
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()V

    :cond_15
    return-void
.end method

.method private final declared-synchronized zzk()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(J)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static zzl()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzat;->zzb(Ljava/lang/String;)Lcom/google/firebase/iid/zzs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzs;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteInstanceId()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzl;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzl;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zze()V

    return-void

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_23

    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzl;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/firebase/iid/zzl;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzat;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCreationTime()J
    .registers 3

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzat;->zzb(Ljava/lang/String;)Lcom/google/firebase/iid/zzs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzs;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzai;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb()Lcom/google/firebase/iid/zzas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzas;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()V

    :cond_d
    invoke-static {v0}, Lcom/google/firebase/iid/zzas;->zza(Lcom/google/firebase/iid/zzas;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_19

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi:Lcom/google/firebase/iid/zzax;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzax;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzas;)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance p1, Lcom/google/firebase/iid/zzu;

    iget-object p2, v0, Lcom/google/firebase/iid/zzas;->zza:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Lcom/google/firebase/iid/zzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1a
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzh:Lcom/google/firebase/iid/zzan;

    new-instance v1, Lcom/google/firebase/iid/zzj;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/firebase/iid/zzj;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/firebase/iid/zzan;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/iid/zzl;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/iid/zzi;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/google/firebase/iid/zzi;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 11

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzai;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzai;->zzb()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/firebase/iid/zzu;

    invoke-direct {p1, p3, p4}, Lcom/google/firebase/iid/zzu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final zza()Lcom/google/firebase/FirebaseApp;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method final declared-synchronized zza(J)V
    .registers 14

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const/4 v2, 0x1

    shl-long v3, p1, v2

    :try_start_6
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v3, Lcom/google/firebase/iid/FirebaseInstanceId;->zza:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    new-instance v0, Lcom/google/firebase/iid/zzav;

    iget-object v7, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzai;

    iget-object v8, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi:Lcom/google/firebase/iid/zzax;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/iid/zzav;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzai;Lcom/google/firebase/iid/zzax;J)V

    invoke-static {v0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/Runnable;J)V

    iput-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj:Z
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zza(Lcom/google/firebase/iid/zzas;)Z
    .registers 3

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzai;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzai;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/iid/zzas;->zzb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method final zzb()Lcom/google/firebase/iid/zzas;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzai;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzas;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb()Lcom/google/firebase/iid/zzas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzas;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/google/firebase/iid/zzas;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzl;

    invoke-virtual {v2, v1, v0, p1}, Lcom/google/firebase/iid/zzl;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void

    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Z)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza(Z)V

    return-void
.end method

.method final zzc()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzai;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzc(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb()Lcom/google/firebase/iid/zzas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzas;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzl;

    iget-object v0, v0, Lcom/google/firebase/iid/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/google/firebase/iid/zzl;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void

    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final declared-synchronized zze()V
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzat;->zzb()V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzf()Z
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzai;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzai;->zza()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method final zzg()V
    .registers 3

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzat;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzat;->zzc(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()V

    return-void
.end method

.method public final zzh()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza()Z

    move-result v0

    return v0
.end method

.method final synthetic zzi()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()V

    :cond_b
    return-void
.end method

###### Class com.google.firebase.iid.FirebaseInstanceId.zza (com.google.firebase.iid.FirebaseInstanceId$zza)
.class final Lcom/google/firebase/iid/FirebaseInstanceId$zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/FirebaseInstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private zzb:Z

.field private final zzc:Lcom/google/firebase/events/Subscriber;

.field private zzd:Z

.field private zze:Lcom/google/firebase/events/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/events/EventHandler<",
            "Lcom/google/firebase/DataCollectionDefaultChange;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/events/Subscriber;)V
    .registers 3

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzc:Lcom/google/firebase/events/Subscriber;

    return-void
.end method

.method private final declared-synchronized zzb()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzd:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzb:Z

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzc()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzf:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzf:Ljava/lang/Boolean;

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzb:Z

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/google/firebase/iid/zzk;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzk;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId$zza;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zze:Lcom/google/firebase/events/EventHandler;

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzc:Lcom/google/firebase/events/Subscriber;

    const-class v1, Lcom/google/firebase/DataCollectionDefaultChange;

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zze:Lcom/google/firebase/events/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/events/Subscriber;->subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzd:Z
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzc()Ljava/lang/Boolean;
    .registers 7

    const-string v0, "firebase_messaging_auto_init_enabled"

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "com.google.firebase.messaging"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "auto_init"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_24
    :try_start_24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4d

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_4c} :catch_4d

    return-object v0

    :catch_4d
    :cond_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzd()Z
    .registers 5

    const-string v0, "com.google.firebase.messaging.FirebaseMessaging"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_6} :catch_7

    return v1

    :catch_7
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2f

    return v1

    :cond_2f
    return v3
.end method


# virtual methods
.method final declared-synchronized zza(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzb()V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zze:Lcom/google/firebase/events/EventHandler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzc:Lcom/google/firebase/events/Subscriber;

    const-class v1, Lcom/google/firebase/DataCollectionDefaultChange;

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zze:Lcom/google/firebase/events/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/events/Subscriber;->unsubscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zze:Lcom/google/firebase/events/EventHandler;

    :cond_14
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_init"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    :cond_38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzf:Ljava/lang/Boolean;
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzb()V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzf:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzf:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_25

    monitor-exit p0

    return v0

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzb:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_21
    monitor-exit p0

    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_21

    :catchall_25
    move-exception v0

    monitor-exit p0

    goto :goto_29

    :goto_28
    throw v0

    :goto_29
    goto :goto_28
.end method

###### Class com.google.firebase.iid.zzk (com.google.firebase.iid.zzk)
.class final synthetic Lcom/google/firebase/iid/zzk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/events/EventHandler;


# instance fields
.field private final zza:Lcom/google/firebase/iid/FirebaseInstanceId$zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId$zza;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzk;->zza:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/events/Event;)V
    .registers 3

    iget-object p1, p0, Lcom/google/firebase/iid/zzk;->zza:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    monitor-enter p1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    :cond_e
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

###### Class com.google.firebase.iid.zzg (com.google.firebase.iid.zzg)
.class final synthetic Lcom/google/firebase/iid/zzg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zza:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzg;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzg;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/zzg;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/zzg;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/zzg;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.iid.zzh (com.google.firebase.iid.zzh)
.class final synthetic Lcom/google/firebase/iid/zzh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzh;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzh;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()V

    return-void
.end method

###### Class com.google.firebase.iid.zzi (com.google.firebase.iid.zzi)
.class final synthetic Lcom/google/firebase/iid/zzi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final zza:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzi;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzi;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/zzi;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/zzi;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/iid/zzi;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/zzi;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/zzi;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/zzi;->zzd:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.iid.zzj (com.google.firebase.iid.zzj)
.class final synthetic Lcom/google/firebase/iid/zzj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/iid/zzap;


# instance fields
.field private final zza:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzj;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzj;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/zzj;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/zzj;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/tasks/Task;
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/iid/zzj;->zza:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/zzj;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/zzj;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/zzj;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
