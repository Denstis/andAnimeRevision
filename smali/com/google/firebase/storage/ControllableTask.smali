###### Class com.google.firebase.storage.ControllableTask (com.google.firebase.storage.ControllableTask)
.class public abstract Lcom/google/firebase/storage/ControllableTask;
.super Lcom/google/firebase/storage/CancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/firebase/storage/CancellableTask<",
        "TStateT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/storage/CancellableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TStateT;>;)",
            "Lcom/google/firebase/storage/ControllableTask<",
            "TStateT;>;"
        }
    .end annotation
.end method

.method public abstract addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TStateT;>;)",
            "Lcom/google/firebase/storage/ControllableTask<",
            "TStateT;>;"
        }
    .end annotation
.end method

.method public abstract addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TStateT;>;)",
            "Lcom/google/firebase/storage/ControllableTask<",
            "TStateT;>;"
        }
    .end annotation
.end method

.method public abstract isPaused()Z
.end method

.method public abstract pause()Z
.end method

.method public abstract resume()Z
.end method
