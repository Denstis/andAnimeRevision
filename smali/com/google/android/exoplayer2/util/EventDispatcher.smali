###### Class com.google.android.exoplayer2.util.EventDispatcher (com.google.android.exoplayer2.util.EventDispatcher)
.class public final Lcom/google/android/exoplayer2/util/EventDispatcher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;,
        Lcom/google/android/exoplayer2/util/EventDispatcher$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/EventDispatcher$Event<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->access$000(Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->release()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_21
    return-void
.end method

###### Class com.google.android.exoplayer2.util.EventDispatcher.Event (com.google.android.exoplayer2.util.EventDispatcher$Event)
.class public interface abstract Lcom/google/android/exoplayer2/util/EventDispatcher$Event;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract sendTo(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class com.google.android.exoplayer2.util.EventDispatcher.HandlerAndListener (com.google.android.exoplayer2.util.EventDispatcher$HandlerAndListener)
.class final Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerAndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private released:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->listener:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->listener:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->released:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->listener:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/EventDispatcher$Event;->sendTo(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/EventDispatcher$Event<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/util/a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/util/a;-><init>(Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->released:Z

    return-void
.end method

###### Class com.google.android.exoplayer2.util.a (com.google.android.exoplayer2.util.a)
.class public final synthetic Lcom/google/android/exoplayer2/util/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;

.field private final synthetic c:Lcom/google/android/exoplayer2/util/EventDispatcher$Event;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/a;->b:Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/a;->c:Lcom/google/android/exoplayer2/util/EventDispatcher$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/a;->b:Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/a;->c:Lcom/google/android/exoplayer2/util/EventDispatcher$Event;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->a(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    return-void
.end method
