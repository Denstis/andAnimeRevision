###### Class com.google.android.gms.common.api.internal.zaag (com.google.android.gms.common.api.internal.zaag)
.class public Lcom/google/android/gms/common/api/internal/zaag;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source ""


# instance fields
.field private final zafs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isConnected()Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnecting()Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reconnect()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopAutoManage(Lb/k/a/e;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zafs:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
