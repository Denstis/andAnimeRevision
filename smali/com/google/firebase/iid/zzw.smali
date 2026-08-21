###### Class com.google.firebase.iid.zzw (com.google.firebase.iid.zzw)
.class final Lcom/google/firebase/iid/zzw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field zza:I

.field final zzb:Landroid/os/Messenger;

.field zzc:Lcom/google/firebase/iid/zzaf;

.field final zzd:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/zzah<",
            "*>;>;"
        }
    .end annotation
.end field

.field final zze:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/iid/zzah<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic zzf:Lcom/google/firebase/iid/zzv;


# direct methods
.method private constructor <init>(Lcom/google/firebase/iid/zzv;)V
    .registers 5

    iput-object p1, p0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/firebase/iid/zzw;->zza:I

    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zze;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/zzz;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/zzz;-><init>(Lcom/google/firebase/iid/zzw;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zze;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/zzw;->zzb:Landroid/os/Messenger;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzw;->zzd:Ljava/util/Queue;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/zzv;Lcom/google/firebase/iid/zzx;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzw;-><init>(Lcom/google/firebase/iid/zzv;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object p1, p0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-static {p1}, Lcom/google/firebase/iid/zzv;->zzb(Lcom/google/firebase/iid/zzv;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/zzab;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/iid/zzab;-><init>(Lcom/google/firebase/iid/zzw;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object p1, p0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-static {p1}, Lcom/google/firebase/iid/zzv;->zzb(Lcom/google/firebase/iid/zzv;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/zzad;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzad;-><init>(Lcom/google/firebase/iid/zzw;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zza()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-static {v0}, Lcom/google/firebase/iid/zzv;->zzb(Lcom/google/firebase/iid/zzv;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/zzaa;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/zzaa;-><init>(Lcom/google/firebase/iid/zzw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final declared-synchronized zza(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzah;

    if-eqz v0, :cond_36

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timing out request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance p1, Lcom/google/firebase/iid/zzag;

    const/4 v1, 0x3

    const-string v2, "Timed out waiting for response"

    invoke-direct {p1, v1, v2}, Lcom/google/firebase/iid/zzag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzah;->zza(Lcom/google/firebase/iid/zzag;)V

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzw;->zzb()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza(ILjava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "MessengerIpcClient"

    const-string v2, "Disconnected: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_1d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_23
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget v0, p0, Lcom/google/firebase/iid/zzw;->zza:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_b8

    if-eqz v0, :cond_b2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq v0, v3, :cond_56

    if-eq v0, v2, :cond_56

    if-eq v0, v1, :cond_52

    if-ne v0, v4, :cond_37

    monitor-exit p0

    return-void

    :cond_37
    :try_start_37
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lcom/google/firebase/iid/zzw;->zza:I

    const/16 v0, 0x1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown state: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    iput v4, p0, Lcom/google/firebase/iid/zzw;->zza:I
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_b8

    monitor-exit p0

    return-void

    :cond_56
    :try_start_56
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "MessengerIpcClient"

    const-string v1, "Unbinding service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iput v4, p0, Lcom/google/firebase/iid/zzw;->zza:I

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-static {v1}, Lcom/google/firebase/iid/zzv;->zza(Lcom/google/firebase/iid/zzv;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    new-instance v0, Lcom/google/firebase/iid/zzag;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzag;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/zzw;->zzd:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/iid/zzah;

    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/zzah;->zza(Lcom/google/firebase/iid/zzag;)V

    goto :goto_7f

    :cond_8f
    iget-object p1, p0, Lcom/google/firebase/iid/zzw;->zzd:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    const/4 p1, 0x0

    :goto_95
    iget-object p2, p0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_ab

    iget-object p2, p0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/iid/zzah;

    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/zzah;->zza(Lcom/google/firebase/iid/zzag;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_95

    :cond_ab
    iget-object p1, p0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_b0
    .catchall {:try_start_56 .. :try_end_b0} :catchall_b8

    monitor-exit p0

    return-void

    :cond_b2
    :try_start_b2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception p1

    monitor-exit p0

    goto :goto_bc

    :goto_bb
    throw p1

    :goto_bc
    goto :goto_bb
.end method

.method final zza(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "MessengerIpcClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received response to request: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessengerIpcClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    monitor-enter p0

    :try_start_24
    iget-object v1, p0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/zzah;

    const/4 v2, 0x1

    if-nez v1, :cond_49

    const-string p1, "MessengerIpcClient"

    const/16 v1, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received response for unknown request: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v2

    :cond_49
    iget-object v3, p0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzw;->zzb()V

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_6f

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v3, "unsupported"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6b

    new-instance p1, Lcom/google/firebase/iid/zzag;

    const/4 v0, 0x4

    const-string v3, "Not supported by GmsCore"

    invoke-direct {p1, v0, v3}, Lcom/google/firebase/iid/zzag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/zzah;->zza(Lcom/google/firebase/iid/zzag;)V

    goto :goto_6e

    :cond_6b
    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/zzah;->zza(Landroid/os/Bundle;)V

    :goto_6e
    return v2

    :catchall_6f
    move-exception p1

    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method final declared-synchronized zza(Lcom/google/firebase/iid/zzah;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/iid/zzah<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzw;->zza:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    if-eq v0, v3, :cond_3a

    if-eq v0, v1, :cond_30

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2e

    const/4 p1, 0x4

    if-ne v0, p1, :cond_13

    goto :goto_2e

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/firebase/iid/zzw;->zza:I

    const/16 v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_97

    :cond_2e
    :goto_2e
    monitor-exit p0

    return v2

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zzd:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzw;->zza()V
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_97

    monitor-exit p0

    return v3

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zzd:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_97

    monitor-exit p0

    return v3

    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zzd:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/firebase/iid/zzw;->zza:I

    if-nez p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string p1, "MessengerIpcClient"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5f

    const-string p1, "MessengerIpcClient"

    const-string v0, "Starting bind to GmsCore"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    iput v3, p0, Lcom/google/firebase/iid/zzw;->zza:I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-static {v1}, Lcom/google/firebase/iid/zzv;->zza(Lcom/google/firebase/iid/zzv;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_83

    const-string p1, "Unable to bind to service"

    invoke-virtual {p0, v2, p1}, Lcom/google/firebase/iid/zzw;->zza(ILjava/lang/String;)V

    goto :goto_95

    :cond_83
    iget-object p1, p0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-static {p1}, Lcom/google/firebase/iid/zzv;->zzb(Lcom/google/firebase/iid/zzv;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/zzy;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzy;-><init>(Lcom/google/firebase/iid/zzw;)V

    const-wide/16 v1, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_95
    .catchall {:try_start_41 .. :try_end_95} :catchall_97

    :goto_95
    monitor-exit p0

    return v3

    :catchall_97
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzb()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzw;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firebase/iid/zzw;->zza:I

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-static {v1}, Lcom/google/firebase/iid/zzv;->zza(Lcom/google/firebase/iid/zzv;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzc()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzw;->zza:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const-string v0, "Timed out while binding"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/zzw;->zza(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.firebase.iid.zzaa (com.google.firebase.iid.zzaa)
.class final synthetic Lcom/google/firebase/iid/zzaa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzw;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzaa;->zza:Lcom/google/firebase/iid/zzw;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zza:Lcom/google/firebase/iid/zzw;

    :goto_2
    monitor-enter v0

    :try_start_3
    iget v1, v0, Lcom/google/firebase/iid/zzw;->zza:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    monitor-exit v0

    return-void

    :cond_a
    iget-object v1, v0, Lcom/google/firebase/iid/zzw;->zzd:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzw;->zzb()V

    monitor-exit v0

    return-void

    :cond_17
    iget-object v1, v0, Lcom/google/firebase/iid/zzw;->zzd:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/zzah;

    iget-object v3, v0, Lcom/google/firebase/iid/zzw;->zze:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/firebase/iid/zzah;->zza:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-static {v3}, Lcom/google/firebase/iid/zzv;->zzb(Lcom/google/firebase/iid/zzv;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/iid/zzac;

    invoke-direct {v4, v0, v1}, Lcom/google/firebase/iid/zzac;-><init>(Lcom/google/firebase/iid/zzw;Lcom/google/firebase/iid/zzah;)V

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_ae

    const/4 v3, 0x3

    const-string v4, "MessengerIpcClient"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sending "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MessengerIpcClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    iget-object v3, v0, Lcom/google/firebase/iid/zzw;->zzf:Lcom/google/firebase/iid/zzv;

    invoke-static {v3}, Lcom/google/firebase/iid/zzv;->zza(Lcom/google/firebase/iid/zzv;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/google/firebase/iid/zzw;->zzb:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    iget v6, v1, Lcom/google/firebase/iid/zzah;->zzc:I

    iput v6, v5, Landroid/os/Message;->what:I

    iget v6, v1, Lcom/google/firebase/iid/zzah;->zza:I

    iput v6, v5, Landroid/os/Message;->arg1:I

    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzah;->zza()Z

    move-result v6

    const-string v7, "oneWay"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "pkg"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/firebase/iid/zzah;->zzd:Landroid/os/Bundle;

    const-string v3, "data"

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_9d
    iget-object v1, v0, Lcom/google/firebase/iid/zzw;->zzc:Lcom/google/firebase/iid/zzaf;

    invoke-virtual {v1, v5}, Lcom/google/firebase/iid/zzaf;->zza(Landroid/os/Message;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a2} :catch_a4

    goto/16 :goto_2

    :catch_a4
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/iid/zzw;->zza(ILjava/lang/String;)V

    goto/16 :goto_2

    :catchall_ae
    move-exception v1

    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    goto :goto_b2

    :goto_b1
    throw v1

    :goto_b2
    goto :goto_b1
.end method

###### Class com.google.firebase.iid.zzac (com.google.firebase.iid.zzac)
.class final synthetic Lcom/google/firebase/iid/zzac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzw;

.field private final zzb:Lcom/google/firebase/iid/zzah;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzw;Lcom/google/firebase/iid/zzah;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzac;->zza:Lcom/google/firebase/iid/zzw;

    iput-object p2, p0, Lcom/google/firebase/iid/zzac;->zzb:Lcom/google/firebase/iid/zzah;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zza:Lcom/google/firebase/iid/zzw;

    iget-object v1, p0, Lcom/google/firebase/iid/zzac;->zzb:Lcom/google/firebase/iid/zzah;

    iget v1, v1, Lcom/google/firebase/iid/zzah;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzw;->zza(I)V

    return-void
.end method

###### Class com.google.firebase.iid.zzab (com.google.firebase.iid.zzab)
.class final synthetic Lcom/google/firebase/iid/zzab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzw;

.field private final zzb:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzw;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzab;->zza:Lcom/google/firebase/iid/zzw;

    iput-object p2, p0, Lcom/google/firebase/iid/zzab;->zzb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/iid/zzab;->zza:Lcom/google/firebase/iid/zzw;

    iget-object v1, p0, Lcom/google/firebase/iid/zzab;->zzb:Landroid/os/IBinder;

    monitor-enter v0

    const/4 v2, 0x0

    if-nez v1, :cond_f

    :try_start_8
    const-string v1, "Null service connection"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/iid/zzw;->zza(ILjava/lang/String;)V

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1e

    return-void

    :cond_f
    :try_start_f
    new-instance v3, Lcom/google/firebase/iid/zzaf;

    invoke-direct {v3, v1}, Lcom/google/firebase/iid/zzaf;-><init>(Landroid/os/IBinder;)V

    iput-object v3, v0, Lcom/google/firebase/iid/zzw;->zzc:Lcom/google/firebase/iid/zzaf;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_20
    .catchall {:try_start_f .. :try_end_16} :catchall_1e

    const/4 v1, 0x2

    :try_start_17
    iput v1, v0, Lcom/google/firebase/iid/zzw;->zza:I

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzw;->zza()V

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    goto :goto_2a

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/iid/zzw;->zza(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_1e

    throw v1
.end method

###### Class com.google.firebase.iid.zzad (com.google.firebase.iid.zzad)
.class final synthetic Lcom/google/firebase/iid/zzad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzw;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzad;->zza:Lcom/google/firebase/iid/zzw;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/iid/zzad;->zza:Lcom/google/firebase/iid/zzw;

    const/4 v1, 0x2

    const-string v2, "Service disconnected"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/iid/zzw;->zza(ILjava/lang/String;)V

    return-void
.end method

###### Class com.google.firebase.iid.zzy (com.google.firebase.iid.zzy)
.class final synthetic Lcom/google/firebase/iid/zzy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzw;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzy;->zza:Lcom/google/firebase/iid/zzw;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzy;->zza:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzw;->zzc()V

    return-void
.end method

###### Class com.google.firebase.iid.zzz (com.google.firebase.iid.zzz)
.class final synthetic Lcom/google/firebase/iid/zzz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzw;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzz;->zza:Lcom/google/firebase/iid/zzw;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzz;->zza:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzw;->zza(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
