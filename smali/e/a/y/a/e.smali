###### Class e.a.y.a.e (e.a.y.a.e)
.class public final Le/a/y/a/e;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Le/a/v/b;",
        ">;",
        "Le/a/v/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v/b;

    invoke-static {v0}, Le/a/y/a/b;->a(Le/a/v/b;)Z

    move-result v0

    return v0
.end method

.method public a(Le/a/v/b;)Z
    .registers 2

    invoke-static {p0, p1}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 1

    invoke-static {p0}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method
