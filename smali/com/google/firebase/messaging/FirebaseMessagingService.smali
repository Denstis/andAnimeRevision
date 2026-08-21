###### Class com.google.firebase.messaging.FirebaseMessagingService (com.google.firebase.messaging.FirebaseMessagingService)
.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/messaging/zzc;
.source ""


# static fields
.field private static final zza:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/messaging/zzc;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletedMessages()V
    .registers 1

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 2

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method protected final zza(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    invoke-static {}, Lcom/google/firebase/iid/zzaq;->zza()Lcom/google/firebase/iid/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzaq;->zzb()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Landroid/content/Intent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging.NOTIFICATION_OPEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "pending_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_21

    :try_start_16
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_19
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    const-string v0, "FirebaseMessaging"

    const-string v1, "Notification pending intent canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationOpen(Landroid/content/Intent;)V

    :cond_2a
    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public final zzc(Landroid/content/Intent;)V
    .registers 13

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FirebaseMessaging"

    if-nez v1, :cond_59

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_59

    :cond_17
    const-string v1, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationDismiss(Landroid/content/Intent;)V

    return-void

    :cond_29
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    return-void

    :cond_3b
    const-string v0, "Unknown intent action: "

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_55

    :cond_50
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_55
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void

    :cond_59
    :goto_59
    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_6c

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    goto :goto_7c

    :cond_6c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/firebase/iid/zzv;->zza(Landroid/content/Context;)Lcom/google/firebase/iid/zzv;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/google/firebase/iid/zzv;->zza(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    :goto_7c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v5, :cond_87

    :goto_85
    const/4 v1, 0x0

    goto :goto_c5

    :cond_87
    sget-object v5, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    invoke-interface {v5, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ae

    const-string v5, "Received duplicate message: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_a6

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ab

    :cond_a6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_ab
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    const/4 v1, 0x1

    goto :goto_c5

    :cond_b0
    sget-object v5, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    const/16 v9, 0xa

    if-lt v5, v9, :cond_bf

    sget-object v5, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_bf
    sget-object v5, Lcom/google/firebase/messaging/FirebaseMessagingService;->zza:Ljava/util/Queue;

    invoke-interface {v5, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :goto_c5
    if-nez v1, :cond_19a

    const-string v1, "message_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "gcm"

    if-nez v1, :cond_d2

    move-object v1, v5

    :cond_d2
    const/4 v9, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1ca

    goto :goto_100

    :sswitch_db
    const-string v5, "send_event"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    const/4 v8, 0x2

    goto :goto_101

    :sswitch_e5
    const-string v5, "send_error"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    const/4 v8, 0x3

    goto :goto_101

    :sswitch_ef
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    goto :goto_101

    :sswitch_f6
    const-string v5, "deleted_messages"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    const/4 v8, 0x1

    goto :goto_101

    :cond_100
    :goto_100
    const/4 v8, -0x1

    :goto_101
    if-eqz v8, :cond_14c

    if-eq v8, v6, :cond_148

    if-eq v8, v4, :cond_140

    if-eq v8, v7, :cond_125

    const-string p1, "Received message with unknown type: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11a

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_120

    :cond_11a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_120
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19a

    :cond_125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_131

    const-string v0, "message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_131
    new-instance v1, Lcom/google/firebase/messaging/SendException;

    const-string v4, "error"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/SendException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_19a

    :cond_140
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    goto :goto_19a

    :cond_148
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    goto :goto_19a

    :cond_14c
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationReceived(Landroid/content/Intent;)V

    :cond_155
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_160

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_160
    const-string v1, "androidx.contentpager.content.wakelockid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/messaging/zzk;->zza(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_192

    new-instance v1, Lcom/google/firebase/messaging/zzk;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/zzk;-><init>(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/messaging/zzd;

    invoke-direct {v5, p0, v1, v4}, Lcom/google/firebase/messaging/zzd;-><init>(Landroid/content/Context;Lcom/google/firebase/messaging/zzk;Ljava/util/concurrent/Executor;)V

    :try_start_179
    invoke-virtual {v5}, Lcom/google/firebase/messaging/zzd;->zza()Z

    move-result v1
    :try_end_17d
    .catchall {:try_start_179 .. :try_end_17d} :catchall_18d

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-eqz v1, :cond_183

    goto :goto_19a

    :cond_183
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadMetrics(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_192

    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationForeground(Landroid/content/Intent;)V

    goto :goto_192

    :catchall_18d
    move-exception p1

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw p1

    :cond_192
    :goto_192
    new-instance p1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    :cond_19a
    :goto_19a
    const-wide/16 v0, 0x1

    :try_start_19c
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0, v1, p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1a1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_19c .. :try_end_1a1} :catch_1a6
    .catch Ljava/lang/InterruptedException; {:try_start_19c .. :try_end_1a1} :catch_1a4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_19c .. :try_end_1a1} :catch_1a2

    return-void

    :catch_1a2
    move-exception p1

    goto :goto_1a7

    :catch_1a4
    move-exception p1

    goto :goto_1a7

    :catch_1a6
    move-exception p1

    :goto_1a7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Message ack failed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_1ca
    .sparse-switch
        -0x7aedf14e -> :sswitch_f6
        0x18f11 -> :sswitch_ef
        0x308f3e91 -> :sswitch_e5
        0x3090df23 -> :sswitch_db
    .end sparse-switch
.end method
