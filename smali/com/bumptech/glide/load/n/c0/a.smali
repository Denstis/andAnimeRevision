###### Class com.bumptech.glide.load.n.c0.a (com.bumptech.glide.load.n.c0.a)
.class public final Lcom/bumptech/glide/load/n/c0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/c0/a$a;,
        Lcom/bumptech/glide/load/n/c0/a$b;
    }
.end annotation


# static fields
.field private static final c:J

.field private static volatile d:I


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/n/c0/a;->c:J

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()I
    .registers 2

    sget v0, Lcom/bumptech/glide/load/n/c0/a;->d:I

    if-nez v0, :cond_f

    const/4 v0, 0x4

    invoke-static {}, Lcom/bumptech/glide/load/n/c0/b;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/bumptech/glide/load/n/c0/a;->d:I

    :cond_f
    sget v0, Lcom/bumptech/glide/load/n/c0/a;->d:I

    return v0
.end method

.method public static a(ILcom/bumptech/glide/load/n/c0/a$b;)Lcom/bumptech/glide/load/n/c0/a;
    .registers 12

    new-instance v0, Lcom/bumptech/glide/load/n/c0/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/n/c0/a;->c:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/n/c0/a$a;

    const-string v1, "animation"

    const/4 v2, 0x1

    invoke-direct {v8, v1, p1, v2}, Lcom/bumptech/glide/load/n/c0/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/n/c0/a$b;Z)V

    const/4 v2, 0x0

    move-object v1, v9

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/n/c0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Lcom/bumptech/glide/load/n/c0/a$b;)Lcom/bumptech/glide/load/n/c0/a;
    .registers 13

    new-instance v0, Lcom/bumptech/glide/load/n/c0/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/n/c0/a$a;

    const/4 v1, 0x1

    invoke-direct {v8, p1, p2, v1}, Lcom/bumptech/glide/load/n/c0/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/n/c0/a$b;Z)V

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/n/c0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static b()Lcom/bumptech/glide/load/n/c0/a;
    .registers 2

    invoke-static {}, Lcom/bumptech/glide/load/n/c0/a;->a()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_9

    const/4 v0, 0x2

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    sget-object v1, Lcom/bumptech/glide/load/n/c0/a$b;->b:Lcom/bumptech/glide/load/n/c0/a$b;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/n/c0/a;->a(ILcom/bumptech/glide/load/n/c0/a$b;)Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(ILjava/lang/String;Lcom/bumptech/glide/load/n/c0/a$b;)Lcom/bumptech/glide/load/n/c0/a;
    .registers 13

    new-instance v0, Lcom/bumptech/glide/load/n/c0/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/n/c0/a$a;

    const/4 v1, 0x0

    invoke-direct {v8, p1, p2, v1}, Lcom/bumptech/glide/load/n/c0/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/n/c0/a$b;Z)V

    const-wide/16 v4, 0x0

    move-object v1, v9

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/n/c0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static c()Lcom/bumptech/glide/load/n/c0/a;
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/n/c0/a$b;->b:Lcom/bumptech/glide/load/n/c0/a$b;

    const/4 v1, 0x1

    const-string v2, "disk-cache"

    invoke-static {v1, v2, v0}, Lcom/bumptech/glide/load/n/c0/a;->a(ILjava/lang/String;Lcom/bumptech/glide/load/n/c0/a$b;)Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/bumptech/glide/load/n/c0/a;
    .registers 3

    invoke-static {}, Lcom/bumptech/glide/load/n/c0/a;->a()I

    move-result v0

    sget-object v1, Lcom/bumptech/glide/load/n/c0/a$b;->b:Lcom/bumptech/glide/load/n/c0/a$b;

    const-string v2, "source"

    invoke-static {v0, v2, v1}, Lcom/bumptech/glide/load/n/c0/a;->b(ILjava/lang/String;Lcom/bumptech/glide/load/n/c0/a$b;)Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/bumptech/glide/load/n/c0/a;
    .registers 10

    new-instance v0, Lcom/bumptech/glide/load/n/c0/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lcom/bumptech/glide/load/n/c0/a;->c:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/n/c0/a$a;

    sget-object v1, Lcom/bumptech/glide/load/n/c0/a$b;->b:Lcom/bumptech/glide/load/n/c0/a$b;

    const-string v2, "source-unlimited"

    const/4 v3, 0x0

    invoke-direct {v8, v2, v1, v3}, Lcom/bumptech/glide/load/n/c0/a$a;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/n/c0/a$b;Z)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/n/c0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isShutdown()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.c0.a.ThreadFactoryC0138a (com.bumptech.glide.load.n.c0.a$a)
.class final Lcom/bumptech/glide/load/n/c0/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/c0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field final c:Lcom/bumptech/glide/load/n/c0/a$b;

.field final d:Z

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/n/c0/a$b;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/c0/a$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/c0/a$a;->c:Lcom/bumptech/glide/load/n/c0/a$b;

    iput-boolean p3, p0, Lcom/bumptech/glide/load/n/c0/a$a;->d:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/n/c0/a$a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glide-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/c0/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/n/c0/a$a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/n/c0/a$a$a;-><init>(Lcom/bumptech/glide/load/n/c0/a$a;Ljava/lang/Runnable;Ljava/lang/String;)V

    iget p1, p0, Lcom/bumptech/glide/load/n/c0/a$a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bumptech/glide/load/n/c0/a$a;->e:I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.load.n.c0.a.ThreadFactoryC0138a.C0139a (com.bumptech.glide.load.n.c0.a$a$a)
.class Lcom/bumptech/glide/load/n/c0/a$a$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/n/c0/a$a;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/bumptech/glide/load/n/c0/a$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/c0/a$a;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bumptech/glide/load/n/c0/a$a$a;->b:Lcom/bumptech/glide/load/n/c0/a$a;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/16 v0, 0x9

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c0/a$a$a;->b:Lcom/bumptech/glide/load/n/c0/a$a;

    iget-boolean v0, v0, Lcom/bumptech/glide/load/n/c0/a$a;->d:Z

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_1f
    :try_start_1f
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_2b

    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/n/c0/a$a$a;->b:Lcom/bumptech/glide/load/n/c0/a$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/n/c0/a$a;->c:Lcom/bumptech/glide/load/n/c0/a$b;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/n/c0/a$b;->a(Ljava/lang/Throwable;)V

    :goto_2b
    return-void
.end method

###### Class com.bumptech.glide.load.n.c0.a.b (com.bumptech.glide.load.n.c0.a$b)
.class public interface abstract Lcom/bumptech/glide/load/n/c0/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/c0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/n/c0/a$b;

.field public static final b:Lcom/bumptech/glide/load/n/c0/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/n/c0/a$b$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/c0/a$b$a;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/n/c0/a$b$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/c0/a$b$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/n/c0/a$b;->a:Lcom/bumptech/glide/load/n/c0/a$b;

    new-instance v0, Lcom/bumptech/glide/load/n/c0/a$b$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/c0/a$b$c;-><init>()V

    sget-object v0, Lcom/bumptech/glide/load/n/c0/a$b;->a:Lcom/bumptech/glide/load/n/c0/a$b;

    sput-object v0, Lcom/bumptech/glide/load/n/c0/a$b;->b:Lcom/bumptech/glide/load/n/c0/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method

###### Class com.bumptech.glide.load.n.c0.a.b.C0140a (com.bumptech.glide.load.n.c0.a$b$a)
.class Lcom/bumptech/glide/load/n/c0/a$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/c0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/c0/a$b;
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
.method public a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

###### Class com.bumptech.glide.load.n.c0.a.b.C0141b (com.bumptech.glide.load.n.c0.a$b$b)
.class Lcom/bumptech/glide/load/n/c0/a$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/c0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/c0/a$b;
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
.method public a(Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_10

    const/4 v0, 0x6

    const-string v1, "GlideExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Request threw uncaught throwable"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

###### Class com.bumptech.glide.load.n.c0.a.b.c (com.bumptech.glide.load.n.c0.a$b$c)
.class Lcom/bumptech/glide/load/n/c0/a$b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/c0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/c0/a$b;
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
.method public a(Ljava/lang/Throwable;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request threw uncaught throwable"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
