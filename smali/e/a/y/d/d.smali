###### Class e.a.y.d.d (e.a.y.d.d)
.class public Le/a/y/d/d;
.super Le/a/y/d/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/y/d/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final b:Le/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/m<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/y/d/b;-><init>()V

    iput-object p1, p0, Le/a/y/d/d;->b:Le/a/m;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return v0

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final a()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Le/a/y/d/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v0, v0, 0x36

    if-eqz v0, :cond_c

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Le/a/y/d/d;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Le/a/y/d/d;->c:Ljava/lang/Object;

    iput-object v1, p0, Le/a/y/d/d;->c:Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-object v0

    :cond_13
    return-object v1
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v1, v0, 0x36

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Le/a/y/d/d;->b:Le/a/m;

    const/16 v2, 0x8

    if-ne v0, v2, :cond_18

    iput-object p1, p0, Le/a/y/d/d;->c:Ljava/lang/Object;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    const/4 p1, 0x0

    goto :goto_1c

    :cond_18
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    :goto_1c
    invoke-interface {v1, p1}, Le/a/m;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    invoke-interface {v1}, Le/a/m;->onComplete()V

    :cond_29
    return-void
.end method

.method public final clear()V
    .registers 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Le/a/y/d/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public final isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
