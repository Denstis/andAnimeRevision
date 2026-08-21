###### Class e.a.y.e.b.o (e.a.y.e.b.o)
.class public final Le/a/y/e/b/o;
.super Le/a/y/e/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/b/o$b;,
        Le/a/y/e/b/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/y/e/b/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Le/a/n;


# direct methods
.method public constructor <init>(Le/a/k;Le/a/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k<",
            "TT;>;",
            "Le/a/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/a/y/e/b/a;-><init>(Le/a/k;)V

    iput-object p2, p0, Le/a/y/e/b/o;->c:Le/a/n;

    return-void
.end method


# virtual methods
.method public b(Le/a/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Le/a/y/e/b/o$a;

    invoke-direct {v0, p1}, Le/a/y/e/b/o$a;-><init>(Le/a/m;)V

    invoke-interface {p1, v0}, Le/a/m;->a(Le/a/v/b;)V

    iget-object p1, p0, Le/a/y/e/b/o;->c:Le/a/n;

    new-instance v1, Le/a/y/e/b/o$b;

    invoke-direct {v1, p0, v0}, Le/a/y/e/b/o$b;-><init>(Le/a/y/e/b/o;Le/a/y/e/b/o$a;)V

    invoke-virtual {p1, v1}, Le/a/n;->a(Ljava/lang/Runnable;)Le/a/v/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/y/e/b/o$a;->b(Le/a/v/b;)V

    return-void
.end method

###### Class e.a.y.e.b.o.a (e.a.y.e.b.o$a)
.class final Le/a/y/e/b/o$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Le/a/m;
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/o;
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
        "Le/a/m<",
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

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/v/b;",
            ">;"
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

    iput-object p1, p0, Le/a/y/e/b/o$a;->b:Le/a/m;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/o$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/b/o$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Le/a/y/a/b;->c(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/b/o$a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/b/o$a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V

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

    iget-object v0, p0, Le/a/y/e/b/o$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-static {p0}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method b(Le/a/v/b;)V
    .registers 2

    invoke-static {p0, p1}, Le/a/y/a/b;->c(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    return-void
.end method

.method public onComplete()V
    .registers 2

    iget-object v0, p0, Le/a/y/e/b/o$a;->b:Le/a/m;

    invoke-interface {v0}, Le/a/m;->onComplete()V

    return-void
.end method

###### Class e.a.y.e.b.o.b (e.a.y.e.b.o$b)
.class final Le/a/y/e/b/o$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final b:Le/a/y/e/b/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/e/b/o$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Le/a/y/e/b/o;


# direct methods
.method constructor <init>(Le/a/y/e/b/o;Le/a/y/e/b/o$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/y/e/b/o$a<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/y/e/b/o$b;->c:Le/a/y/e/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/y/e/b/o$b;->b:Le/a/y/e/b/o$a;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Le/a/y/e/b/o$b;->c:Le/a/y/e/b/o;

    iget-object v0, v0, Le/a/y/e/b/a;->b:Le/a/k;

    iget-object v1, p0, Le/a/y/e/b/o$b;->b:Le/a/y/e/b/o$a;

    invoke-interface {v0, v1}, Le/a/k;->a(Le/a/m;)V

    return-void
.end method
