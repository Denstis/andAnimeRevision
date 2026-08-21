###### Class e.a.y.g.e (e.a.y.g.e)
.class public Le/a/y/g/e;
.super Le/a/n$b;
.source ""

# interfaces
.implements Le/a/v/b;


# instance fields
.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile c:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2

    invoke-direct {p0}, Le/a/n$b;-><init>()V

    invoke-static {p1}, Le/a/y/g/k;->a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Le/a/y/g/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Le/a/v/b;
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Le/a/y/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 11

    iget-boolean v0, p0, Le/a/y/g/e;->c:Z

    if-eqz v0, :cond_7

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1

    :cond_7
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Le/a/y/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Le/a/y/a/a;)Le/a/y/g/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Le/a/y/a/a;)Le/a/y/g/i;
    .registers 9

    invoke-static {p1}, Le/a/a0/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Le/a/y/g/i;

    invoke-direct {v0, p1, p5}, Le/a/y/g/i;-><init>(Ljava/lang/Runnable;Le/a/y/a/a;)V

    if-eqz p5, :cond_12

    invoke-interface {p5, v0}, Le/a/y/a/a;->b(Le/a/v/b;)Z

    move-result p1

    if-nez p1, :cond_12

    return-object v0

    :cond_12
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1f

    :try_start_18
    iget-object p1, p0, Le/a/y/g/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_25

    :cond_1f
    iget-object p1, p0, Le/a/y/g/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_25
    invoke-virtual {v0, p1}, Le/a/y/g/i;->a(Ljava/util/concurrent/Future;)V
    :try_end_28
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_18 .. :try_end_28} :catch_29

    goto :goto_32

    :catch_29
    move-exception p1

    if-eqz p5, :cond_2f

    invoke-interface {p5, v0}, Le/a/y/a/a;->a(Le/a/v/b;)Z

    :cond_2f
    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_32
    return-object v0
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Le/a/y/g/e;->c:Z

    return v0
.end method

.method public b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 8

    new-instance v0, Le/a/y/g/h;

    invoke-static {p1}, Le/a/a0/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/y/g/h;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_16

    :try_start_f
    iget-object p1, p0, Le/a/y/g/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_1c

    :cond_16
    iget-object p1, p0, Le/a/y/g/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_1c
    invoke-virtual {v0, p1}, Le/a/y/g/a;->a(Ljava/util/concurrent/Future;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_1f} :catch_20

    return-object v0

    :catch_20
    move-exception p1

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/g/e;->c:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/g/e;->c:Z

    iget-object v0, p0, Le/a/y/g/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_c
    return-void
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/g/e;->c:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/g/e;->c:Z

    iget-object v0, p0, Le/a/y/g/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_c
    return-void
.end method
