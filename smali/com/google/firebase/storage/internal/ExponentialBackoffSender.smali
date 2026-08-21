###### Class com.google.firebase.storage.internal.ExponentialBackoffSender (com.google.firebase.storage.internal.ExponentialBackoffSender)
.class public Lcom/google/firebase/storage/internal/ExponentialBackoffSender;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAXIMUM_WAIT_TIME_MILLI:I = 0x7530

.field private static final NETWORK_STATUS_POLL_INTERVAL:I = 0x3e8

.field public static final RND_MAX:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "ExponenentialBackoff"

.field static clock:Lcom/google/android/gms/common/util/Clock;

.field private static final random:Ljava/util/Random;

.field static sleeper:Lcom/google/firebase/storage/internal/Sleeper;


# instance fields
.field private final authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

.field private volatile canceled:Z

.field private final context:Landroid/content/Context;

.field private retryTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->random:Ljava/util/Random;

    new-instance v0, Lcom/google/firebase/storage/internal/SleeperImpl;

    invoke-direct {v0}, Lcom/google/firebase/storage/internal/SleeperImpl;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sleeper:Lcom/google/firebase/storage/internal/Sleeper;

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->clock:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    iput-wide p3, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->retryTime:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->canceled:Z

    return-void
.end method

.method public isRetryableError(I)Z
    .registers 3

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_8

    const/16 v0, 0x258

    if-lt p1, v0, :cond_16

    :cond_8
    const/4 v0, -0x2

    if-eq p1, v0, :cond_16

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_16

    const/16 v0, 0x198

    if-ne p1, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    return p1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->canceled:Z

    return-void
.end method

.method public sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;Z)V

    return-void
.end method

.method public sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;Z)V
    .registers 12

    const-string v0, "ExponenentialBackoff"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->retryTime:J

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-static {v3}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1c

    iget-object v4, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->context:Landroid/content/Context;

    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequest(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1f

    :cond_1c
    invoke-virtual {p1, v3}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestStart(Ljava/lang/String;)V

    :goto_1f
    const/16 v3, 0x3e8

    const/16 v4, 0x3e8

    :goto_23
    sget-object v5, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v7, v5, v1

    if-gtz v7, :cond_8d

    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->isResultSuccess()Z

    move-result v5

    if-nez v5, :cond_8d

    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->isRetryableError(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    :try_start_3f
    sget-object v5, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sleeper:Lcom/google/firebase/storage/internal/Sleeper;

    sget-object v6, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->random:Ljava/util/Random;

    const/16 v7, 0xfa

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-interface {v5, v6}, Lcom/google/firebase/storage/internal/Sleeper;->sleep(I)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_4d} :catch_81

    const/16 v5, 0x7530

    if-ge v4, v5, :cond_67

    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v5

    const/4 v6, -0x2

    if-eq v5, v6, :cond_60

    mul-int/lit8 v4, v4, 0x2

    const-string v5, "network error occurred, backing off/sleeping."

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :cond_60
    const-string v4, "network unavailable, sleeping."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x3e8

    :cond_67
    :goto_67
    iget-boolean v5, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->canceled:Z

    if-eqz v5, :cond_6c

    return-void

    :cond_6c
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->reset()V

    iget-object v5, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-static {v5}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_7d

    iget-object v6, p0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->context:Landroid/content/Context;

    invoke-virtual {p1, v5, v6}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequest(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_23

    :cond_7d
    invoke-virtual {p1, v5}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestStart(Ljava/lang/String;)V

    goto :goto_23

    :catch_81
    const-string p1, "thread interrupted during exponential backoff."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_8d
    return-void
.end method
