###### Class com.google.android.exoplayer2.drm.OfflineLicenseHelper (com.google.android.exoplayer2.drm.OfflineLicenseHelper)
.class public final Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final conditionVariable:Landroid/os/ConditionVariable;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final handlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OfflineLicenseHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    new-instance v0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;-><init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)V

    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->addListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private blockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)[B
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getOfflineLicenseKeySetId()[B

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    if-nez p2, :cond_14

    return-object p3

    :cond_14
    throw p2
.end method

.method public static newWidevineInstance(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;",
            ")",
            "Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/HashMap;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    move-result-object p0

    return-object p0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;",
            ")",
            "Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/HashMap;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    move-result-object p0

    return-object p0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/HashMap;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V

    return-object v0
.end method

.method private openBlockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->setMode(I[B)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->block()V

    return-object p1
.end method


# virtual methods
.method public declared-synchronized downloadLicense(Lcom/google/android/exoplayer2/drm/DrmInitData;)[B
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    :try_start_6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)[B

    move-result-object p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLicenseDurationRemainingSec([B)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    if-eqz p1, :cond_31

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_34

    monitor-exit p0

    return-object p1

    :cond_31
    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit p0

    return-object v1

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPropertyByteArray(Ljava/lang/String;)[B
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public declared-synchronized releaseLicense([B)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)[B
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renewLicense([B)[B
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLcom/google/android/exoplayer2/drm/DrmInitData;)[B

    move-result-object p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPropertyByteArray(Ljava/lang/String;[B)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->setPropertyByteArray(Ljava/lang/String;[B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.exoplayer2.drm.OfflineLicenseHelper.AnonymousClass1 (com.google.android.exoplayer2.drm.OfflineLicenseHelper$1)
.class Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmKeysLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDrmKeysRemoved()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDrmKeysRestored()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public synthetic onDrmSessionAcquired()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/i;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public synthetic onDrmSessionReleased()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/i;->$default$onDrmSessionReleased(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    return-void
.end method
