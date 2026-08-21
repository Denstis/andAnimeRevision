###### Class e.a.y.e.c.g (e.a.y.e.c.g)
.class public final Le/a/y/e/c/g;
.super Le/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/c/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Le/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/s<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Le/a/n;


# direct methods
.method public constructor <init>(Le/a/s;Le/a/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/s<",
            "+TT;>;",
            "Le/a/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/o;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/g;->a:Le/a/s;

    iput-object p2, p0, Le/a/y/e/c/g;->b:Le/a/n;

    return-void
.end method


# virtual methods
.method protected b(Le/a/q;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Le/a/y/e/c/g$a;

    iget-object v1, p0, Le/a/y/e/c/g;->a:Le/a/s;

    invoke-direct {v0, p1, v1}, Le/a/y/e/c/g$a;-><init>(Le/a/q;Le/a/s;)V

    invoke-interface {p1, v0}, Le/a/q;->a(Le/a/v/b;)V

    iget-object p1, p0, Le/a/y/e/c/g;->b:Le/a/n;

    invoke-virtual {p1, v0}, Le/a/n;->a(Ljava/lang/Runnable;)Le/a/v/b;

    move-result-object p1

    iget-object v0, v0, Le/a/y/e/c/g$a;->c:Le/a/y/a/e;

    invoke-virtual {v0, p1}, Le/a/y/a/e;->a(Le/a/v/b;)Z

    return-void
.end method

###### Class e.a.y.e.c.g.a (e.a.y.e.c.g$a)
.class final Le/a/y/e/c/g$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Le/a/q;
.implements Le/a/v/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/c/g;
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
        "Le/a/q<",
        "TT;>;",
        "Le/a/v/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final b:Le/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/q<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Le/a/y/a/e;

.field final d:Le/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/s<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/a/q;Le/a/s;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;",
            "Le/a/s<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/g$a;->b:Le/a/q;

    iput-object p2, p0, Le/a/y/e/c/g$a;->d:Le/a/s;

    new-instance p1, Le/a/y/a/e;

    invoke-direct {p1}, Le/a/y/a/e;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/g$a;->c:Le/a/y/a/e;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 2

    invoke-static {p0, p1}, Le/a/y/a/b;->c(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/c/g$a;->b:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->a(Ljava/lang/Throwable;)V

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
    .registers 2

    invoke-static {p0}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Le/a/y/e/c/g$a;->c:Le/a/y/a/e;

    invoke-virtual {v0}, Le/a/y/a/e;->b()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/c/g$a;->b:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Le/a/y/e/c/g$a;->d:Le/a/s;

    invoke-interface {v0, p0}, Le/a/s;->a(Le/a/q;)V

    return-void
.end method
