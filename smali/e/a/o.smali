###### Class e.a.o (e.a.o)
.class public abstract Le/a/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/s<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/a/r;)Le/a/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/r<",
            "TT;>;)",
            "Le/a/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/c/a;

    invoke-direct {v0, p0}, Le/a/y/e/c/a;-><init>(Le/a/r;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/o;)Le/a/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Le/a/s;)Le/a/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/s<",
            "TT;>;)",
            "Le/a/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Le/a/o;

    if-eqz v0, :cond_10

    check-cast p0, Le/a/o;

    invoke-static {p0}, Le/a/a0/a;->a(Le/a/o;)Le/a/o;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance v0, Le/a/y/e/c/d;

    invoke-direct {v0, p0}, Le/a/y/e/c/d;-><init>(Le/a/s;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/o;)Le/a/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Le/a/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Le/a/y/c/a;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Le/a/y/c/a;

    invoke-interface {v0}, Le/a/y/c/a;->a()Le/a/h;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Le/a/y/e/c/h;

    invoke-direct {v0, p0}, Le/a/y/e/c/h;-><init>(Le/a/s;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Le/a/n;)Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/n;",
            ")",
            "Le/a/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/c/f;

    invoke-direct {v0, p0, p1}, Le/a/y/e/c/f;-><init>(Le/a/s;Le/a/n;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/o;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/t;)Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/t<",
            "-TT;+TR;>;)",
            "Le/a/o<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/t;

    invoke-interface {p1, p0}, Le/a/t;->a(Le/a/o;)Le/a/s;

    move-result-object p1

    invoke-static {p1}, Le/a/o;->a(Le/a/s;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/d;)Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;)",
            "Le/a/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/c/b;

    invoke-direct {v0, p0, p1}, Le/a/y/e/c/b;-><init>(Le/a/s;Le/a/x/d;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/o;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/e;)Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/s<",
            "+TR;>;>;)",
            "Le/a/o<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/c/c;

    invoke-direct {v0, p0, p1}, Le/a/y/e/c/c;-><init>(Le/a/s;Le/a/x/e;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/o;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/d<",
            "-TT;>;",
            "Le/a/x/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Le/a/v/b;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/d/c;

    invoke-direct {v0, p1, p2}, Le/a/y/d/c;-><init>(Le/a/x/d;Le/a/x/d;)V

    invoke-virtual {p0, v0}, Le/a/o;->a(Le/a/q;)V

    return-object v0
.end method

.method public final a(Le/a/q;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "subscriber is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Le/a/a0/a;->a(Le/a/o;Le/a/q;)Le/a/q;

    move-result-object p1

    const-string v0, "subscriber returned by the RxJavaPlugins hook is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_e
    invoke-virtual {p0, p1}, Le/a/o;->b(Le/a/q;)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_11} :catch_21
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_21
    move-exception p1

    throw p1
.end method

.method public final b(Le/a/n;)Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/n;",
            ")",
            "Le/a/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/c/g;

    invoke-direct {v0, p0, p1}, Le/a/y/e/c/g;-><init>(Le/a/s;Le/a/n;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/o;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final b(Le/a/x/e;)Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/x/e<",
            "-TT;+TR;>;)",
            "Le/a/o<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/c/e;

    invoke-direct {v0, p0, p1}, Le/a/y/e/c/e;-><init>(Le/a/s;Le/a/x/e;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/o;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Le/a/q;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;)V"
        }
    .end annotation
.end method
