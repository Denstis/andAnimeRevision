###### Class com.google.firebase.messaging.zzd (com.google.firebase.messaging.zzd)
.class final Lcom/google/firebase/messaging/zzd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/firebase/messaging/zzk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/messaging/zzk;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/firebase/messaging/zzd;->zza:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/firebase/messaging/zzd;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/zzd;->zzc:Lcom/google/firebase/messaging/zzk;

    return-void
.end method


# virtual methods
.method final zza()Z
    .registers 11

    iget-object v0, p0, Lcom/google/firebase/messaging/zzd;->zzc:Lcom/google/firebase/messaging/zzk;

    const-string v1, "gcm.n.noui"

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/zzk;->zzb(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/google/firebase/messaging/zzd;->zzb:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_58

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-nez v0, :cond_28

    const-wide/16 v3, 0xa

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    :cond_28
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v3, p0, Lcom/google/firebase/messaging/zzd;->zzb:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_40

    iget v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_58

    const/4 v0, 0x1

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    if-eqz v0, :cond_5c

    return v2

    :cond_5c
    iget-object v0, p0, Lcom/google/firebase/messaging/zzd;->zzc:Lcom/google/firebase/messaging/zzk;

    const-string v3, "gcm.n.image"

    invoke-virtual {v0, v3}, Lcom/google/firebase/messaging/zzk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/zzj;->zza(Ljava/lang/String;)Lcom/google/firebase/messaging/zzj;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v3, p0, Lcom/google/firebase/messaging/zzd;->zza:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3}, Lcom/google/firebase/messaging/zzj;->zza(Ljava/util/concurrent/Executor;)V

    :cond_6f
    iget-object v3, p0, Lcom/google/firebase/messaging/zzd;->zzb:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/firebase/messaging/zzd;->zzc:Lcom/google/firebase/messaging/zzk;

    invoke-static {v3, v4}, Lcom/google/firebase/messaging/zzb;->zza(Landroid/content/Context;Lcom/google/firebase/messaging/zzk;)Lcom/google/firebase/messaging/zza;

    move-result-object v3

    iget-object v4, v3, Lcom/google/firebase/messaging/zza;->zza:Landroidx/core/app/h$d;

    const-string v5, "FirebaseMessaging"

    if-eqz v0, :cond_de

    :try_start_7d
    invoke-virtual {v0}, Lcom/google/firebase/messaging/zzj;->zza()Lcom/google/android/gms/tasks/Task;

    move-result-object v6

    const-wide/16 v7, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6}, Landroidx/core/app/h$d;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$d;

    new-instance v7, Landroidx/core/app/h$b;

    invoke-direct {v7}, Landroidx/core/app/h$b;-><init>()V

    invoke-virtual {v7, v6}, Landroidx/core/app/h$b;->b(Landroid/graphics/Bitmap;)Landroidx/core/app/h$b;

    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroidx/core/app/h$b;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$b;

    invoke-virtual {v4, v7}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$e;)Landroidx/core/app/h$d;
    :try_end_9d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7d .. :try_end_9d} :catch_b7
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_9d} :catch_a7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7d .. :try_end_9d} :catch_9e

    goto :goto_de

    :catch_9e
    const-string v4, "Failed to download image in time, showing notification without it"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/firebase/messaging/zzj;->close()V

    goto :goto_de

    :catch_a7
    const-string v4, "Interrupted while downloading image, showing notification without it"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/firebase/messaging/zzj;->close()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_de

    :catch_b7
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to download image: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    :goto_de
    const/4 v0, 0x3

    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ea

    const-string v0, "Showing notification"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ea
    iget-object v0, p0, Lcom/google/firebase/messaging/zzd;->zzb:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v4, v3, Lcom/google/firebase/messaging/zza;->zzb:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/firebase/messaging/zza;->zza:Landroidx/core/app/h$d;

    invoke-virtual {v3}, Landroidx/core/app/h$d;->a()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return v1
.end method
