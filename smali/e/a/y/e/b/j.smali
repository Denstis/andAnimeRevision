###### Class e.a.y.e.b.j (e.a.y.e.b.j)
.class public final Le/a/y/e/b/j;
.super Le/a/y/e/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/b/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/y/e/b/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final c:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/k;Le/a/x/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k<",
            "TT;>;",
            "Le/a/x/e<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/a/y/e/b/a;-><init>(Le/a/k;)V

    iput-object p2, p0, Le/a/y/e/b/j;->c:Le/a/x/e;

    return-void
.end method


# virtual methods
.method public b(Le/a/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/b/a;->b:Le/a/k;

    new-instance v1, Le/a/y/e/b/j$a;

    iget-object v2, p0, Le/a/y/e/b/j;->c:Le/a/x/e;

    invoke-direct {v1, p1, v2}, Le/a/y/e/b/j$a;-><init>(Le/a/m;Le/a/x/e;)V

    invoke-interface {v0, v1}, Le/a/k;->a(Le/a/m;)V

    return-void
.end method

###### Class e.a.y.e.b.j.a (e.a.y.e.b.j$a)
.class final Le/a/y/e/b/j$a;
.super Le/a/y/d/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/y/d/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final g:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/a/m;Le/a/x/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TU;>;",
            "Le/a/x/e<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/a/y/d/a;-><init>(Le/a/m;)V

    iput-object p2, p0, Le/a/y/e/b/j$a;->g:Le/a/x/e;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 2

    invoke-virtual {p0, p1}, Le/a/y/d/a;->b(I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Le/a/y/d/a;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Le/a/y/d/a;->f:I

    if-eqz v0, :cond_10

    iget-object p1, p0, Le/a/y/d/a;->b:Le/a/m;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/m;->a(Ljava/lang/Object;)V

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Le/a/y/e/b/j$a;->g:Le/a/x/e;

    invoke-interface {v0, p1}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_21

    iget-object v0, p0, Le/a/y/d/a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Object;)V

    return-void

    :catchall_21
    move-exception p1

    invoke-virtual {p0, p1}, Le/a/y/d/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/d/a;->d:Le/a/y/c/d;

    invoke-interface {v0}, Le/a/y/c/h;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Le/a/y/e/b/j$a;->g:Le/a/x/e;

    invoke-interface {v1, v0}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper function returned a null value."

    invoke-static {v0, v1}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method
