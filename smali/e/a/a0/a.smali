###### Class e.a.a0.a (e.a.a0.a)
.class public final Le/a/a0/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field static volatile a:Le/a/x/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile b:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Ljava/lang/Runnable;",
            "+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile c:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;+",
            "Le/a/n;",
            ">;"
        }
    .end annotation
.end field

.field static volatile d:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;+",
            "Le/a/n;",
            ">;"
        }
    .end annotation
.end field

.field static volatile e:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;+",
            "Le/a/n;",
            ">;"
        }
    .end annotation
.end field

.field static volatile f:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;+",
            "Le/a/n;",
            ">;"
        }
    .end annotation
.end field

.field static volatile g:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Le/a/n;",
            "+",
            "Le/a/n;",
            ">;"
        }
    .end annotation
.end field

.field static volatile h:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Le/a/n;",
            "+",
            "Le/a/n;",
            ">;"
        }
    .end annotation
.end field

.field static volatile i:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Le/a/e;",
            "+",
            "Le/a/e;",
            ">;"
        }
    .end annotation
.end field

.field static volatile j:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Le/a/h;",
            "+",
            "Le/a/h;",
            ">;"
        }
    .end annotation
.end field

.field static volatile k:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Le/a/f;",
            "+",
            "Le/a/f;",
            ">;"
        }
    .end annotation
.end field

.field static volatile l:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Le/a/o;",
            "+",
            "Le/a/o;",
            ">;"
        }
    .end annotation
.end field

.field static volatile m:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-",
            "Le/a/b;",
            "+",
            "Le/a/b;",
            ">;"
        }
    .end annotation
.end field

.field static volatile n:Le/a/x/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/b<",
            "-",
            "Le/a/h;",
            "-",
            "Le/a/m;",
            "+",
            "Le/a/m;",
            ">;"
        }
    .end annotation
.end field

.field static volatile o:Le/a/x/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/b<",
            "-",
            "Le/a/o;",
            "-",
            "Le/a/q;",
            "+",
            "Le/a/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Le/a/b;)Le/a/b;
    .registers 2

    sget-object v0, Le/a/a0/a;->m:Le/a/x/e;

    if-eqz v0, :cond_a

    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/b;

    :cond_a
    return-object p0
.end method

.method public static a(Le/a/e;)Le/a/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/e<",
            "TT;>;)",
            "Le/a/e<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le/a/a0/a;->i:Le/a/x/e;

    if-eqz v0, :cond_a

    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/e;

    :cond_a
    return-object p0
.end method

.method public static a(Le/a/f;)Le/a/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/f<",
            "TT;>;)",
            "Le/a/f<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le/a/a0/a;->k:Le/a/x/e;

    if-eqz v0, :cond_a

    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/f;

    :cond_a
    return-object p0
.end method

.method public static a(Le/a/h;)Le/a/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/h<",
            "TT;>;)",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le/a/a0/a;->j:Le/a/x/e;

    if-eqz v0, :cond_a

    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/h;

    :cond_a
    return-object p0
.end method

.method public static a(Le/a/h;Le/a/m;)Le/a/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/h<",
            "TT;>;",
            "Le/a/m<",
            "-TT;>;)",
            "Le/a/m<",
            "-TT;>;"
        }
    .end annotation

    sget-object v0, Le/a/a0/a;->n:Le/a/x/b;

    if-eqz v0, :cond_b

    invoke-static {v0, p0, p1}, Le/a/a0/a;->a(Le/a/x/b;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/m;

    return-object p0

    :cond_b
    return-object p1
.end method

.method public static a(Le/a/n;)Le/a/n;
    .registers 2

    sget-object v0, Le/a/a0/a;->g:Le/a/x/e;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/n;

    return-object p0
.end method

.method static a(Le/a/x/e;Ljava/util/concurrent/Callable;)Le/a/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/e<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;+",
            "Le/a/n;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;)",
            "Le/a/n;"
        }
    .end annotation

    invoke-static {p0, p1}, Le/a/a0/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Scheduler Callable result can\'t be null"

    invoke-static {p0, p1}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/n;

    return-object p0
.end method

.method static a(Ljava/util/concurrent/Callable;)Le/a/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;)",
            "Le/a/n;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Scheduler Callable result can\'t be null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/n;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {p0}, Le/a/y/h/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static a(Le/a/o;)Le/a/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/o<",
            "TT;>;)",
            "Le/a/o<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le/a/a0/a;->l:Le/a/x/e;

    if-eqz v0, :cond_a

    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/o;

    :cond_a
    return-object p0
.end method

.method public static a(Le/a/o;Le/a/q;)Le/a/q;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/o<",
            "TT;>;",
            "Le/a/q<",
            "-TT;>;)",
            "Le/a/q<",
            "-TT;>;"
        }
    .end annotation

    sget-object v0, Le/a/a0/a;->o:Le/a/x/b;

    if-eqz v0, :cond_b

    invoke-static {v0, p0, p1}, Le/a/a0/a;->a(Le/a/x/b;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/q;

    return-object p0

    :cond_b
    return-object p1
.end method

.method static a(Le/a/x/b;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/x/b<",
            "TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1, p2}, Le/a/x/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    invoke-static {p0}, Le/a/y/h/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/x/e<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    invoke-static {p0}, Le/a/y/h/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    const-string v0, "run is null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Le/a/a0/a;->b:Le/a/x/e;

    if-nez v0, :cond_a

    return-object p0

    :cond_a
    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method static a(Ljava/lang/Throwable;)Z
    .registers 3

    instance-of v0, p0, Le/a/w/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_b

    return v1

    :cond_b
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_10

    return v1

    :cond_10
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_15

    return v1

    :cond_15
    instance-of p0, p0, Le/a/w/a;

    if-eqz p0, :cond_1a

    return v1

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Le/a/n;)Le/a/n;
    .registers 2

    sget-object v0, Le/a/a0/a;->h:Le/a/x/e;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/n;

    return-object p0
.end method

.method public static b(Ljava/util/concurrent/Callable;)Le/a/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;)",
            "Le/a/n;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Le/a/a0/a;->c:Le/a/x/e;

    if-nez v0, :cond_e

    invoke-static {p0}, Le/a/a0/a;->a(Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Le/a/a0/a;->a:Le/a/x/d;

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :cond_c
    invoke-static {p0}, Le/a/a0/a;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Le/a/w/e;

    invoke-direct {v1, p0}, Le/a/w/e;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :cond_18
    :goto_18
    if-eqz v0, :cond_25

    :try_start_1a
    invoke-interface {v0, p0}, Le/a/x/d;->a(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Le/a/a0/a;->c(Ljava/lang/Throwable;)V

    :cond_25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Le/a/a0/a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/util/concurrent/Callable;)Le/a/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;)",
            "Le/a/n;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Le/a/a0/a;->e:Le/a/x/e;

    if-nez v0, :cond_e

    invoke-static {p0}, Le/a/a0/a;->a(Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/util/concurrent/Callable;)Le/a/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;)",
            "Le/a/n;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Le/a/a0/a;->f:Le/a/x/e;

    if-nez v0, :cond_e

    invoke-static {p0}, Le/a/a0/a;->a(Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Callable;)Le/a/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;)",
            "Le/a/n;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Le/a/a0/a;->d:Le/a/x/e;

    if-nez v0, :cond_e

    invoke-static {p0}, Le/a/a0/a;->a(Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-static {v0, p0}, Le/a/a0/a;->a(Le/a/x/e;Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0
.end method
