###### Class e.a.y.g.l (e.a.y.g.l)
.class public final Le/a/y/g/l;
.super Le/a/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/g/l$a;
    }
.end annotation


# static fields
.field static final b:Le/a/y/g/g;

.field static final c:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Le/a/y/g/l;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Le/a/y/g/l;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const-string v0, "rx2.single-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Le/a/y/g/g;

    const-string v3, "RxSingleScheduler"

    invoke-direct {v2, v3, v0, v1}, Le/a/y/g/g;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/a/y/g/l;->b:Le/a/y/g/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Le/a/y/g/l;->b:Le/a/y/g/g;

    invoke-direct {p0, v0}, Le/a/y/g/l;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3

    invoke-direct {p0}, Le/a/n;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Le/a/y/g/l;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Le/a/y/g/l;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Le/a/y/g/l;->a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    invoke-static {p0}, Le/a/y/g/k;->a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Le/a/n$b;
    .registers 3

    new-instance v0, Le/a/y/g/l$a;

    iget-object v1, p0, Le/a/y/g/l;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Le/a/y/g/l$a;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 8

    new-instance v0, Le/a/y/g/h;

    invoke-static {p1}, Le/a/a0/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/y/g/h;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1c

    :try_start_f
    iget-object p1, p0, Le/a/y/g/l;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_28

    :cond_1c
    iget-object p1, p0, Le/a/y/g/l;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_28
    invoke-virtual {v0, p1}, Le/a/y/g/a;->a(Ljava/util/concurrent/Future;)V
    :try_end_2b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_2b} :catch_2c

    return-object v0

    :catch_2c
    move-exception p1

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1
.end method

###### Class e.a.y.g.l.a (e.a.y.g.l$a)
.class final Le/a/y/g/l$a;
.super Le/a/n$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/ScheduledExecutorService;

.field final c:Le/a/v/a;

.field volatile d:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    invoke-direct {p0}, Le/a/n$b;-><init>()V

    iput-object p1, p0, Le/a/y/g/l$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Le/a/v/a;

    invoke-direct {p1}, Le/a/v/a;-><init>()V

    iput-object p1, p0, Le/a/y/g/l$a;->c:Le/a/v/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 8

    iget-boolean v0, p0, Le/a/y/g/l$a;->d:Z

    if-eqz v0, :cond_7

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1

    :cond_7
    invoke-static {p1}, Le/a/a0/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Le/a/y/g/i;

    iget-object v1, p0, Le/a/y/g/l$a;->c:Le/a/v/a;

    invoke-direct {v0, p1, v1}, Le/a/y/g/i;-><init>(Ljava/lang/Runnable;Le/a/y/a/a;)V

    iget-object p1, p0, Le/a/y/g/l$a;->c:Le/a/v/a;

    invoke-virtual {p1, v0}, Le/a/v/a;->b(Le/a/v/b;)Z

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_24

    :try_start_1d
    iget-object p1, p0, Le/a/y/g/l$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Le/a/y/g/l$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_2a
    invoke-virtual {v0, p1}, Le/a/y/g/i;->a(Ljava/util/concurrent/Future;)V
    :try_end_2d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1d .. :try_end_2d} :catch_2e

    return-object v0

    :catch_2e
    move-exception p1

    invoke-virtual {p0}, Le/a/y/g/l$a;->b()V

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Le/a/y/g/l$a;->d:Z

    return v0
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/g/l$a;->d:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/g/l$a;->d:Z

    iget-object v0, p0, Le/a/y/g/l$a;->c:Le/a/v/a;

    invoke-virtual {v0}, Le/a/v/a;->b()V

    :cond_c
    return-void
.end method
