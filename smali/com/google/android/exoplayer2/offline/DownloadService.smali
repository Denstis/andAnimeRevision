###### Class com.google.android.exoplayer2.offline.DownloadService (com.google.android.exoplayer2.offline.DownloadService)
.class public abstract Lcom/google/android/exoplayer2/offline/DownloadService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;,
        Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;,
        Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;
    }
.end annotation


# static fields
.field public static final ACTION_ADD:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.ADD"

.field public static final ACTION_INIT:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.INIT"

.field public static final ACTION_RELOAD_REQUIREMENTS:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.RELOAD_REQUIREMENTS"

.field private static final ACTION_RESTART:Ljava/lang/String; = "com.google.android.exoplayer.downloadService.action.RESTART"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_FOREGROUND_NOTIFICATION_UPDATE_INTERVAL:J = 0x3e8L

.field private static final DEFAULT_REQUIREMENTS:Lcom/google/android/exoplayer2/scheduler/Requirements;

.field public static final FOREGROUND_NOTIFICATION_ID_NONE:I = 0x0

.field public static final KEY_DOWNLOAD_ACTION:Ljava/lang/String; = "download_action"

.field public static final KEY_FOREGROUND:Ljava/lang/String; = "foreground"

.field private static final TAG:Ljava/lang/String; = "DownloadService"

.field private static final requirementsHelpers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final channelName:I

.field private downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private downloadManagerListener:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;

.field private final foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

.field private lastStartId:I

.field private startedInForeground:Z

.field private taskRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadService;->requirementsHelpers:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(IZZ)V

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadService;->DEFAULT_REQUIREMENTS:Lcom/google/android/exoplayer2/scheduler/Requirements;

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 4

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadService;-><init>(IJ)V

    return-void
.end method

.method protected constructor <init>(IJ)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloadService;-><init>(IJLjava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(IJLjava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;-><init>(Lcom/google/android/exoplayer2/offline/DownloadService;IJ)V

    move-object p1, v0

    :goto_d
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelId:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelName:I

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/offline/DownloadService;Lcom/google/android/exoplayer2/scheduler/Requirements;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->maybeStartWatchingRequirements(Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->stop()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadManager;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    return-object p0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildAddActionIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadAction;Z)Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloadAction;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "com.google.android.exoplayer.downloadService.action.ADD"

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/offline/DownloadAction;->toByteArray()[B

    move-result-object p1

    const-string p2, "download_action"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "foreground"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private maybeStartWatchingRequirements(Lcom/google/android/exoplayer2/scheduler/Requirements;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-class v0, Lcom/google/android/exoplayer2/offline/DownloadService;

    sget-object v1, Lcom/google/android/exoplayer2/offline/DownloadService;->requirementsHelpers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;

    if-nez v1, :cond_30

    new-instance v7, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getScheduler()Lcom/google/android/exoplayer2/scheduler/Scheduler;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/Requirements;Lcom/google/android/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadService$1;)V

    sget-object p1, Lcom/google/android/exoplayer2/offline/DownloadService;->requirementsHelpers:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->start()V

    const-string p1, "started watching requirements"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->logd(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method private maybeStopWatchingRequirements()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadCount()I

    move-result v0

    if-lez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->stopWatchingRequirements()V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.google.android.exoplayer.downloadService.action.INIT"

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startForeground(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.google.android.exoplayer.downloadService.action.INIT"

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "foreground"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startWithAction(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadAction;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloadAction;",
            "Z)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->buildAddActionIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadAction;Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p3, :cond_a

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_d
    return-void
.end method

.method private stop()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->stopPeriodicUpdates()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->startedInForeground:Z

    if-eqz v0, :cond_16

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->showNotificationIfNotAlready()V

    :cond_16
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_26

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->taskRemoved:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const-string v0, "stopSelf()"

    goto :goto_47

    :cond_26
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->lastStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSelf("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->lastStartId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_47
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private stopWatchingRequirements()V
    .registers 3

    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadService;->requirementsHelpers:Ljava/util/HashMap;

    const-class v1, Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->stop()V

    const-string v0, "stopped watching requirements"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->logd(Ljava/lang/String;)V

    :cond_14
    return-void
.end method


# virtual methods
.method protected abstract getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;
.end method

.method protected getForegroundNotification([Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)Landroid/app/Notification;
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is started in the foreground but getForegroundNotification() is not implemented."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;
    .registers 2

    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadService;->DEFAULT_REQUIREMENTS:Lcom/google/android/exoplayer2/scheduler/Requirements;

    return-object v0
.end method

.method protected abstract getScheduler()Lcom/google/android/exoplayer2/scheduler/Scheduler;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->channelName:I

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;-><init>(Lcom/google/android/exoplayer2/offline/DownloadService;Lcom/google/android/exoplayer2/offline/DownloadService$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerListener:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerListener:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->foregroundNotificationUpdater:Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->stopPeriodicUpdates()V

    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManagerListener:Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->removeListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->maybeStopWatchingRequirements()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11

    iput p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->lastStartId:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->taskRemoved:Z

    const-string v0, "com.google.android.exoplayer.downloadService.action.RESTART"

    const/4 v1, 0x1

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->startedInForeground:Z

    const-string v4, "foreground"

    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v4, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v4, 0x1

    :goto_22
    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->startedInForeground:Z

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    const-string v3, "com.google.android.exoplayer.downloadService.action.INIT"

    if-nez v2, :cond_2c

    move-object v2, v3

    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " startId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/offline/DownloadService;->logd(Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v4, :sswitch_data_d6

    goto :goto_76

    :sswitch_53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    goto :goto_77

    :sswitch_5a
    const-string p2, "com.google.android.exoplayer.downloadService.action.ADD"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    const/4 p2, 0x2

    goto :goto_77

    :sswitch_64
    const-string p2, "com.google.android.exoplayer.downloadService.action.RELOAD_REQUIREMENTS"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    const/4 p2, 0x3

    goto :goto_77

    :sswitch_6e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    const/4 p2, 0x1

    goto :goto_77

    :cond_76
    :goto_76
    const/4 p2, -0x1

    :goto_77
    if-eqz p2, :cond_b1

    if-eq p2, v1, :cond_b1

    const-string p3, "DownloadService"

    if-eq p2, v6, :cond_9a

    if-eq p2, v5, :cond_96

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring unrecognized action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_92
    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    :cond_96
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->stopWatchingRequirements()V

    goto :goto_b1

    :cond_9a
    const-string p2, "download_action"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_a5

    const-string p1, "Ignoring ADD action with no action data"

    goto :goto_92

    :cond_a5
    :try_start_a5
    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->handleAction([B)I
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_aa} :catch_ab

    goto :goto_b1

    :catch_ab
    move-exception p1

    const-string p2, "Failed to handle ADD action"

    invoke-static {p3, p2, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b1
    :goto_b1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->checkRequirements(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c1

    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/offline/DownloadManager;->startDownloads()V

    goto :goto_c6

    :cond_c1
    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/offline/DownloadManager;->stopDownloads()V

    :goto_c6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->maybeStartWatchingRequirements(Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_d4

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->stop()V

    :cond_d4
    return v1

    nop

    :sswitch_data_d6
    .sparse-switch
        -0x33ed2c70 -> :sswitch_6e
        -0x244a9669 -> :sswitch_64
        -0x16d2615e -> :sswitch_5a
        0x3c89ff0f -> :sswitch_53
    .end sparse-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskRemoved rootIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->logd(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->taskRemoved:Z

    return-void
.end method

.method protected onTaskStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)V
    .registers 2

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.DownloadService.AnonymousClass1 (com.google.android.exoplayer2.offline.DownloadService$1)
.class synthetic Lcom/google/android/exoplayer2/offline/DownloadService$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.offline.DownloadService.DownloadManagerListener (com.google.android.exoplayer2.offline.DownloadService$DownloadManagerListener)
.class final Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/offline/DownloadService;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadService;Lcom/google/android/exoplayer2/offline/DownloadService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;-><init>(Lcom/google/android/exoplayer2/offline/DownloadService;)V

    return-void
.end method


# virtual methods
.method public final onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$400(Lcom/google/android/exoplayer2/offline/DownloadService;)V

    return-void
.end method

.method public onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$200(Lcom/google/android/exoplayer2/offline/DownloadService;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    return-void
.end method

.method public onTaskStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->onTaskStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$300(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    move-result-object p1

    if-eqz p1, :cond_25

    iget p1, p2, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->state:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1c

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$300(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->startPeriodicUpdates()V

    goto :goto_25

    :cond_1c
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$300(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    :cond_25
    :goto_25
    return-void
.end method

###### Class com.google.android.exoplayer2.offline.DownloadService.ForegroundNotificationUpdater (com.google.android.exoplayer2.offline.DownloadService$ForegroundNotificationUpdater)
.class final Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForegroundNotificationUpdater"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private notificationDisplayed:Z

.field private final notificationId:I

.field private periodicUpdatesStarted:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

.field private final updateInterval:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadService;IJ)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationId:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->updateInterval:J

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    return-void
.end method

.method public showNotificationIfNotAlready()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationDisplayed:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    :cond_7
    return-void
.end method

.method public startPeriodicUpdates()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->periodicUpdatesStarted:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    return-void
.end method

.method public stopPeriodicUpdates()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->periodicUpdatesStarted:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$500(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getAllTaskStates()[Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationId:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->getForegroundNotification([Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->notificationDisplayed:Z

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->periodicUpdatesStarted:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->updateInterval:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_28
    return-void
.end method

###### Class com.google.android.exoplayer2.offline.DownloadService.RequirementsHelper (com.google.android.exoplayer2.offline.DownloadService$RequirementsHelper)
.class final Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequirementsHelper"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

.field private final requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

.field private final scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/Requirements;Lcom/google/android/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/scheduler/Requirements;",
            "Lcom/google/android/exoplayer2/scheduler/Scheduler;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->serviceClass:Ljava/lang/Class;

    new-instance p3, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-direct {p3, p1, p0, p2}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/Requirements;Lcom/google/android/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadService$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/Requirements;Lcom/google/android/exoplayer2/scheduler/Scheduler;Ljava/lang/Class;)V

    return-void
.end method

.method private notifyService()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->serviceClass:Ljava/lang/Class;

    const-string v2, "com.google.android.exoplayer.downloadService.action.INIT"

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$600(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :try_start_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public requirementsMet(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->notifyService()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_a

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/google/android/exoplayer2/scheduler/Scheduler;->cancel()Z

    :catch_a
    :cond_a
    return-void
.end method

.method public requirementsNotMet(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->notifyService()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    nop

    :goto_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->requirements:Lcom/google/android/exoplayer2/scheduler/Requirements;

    const-string v2, "com.google.android.exoplayer.downloadService.action.RESTART"

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/scheduler/Scheduler;->schedule(Lcom/google/android/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    const-string p1, "DownloadService"

    const-string v0, "Scheduling downloads failed."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->start()V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->stop()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$RequirementsHelper;->scheduler:Lcom/google/android/exoplayer2/scheduler/Scheduler;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/exoplayer2/scheduler/Scheduler;->cancel()Z

    :cond_c
    return-void
.end method
