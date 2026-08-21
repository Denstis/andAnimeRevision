###### Class e.a.y.e.b.k (e.a.y.e.b.k)
.class public final Le/a/y/e/b/k;
.super Le/a/y/e/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/b/k$a;
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

.field final d:Z

.field final e:I


# direct methods
.method public constructor <init>(Le/a/k;Le/a/n;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k<",
            "TT;>;",
            "Le/a/n;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/a/y/e/b/a;-><init>(Le/a/k;)V

    iput-object p2, p0, Le/a/y/e/b/k;->c:Le/a/n;

    iput-boolean p3, p0, Le/a/y/e/b/k;->d:Z

    iput p4, p0, Le/a/y/e/b/k;->e:I

    return-void
.end method


# virtual methods
.method protected b(Le/a/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/b/k;->c:Le/a/n;

    instance-of v1, v0, Le/a/y/g/m;

    if-eqz v1, :cond_c

    iget-object v0, p0, Le/a/y/e/b/a;->b:Le/a/k;

    invoke-interface {v0, p1}, Le/a/k;->a(Le/a/m;)V

    goto :goto_1e

    :cond_c
    invoke-virtual {v0}, Le/a/n;->a()Le/a/n$b;

    move-result-object v0

    iget-object v1, p0, Le/a/y/e/b/a;->b:Le/a/k;

    new-instance v2, Le/a/y/e/b/k$a;

    iget-boolean v3, p0, Le/a/y/e/b/k;->d:Z

    iget v4, p0, Le/a/y/e/b/k;->e:I

    invoke-direct {v2, p1, v0, v3, v4}, Le/a/y/e/b/k$a;-><init>(Le/a/m;Le/a/n$b;ZI)V

    invoke-interface {v1, v2}, Le/a/k;->a(Le/a/m;)V

    :goto_1e
    return-void
.end method

###### Class e.a.y.e.b.k.a (e.a.y.e.b.k$a)
.class final Le/a/y/e/b/k$a;
.super Le/a/y/d/b;
.source ""

# interfaces
.implements Le/a/m;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/k;
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
        "Le/a/y/d/b<",
        "TT;>;",
        "Le/a/m<",
        "TT;>;",
        "Ljava/lang/Runnable;"
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

.field final c:Le/a/n$b;

.field final d:Z

.field final e:I

.field f:Le/a/y/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/c/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:Le/a/v/b;

.field h:Ljava/lang/Throwable;

.field volatile i:Z

.field volatile j:Z

.field k:I

.field l:Z


# direct methods
.method constructor <init>(Le/a/m;Le/a/n$b;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;",
            "Le/a/n$b;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/y/d/b;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/k$a;->b:Le/a/m;

    iput-object p2, p0, Le/a/y/e/b/k$a;->c:Le/a/n$b;

    iput-boolean p3, p0, Le/a/y/e/b/k$a;->d:Z

    iput p4, p0, Le/a/y/e/b/k$a;->e:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/a/y/e/b/k$a;->l:Z

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public a(Le/a/v/b;)V
    .registers 4

    iget-object v0, p0, Le/a/y/e/b/k$a;->g:Le/a/v/b;

    invoke-static {v0, p1}, Le/a/y/a/b;->a(Le/a/v/b;Le/a/v/b;)Z

    move-result v0

    if-eqz v0, :cond_42

    iput-object p1, p0, Le/a/y/e/b/k$a;->g:Le/a/v/b;

    instance-of v0, p1, Le/a/y/c/d;

    if-eqz v0, :cond_34

    check-cast p1, Le/a/y/c/d;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Le/a/y/c/e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    iput v0, p0, Le/a/y/e/b/k$a;->k:I

    iput-object p1, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    iput-boolean v1, p0, Le/a/y/e/b/k$a;->i:Z

    iget-object p1, p0, Le/a/y/e/b/k$a;->b:Le/a/m;

    invoke-interface {p1, p0}, Le/a/m;->a(Le/a/v/b;)V

    invoke-virtual {p0}, Le/a/y/e/b/k$a;->f()V

    return-void

    :cond_27
    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    iput v0, p0, Le/a/y/e/b/k$a;->k:I

    iput-object p1, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    iget-object p1, p0, Le/a/y/e/b/k$a;->b:Le/a/m;

    invoke-interface {p1, p0}, Le/a/m;->a(Le/a/v/b;)V

    return-void

    :cond_34
    new-instance p1, Le/a/y/f/a;

    iget v0, p0, Le/a/y/e/b/k$a;->e:I

    invoke-direct {p1, v0}, Le/a/y/f/a;-><init>(I)V

    iput-object p1, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    iget-object p1, p0, Le/a/y/e/b/k$a;->b:Le/a/m;

    invoke-interface {p1, p0}, Le/a/m;->a(Le/a/v/b;)V

    :cond_42
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Le/a/y/e/b/k$a;->i:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Le/a/y/e/b/k$a;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    invoke-interface {v0, p1}, Le/a/y/c/h;->b(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {p0}, Le/a/y/e/b/k$a;->f()V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Le/a/y/e/b/k$a;->i:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    iput-object p1, p0, Le/a/y/e/b/k$a;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Le/a/y/e/b/k$a;->i:Z

    invoke-virtual {p0}, Le/a/y/e/b/k$a;->f()V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Le/a/y/e/b/k$a;->j:Z

    return v0
.end method

.method a(ZZLe/a/m;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Le/a/m<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Le/a/y/e/b/k$a;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-object p1, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    invoke-interface {p1}, Le/a/y/c/h;->clear()V

    return v1

    :cond_b
    if-eqz p1, :cond_3f

    iget-object p1, p0, Le/a/y/e/b/k$a;->h:Ljava/lang/Throwable;

    iget-boolean v0, p0, Le/a/y/e/b/k$a;->d:Z

    if-eqz v0, :cond_24

    if-eqz p2, :cond_3f

    if-eqz p1, :cond_1b

    invoke-interface {p3, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_1b
    invoke-interface {p3}, Le/a/m;->onComplete()V

    :goto_1e
    iget-object p1, p0, Le/a/y/e/b/k$a;->c:Le/a/n$b;

    invoke-interface {p1}, Le/a/v/b;->b()V

    return v1

    :cond_24
    if-eqz p1, :cond_34

    iget-object p2, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    invoke-interface {p2}, Le/a/y/c/h;->clear()V

    invoke-interface {p3, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V

    iget-object p1, p0, Le/a/y/e/b/k$a;->c:Le/a/n$b;

    invoke-interface {p1}, Le/a/v/b;->b()V

    return v1

    :cond_34
    if-eqz p2, :cond_3f

    invoke-interface {p3}, Le/a/m;->onComplete()V

    iget-object p1, p0, Le/a/y/e/b/k$a;->c:Le/a/n$b;

    invoke-interface {p1}, Le/a/v/b;->b()V

    return v1

    :cond_3f
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/e/b/k$a;->j:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/e/b/k$a;->j:Z

    iget-object v0, p0, Le/a/y/e/b/k$a;->g:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    iget-object v0, p0, Le/a/y/e/b/k$a;->c:Le/a/n$b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    invoke-interface {v0}, Le/a/y/c/h;->clear()V

    :cond_1c
    return-void
.end method

.method public c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    invoke-interface {v0}, Le/a/y/c/h;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    invoke-interface {v0}, Le/a/y/c/h;->clear()V

    return-void
.end method

.method d()V
    .registers 5

    const/4 v0, 0x1

    :cond_1
    iget-boolean v1, p0, Le/a/y/e/b/k$a;->j:Z

    if-eqz v1, :cond_6

    return-void

    :cond_6
    iget-boolean v1, p0, Le/a/y/e/b/k$a;->i:Z

    iget-object v2, p0, Le/a/y/e/b/k$a;->h:Ljava/lang/Throwable;

    iget-boolean v3, p0, Le/a/y/e/b/k$a;->d:Z

    if-nez v3, :cond_1d

    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1d

    iget-object v0, p0, Le/a/y/e/b/k$a;->b:Le/a/m;

    invoke-interface {v0, v2}, Le/a/m;->a(Ljava/lang/Throwable;)V

    :goto_17
    iget-object v0, p0, Le/a/y/e/b/k$a;->c:Le/a/n$b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    return-void

    :cond_1d
    iget-object v2, p0, Le/a/y/e/b/k$a;->b:Le/a/m;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Le/a/m;->a(Ljava/lang/Object;)V

    if-eqz v1, :cond_35

    iget-object v0, p0, Le/a/y/e/b/k$a;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Le/a/y/e/b/k$a;->b:Le/a/m;

    invoke-interface {v1, v0}, Le/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_17

    :cond_2f
    iget-object v0, p0, Le/a/y/e/b/k$a;->b:Le/a/m;

    invoke-interface {v0}, Le/a/m;->onComplete()V

    goto :goto_17

    :cond_35
    neg-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    return-void
.end method

.method e()V
    .registers 8

    iget-object v0, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    iget-object v1, p0, Le/a/y/e/b/k$a;->b:Le/a/m;

    const/4 v2, 0x1

    const/4 v3, 0x1

    :cond_6
    iget-boolean v4, p0, Le/a/y/e/b/k$a;->i:Z

    invoke-interface {v0}, Le/a/y/c/h;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Le/a/y/e/b/k$a;->a(ZZLe/a/m;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-void

    :cond_13
    :goto_13
    iget-boolean v4, p0, Le/a/y/e/b/k$a;->i:Z

    :try_start_15
    invoke-interface {v0}, Le/a/y/c/h;->c()Ljava/lang/Object;

    move-result-object v5
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_33

    if-nez v5, :cond_1d

    const/4 v6, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    :goto_1e
    invoke-virtual {p0, v4, v6, v1}, Le/a/y/e/b/k$a;->a(ZZLe/a/m;)Z

    move-result v4

    if-eqz v4, :cond_25

    return-void

    :cond_25
    if-eqz v6, :cond_2f

    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_6

    return-void

    :cond_2f
    invoke-interface {v1, v5}, Le/a/m;->a(Ljava/lang/Object;)V

    goto :goto_13

    :catchall_33
    move-exception v2

    invoke-static {v2}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    iget-object v3, p0, Le/a/y/e/b/k$a;->g:Le/a/v/b;

    invoke-interface {v3}, Le/a/v/b;->b()V

    invoke-interface {v0}, Le/a/y/c/h;->clear()V

    invoke-interface {v1, v2}, Le/a/m;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Le/a/y/e/b/k$a;->c:Le/a/n$b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    return-void
.end method

.method f()V
    .registers 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Le/a/y/e/b/k$a;->c:Le/a/n$b;

    invoke-virtual {v0, p0}, Le/a/n$b;->a(Ljava/lang/Runnable;)Le/a/v/b;

    :cond_b
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Le/a/y/e/b/k$a;->f:Le/a/y/c/h;

    invoke-interface {v0}, Le/a/y/c/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/e/b/k$a;->i:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/e/b/k$a;->i:Z

    invoke-virtual {p0}, Le/a/y/e/b/k$a;->f()V

    return-void
.end method

.method public run()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/e/b/k$a;->l:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Le/a/y/e/b/k$a;->d()V

    goto :goto_b

    :cond_8
    invoke-virtual {p0}, Le/a/y/e/b/k$a;->e()V

    :goto_b
    return-void
.end method
