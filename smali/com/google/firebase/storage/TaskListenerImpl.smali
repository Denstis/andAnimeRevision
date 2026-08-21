###### Class com.google.firebase.storage.TaskListenerImpl (com.google.firebase.storage.TaskListenerImpl)
.class Lcom/google/firebase/storage/TaskListenerImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerTypeT:Ljava/lang/Object;",
        "ResultT::",
        "Lcom/google/firebase/storage/StorageTask$ProvideError;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final handlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "T",
            "ListenerTypeT;",
            "Lcom/google/firebase/storage/internal/SmartHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "T",
            "ListenerTypeT;",
            ">;"
        }
    .end annotation
.end field

.field private onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl$OnRaise<",
            "T",
            "ListenerTypeT;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private targetStates:I

.field private task:Lcom/google/firebase/storage/StorageTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;I",
            "Lcom/google/firebase/storage/TaskListenerImpl$OnRaise<",
            "T",
            "ListenerTypeT;",
            "TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    iput p2, p0, Lcom/google/firebase/storage/TaskListenerImpl;->targetStates:I

    iput-object p3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    return-void
.end method

.method static synthetic lambda$addListener$0(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$addListener$1(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .registers 3

    iget-object p0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    invoke-interface {p0, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;->raise(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onInternalStateChanged$2(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .registers 3

    iget-object p0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->onRaise:Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;

    invoke-interface {p0, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;->raise(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "T",
            "ListenerTypeT;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v1

    iget v2, p0, Lcom/google/firebase/storage/TaskListenerImpl;->targetStates:I

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    iget-object v4, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v4, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/firebase/storage/internal/SmartHandler;

    invoke-direct {v4, p2}, Lcom/google/firebase/storage/internal/SmartHandler;-><init>(Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {p2, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_49

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt p2, v5, :cond_3e

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    const-string p2, "Activity is already destroyed!"

    invoke-static {v2, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_3e
    invoke-static {}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->getInstance()Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    move-result-object p2

    invoke-static {p0, p3}, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p2, p1, p3, v2}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->runOnActivityStopped(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_5a

    if-eqz v1, :cond_59

    iget-object p1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/firebase/storage/internal/SmartHandler;->callBack(Ljava/lang/Runnable;)V

    :cond_59
    return-void

    :catchall_5a
    move-exception p1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public getListenerCount()I
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onInternalStateChanged()V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->targetStates:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/storage/internal/SmartHandler;

    if-eqz v3, :cond_17

    invoke-static {p0, v2, v0}, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$3;->lambdaFactory$(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/firebase/storage/internal/SmartHandler;->callBack(Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_33
    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerTypeT;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl;->task:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->handlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl;->listenerQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->getInstance()Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->removeCookie(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_1d

    throw p1
.end method

###### Class com.google.firebase.storage.TaskListenerImpl.OnRaise (com.google.firebase.storage.TaskListenerImpl$OnRaise)
.class interface abstract Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/TaskListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnRaise"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerTypeT:Ljava/lang/Object;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract raise(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerTypeT;",
            "TResultT;)V"
        }
    .end annotation
.end method
