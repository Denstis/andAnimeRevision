###### Class e.a.y.g.i (e.a.y.g.i)
.class public final Le/a/y/g/i;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;",
        "Le/a/v/b;"
    }
.end annotation


# static fields
.field static final c:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final e:Ljava/lang/Object;

.field static final f:Ljava/lang/Object;


# instance fields
.field final b:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/a/y/g/i;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/a/y/g/i;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/a/y/g/i;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/a/y/g/i;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Le/a/y/a/a;)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Le/a/y/g/i;->b:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Future;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Le/a/y/g/i;->f:Ljava/lang/Object;

    if-ne v1, v2, :cond_a

    return-void

    :cond_a
    sget-object v2, Le/a/y/g/i;->d:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :cond_13
    sget-object v2, Le/a/y/g/i;->e:Ljava/lang/Object;

    if-ne v1, v2, :cond_1b

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :cond_1b
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public a()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Le/a/y/g/i;->c:Ljava/lang/Object;

    if-eq v1, v2, :cond_d

    sget-object v2, Le/a/y/g/i;->f:Ljava/lang/Object;

    if-ne v1, v2, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public b()V
    .registers 6

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Le/a/y/g/i;->f:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_35

    sget-object v2, Le/a/y/g/i;->d:Ljava/lang/Object;

    if-eq v1, v2, :cond_35

    sget-object v2, Le/a/y/g/i;->e:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    goto :goto_35

    :cond_13
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v2, v4, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    if-eqz v2, :cond_26

    sget-object v4, Le/a/y/g/i;->e:Ljava/lang/Object;

    goto :goto_28

    :cond_26
    sget-object v4, Le/a/y/g/i;->d:Ljava/lang/Object;

    :goto_28
    invoke-virtual {p0, v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_35

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_35
    :goto_35
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Le/a/y/g/i;->f:Ljava/lang/Object;

    if-eq v0, v1, :cond_4f

    sget-object v1, Le/a/y/g/i;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_4f

    if-nez v0, :cond_44

    goto :goto_4f

    :cond_44
    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    check-cast v0, Le/a/y/a/a;

    invoke-interface {v0, p0}, Le/a/y/a/a;->c(Le/a/v/b;)Z

    :cond_4f
    :goto_4f
    return-void
.end method

.method public call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Le/a/y/g/i;->run()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .registers 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_b
    iget-object v4, p0, Le/a/y/g/i;->b:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v4

    :try_start_12
    invoke-static {v4}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_44

    :goto_15
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Le/a/y/g/i;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_2f

    sget-object v1, Le/a/y/g/i;->f:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    if-eqz v0, :cond_2f

    check-cast v0, Le/a/y/a/a;

    invoke-interface {v0, p0}, Le/a/y/a/a;->c(Le/a/v/b;)Z

    :cond_2f
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Le/a/y/g/i;->d:Ljava/lang/Object;

    if-eq v0, v1, :cond_43

    sget-object v1, Le/a/y/g/i;->e:Ljava/lang/Object;

    if-eq v0, v1, :cond_43

    sget-object v1, Le/a/y/g/i;->f:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_43
    return-void

    :catchall_44
    move-exception v4

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Le/a/y/g/i;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_5f

    sget-object v1, Le/a/y/g/i;->f:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    if-eqz v0, :cond_5f

    check-cast v0, Le/a/y/a/a;

    invoke-interface {v0, p0}, Le/a/y/a/a;->c(Le/a/v/b;)Z

    :cond_5f
    :goto_5f
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Le/a/y/g/i;->d:Ljava/lang/Object;

    if-eq v0, v1, :cond_74

    sget-object v1, Le/a/y/g/i;->e:Ljava/lang/Object;

    if-eq v0, v1, :cond_74

    sget-object v1, Le/a/y/g/i;->f:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_5f

    :cond_74
    goto :goto_76

    :goto_75
    throw v4

    :goto_76
    goto :goto_75
.end method
