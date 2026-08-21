###### Class e.a.y.d.e (e.a.y.d.e)
.class public final Le/a/y/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/m;
.implements Le/a/v/b;


# annotations
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
.field final b:Le/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/m<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Le/a/x/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Le/a/x/a;

.field e:Le/a/v/b;


# direct methods
.method public constructor <init>(Le/a/m;Le/a/x/d;Le/a/x/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;",
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;",
            "Le/a/x/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/d/e;->b:Le/a/m;

    iput-object p2, p0, Le/a/y/d/e;->c:Le/a/x/d;

    iput-object p3, p0, Le/a/y/d/e;->d:Le/a/x/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Le/a/y/d/e;->c:Le/a/x/d;

    invoke-interface {v0, p1}, Le/a/x/d;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_15

    iget-object v0, p0, Le/a/y/d/e;->e:Le/a/v/b;

    invoke-static {v0, p1}, Le/a/y/a/b;->a(Le/a/v/b;Le/a/v/b;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object p1, p0, Le/a/y/d/e;->e:Le/a/v/b;

    iget-object p1, p0, Le/a/y/d/e;->b:Le/a/m;

    invoke-interface {p1, p0}, Le/a/m;->a(Le/a/v/b;)V

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    invoke-static {v0}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Le/a/v/b;->b()V

    sget-object p1, Le/a/y/a/b;->b:Le/a/y/a/b;

    iput-object p1, p0, Le/a/y/d/e;->e:Le/a/v/b;

    iget-object p1, p0, Le/a/y/d/e;->b:Le/a/m;

    invoke-static {v0, p1}, Le/a/y/a/c;->a(Ljava/lang/Throwable;Le/a/m;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/d/e;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Le/a/y/d/e;->e:Le/a/v/b;

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Le/a/y/d/e;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Le/a/y/d/e;->e:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Le/a/y/d/e;->d:Le/a/x/a;

    invoke-interface {v0}, Le/a/x/a;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    invoke-static {v0}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_d
    iget-object v0, p0, Le/a/y/d/e;->e:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    return-void
.end method

.method public onComplete()V
    .registers 3

    iget-object v0, p0, Le/a/y/d/e;->e:Le/a/v/b;

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Le/a/y/d/e;->b:Le/a/m;

    invoke-interface {v0}, Le/a/m;->onComplete()V

    :cond_b
    return-void
.end method
