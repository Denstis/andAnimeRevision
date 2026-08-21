###### Class e.a.y.d.a (e.a.y.d.a)
.class public abstract Le/a/y/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/m;
.implements Le/a/y/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/m<",
        "TT;>;",
        "Le/a/y/c/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected final b:Le/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/m<",
            "-TR;>;"
        }
    .end annotation
.end field

.field protected c:Le/a/v/b;

.field protected d:Le/a/y/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/c/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected e:Z

.field protected f:I


# direct methods
.method public constructor <init>(Le/a/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/d/a;->b:Le/a/m;

    return-void
.end method


# virtual methods
.method public final a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Le/a/y/d/a;->c:Le/a/v/b;

    invoke-static {v0, p1}, Le/a/y/a/b;->a(Le/a/v/b;Le/a/v/b;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-object p1, p0, Le/a/y/d/a;->c:Le/a/v/b;

    instance-of v0, p1, Le/a/y/c/d;

    if-eqz v0, :cond_12

    check-cast p1, Le/a/y/c/d;

    iput-object p1, p0, Le/a/y/d/a;->d:Le/a/y/c/d;

    :cond_12
    invoke-virtual {p0}, Le/a/y/d/a;->e()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Le/a/y/d/a;->b:Le/a/m;

    invoke-interface {p1, p0}, Le/a/m;->a(Le/a/v/b;)V

    invoke-virtual {p0}, Le/a/y/d/a;->d()V

    :cond_20
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Le/a/y/d/a;->e:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/d/a;->e:Z

    iget-object v0, p0, Le/a/y/d/a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Le/a/y/d/a;->c:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->a()Z

    move-result v0

    return v0
.end method

.method protected final b(I)I
    .registers 4

    iget-object v0, p0, Le/a/y/d/a;->d:Le/a/y/c/d;

    if-eqz v0, :cond_11

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_11

    invoke-interface {v0, p1}, Le/a/y/c/e;->a(I)I

    move-result p1

    if-eqz p1, :cond_10

    iput p1, p0, Le/a/y/d/a;->f:I

    :cond_10
    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Le/a/y/d/a;->c:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    return-void
.end method

.method protected final b(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Le/a/y/d/a;->c:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    invoke-virtual {p0, p1}, Le/a/y/d/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Le/a/y/d/a;->d:Le/a/y/c/d;

    invoke-interface {v0}, Le/a/y/c/h;->clear()V

    return-void
.end method

.method protected d()V
    .registers 1

    return-void
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Le/a/y/d/a;->d:Le/a/y/c/d;

    invoke-interface {v0}, Le/a/y/c/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/d/a;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/d/a;->e:Z

    iget-object v0, p0, Le/a/y/d/a;->b:Le/a/m;

    invoke-interface {v0}, Le/a/m;->onComplete()V

    return-void
.end method
