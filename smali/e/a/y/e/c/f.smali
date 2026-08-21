###### Class e.a.y.e.c.f (e.a.y.e.c.f)
.class public final Le/a/y/e/c/f;
.super Le/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/c/f$a;
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
            "TT;>;"
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
            "TT;>;",
            "Le/a/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/o;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/f;->a:Le/a/s;

    iput-object p2, p0, Le/a/y/e/c/f;->b:Le/a/n;

    return-void
.end method


# virtual methods
.method protected b(Le/a/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/c/f;->a:Le/a/s;

    new-instance v1, Le/a/y/e/c/f$a;

    iget-object v2, p0, Le/a/y/e/c/f;->b:Le/a/n;

    invoke-direct {v1, p1, v2}, Le/a/y/e/c/f$a;-><init>(Le/a/q;Le/a/n;)V

    invoke-interface {v0, v1}, Le/a/s;->a(Le/a/q;)V

    return-void
.end method

###### Class e.a.y.e.c.f.a (e.a.y.e.c.f$a)
.class final Le/a/y/e/c/f$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Le/a/q;
.implements Le/a/v/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/c/f;
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

.field final c:Le/a/n;

.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Le/a/q;Le/a/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;",
            "Le/a/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/f$a;->b:Le/a/q;

    iput-object p2, p0, Le/a/y/e/c/f$a;->c:Le/a/n;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 2

    invoke-static {p0, p1}, Le/a/y/a/b;->c(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Le/a/y/e/c/f$a;->b:Le/a/q;

    invoke-interface {p1, p0}, Le/a/q;->a(Le/a/v/b;)V

    :cond_b
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Le/a/y/e/c/f$a;->e:Ljava/lang/Throwable;

    iget-object p1, p0, Le/a/y/e/c/f$a;->c:Le/a/n;

    invoke-virtual {p1, p0}, Le/a/n;->a(Ljava/lang/Runnable;)Le/a/v/b;

    move-result-object p1

    invoke-static {p0, p1}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

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

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/y/e/c/f$a;->d:Ljava/lang/Object;

    iget-object p1, p0, Le/a/y/e/c/f$a;->c:Le/a/n;

    invoke-virtual {p1, p0}, Le/a/n;->a(Ljava/lang/Runnable;)Le/a/v/b;

    move-result-object p1

    invoke-static {p0, p1}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Le/a/y/e/c/f$a;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    iget-object v1, p0, Le/a/y/e/c/f$a;->b:Le/a/q;

    invoke-interface {v1, v0}, Le/a/q;->a(Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_a
    iget-object v0, p0, Le/a/y/e/c/f$a;->b:Le/a/q;

    iget-object v1, p0, Le/a/y/e/c/f$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Le/a/q;->onSuccess(Ljava/lang/Object;)V

    :goto_11
    return-void
.end method
