###### Class com.bumptech.glide.load.n.a (com.bumptech.glide.load.n.a)
.class final Lcom/bumptech/glide/load/n/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/a$d;,
        Lcom/bumptech/glide/load/n/a$c;
    }
.end annotation


# instance fields
.field private final a:Z

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/n/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;>;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/load/n/p$a;

.field private volatile e:Z

.field private volatile f:Lcom/bumptech/glide/load/n/a$c;


# direct methods
.method constructor <init>(Z)V
    .registers 3

    new-instance v0, Lcom/bumptech/glide/load/n/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/a$a;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/n/a;-><init>(ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(ZLjava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/a;->c:Ljava/lang/ref/ReferenceQueue;

    iput-boolean p1, p0, Lcom/bumptech/glide/load/n/a;->a:Z

    new-instance p1, Lcom/bumptech/glide/load/n/a$b;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/n/a$b;-><init>(Lcom/bumptech/glide/load/n/a;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/a;->e:Z

    if-nez v0, :cond_1f

    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/n/a;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/n/a$d;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/n/a;->a(Lcom/bumptech/glide/load/n/a$d;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/a;->f:Lcom/bumptech/glide/load/n/a$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/a$c;->a()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_0

    :catch_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1f
    return-void
.end method

.method declared-synchronized a(Lcom/bumptech/glide/load/g;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/n/a$d;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/a$d;->a()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/n/a$d;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/a;->c:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/n/a;->a:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/n/a$d;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object p2, p0, Lcom/bumptech/glide/load/n/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/n/a$d;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/a$d;->a()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/bumptech/glide/load/n/a$d;)V
    .registers 7

    iget-object v0, p0, Lcom/bumptech/glide/load/n/a;->d:Lcom/bumptech/glide/load/n/p$a;

    monitor-enter v0

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_34

    :try_start_4
    iget-object v1, p0, Lcom/bumptech/glide/load/n/a;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/load/n/a$d;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p1, Lcom/bumptech/glide/load/n/a$d;->b:Z

    if-eqz v1, :cond_2e

    iget-object v1, p1, Lcom/bumptech/glide/load/n/a$d;->c:Lcom/bumptech/glide/load/n/v;

    if-nez v1, :cond_14

    goto :goto_2e

    :cond_14
    new-instance v1, Lcom/bumptech/glide/load/n/p;

    iget-object v2, p1, Lcom/bumptech/glide/load/n/a$d;->c:Lcom/bumptech/glide/load/n/v;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/bumptech/glide/load/n/p;-><init>(Lcom/bumptech/glide/load/n/v;ZZ)V

    iget-object v2, p1, Lcom/bumptech/glide/load/n/a$d;->a:Lcom/bumptech/glide/load/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/a;->d:Lcom/bumptech/glide/load/n/p$a;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/n/p;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p$a;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/n/a;->d:Lcom/bumptech/glide/load/n/p$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/n/a$d;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v2, p1, v1}, Lcom/bumptech/glide/load/n/p$a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_31

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_34

    return-void

    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_31

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_34

    return-void

    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p1

    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_34

    throw p1
.end method

.method a(Lcom/bumptech/glide/load/n/p$a;)V
    .registers 3

    monitor-enter p1

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_a

    :try_start_2
    iput-object p1, p0, Lcom/bumptech/glide/load/n/a;->d:Lcom/bumptech/glide/load/n/p$a;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    :try_start_5
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_a

    return-void

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    :try_start_9
    throw v0

    :catchall_a
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_a

    throw v0
.end method

.method declared-synchronized b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/n/p;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/n/a$d;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1b

    if-nez p1, :cond_e

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/n/p;

    if-nez v0, :cond_19

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/n/a;->a(Lcom/bumptech/glide/load/n/a$d;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.load.n.a.ThreadFactoryC0135a (com.bumptech.glide.load.n.a$a)
.class Lcom/bumptech/glide/load/n/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/n/a;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bumptech/glide/load/n/a$a$a;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/load/n/a$a$a;-><init>(Lcom/bumptech/glide/load/n/a$a;Ljava/lang/Runnable;)V

    const-string p1, "glide-active-resources"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.a.ThreadFactoryC0135a.RunnableC0136a (com.bumptech.glide.load.n.a$a$a)
.class Lcom/bumptech/glide/load/n/a$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/n/a$a;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/a$a;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p2, p0, Lcom/bumptech/glide/load/n/a$a$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/a$a$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class com.bumptech.glide.load.n.a.b (com.bumptech.glide.load.n.a$b)
.class Lcom/bumptech/glide/load/n/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/n/a;-><init>(ZLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/bumptech/glide/load/n/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/n/a$b;->b:Lcom/bumptech/glide/load/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/a$b;->b:Lcom/bumptech/glide/load/n/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/a;->a()V

    return-void
.end method

###### Class com.bumptech.glide.load.n.a.c (com.bumptech.glide.load.n.a$c)
.class interface abstract Lcom/bumptech/glide/load/n/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation


# virtual methods
.method public abstract a()V
.end method

###### Class com.bumptech.glide.load.n.a.d (com.bumptech.glide.load.n.a$d)
.class final Lcom/bumptech/glide/load/n/a$d;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/bumptech/glide/load/n/p<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/g;

.field final b:Z

.field c:Lcom/bumptech/glide/load/n/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;Ljava/lang/ref/ReferenceQueue;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/g;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/a$d;->a:Lcom/bumptech/glide/load/g;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/n/p;->f()Z

    move-result p1

    if-eqz p1, :cond_1c

    if-eqz p4, :cond_1c

    invoke-virtual {p2}, Lcom/bumptech/glide/load/n/p;->e()Lcom/bumptech/glide/load/n/v;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/n/v;

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    iput-object p1, p0, Lcom/bumptech/glide/load/n/a$d;->c:Lcom/bumptech/glide/load/n/v;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/n/p;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bumptech/glide/load/n/a$d;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/a$d;->c:Lcom/bumptech/glide/load/n/v;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
