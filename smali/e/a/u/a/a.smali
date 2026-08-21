###### Class e.a.u.a.a (e.a.u.a.a)
.class public final Le/a/u/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;",
            "Le/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "Le/a/n;",
            "Le/a/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Le/a/n;)Le/a/n;
    .registers 2

    if-eqz p0, :cond_e

    sget-object v0, Le/a/u/a/a;->b:Le/a/x/e;

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {v0, p0}, Le/a/u/a/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/n;

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Le/a/x/e;Ljava/util/concurrent/Callable;)Le/a/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/e<",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;",
            "Le/a/n;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Le/a/n;",
            ">;)",
            "Le/a/n;"
        }
    .end annotation

    invoke-static {p0, p1}, Le/a/u/a/a;->a(Le/a/x/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/n;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Scheduler Callable returned null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
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

    check-cast p0, Le/a/n;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Scheduler Callable returned null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception p0

    invoke-static {p0}, Le/a/w/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

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

    invoke-static {p0}, Le/a/w/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
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

    if-eqz p0, :cond_10

    sget-object v0, Le/a/u/a/a;->a:Le/a/x/e;

    if-nez v0, :cond_b

    invoke-static {p0}, Le/a/u/a/a;->a(Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {v0, p0}, Le/a/u/a/a;->a(Le/a/x/e;Ljava/util/concurrent/Callable;)Le/a/n;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
