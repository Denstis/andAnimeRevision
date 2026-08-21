###### Class e.a.y.d.c (e.a.y.d.c)
.class public final Le/a/y/d/c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Le/a/q;
.implements Le/a/v/b;
.implements Le/a/z/a;


# annotations
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
        "Le/a/z/a;"
    }
.end annotation


# instance fields
.field final b:Le/a/x/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Le/a/x/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/x/d;Le/a/x/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/x/d<",
            "-TT;>;",
            "Le/a/x/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Le/a/y/d/c;->b:Le/a/x/d;

    iput-object p2, p0, Le/a/y/d/c;->c:Le/a/x/d;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 2

    invoke-static {p0, p1}, Le/a/y/a/b;->c(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 6

    sget-object v0, Le/a/y/a/b;->b:Le/a/y/a/b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_5
    iget-object v0, p0, Le/a/y/d/c;->c:Le/a/x/d;

    invoke-interface {v0, p1}, Le/a/x/d;->a(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_20

    :catchall_b
    move-exception v0

    invoke-static {v0}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    new-instance v1, Le/a/w/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Le/a/w/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method

.method public a()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public b()V
    .registers 1

    invoke-static {p0}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Le/a/y/a/b;->b:Le/a/y/a/b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_5
    iget-object v0, p0, Le/a/y/d/c;->b:Le/a/x/d;

    invoke-interface {v0, p1}, Le/a/x/d;->a(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_12

    :catchall_b
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method
