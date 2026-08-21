###### Class e.a.y.e.c.c (e.a.y.e.c.c)
.class public final Le/a/y/e/c/c;
.super Le/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/o<",
        "TR;>;"
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

.field final b:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/s<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/s;Le/a/x/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/s<",
            "+TT;>;",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/s<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/o;-><init>()V

    iput-object p2, p0, Le/a/y/e/c/c;->b:Le/a/x/e;

    iput-object p1, p0, Le/a/y/e/c/c;->a:Le/a/s;

    return-void
.end method


# virtual methods
.method protected b(Le/a/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/c/c;->a:Le/a/s;

    new-instance v1, Le/a/y/e/c/c$a;

    iget-object v2, p0, Le/a/y/e/c/c;->b:Le/a/x/e;

    invoke-direct {v1, p1, v2}, Le/a/y/e/c/c$a;-><init>(Le/a/q;Le/a/x/e;)V

    invoke-interface {v0, v1}, Le/a/s;->a(Le/a/q;)V

    return-void
.end method

###### Class e.a.y.e.c.c.a (e.a.y.e.c.c$a)
.class final Le/a/y/e/c/c$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Le/a/q;
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/c/c$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Le/a/v/b;",
        ">;",
        "Le/a/q<",
        "TT;>;",
        "Le/a/v/b;"
    }
.end annotation


# instance fields
.field final b:Le/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/q<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final c:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/s<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/a/q;Le/a/x/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TR;>;",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/s<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/c$a;->b:Le/a/q;

    iput-object p2, p0, Le/a/y/e/c/c$a;->c:Le/a/x/e;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 2

    invoke-static {p0, p1}, Le/a/y/a/b;->c(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Le/a/y/e/c/c$a;->b:Le/a/q;

    invoke-interface {p1, p0}, Le/a/q;->a(Le/a/v/b;)V

    :cond_b
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/c/c$a;->b:Le/a/q;

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
    .registers 1

    invoke-static {p0}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Le/a/y/e/c/c$a;->c:Le/a/x/e;

    invoke-interface {v0, p1}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The single returned by the mapper is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/s;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_1e

    invoke-virtual {p0}, Le/a/y/e/c/c$a;->a()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Le/a/y/e/c/c$a$a;

    iget-object v1, p0, Le/a/y/e/c/c$a;->b:Le/a/q;

    invoke-direct {v0, p0, v1}, Le/a/y/e/c/c$a$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Le/a/q;)V

    invoke-interface {p1, v0}, Le/a/s;->a(Le/a/q;)V

    :cond_1d
    return-void

    :catchall_1e
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Le/a/y/e/c/c$a;->b:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class e.a.y.e.c.c.a.C0181a (e.a.y.e.c.c$a$a)
.class final Le/a/y/e/c/c$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/c/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/q<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/v/b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Le/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/q<",
            "-TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Le/a/q;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/v/b;",
            ">;",
            "Le/a/q<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/c$a$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Le/a/y/e/c/c$a$a;->c:Le/a/q;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/c/c$a$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/c/c$a$a;->c:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/c/c$a$a;->c:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
