###### Class com.google.android.exoplayer2.drm.DefaultDrmSession (com.google.android.exoplayer2.drm.DefaultDrmSession)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSession<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW:I = 0x3c

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field final callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

.field private currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/EventDispatcher<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final initialDrmRequestRetryCount:I

.field private lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>.PostRequestHandler;"
        }
    .end annotation
.end field

.field final postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private final provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field public final schemeDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;Ljava/util/List;I[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/EventDispatcher;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/EventDispatcher<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iput p5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    iput-object p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez p6, :cond_14

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    iput-object p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iput p11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    iput-object p10, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    invoke-direct {p1, p0, p9}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DrmRequestHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    return-void
.end method

.method static synthetic a(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    return p0
.end method

.method private doLicense(Z)V
    .registers 9

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_24

    if-eq v0, v1, :cond_24

    if-eq v0, v2, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_74

    :cond_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_28

    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_1d

    :goto_19
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_74

    :cond_1d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_19

    :cond_24
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_2c

    :goto_28
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_74

    :cond_2c
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_37

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_37
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v3

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_5c

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDrmSession"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_5c
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_6b

    new-instance p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_74

    :cond_6b
    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    sget-object v0, Lcom/google/android/exoplayer2/drm/g;->a:Lcom/google/android/exoplayer2/drm/g;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/EventDispatcher;->dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    :cond_74
    :goto_74
    return-void
.end method

.method private getLicenseDurationRemainingSec()J
    .registers 6

    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_10
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isOpen()Z
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4

    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    new-instance v1, Lcom/google/android/exoplayer2/drm/b;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/drm/b;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/EventDispatcher;->dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    :cond_19
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    if-ne p1, v0, :cond_56

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_56

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_18

    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    return-void

    :cond_18
    :try_start_18
    check-cast p2, [B

    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2e

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    sget-object p2, Lcom/google/android/exoplayer2/drm/g;->a:Lcom/google/android/exoplayer2/drm/g;

    :goto_2a
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/EventDispatcher;->dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    goto :goto_56

    :cond_2e
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    iget p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_43

    iget p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez p2, :cond_4a

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz p2, :cond_4a

    :cond_43
    if-eqz p1, :cond_4a

    array-length p2, p1

    if-eqz p2, :cond_4a

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    :cond_4a
    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    sget-object p2, Lcom/google/android/exoplayer2/drm/h;->a:Lcom/google/android/exoplayer2/drm/h;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_51} :catch_52

    goto :goto_2a

    :catch_52
    move-exception p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    :cond_56
    :goto_56
    return-void
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .registers 3

    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_d

    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    :goto_d
    return-void
.end method

.method private onKeysExpired()V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    new-instance v0, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    :cond_10
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    if-ne p1, v0, :cond_32

    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_32

    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    return-void

    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    check-cast p2, [B

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_2c

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    return-void

    :catch_2c
    move-exception p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private openInternal(Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    sget-object v2, Lcom/google/android/exoplayer2/drm/f;->a:Lcom/google/android/exoplayer2/drm/f;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/EventDispatcher;->dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->createMediaCrypto([B)Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I
    :try_end_24
    .catch Landroid/media/NotProvisionedException; {:try_start_8 .. :try_end_24} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_25

    return v1

    :catch_25
    move-exception p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_36

    :catch_2a
    move-exception v0

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_36

    :cond_33
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    :goto_36
    const/4 p1, 0x0

    return p1
.end method

.method private postKeyRequest(IZ)V
    .registers 7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    :goto_8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    invoke-interface {v1, v0, v2, p1, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    :goto_21
    return-void
.end method

.method private restoreKeys()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acquire()V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    if-ne v0, v1, :cond_16

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_16
    return-void
.end method

.method public final getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public final getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasSessionId([B)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public onMediaDrmEvent(I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    if-eq p1, v1, :cond_11

    goto :goto_21

    :cond_11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysExpired()V

    goto :goto_21

    :cond_15
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_21

    :cond_1a
    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    :goto_21
    return-void
.end method

.method public onProvisionCompleted()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_b
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public provision()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->post(ILjava/lang/Object;Z)V

    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public release()Z
    .registers 5

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    const/4 v2, 0x0

    if-nez v0, :cond_3a

    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_39

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    sget-object v2, Lcom/google/android/exoplayer2/drm/a;->a:Lcom/google/android/exoplayer2/drm/a;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/EventDispatcher;->dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    :cond_39
    return v1

    :cond_3a
    return v2
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.PostRequestHandler (com.google.android.exoplayer2.drm.DefaultDrmSession$PostRequestHandler)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getRetryDelayMillis(I)J
    .registers 4

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private maybeRetryRequest(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_c

    return v1

    :cond_c
    iget v0, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)I

    move-result v3

    if-le v0, v3, :cond_18

    return v1

    :cond_18
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->getRetryDelayMillis(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    move-object v3, v0

    check-cast v3, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v1

    goto :goto_37

    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_1f
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    move-object v3, v0

    check-cast v3, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception v1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->maybeRetryRequest(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_37

    return-void

    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method post(ILjava/lang/Object;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.PostResponseHandler (com.google.android.exoplayer2.drm.DefaultDrmSession$PostResponseHandler)
.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_16

    const/4 v2, 0x1

    if-eq p1, v2, :cond_10

    goto :goto_1b

    :cond_10
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_16
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1b
    return-void
.end method

###### Class com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager (com.google.android.exoplayer2.drm.DefaultDrmSession$ProvisioningManager)
.class public interface abstract Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProvisioningManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onProvisionCompleted()V
.end method

.method public abstract onProvisionError(Ljava/lang/Exception;)V
.end method

.method public abstract provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>;)V"
        }
    .end annotation
.end method

###### Class com.google.android.exoplayer2.drm.a (com.google.android.exoplayer2.drm.a)
.class public final synthetic Lcom/google/android/exoplayer2/drm/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/EventDispatcher$Event;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/drm/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/a;->a:Lcom/google/android/exoplayer2/drm/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendTo(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;->onDrmSessionReleased()V

    return-void
.end method

###### Class com.google.android.exoplayer2.drm.b (com.google.android.exoplayer2.drm.b)
.class public final synthetic Lcom/google/android/exoplayer2/drm/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/EventDispatcher$Event;


# instance fields
.field private final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/b;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final sendTo(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b;->a:Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.drm.f (com.google.android.exoplayer2.drm.f)
.class public final synthetic Lcom/google/android/exoplayer2/drm/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/EventDispatcher$Event;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/drm/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/f;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/f;->a:Lcom/google/android/exoplayer2/drm/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendTo(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;->onDrmSessionAcquired()V

    return-void
.end method

###### Class com.google.android.exoplayer2.drm.h (com.google.android.exoplayer2.drm.h)
.class public final synthetic Lcom/google/android/exoplayer2/drm/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/EventDispatcher$Event;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/drm/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/h;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/h;->a:Lcom/google/android/exoplayer2/drm/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendTo(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;->onDrmKeysLoaded()V

    return-void
.end method
