###### Class e.a.h (e.a.h)
.class public abstract Le/a/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/k<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/a/j;)Le/a/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/j<",
            "TT;>;)",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/b/b;

    invoke-direct {v0, p0}, Le/a/y/e/b/b;-><init>(Le/a/j;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Le/a/k;)Le/a/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/k<",
            "TT;>;)",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Le/a/h;

    if-eqz v0, :cond_10

    check-cast p0, Le/a/h;

    invoke-static {p0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance v0, Le/a/y/e/b/g;

    invoke-direct {v0, p0}, Le/a/y/e/b/g;-><init>(Le/a/k;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p0

    return-object p0
.end method

.method private a(Le/a/x/d;Le/a/x/d;Le/a/x/a;Le/a/x/a;)Le/a/h;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/d<",
            "-TT;>;",
            "Le/a/x/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Le/a/x/a;",
            "Le/a/x/a;",
            ")",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p4, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/b/d;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Le/a/y/e/b/d;-><init>(Le/a/k;Le/a/x/d;Le/a/x/d;Le/a/x/a;Le/a/x/a;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public static e()I
    .registers 1

    invoke-static {}, Le/a/e;->d()I

    move-result v0

    return v0
.end method

.method public static f()Le/a/h;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le/a/y/e/b/f;->b:Le/a/h;

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Le/a/a;)Le/a/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a;",
            ")",
            "Le/a/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Le/a/y/e/a/b;

    invoke-direct {v0, p0}, Le/a/y/e/a/b;-><init>(Le/a/h;)V

    sget-object v1, Le/a/h$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_29

    const/4 v1, 0x3

    if-eq p1, v1, :cond_28

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1e

    invoke-virtual {v0}, Le/a/e;->a()Le/a/e;

    move-result-object p1

    return-object p1

    :cond_1e
    new-instance p1, Le/a/y/e/a/e;

    invoke-direct {p1, v0}, Le/a/y/e/a/e;-><init>(Le/a/e;)V

    invoke-static {p1}, Le/a/a0/a;->a(Le/a/e;)Le/a/e;

    move-result-object p1

    return-object p1

    :cond_28
    return-object v0

    :cond_29
    invoke-virtual {v0}, Le/a/e;->c()Le/a/e;

    move-result-object p1

    return-object p1

    :cond_2e
    invoke-virtual {v0}, Le/a/e;->b()Le/a/e;

    move-result-object p1

    return-object p1
.end method

.method public final a()Le/a/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Le/a/y/b/a;->b()Le/a/x/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/h;->a(Le/a/x/e;)Le/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Le/a/l;)Le/a/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/l<",
            "-TT;+TR;>;)",
            "Le/a/h<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/l;

    invoke-interface {p1, p0}, Le/a/l;->a(Le/a/h;)Le/a/k;

    move-result-object p1

    invoke-static {p1}, Le/a/h;->a(Le/a/k;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/n;)Le/a/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/n;",
            ")",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Le/a/h;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le/a/h;->a(Le/a/n;ZI)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/n;ZI)Le/a/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/n;",
            "ZI)",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, Le/a/y/b/b;->a(ILjava/lang/String;)I

    new-instance v0, Le/a/y/e/b/k;

    invoke-direct {v0, p0, p1, p2, p3}, Le/a/y/e/b/k;-><init>(Le/a/k;Le/a/n;ZI)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/d;)Le/a/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Le/a/y/b/a;->a()Le/a/x/d;

    move-result-object v0

    sget-object v1, Le/a/y/b/a;->c:Le/a/x/a;

    invoke-direct {p0, v0, p1, v1, v1}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;Le/a/x/a;Le/a/x/a;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/d;Le/a/x/a;)Le/a/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;",
            "Le/a/x/a;",
            ")",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    invoke-static {p2, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/b/e;

    invoke-direct {v0, p0, p1, p2}, Le/a/y/e/b/e;-><init>(Le/a/h;Le/a/x/d;Le/a/x/a;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/e;)Le/a/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/x/e<",
            "-TT;TK;>;)",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/b/c;

    invoke-static {}, Le/a/y/b/b;->a()Le/a/x/c;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Le/a/y/e/b/c;-><init>(Le/a/k;Le/a/x/e;Le/a/x/c;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/e;I)Le/a/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TR;>;>;I)",
            "Le/a/h<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, Le/a/y/b/b;->a(ILjava/lang/String;)I

    instance-of v0, p0, Le/a/y/c/f;

    if-eqz v0, :cond_21

    move-object p2, p0

    check-cast p2, Le/a/y/c/f;

    invoke-interface {p2}, Le/a/y/c/f;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1c

    invoke-static {}, Le/a/h;->f()Le/a/h;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-static {p2, p1}, Le/a/y/e/b/l;->a(Ljava/lang/Object;Le/a/x/e;)Le/a/h;

    move-result-object p1

    return-object p1

    :cond_21
    new-instance v0, Le/a/y/e/b/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Le/a/y/e/b/p;-><init>(Le/a/k;Le/a/x/e;IZ)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;
    .registers 5
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

    sget-object v0, Le/a/y/b/a;->c:Le/a/x/a;

    invoke-static {}, Le/a/y/b/a;->a()Le/a/x/d;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;Le/a/x/a;Le/a/x/d;)Le/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/d;Le/a/x/d;Le/a/x/a;)Le/a/v/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/d<",
            "-TT;>;",
            "Le/a/x/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Le/a/x/a;",
            ")",
            "Le/a/v/b;"
        }
    .end annotation

    invoke-static {}, Le/a/y/b/a;->a()Le/a/x/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;Le/a/x/a;Le/a/x/d;)Le/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Le/a/x/d;Le/a/x/d;Le/a/x/a;Le/a/x/d;)Le/a/v/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/d<",
            "-TT;>;",
            "Le/a/x/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Le/a/x/a;",
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;)",
            "Le/a/v/b;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    invoke-static {p4, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/d/f;

    invoke-direct {v0, p1, p2, p3, p4}, Le/a/y/d/f;-><init>(Le/a/x/d;Le/a/x/d;Le/a/x/a;Le/a/x/d;)V

    invoke-virtual {p0, v0}, Le/a/h;->a(Le/a/m;)V

    return-object v0
.end method

.method public final a(Le/a/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_5
    invoke-static {p0, p1}, Le/a/a0/a;->a(Le/a/h;Le/a/m;)Le/a/m;

    move-result-object p1

    const-string v0, "Plugin returned null Observer"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Le/a/h;->b(Le/a/m;)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_11} :catch_24
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_24
    move-exception p1

    throw p1
.end method

.method public final b()Le/a/b;
    .registers 2

    new-instance v0, Le/a/y/e/b/i;

    invoke-direct {v0, p0}, Le/a/y/e/b/i;-><init>(Le/a/k;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/b;)Le/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Le/a/n;)Le/a/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/n;",
            ")",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/b/o;

    invoke-direct {v0, p0, p1}, Le/a/y/e/b/o;-><init>(Le/a/k;Le/a/n;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final b(Le/a/x/d;)Le/a/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;)",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le/a/y/b/a;->c:Le/a/x/a;

    invoke-virtual {p0, p1, v0}, Le/a/h;->a(Le/a/x/d;Le/a/x/a;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final b(Le/a/x/e;)Le/a/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/x/e<",
            "-TT;+TR;>;)",
            "Le/a/h<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/y/e/b/j;

    invoke-direct {v0, p0, p1}, Le/a/y/e/b/j;-><init>(Le/a/k;Le/a/x/e;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Le/a/m;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final c()Le/a/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Le/a/y/e/b/m;

    invoke-direct {v0, p0}, Le/a/y/e/b/m;-><init>(Le/a/k;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/f;)Le/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final c(Le/a/x/e;)Le/a/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TR;>;>;)",
            "Le/a/h<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Le/a/h;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Le/a/h;->a(Le/a/x/e;I)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final d()Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Le/a/y/e/b/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/y/e/b/n;-><init>(Le/a/k;Ljava/lang/Object;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/o;)Le/a/o;

    move-result-object v0

    return-object v0
.end method

###### Class e.a.h.a (e.a.h$a)
.class synthetic Le/a/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Le/a/a;->values()[Le/a/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Le/a/h$a;->a:[I

    :try_start_9
    sget-object v0, Le/a/h$a;->a:[I

    sget-object v1, Le/a/a;->e:Le/a/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Le/a/h$a;->a:[I

    sget-object v1, Le/a/a;->f:Le/a/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Le/a/h$a;->a:[I

    sget-object v1, Le/a/a;->b:Le/a/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Le/a/h$a;->a:[I

    sget-object v1, Le/a/a;->c:Le/a/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method
