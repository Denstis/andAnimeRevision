###### Class e.a.y.g.c (e.a.y.g.c)
.class public final Le/a/y/g/c;
.super Le/a/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/g/c$c;,
        Le/a/y/g/c$b;,
        Le/a/y/g/c$a;
    }
.end annotation


# static fields
.field static final c:Le/a/y/g/g;

.field static final d:Le/a/y/g/g;

.field private static final e:Ljava/util/concurrent/TimeUnit;

.field static final f:Le/a/y/g/c$c;

.field static final g:Le/a/y/g/c$a;


# instance fields
.field final a:Ljava/util/concurrent/ThreadFactory;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/y/g/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Le/a/y/g/c;->e:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Le/a/y/g/c$c;

    new-instance v1, Le/a/y/g/g;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Le/a/y/g/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/a/y/g/c$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Le/a/y/g/c;->f:Le/a/y/g/c$c;

    sget-object v0, Le/a/y/g/c;->f:Le/a/y/g/c$c;

    invoke-virtual {v0}, Le/a/y/g/e;->b()V

    const-string v0, "rx2.io-priority"

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

    new-instance v1, Le/a/y/g/g;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Le/a/y/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/y/g/c;->c:Le/a/y/g/g;

    new-instance v1, Le/a/y/g/g;

    const-string v2, "RxCachedWorkerPoolEvictor"

    invoke-direct {v1, v2, v0}, Le/a/y/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/y/g/c;->d:Le/a/y/g/g;

    new-instance v0, Le/a/y/g/c$a;

    sget-object v1, Le/a/y/g/c;->c:Le/a/y/g/g;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Le/a/y/g/c$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Le/a/y/g/c;->g:Le/a/y/g/c$a;

    sget-object v0, Le/a/y/g/c;->g:Le/a/y/g/c$a;

    invoke-virtual {v0}, Le/a/y/g/c$a;->d()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Le/a/y/g/c;->c:Le/a/y/g/g;

    invoke-direct {p0, v0}, Le/a/y/g/c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3

    invoke-direct {p0}, Le/a/n;-><init>()V

    iput-object p1, p0, Le/a/y/g/c;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Le/a/y/g/c;->g:Le/a/y/g/c$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/a/y/g/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Le/a/y/g/c;->b()V

    return-void
.end method


# virtual methods
.method public a()Le/a/n$b;
    .registers 3

    new-instance v0, Le/a/y/g/c$b;

    iget-object v1, p0, Le/a/y/g/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/g/c$a;

    invoke-direct {v0, v1}, Le/a/y/g/c$b;-><init>(Le/a/y/g/c$a;)V

    return-object v0
.end method

.method public b()V
    .registers 6

    new-instance v0, Le/a/y/g/c$a;

    sget-object v1, Le/a/y/g/c;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Le/a/y/g/c;->a:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v3, 0x3c

    invoke-direct {v0, v3, v4, v1, v2}, Le/a/y/g/c$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Le/a/y/g/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Le/a/y/g/c;->g:Le/a/y/g/c$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Le/a/y/g/c$a;->d()V

    :cond_18
    return-void
.end method

###### Class e.a.y.g.c.a (e.a.y.g.c$a)
.class final Le/a/y/g/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:J

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Le/a/y/g/c$c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Le/a/v/a;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_a

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    goto :goto_c

    :cond_a
    const-wide/16 p1, 0x0

    :goto_c
    iput-wide p1, p0, Le/a/y/g/c$a;->b:J

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Le/a/y/g/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Le/a/v/a;

    invoke-direct {p1}, Le/a/v/a;-><init>()V

    iput-object p1, p0, Le/a/y/g/c$a;->d:Le/a/v/a;

    iput-object p4, p0, Le/a/y/g/c$a;->g:Ljava/util/concurrent/ThreadFactory;

    const/4 p1, 0x0

    if-eqz p3, :cond_34

    const/4 p1, 0x1

    sget-object p2, Le/a/y/g/c;->d:Le/a/y/g/g;

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iget-wide v4, p0, Le/a/y/g/c$a;->b:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    goto :goto_35

    :cond_34
    move-object p2, p1

    :goto_35
    iput-object p1, p0, Le/a/y/g/c$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Le/a/y/g/c$a;->f:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method a()V
    .registers 8

    iget-object v0, p0, Le/a/y/g/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Le/a/y/g/c$a;->c()J

    move-result-wide v0

    iget-object v2, p0, Le/a/y/g/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/y/g/c$c;

    invoke-virtual {v3}, Le/a/y/g/c$c;->d()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_34

    iget-object v4, p0, Le/a/y/g/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Le/a/y/g/c$a;->d:Le/a/v/a;

    invoke-virtual {v4, v3}, Le/a/v/a;->a(Le/a/v/b;)Z

    goto :goto_12

    :cond_34
    return-void
.end method

.method a(Le/a/y/g/c$c;)V
    .registers 6

    invoke-virtual {p0}, Le/a/y/g/c$a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/y/g/c$a;->b:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Le/a/y/g/c$c;->a(J)V

    iget-object v0, p0, Le/a/y/g/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method b()Le/a/y/g/c$c;
    .registers 3

    iget-object v0, p0, Le/a/y/g/c$a;->d:Le/a/v/a;

    invoke-virtual {v0}, Le/a/v/a;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Le/a/y/g/c;->f:Le/a/y/g/c$c;

    return-object v0

    :cond_b
    iget-object v0, p0, Le/a/y/g/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Le/a/y/g/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/g/c$c;

    if-eqz v0, :cond_b

    return-object v0

    :cond_1e
    new-instance v0, Le/a/y/g/c$c;

    iget-object v1, p0, Le/a/y/g/c$a;->g:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Le/a/y/g/c$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Le/a/y/g/c$a;->d:Le/a/v/a;

    invoke-virtual {v1, v0}, Le/a/v/a;->b(Le/a/v/b;)Z

    return-object v0
.end method

.method c()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method d()V
    .registers 3

    iget-object v0, p0, Le/a/y/g/c$a;->d:Le/a/v/a;

    invoke-virtual {v0}, Le/a/v/a;->b()V

    iget-object v0, p0, Le/a/y/g/c$a;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_d
    iget-object v0, p0, Le/a/y/g/c$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_14
    return-void
.end method

.method public run()V
    .registers 1

    invoke-virtual {p0}, Le/a/y/g/c$a;->a()V

    return-void
.end method

###### Class e.a.y.g.c.b (e.a.y.g.c$b)
.class final Le/a/y/g/c$b;
.super Le/a/n$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final b:Le/a/v/a;

.field private final c:Le/a/y/g/c$a;

.field private final d:Le/a/y/g/c$c;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Le/a/y/g/c$a;)V
    .registers 3

    invoke-direct {p0}, Le/a/n$b;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Le/a/y/g/c$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Le/a/y/g/c$b;->c:Le/a/y/g/c$a;

    new-instance v0, Le/a/v/a;

    invoke-direct {v0}, Le/a/v/a;-><init>()V

    iput-object v0, p0, Le/a/y/g/c$b;->b:Le/a/v/a;

    invoke-virtual {p1}, Le/a/y/g/c$a;->b()Le/a/y/g/c$c;

    move-result-object p1

    iput-object p1, p0, Le/a/y/g/c$b;->d:Le/a/y/g/c$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 11

    iget-object v0, p0, Le/a/y/g/c$b;->b:Le/a/v/a;

    invoke-virtual {v0}, Le/a/v/a;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1

    :cond_b
    iget-object v0, p0, Le/a/y/g/c$b;->d:Le/a/y/g/c$c;

    iget-object v5, p0, Le/a/y/g/c$b;->b:Le/a/v/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Le/a/y/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Le/a/y/a/a;)Le/a/y/g/i;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Le/a/y/g/c$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Le/a/y/g/c$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Le/a/y/g/c$b;->b:Le/a/v/a;

    invoke-virtual {v0}, Le/a/v/a;->b()V

    iget-object v0, p0, Le/a/y/g/c$b;->c:Le/a/y/g/c$a;

    iget-object v1, p0, Le/a/y/g/c$b;->d:Le/a/y/g/c$c;

    invoke-virtual {v0, v1}, Le/a/y/g/c$a;->a(Le/a/y/g/c$c;)V

    :cond_16
    return-void
.end method

###### Class e.a.y.g.c.C0183c (e.a.y.g.c$c)
.class final Le/a/y/g/c$c;
.super Le/a/y/g/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private d:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4

    invoke-direct {p0, p1}, Le/a/y/g/e;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le/a/y/g/c$c;->d:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3

    iput-wide p1, p0, Le/a/y/g/c$c;->d:J

    return-void
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Le/a/y/g/c$c;->d:J

    return-wide v0
.end method
