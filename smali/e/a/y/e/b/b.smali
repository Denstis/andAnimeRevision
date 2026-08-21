###### Class e.a.y.e.b.b (e.a.y.e.b.b)
.class public final Le/a/y/e/b/b;
.super Le/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Le/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/j<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/h;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/b;->b:Le/a/j;

    return-void
.end method


# virtual methods
.method protected b(Le/a/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Le/a/y/e/b/b$a;

    invoke-direct {v0, p1}, Le/a/y/e/b/b$a;-><init>(Le/a/m;)V

    invoke-interface {p1, v0}, Le/a/m;->a(Le/a/v/b;)V

    :try_start_8
    iget-object p1, p0, Le/a/y/e/b/b;->b:Le/a/j;

    invoke-interface {p1, v0}, Le/a/j;->a(Le/a/i;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_15

    :catchall_e
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Le/a/y/e/b/b$a;->a(Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

###### Class e.a.y.e.b.b.a (e.a.y.e.b.b$a)
.class final Le/a/y/e/b/b$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Le/a/i;
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Le/a/v/b;",
        ">;",
        "Le/a/i<",
        "TT;>;",
        "Le/a/v/b;"
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


# direct methods
.method constructor <init>(Le/a/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/b$a;->b:Le/a/m;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 2

    invoke-static {p0, p1}, Le/a/y/a/b;->b(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/y/e/b/b$a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    invoke-virtual {p0}, Le/a/y/e/b/b$a;->a()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Le/a/y/e/b/b$a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p1}, Le/a/y/e/b/b$a;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public a()Z
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v/b;

    invoke-static {v0}, Le/a/y/a/b;->a(Le/a/v/b;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 1

    invoke-static {p0}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public b(Ljava/lang/Throwable;)Z
    .registers 3

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Le/a/y/e/b/b$a;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    :try_start_f
    iget-object v0, p0, Le/a/y/e/b/b$a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    invoke-virtual {p0}, Le/a/y/e/b/b$a;->b()V

    const/4 p1, 0x1

    return p1

    :catchall_19
    move-exception p1

    invoke-virtual {p0}, Le/a/y/e/b/b$a;->b()V

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public onComplete()V
    .registers 2

    invoke-virtual {p0}, Le/a/y/e/b/b$a;->a()Z

    move-result v0

    if-nez v0, :cond_14

    :try_start_6
    iget-object v0, p0, Le/a/y/e/b/b$a;->b:Le/a/m;

    invoke-interface {v0}, Le/a/m;->onComplete()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    invoke-virtual {p0}, Le/a/y/e/b/b$a;->b()V

    goto :goto_14

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Le/a/y/e/b/b$a;->b()V

    throw v0

    :cond_14
    :goto_14
    return-void
.end method
