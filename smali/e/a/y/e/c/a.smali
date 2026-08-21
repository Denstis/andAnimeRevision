###### Class e.a.y.e.c.a (e.a.y.e.c.a)
.class public final Le/a/y/e/c/a;
.super Le/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/c/a$a;
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
.field final a:Le/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/o;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/a;->a:Le/a/r;

    return-void
.end method


# virtual methods
.method protected b(Le/a/q;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Le/a/y/e/c/a$a;

    invoke-direct {v0, p1}, Le/a/y/e/c/a$a;-><init>(Le/a/q;)V

    invoke-interface {p1, v0}, Le/a/q;->a(Le/a/v/b;)V

    :try_start_8
    iget-object p1, p0, Le/a/y/e/c/a;->a:Le/a/r;

    invoke-interface {p1, v0}, Le/a/r;->a(Le/a/p;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_15

    :catchall_e
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Le/a/y/e/c/a$a;->a(Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

###### Class e.a.y.e.c.a.C0180a (e.a.y.e.c.a$a)
.class final Le/a/y/e/c/a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Le/a/p;
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/c/a;
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
        "Le/a/p<",
        "TT;>;",
        "Le/a/v/b;"
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


# direct methods
.method constructor <init>(Le/a/q;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/a$a;->b:Le/a/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p1}, Le/a/y/e/c/a$a;->b(Ljava/lang/Throwable;)Z

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
    .registers 4

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-eq v0, v1, :cond_2e

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v/b;

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-eq v0, v1, :cond_2e

    :try_start_1b
    iget-object v1, p0, Le/a/y/e/c/a$a;->b:Le/a/q;

    invoke-interface {v1, p1}, Le/a/q;->a(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_27

    if-eqz v0, :cond_25

    invoke-interface {v0}, Le/a/v/b;->b()V

    :cond_25
    const/4 p1, 0x1

    return p1

    :catchall_27
    move-exception p1

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Le/a/v/b;->b()V

    :cond_2d
    throw p1

    :cond_2e
    const/4 p1, 0x0

    return p1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-eq v0, v1, :cond_33

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v/b;

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-eq v0, v1, :cond_33

    if-nez p1, :cond_21

    :try_start_14
    iget-object p1, p0, Le/a/y/e/c/a$a;->b:Le/a/q;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/q;->a(Ljava/lang/Throwable;)V

    goto :goto_26

    :cond_21
    iget-object v1, p0, Le/a/y/e/c/a$a;->b:Le/a/q;

    invoke-interface {v1, p1}, Le/a/q;->onSuccess(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_2c

    :goto_26
    if-eqz v0, :cond_33

    invoke-interface {v0}, Le/a/v/b;->b()V

    goto :goto_33

    :catchall_2c
    move-exception p1

    if-eqz v0, :cond_32

    invoke-interface {v0}, Le/a/v/b;->b()V

    :cond_32
    throw p1

    :cond_33
    :goto_33
    return-void
.end method
