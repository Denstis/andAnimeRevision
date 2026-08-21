###### Class com.google.firebase.iid.zzba (com.google.firebase.iid.zzba)
.class public final Lcom/google/firebase/iid/zzba;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/content/Intent;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/zzbd;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/firebase/iid/zzaz;

.field private zzf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v2, "Firebase-FirebaseInstanceIdServiceConnection"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/zzba;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzba;->zzd:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/zzba;->zzf:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzba;->zza:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/iid/zzba;->zza:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzba;->zzb:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/iid/zzba;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private final declared-synchronized zza()V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "FirebaseInstanceId"

    const-string v2, "flush queue called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/google/firebase/iid/zzba;->zzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a9

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "FirebaseInstanceId"

    const-string v2, "found intent to be delivered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/google/firebase/iid/zzba;->zze:Lcom/google/firebase/iid/zzaz;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/firebase/iid/zzba;->zze:Lcom/google/firebase/iid/zzaz;

    invoke-virtual {v0}, Landroid/os/Binder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "FirebaseInstanceId"

    const-string v2, "binder is alive, sending the intent."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    iget-object v0, p0, Lcom/google/firebase/iid/zzba;->zzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzbd;

    iget-object v2, p0, Lcom/google/firebase/iid/zzba;->zze:Lcom/google/firebase/iid/zzaz;

    invoke-virtual {v2, v0}, Lcom/google/firebase/iid/zzaz;->zza(Lcom/google/firebase/iid/zzbd;)V

    goto :goto_11

    :cond_51
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7a

    const-string v0, "FirebaseInstanceId"

    iget-boolean v3, p0, Lcom/google/firebase/iid/zzba;->zzf:Z

    if-nez v3, :cond_63

    const/4 v3, 0x1

    goto :goto_64

    :cond_63
    const/4 v3, 0x0

    :goto_64
    const/16 v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "binder is dead. start connection? "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    iget-boolean v0, p0, Lcom/google/firebase/iid/zzba;->zzf:Z

    if-nez v0, :cond_a7

    iput-boolean v2, p0, Lcom/google/firebase/iid/zzba;->zzf:Z
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_ab

    :try_start_80
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/iid/zzba;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/iid/zzba;->zzb:Landroid/content/Intent;

    const/16 v4, 0x41

    invoke-virtual {v0, v2, v3, p0, v4}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_8e
    .catch Ljava/lang/SecurityException; {:try_start_80 .. :try_end_8e} :catch_9a
    .catchall {:try_start_80 .. :try_end_8e} :catchall_ab

    if-eqz v0, :cond_92

    monitor-exit p0

    return-void

    :cond_92
    :try_start_92
    const-string v0, "FirebaseInstanceId"

    const-string v2, "binding to the service failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/SecurityException; {:try_start_92 .. :try_end_99} :catch_9a
    .catchall {:try_start_92 .. :try_end_99} :catchall_ab

    goto :goto_a2

    :catch_9a
    move-exception v0

    :try_start_9b
    const-string v2, "FirebaseInstanceId"

    const-string v3, "Exception while binding the service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a2
    iput-boolean v1, p0, Lcom/google/firebase/iid/zzba;->zzf:Z

    invoke-direct {p0}, Lcom/google/firebase/iid/zzba;->zzb()V
    :try_end_a7
    .catchall {:try_start_9b .. :try_end_a7} :catchall_ab

    :cond_a7
    monitor-exit p0

    return-void

    :cond_a9
    monitor-exit p0

    return-void

    :catchall_ab
    move-exception v0

    monitor-exit p0

    goto :goto_af

    :goto_ae
    throw v0

    :goto_af
    goto :goto_ae
.end method

.method private final zzb()V
    .registers 2

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzba;->zzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/firebase/iid/zzba;->zzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzbd;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzbd;->zza()V

    goto :goto_0

    :cond_14
    return-void
.end method


# virtual methods
.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "FirebaseInstanceId"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onServiceConnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/iid/zzba;->zzf:Z

    instance-of p1, p2, Lcom/google/firebase/iid/zzaz;

    if-nez p1, :cond_5e

    const-string p1, "FirebaseInstanceId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid service connection: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/firebase/iid/zzba;->zzb()V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_67

    monitor-exit p0

    return-void

    :cond_5e
    :try_start_5e
    check-cast p2, Lcom/google/firebase/iid/zzaz;

    iput-object p2, p0, Lcom/google/firebase/iid/zzba;->zze:Lcom/google/firebase/iid/zzaz;

    invoke-direct {p0}, Lcom/google/firebase/iid/zzba;->zza()V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_67

    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-direct {p0}, Lcom/google/firebase/iid/zzba;->zza()V

    return-void
.end method

.method public final declared-synchronized zza(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "FirebaseInstanceId"

    const-string v1, "new intent queued in the bind-strategy delivery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/google/firebase/iid/zzba;->zzd:Ljava/util/Queue;

    new-instance v1, Lcom/google/firebase/iid/zzbd;

    iget-object v2, p0, Lcom/google/firebase/iid/zzba;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/firebase/iid/zzbd;-><init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/firebase/iid/zzba;->zza()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
