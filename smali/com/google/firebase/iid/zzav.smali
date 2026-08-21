###### Class com.google.firebase.iid.zzav (com.google.firebase.iid.zzav)
.class final Lcom/google/firebase/iid/zzav;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:J

.field private final zzb:Landroid/os/PowerManager$WakeLock;

.field private final zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzd:Lcom/google/firebase/iid/zzax;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzai;Lcom/google/firebase/iid/zzax;J)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p3, p0, Lcom/google/firebase/iid/zzav;->zzd:Lcom/google/firebase/iid/zzax;

    iput-wide p4, p0, Lcom/google/firebase/iid/zzav;->zza:J

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzav;->zzb:Landroid/os/PowerManager$WakeLock;

    iget-object p1, p0, Lcom/google/firebase/iid/zzav;->zzb:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private final zzc()Z
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "FirebaseInstanceId"

    iget-object v1, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb()Lcom/google/firebase/iid/zzas;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzas;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_12

    return v3

    :cond_12
    const/4 v2, 0x0

    :try_start_13
    iget-object v4, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzc()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    const-string v1, "Token retrieval failed: null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_21
    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string v6, "Token successfully retrieved"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-eqz v1, :cond_39

    if-eqz v1, :cond_99

    iget-object v1, v1, Lcom/google/firebase/iid/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    :cond_39
    const-string v1, "[DEFAULT]"

    iget-object v6, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v6}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza()Lcom/google/firebase/FirebaseApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string v1, "Invoking onNewToken for app: "

    iget-object v5, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza()Lcom/google/firebase/FirebaseApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6c

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_72

    :cond_6c
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    :goto_72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "token"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.firebase.MESSAGING_EVENT"

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    invoke-direct {v6, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "wrapped_intent"

    invoke-virtual {v6, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_99} :catch_a0
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_99} :catch_9a

    :cond_99
    return v3

    :catch_9a
    const-string v1, "Token retrieval failed with SecurityException. Will retry token retrieval"

    :goto_9c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_a0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INTERNAL_SERVER_ERROR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    goto :goto_e6

    :cond_ba
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Token retrieval failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Will retry token retrieval"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9c

    :cond_e5
    throw v1

    :cond_e6
    :goto_e6
    const-string v1, "Token retrieval failed without exception message. Will retry token retrieval"

    goto :goto_9c
.end method


# virtual methods
.method public final run()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    invoke-static {}, Lcom/google/firebase/iid/zzaq;->zza()Lcom/google/firebase/iid/zzaq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaq;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/firebase/iid/zzav;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_13
    const/4 v0, 0x0

    :try_start_14
    iget-object v1, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V

    iget-object v1, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf()Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_27} :catch_9e
    .catchall {:try_start_14 .. :try_end_27} :catchall_9c

    invoke-static {}, Lcom/google/firebase/iid/zzaq;->zza()Lcom/google/firebase/iid/zzaq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaq;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/firebase/iid/zzav;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3a
    return-void

    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/google/firebase/iid/zzaq;->zza()Lcom/google/firebase/iid/zzaq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzaq;->zzb(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zzb()Z

    move-result v1

    if-nez v1, :cond_6b

    new-instance v1, Lcom/google/firebase/iid/zzau;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/zzau;-><init>(Lcom/google/firebase/iid/zzav;)V

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzau;->zza()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_57} :catch_9e
    .catchall {:try_start_3b .. :try_end_57} :catchall_9c

    invoke-static {}, Lcom/google/firebase/iid/zzaq;->zza()Lcom/google/firebase/iid/zzaq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaq;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/firebase/iid/zzav;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6a
    return-void

    :cond_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/google/firebase/iid/zzav;->zzc()Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/google/firebase/iid/zzav;->zzd:Lcom/google/firebase/iid/zzax;

    iget-object v2, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzax;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V

    goto :goto_88

    :cond_81
    iget-object v1, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v2, p0, Lcom/google/firebase/iid/zzav;->zza:J

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(J)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_88} :catch_9e
    .catchall {:try_start_6b .. :try_end_88} :catchall_9c

    :goto_88
    invoke-static {}, Lcom/google/firebase/iid/zzaq;->zza()Lcom/google/firebase/iid/zzaq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaq;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_dc

    :goto_96
    iget-object v0, p0, Lcom/google/firebase/iid/zzav;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_9c
    move-exception v0

    goto :goto_dd

    :catch_9e
    move-exception v1

    :try_start_9f
    const-string v2, "FirebaseInstanceId"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Topic sync or token retrieval failed on hard failure exceptions: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Won\'t retry the operation."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V
    :try_end_cd
    .catchall {:try_start_9f .. :try_end_cd} :catchall_9c

    invoke-static {}, Lcom/google/firebase/iid/zzaq;->zza()Lcom/google/firebase/iid/zzaq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaq;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_dc

    goto :goto_96

    :cond_dc
    return-void

    :goto_dd
    invoke-static {}, Lcom/google/firebase/iid/zzaq;->zza()Lcom/google/firebase/iid/zzaq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzaq;->zza(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f0

    iget-object v1, p0, Lcom/google/firebase/iid/zzav;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_f0
    goto :goto_f2

    :goto_f1
    throw v0

    :goto_f2
    goto :goto_f1
.end method

.method final zza()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzav;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zzb()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzav;->zza()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
