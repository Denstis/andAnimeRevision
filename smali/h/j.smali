###### Class h.j (h.j)
.class public final Lh/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final g:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lh/h0/f/c;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lh/h0/f/d;

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp ConnectionPool"

    invoke-static {v7, v0}, Lh/h0/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lh/j;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Lh/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/j$a;

    invoke-direct {v0, p0}, Lh/j$a;-><init>(Lh/j;)V

    iput-object v0, p0, Lh/j;->c:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lh/j;->d:Ljava/util/Deque;

    new-instance v0, Lh/h0/f/d;

    invoke-direct {v0}, Lh/h0/f/d;-><init>()V

    iput-object v0, p0, Lh/j;->e:Lh/h0/f/d;

    iput p1, p0, Lh/j;->a:I

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lh/j;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_27

    return-void

    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keepAliveDuration <= 0: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lh/h0/f/c;J)I
    .registers 10

    iget-object v0, p1, Lh/h0/f/c;->n:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_19
    check-cast v3, Lh/h0/f/g$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lh/h0/f/c;->e()Lh/e0;

    move-result-object v5

    invoke-virtual {v5}, Lh/e0;->a()Lh/a;

    move-result-object v5

    invoke-virtual {v5}, Lh/a;->k()Lh/t;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lh/h0/j/f;->c()Lh/h0/j/f;

    move-result-object v5

    iget-object v3, v3, Lh/h0/f/g$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Lh/h0/j/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p1, Lh/h0/f/c;->k:Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v2, p0, Lh/j;->b:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lh/h0/f/c;->o:J

    return v1

    :cond_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method a(J)J
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/j;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    move-object v5, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh/h0/f/c;

    invoke-direct {p0, v7, p1, p2}, Lh/j;->a(Lh/h0/f/c;J)I

    move-result v8

    if-lez v8, :cond_23

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_23
    add-int/lit8 v2, v2, 0x1

    iget-wide v8, v7, Lh/h0/f/c;->o:J

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_e

    move-object v5, v7

    move-wide v3, v8

    goto :goto_e

    :cond_30
    iget-wide p1, p0, Lh/j;->b:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_4e

    iget p1, p0, Lh/j;->a:I

    if-le v2, p1, :cond_3b

    goto :goto_4e

    :cond_3b
    if-lez v2, :cond_42

    iget-wide p1, p0, Lh/j;->b:J

    sub-long/2addr p1, v3

    monitor-exit p0

    return-wide p1

    :cond_42
    if-lez v6, :cond_48

    iget-wide p1, p0, Lh/j;->b:J

    monitor-exit p0

    return-wide p1

    :cond_48
    iput-boolean v1, p0, Lh/j;->f:Z

    const-wide/16 p1, -0x1

    monitor-exit p0

    return-wide p1

    :cond_4e
    :goto_4e
    iget-object p1, p0, Lh/j;->d:Ljava/util/Deque;

    invoke-interface {p1, v5}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_5e

    invoke-virtual {v5}, Lh/h0/f/c;->f()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lh/h0/c;->a(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    goto :goto_62

    :goto_61
    throw p1

    :goto_62
    goto :goto_61
.end method

.method a(Lh/a;Lh/h0/f/g;Lh/e0;)Lh/h0/f/c;
    .registers 7

    iget-object v0, p0, Lh/j;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/h0/f/c;

    invoke-virtual {v1, p1, p3}, Lh/h0/f/c;->a(Lh/a;Lh/e0;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 p1, 0x1

    invoke-virtual {p2, v1, p1}, Lh/h0/f/g;->a(Lh/h0/f/c;Z)V

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lh/a;Lh/h0/f/g;)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lh/j;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/h0/f/c;

    invoke-virtual {v1, p1, v2}, Lh/h0/f/c;->a(Lh/a;Lh/e0;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lh/h0/f/c;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lh/h0/f/g;->c()Lh/h0/f/c;

    move-result-object v2

    if-eq v1, v2, :cond_6

    invoke-virtual {p2, v1}, Lh/h0/f/g;->a(Lh/h0/f/c;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :cond_2a
    return-object v2
.end method

.method a(Lh/h0/f/c;)Z
    .registers 3

    iget-boolean v0, p1, Lh/h0/f/c;->k:Z

    if-nez v0, :cond_e

    iget v0, p0, Lh/j;->a:I

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    :cond_e
    :goto_e
    iget-object v0, p0, Lh/j;->d:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method b(Lh/h0/f/c;)V
    .registers 4

    iget-boolean v0, p0, Lh/j;->f:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/j;->f:Z

    sget-object v0, Lh/j;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lh/j;->c:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    iget-object v0, p0, Lh/j;->d:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class h.j.a (h.j$a)
.class Lh/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lh/j;


# direct methods
.method constructor <init>(Lh/j;)V
    .registers 2

    iput-object p1, p0, Lh/j$a;->b:Lh/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lh/j$a;->b:Lh/j;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh/j;->a(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    iget-object v2, p0, Lh/j$a;->b:Lh/j;

    monitor-enter v2

    :try_start_22
    iget-object v3, p0, Lh/j$a;->b:Lh/j;

    long-to-int v1, v0

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_28} :catch_2b
    .catchall {:try_start_22 .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception v0

    goto :goto_2d

    :catch_2b
    :goto_2b
    :try_start_2b
    monitor-exit v2

    goto :goto_0

    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_29

    goto :goto_30

    :goto_2f
    throw v0

    :goto_30
    goto :goto_2f
.end method
