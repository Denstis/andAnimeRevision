###### Class e.a.y.e.b.n (e.a.y.e.b.n)
.class public final Le/a/y/e/b/n;
.super Le/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/b/n$a;
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
.field final a:Le/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/k<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/k;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k<",
            "+TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/o;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/n;->a:Le/a/k;

    iput-object p2, p0, Le/a/y/e/b/n;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Le/a/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/b/n;->a:Le/a/k;

    new-instance v1, Le/a/y/e/b/n$a;

    iget-object v2, p0, Le/a/y/e/b/n;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Le/a/y/e/b/n$a;-><init>(Le/a/q;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Le/a/k;->a(Le/a/m;)V

    return-void
.end method

###### Class e.a.y.e.b.n.a (e.a.y.e.b.n$a)
.class final Le/a/y/e/b/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/m;
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/n;
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
        "Ljava/lang/Object;",
        "Le/a/m<",
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

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Le/a/v/b;

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field f:Z


# direct methods
.method constructor <init>(Le/a/q;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/n$a;->b:Le/a/q;

    iput-object p2, p0, Le/a/y/e/b/n$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/b/n$a;->d:Le/a/v/b;

    invoke-static {v0, p1}, Le/a/y/a/b;->a(Le/a/v/b;Le/a/v/b;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Le/a/y/e/b/n$a;->d:Le/a/v/b;

    iget-object p1, p0, Le/a/y/e/b/n$a;->b:Le/a/q;

    invoke-interface {p1, p0}, Le/a/q;->a(Le/a/v/b;)V

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Le/a/y/e/b/n$a;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Le/a/y/e/b/n$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/a/y/e/b/n$a;->f:Z

    iget-object p1, p0, Le/a/y/e/b/n$a;->d:Le/a/v/b;

    invoke-interface {p1}, Le/a/v/b;->b()V

    iget-object p1, p0, Le/a/y/e/b/n$a;->b:Le/a/q;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/q;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_1e
    iput-object p1, p0, Le/a/y/e/b/n$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Le/a/y/e/b/n$a;->f:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/e/b/n$a;->f:Z

    iget-object v0, p0, Le/a/y/e/b/n$a;->b:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Le/a/y/e/b/n$a;->d:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Le/a/y/e/b/n$a;->d:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    return-void
.end method

.method public onComplete()V
    .registers 3

    iget-boolean v0, p0, Le/a/y/e/b/n$a;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/e/b/n$a;->f:Z

    iget-object v0, p0, Le/a/y/e/b/n$a;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Le/a/y/e/b/n$a;->e:Ljava/lang/Object;

    if-nez v0, :cond_11

    iget-object v0, p0, Le/a/y/e/b/n$a;->c:Ljava/lang/Object;

    :cond_11
    if-eqz v0, :cond_19

    iget-object v1, p0, Le/a/y/e/b/n$a;->b:Le/a/q;

    invoke-interface {v1, v0}, Le/a/q;->onSuccess(Ljava/lang/Object;)V

    goto :goto_23

    :cond_19
    iget-object v0, p0, Le/a/y/e/b/n$a;->b:Le/a/q;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Le/a/q;->a(Ljava/lang/Throwable;)V

    :goto_23
    return-void
.end method
