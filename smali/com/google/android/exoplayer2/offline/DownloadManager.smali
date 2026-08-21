###### Class com.google.android.exoplayer2.offline.DownloadManager (com.google.android.exoplayer2.offline.DownloadManager)
.class public final Lcom/google/android/exoplayer2/offline/DownloadManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadManager$Task;,
        Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;,
        Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_MAX_SIMULTANEOUS_DOWNLOADS:I = 0x1

.field public static final DEFAULT_MIN_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private final actionFile:Lcom/google/android/exoplayer2/offline/ActionFile;

.field private final activeDownloadTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/DownloadManager$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final deserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

.field private final downloaderConstructorHelper:Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

.field private downloadsStopped:Z

.field private final fileIOHandler:Landroid/os/Handler;

.field private final fileIOThread:Landroid/os/HandlerThread;

.field private final handler:Landroid/os/Handler;

.field private initialized:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final maxActiveDownloadTasks:I

.field private final minRetryCount:I

.field private nextTaskId:I

.field private released:Z

.field private final tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/DownloadManager$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;IILjava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloaderConstructorHelper:Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxActiveDownloadTasks:I

    iput p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    new-instance p1, Lcom/google/android/exoplayer2/offline/ActionFile;

    invoke-direct {p1, p4}, Lcom/google/android/exoplayer2/offline/ActionFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->actionFile:Lcom/google/android/exoplayer2/offline/ActionFile;

    array-length p1, p5

    if-lez p1, :cond_14

    goto :goto_18

    :cond_14
    invoke-static {}, Lcom/google/android/exoplayer2/offline/DownloadAction;->getDefaultDeserializers()[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    move-result-object p5

    :goto_18
    iput-object p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->deserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_35

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_35
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->handler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DownloadManager file i/o"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->loadActions()V

    const-string p1, "Created"

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;Ljava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloadManager;-><init>(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;IILjava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V
    .registers 6

    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/exoplayer2/offline/DownloadManager;-><init>(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;Ljava/io/File;[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/offline/DownloadManager;)Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloaderConstructorHelper:Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/offline/DownloadManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private addTaskForAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
    .registers 9

    new-instance v6, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->nextTaskId:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->nextTaskId:I

    iget v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(ILcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadAction;ILcom/google/android/exoplayer2/offline/DownloadManager$1;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Task is added"

    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    return-object v6
.end method

.method private loadActions()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/c;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/offline/c;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private static logd(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private maybeNotifyListenersIdle()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->isIdle()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "Notify idle state"

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method private maybeStartTasks()V
    .registers 12

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    if-eqz v0, :cond_a0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_a

    goto/16 :goto_a0

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxActiveDownloadTasks:I

    if-ne v0, v3, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    move v3, v0

    const/4 v0, 0x0

    :goto_20
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a0

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$500(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_9d

    :cond_37
    invoke-static {v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v5

    iget-boolean v6, v5, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-nez v6, :cond_42

    if-eqz v3, :cond_42

    goto :goto_9d

    :cond_42
    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_44
    if-ge v7, v0, :cond_84

    iget-object v9, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v9}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/offline/DownloadAction;->isSameMedia(Lcom/google/android/exoplayer2/offline/DownloadAction;)Z

    move-result v10

    if-eqz v10, :cond_81

    if-eqz v6, :cond_76

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " clashes with "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$600(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    const/4 v8, 0x0

    goto :goto_81

    :cond_76
    invoke-static {v9}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v9

    iget-boolean v9, v9, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-eqz v9, :cond_81

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto :goto_84

    :cond_81
    :goto_81
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    :cond_84
    :goto_84
    if-eqz v8, :cond_9d

    invoke-static {v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$700(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    if-nez v6, :cond_9d

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxActiveDownloadTasks:I

    if-ne v3, v4, :cond_9c

    const/4 v3, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v3, 0x0

    :cond_9d
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_a0
    :goto_a0
    return-void
.end method

.method private notifyListenersTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 4

    const-string v0, "Task state is changed"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getDownloadState()Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onTaskStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method private onTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyListenersTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->saveActions()V

    :cond_23
    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeNotifyListenersIdle()V

    :cond_2b
    return-void
.end method

.method private saveActions()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/offline/DownloadAction;

    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_27
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/offline/d;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/offline/d;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;[Lcom/google/android/exoplayer2/offline/DownloadAction;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->actionFile:Lcom/google/android/exoplayer2/offline/ActionFile;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->deserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/ActionFile;->load([Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;)[Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v0

    const-string v1, "Action file is loaded."

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_19

    :catchall_e
    move-exception v0

    const-string v1, "DownloadManager"

    const-string v2, "Action file loading failed."

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/offline/DownloadAction;

    :goto_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/offline/g;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/offline/g;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;[Lcom/google/android/exoplayer2/offline/DownloadAction;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic a([Lcom/google/android/exoplayer2/offline/DownloadAction;)V
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_1e

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addTaskForAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    const-string p1, "Tasks are created."

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    goto :goto_2c

    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->saveActions()V

    :cond_4a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    :goto_4d
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_69

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$100(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I

    move-result v0

    if-nez v0, :cond_66

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyListenersTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_69
    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic b([Lcom/google/android/exoplayer2/offline/DownloadAction;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->actionFile:Lcom/google/android/exoplayer2/offline/ActionFile;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/offline/ActionFile;->store([Lcom/google/android/exoplayer2/offline/DownloadAction;)V

    const-string p1, "Actions persisted."

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p1

    const-string v0, "DownloadManager"

    const-string v1, "Persisting actions failed."

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    return-void
.end method

.method public getAllTaskStates()[Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    const/4 v1, 0x0

    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getDownloadState()Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    return-object v0
.end method

.method public getDownloadCount()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-nez v2, :cond_1c

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    return v1
.end method

.method public getTaskCount()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTaskState(I)Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I

    move-result v2

    if-ne v2, p1, :cond_23

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getDownloadState()Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object p1

    return-object p1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addTaskForAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->saveActions()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$100(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyListenersTaskStateChange(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    :cond_1e
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I

    move-result p1

    return p1
.end method

.method public handleAction([B)I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->deserializers:[Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadAction;->deserializeFromStream([Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->handleAction(Lcom/google/android/exoplayer2/offline/DownloadAction;)I

    move-result p1

    return p1
.end method

.method public isIdle()Z
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    const/4 v2, 0x0

    if-nez v0, :cond_d

    return v2

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->isActive()Z

    move-result v3

    if-eqz v3, :cond_25

    return v2

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_28
    return v1
.end method

.method public isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    return v0
.end method

.method public release()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/exoplayer2/offline/h;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/offline/h;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->fileIOThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "Released"

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDownloads()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    const-string v0, "Downloads are started"

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public stopDownloads()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    if-nez v0, :cond_29

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    const-string v0, "Downloads are stopping"

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

###### Class com.google.android.exoplayer2.offline.DownloadManager.AnonymousClass1 (com.google.android.exoplayer2.offline.DownloadManager$1)
.class synthetic Lcom/google/android/exoplayer2/offline/DownloadManager$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.offline.DownloadManager.Listener (com.google.android.exoplayer2.offline.DownloadManager$Listener)
.class public interface abstract Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
.end method

.method public abstract onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
.end method

.method public abstract onTaskStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)V
.end method

###### Class com.google.android.exoplayer2.offline.DownloadManager.Task (com.google.android.exoplayer2.offline.DownloadManager$Task)
.class final Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadManager$Task$InternalState;
    }
.end annotation


# static fields
.field public static final STATE_QUEUED_CANCELING:I = 0x5

.field public static final STATE_STARTED_CANCELING:I = 0x6

.field public static final STATE_STARTED_STOPPING:I = 0x7


# instance fields
.field private final action:Lcom/google/android/exoplayer2/offline/DownloadAction;

.field private volatile currentState:I

.field private final downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private volatile downloader:Lcom/google/android/exoplayer2/offline/Downloader;

.field private error:Ljava/lang/Throwable;

.field private final id:I

.field private final minRetryCount:I

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(ILcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadAction;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->id:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    iput p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadAction;ILcom/google/android/exoplayer2/offline/DownloadManager$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;-><init>(ILcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadAction;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->stop()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->id:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->canStart()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancel()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->start()V

    return-void
.end method

.method private canStart()Z
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private cancel()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$900(Lcom/google/android/exoplayer2/offline/DownloadManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/offline/e;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/offline/e;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_22

    :cond_17
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancelDownload()V

    :cond_22
    :goto_22
    return-void
.end method

.method private cancelDownload()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/Downloader;->cancel()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method private changeStateAndNotify(II)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(IILjava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method private changeStateAndNotify(IILjava/lang/Throwable;)Z
    .registers 6

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_6

    return v1

    :cond_6
    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->error:Ljava/lang/Throwable;

    iget p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getExternalState()I

    move-result p2

    const/4 p3, 0x1

    if-eq p1, p2, :cond_14

    const/4 v1, 0x1

    :cond_14
    if-nez v1, :cond_1b

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1100(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    :cond_1b
    return p3
.end method

.method private getExternalState()I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private getRetryDelayMillis(I)I
    .registers 3

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getStateString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    const/4 v1, 0x7

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->getStateString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, "STOPPING"

    return-object v0

    :cond_15
    const-string v0, "CANCELING"

    return-object v0
.end method

.method private start()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_14
    return-void
.end method

.method private stop()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Stopping"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1000(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->cancelDownload()V

    :cond_10
    return-void
.end method

.method private static toString([B)Ljava/lang/String;
    .registers 3

    array-length v0, p0

    const/16 v1, 0x64

    if-le v0, v1, :cond_8

    const-string p0, "<data is too long>"

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic a()V
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    return-void
.end method

.method public synthetic a(Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x4

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(IILjava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x6

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_23

    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_23
    :goto_23
    return-void
.end method

.method public getDownloadPercentage()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/Downloader;->getDownloadPercentage()F

    move-result v0

    goto :goto_d

    :cond_b
    const/high16 v0, -0x40800000    # -1.0f

    :goto_d
    return v0
.end method

.method public getDownloadState()Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
    .registers 11

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getExternalState()I

    move-result v3

    new-instance v9, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->id:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getDownloadPercentage()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getDownloadedBytes()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->error:Ljava/lang/Throwable;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;-><init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V

    return-object v9
.end method

.method public getDownloadedBytes()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/Downloader;->getDownloadedBytes()J

    move-result-wide v0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    return-wide v0
.end method

.method public isActive()Z
    .registers 4

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_16

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_16

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1
.end method

.method public isFinished()Z
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public run()V
    .registers 9

    const-string v0, "Task is started"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1000(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1200(Lcom/google/android/exoplayer2/offline/DownloadManager;)Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadAction;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/offline/Downloader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/Downloader;->remove()V

    goto :goto_78

    :cond_1f
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_23
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_7a

    if-nez v4, :cond_78

    :try_start_29
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/offline/Downloader;->download()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_7a

    goto :goto_78

    :catch_2f
    move-exception v4

    :try_start_30
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloader:Lcom/google/android/exoplayer2/offline/Downloader;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/offline/Downloader;->getDownloadedBytes()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-eqz v7, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset error count. downloadedBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1000(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    move-wide v0, v5

    const/4 v3, 0x0

    :cond_50
    iget v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_77

    add-int/2addr v3, v6

    iget v5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    if-gt v3, v5, :cond_77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download error. Retry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$1000(Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->getRetryDelayMillis(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_23

    :cond_77
    throw v4
    :try_end_78
    .catchall {:try_start_30 .. :try_end_78} :catchall_7a

    :cond_78
    :goto_78
    const/4 v0, 0x0

    goto :goto_7b

    :catchall_7a
    move-exception v0

    :goto_7b
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->access$900(Lcom/google/android/exoplayer2/offline/DownloadManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/offline/f;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/offline/f;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.exoplayer2.offline.DownloadManager.Task.InternalState (com.google.android.exoplayer2.offline.DownloadManager$Task$InternalState)
.class public interface abstract annotation Lcom/google/android/exoplayer2/offline/DownloadManager$Task$InternalState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InternalState"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.exoplayer2.offline.e (com.google.android.exoplayer2.offline.e)
.class public final synthetic Lcom/google/android/exoplayer2/offline/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/e;->b:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/e;->b:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->a()V

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.f (com.google.android.exoplayer2.offline.f)
.class public final synthetic Lcom/google/android/exoplayer2/offline/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

.field private final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager$Task;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/f;->b:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/f;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/f;->b:Lcom/google/android/exoplayer2/offline/DownloadManager$Task;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/f;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Task;->a(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.DownloadManager.TaskState (com.google.android.exoplayer2.offline.DownloadManager$TaskState)
.class public final Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState$State;
    }
.end annotation


# static fields
.field public static final STATE_CANCELED:I = 0x3

.field public static final STATE_COMPLETED:I = 0x2

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_QUEUED:I = 0x0

.field public static final STATE_STARTED:I = 0x1


# instance fields
.field public final action:Lcom/google/android/exoplayer2/offline/DownloadAction;

.field public final downloadPercentage:F

.field public final downloadedBytes:J

.field public final error:Ljava/lang/Throwable;

.field public final state:I

.field public final taskId:I


# direct methods
.method private constructor <init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->taskId:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    iput p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->state:I

    iput p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadPercentage:F

    iput-wide p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadedBytes:J

    iput-object p7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->error:Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;-><init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V

    return-void
.end method

.method public static getStateString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-ne p0, v0, :cond_11

    const-string p0, "FAILED"

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_17
    const-string p0, "CANCELED"

    return-object p0

    :cond_1a
    const-string p0, "COMPLETED"

    return-object p0

    :cond_1d
    const-string p0, "STARTED"

    return-object p0

    :cond_20
    const-string p0, "QUEUED"

    return-object p0
.end method

###### Class com.google.android.exoplayer2.offline.DownloadManager.TaskState.State (com.google.android.exoplayer2.offline.DownloadManager$TaskState$State)
.class public interface abstract annotation Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState$State;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "State"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.exoplayer2.offline.c (com.google.android.exoplayer2.offline.c)
.class public final synthetic Lcom/google/android/exoplayer2/offline/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/offline/DownloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/c;->b:Lcom/google/android/exoplayer2/offline/DownloadManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/c;->b:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->a()V

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.d (com.google.android.exoplayer2.offline.d)
.class public final synthetic Lcom/google/android/exoplayer2/offline/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private final synthetic c:[Lcom/google/android/exoplayer2/offline/DownloadAction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager;[Lcom/google/android/exoplayer2/offline/DownloadAction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/d;->b:Lcom/google/android/exoplayer2/offline/DownloadManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/d;->c:[Lcom/google/android/exoplayer2/offline/DownloadAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d;->b:Lcom/google/android/exoplayer2/offline/DownloadManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d;->c:[Lcom/google/android/exoplayer2/offline/DownloadAction;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->b([Lcom/google/android/exoplayer2/offline/DownloadAction;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.g (com.google.android.exoplayer2.offline.g)
.class public final synthetic Lcom/google/android/exoplayer2/offline/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private final synthetic c:[Lcom/google/android/exoplayer2/offline/DownloadAction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager;[Lcom/google/android/exoplayer2/offline/DownloadAction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/g;->b:Lcom/google/android/exoplayer2/offline/DownloadManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/g;->c:[Lcom/google/android/exoplayer2/offline/DownloadAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/g;->b:Lcom/google/android/exoplayer2/offline/DownloadManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/g;->c:[Lcom/google/android/exoplayer2/offline/DownloadAction;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->a([Lcom/google/android/exoplayer2/offline/DownloadAction;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.h (com.google.android.exoplayer2.offline.h)
.class public final synthetic Lcom/google/android/exoplayer2/offline/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Landroid/os/ConditionVariable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ConditionVariable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/h;->b:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/h;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
