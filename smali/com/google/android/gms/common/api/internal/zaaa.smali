###### Class com.google.android.gms.common.api.internal.zaaa (com.google.android.gms.common.api.internal.zaaa)
.class final Lcom/google/android/gms/common/api/internal/zaaa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/util/Map<",
        "Lcom/google/android/gms/common/api/internal/zai<",
        "*>;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zafi:Lcom/google/android/gms/common/api/internal/zax;

.field private zafj:Lcom/google/android/gms/common/api/internal/SignInConnectionListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafj:Lcom/google/android/gms/common/api/internal/SignInConnectionListener;

    return-void
.end method


# virtual methods
.method final cancel()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafj:Lcom/google/android/gms/common/api/internal/SignInConnectionListener;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;->onComplete()V

    return-void
.end method

.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/zai<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zaa(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zab(Lcom/google/android/gms/common/api/internal/zax;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafj:Lcom/google/android/gms/common/api/internal/SignInConnectionListener;

    :goto_13
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;->onComplete()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_124

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zaa(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_20
    :try_start_20
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    new-instance v0, Lb/e/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zax;->zam(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lb/e/a;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zax;->zab(Lcom/google/android/gms/common/api/internal/zax;Ljava/util/Map;)Ljava/util/Map;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zam(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaw;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zax;->zag(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->zak()Lcom/google/android/gms/common/api/internal/zai;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_64
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/common/api/AvailabilityException;

    if-eqz v0, :cond_da

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/AvailabilityException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zae(Lcom/google/android/gms/common/api/internal/zax;)Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    new-instance v1, Lb/e/a;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zax;->zam(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lb/e/a;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zax;->zab(Lcom/google/android/gms/common/api/internal/zax;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zam(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zaw;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApi;->zak()Lcom/google/android/gms/common/api/internal/zai;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/AvailabilityException;->getConnectionResult(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v4, v1, v3}, Lcom/google/android/gms/common/api/internal/zax;->zaa(Lcom/google/android/gms/common/api/internal/zax;Lcom/google/android/gms/common/api/internal/zaw;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_c9

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zax;->zag(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    :goto_c5
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    :cond_c9
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zax;->zag(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/Map;

    move-result-object v1

    goto :goto_c5

    :cond_d0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/AvailabilityException;->zaj()Lb/e/a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zax;->zab(Lcom/google/android/gms/common/api/internal/zax;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_ee

    :cond_da
    const-string v0, "ConnectionlessGAC"

    const-string v1, "Unexpected availability exception"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zax;->zab(Lcom/google/android/gms/common/api/internal/zax;Ljava/util/Map;)Ljava/util/Map;

    :cond_ee
    :goto_ee
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zax;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_120

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zad(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zag(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zaf(Lcom/google/android/gms/common/api/internal/zax;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-nez p1, :cond_120

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zai(Lcom/google/android/gms/common/api/internal/zax;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zaj(Lcom/google/android/gms/common/api/internal/zax;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zax;->zal(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_120
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafj:Lcom/google/android/gms/common/api/internal/SignInConnectionListener;
    :try_end_122
    .catchall {:try_start_20 .. :try_end_122} :catchall_124

    goto/16 :goto_13

    :catchall_124
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zafi:Lcom/google/android/gms/common/api/internal/zax;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zaa(Lcom/google/android/gms/common/api/internal/zax;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_130

    :goto_12f
    throw p1

    :goto_130
    goto :goto_12f
.end method
