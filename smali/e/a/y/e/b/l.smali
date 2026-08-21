###### Class e.a.y.e.b.l (e.a.y.e.b.l)
.class public final Le/a/y/e/b/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/b/l$a;,
        Le/a/y/e/b/l$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Le/a/x/e;)Le/a/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TU;>;>;)",
            "Le/a/h<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Le/a/y/e/b/l$b;

    invoke-direct {v0, p0, p1}, Le/a/y/e/b/l$b;-><init>(Ljava/lang/Object;Le/a/x/e;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Le/a/k;Le/a/m;Le/a/x/e;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/k<",
            "TT;>;",
            "Le/a/m<",
            "-TR;>;",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TR;>;>;)Z"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    :try_start_5
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_38

    if-nez p0, :cond_11

    invoke-static {p1}, Le/a/y/a/c;->a(Le/a/m;)V

    return v0

    :cond_11
    :try_start_11
    invoke-interface {p2, p0}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null ObservableSource"

    invoke-static {p0, p2}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/k;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_38

    instance-of p2, p0, Ljava/util/concurrent/Callable;

    if-eqz p2, :cond_40

    :try_start_20
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_38

    if-nez p0, :cond_2c

    invoke-static {p1}, Le/a/y/a/c;->a(Le/a/m;)V

    return v0

    :cond_2c
    new-instance p2, Le/a/y/e/b/l$a;

    invoke-direct {p2, p1, p0}, Le/a/y/e/b/l$a;-><init>(Le/a/m;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Le/a/m;->a(Le/a/v/b;)V

    invoke-virtual {p2}, Le/a/y/e/b/l$a;->run()V

    goto :goto_43

    :catchall_38
    move-exception p0

    invoke-static {p0}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Le/a/y/a/c;->a(Ljava/lang/Throwable;Le/a/m;)V

    return v0

    :cond_40
    invoke-interface {p0, p1}, Le/a/k;->a(Le/a/m;)V

    :goto_43
    return v0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

###### Class e.a.y.e.b.l.a (e.a.y.e.b.l$a)
.class public final Le/a/y/e/b/l$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source ""

# interfaces
.implements Le/a/y/c/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Le/a/y/c/d<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final b:Le/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/m<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/m;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/l$a;->b:Le/a/m;

    iput-object p2, p0, Le/a/y/e/b/l$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public a()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Le/a/y/e/b/l$a;->c:Ljava/lang/Object;

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method

.method public isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public run()V
    .registers 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Le/a/y/e/b/l$a;->b:Le/a/m;

    iget-object v2, p0, Le/a/y/e/b/l$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v2}, Le/a/m;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v1, :cond_24

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Le/a/y/e/b/l$a;->b:Le/a/m;

    invoke-interface {v0}, Le/a/m;->onComplete()V

    :cond_24
    return-void
.end method

###### Class e.a.y.e.b.l.b (e.a.y.e.b.l$b)
.class final Le/a/y/e/b/l$b;
.super Le/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/h<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final c:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Le/a/x/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/h;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/l$b;->b:Ljava/lang/Object;

    iput-object p2, p0, Le/a/y/e/b/l$b;->c:Le/a/x/e;

    return-void
.end method


# virtual methods
.method public b(Le/a/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Le/a/y/e/b/l$b;->c:Le/a/x/e;

    iget-object v1, p0, Le/a/y/e/b/l$b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/k;
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_37

    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_33

    :try_start_13
    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_2b

    if-nez v0, :cond_1f

    invoke-static {p1}, Le/a/y/a/c;->a(Le/a/m;)V

    return-void

    :cond_1f
    new-instance v1, Le/a/y/e/b/l$a;

    invoke-direct {v1, p1, v0}, Le/a/y/e/b/l$a;-><init>(Le/a/m;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Le/a/m;->a(Le/a/v/b;)V

    invoke-virtual {v1}, Le/a/y/e/b/l$a;->run()V

    goto :goto_36

    :catchall_2b
    move-exception v0

    invoke-static {v0}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Le/a/y/a/c;->a(Ljava/lang/Throwable;Le/a/m;)V

    return-void

    :cond_33
    invoke-interface {v0, p1}, Le/a/k;->a(Le/a/m;)V

    :goto_36
    return-void

    :catchall_37
    move-exception v0

    invoke-static {v0, p1}, Le/a/y/a/c;->a(Ljava/lang/Throwable;Le/a/m;)V

    return-void
.end method
