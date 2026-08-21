###### Class e.a.y.e.b.p (e.a.y.e.b.p)
.class public final Le/a/y/e/b/p;
.super Le/a/y/e/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/b/p$a;,
        Le/a/y/e/b/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/y/e/b/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>(Le/a/k;Le/a/x/e;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k<",
            "TT;>;",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/a/y/e/b/a;-><init>(Le/a/k;)V

    iput-object p2, p0, Le/a/y/e/b/p;->c:Le/a/x/e;

    iput p3, p0, Le/a/y/e/b/p;->d:I

    iput-boolean p4, p0, Le/a/y/e/b/p;->e:Z

    return-void
.end method


# virtual methods
.method public b(Le/a/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/b/a;->b:Le/a/k;

    iget-object v1, p0, Le/a/y/e/b/p;->c:Le/a/x/e;

    invoke-static {v0, p1, v1}, Le/a/y/e/b/l;->a(Le/a/k;Le/a/m;Le/a/x/e;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Le/a/y/e/b/a;->b:Le/a/k;

    new-instance v1, Le/a/y/e/b/p$b;

    iget-object v2, p0, Le/a/y/e/b/p;->c:Le/a/x/e;

    iget v3, p0, Le/a/y/e/b/p;->d:I

    iget-boolean v4, p0, Le/a/y/e/b/p;->e:Z

    invoke-direct {v1, p1, v2, v3, v4}, Le/a/y/e/b/p$b;-><init>(Le/a/m;Le/a/x/e;IZ)V

    invoke-interface {v0, v1}, Le/a/k;->a(Le/a/m;)V

    return-void
.end method

###### Class e.a.y.e.b.p.a (e.a.y.e.b.p$a)
.class final Le/a/y/e/b/p$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Le/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
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
        "Le/a/m<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Le/a/y/e/b/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/e/b/p$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final c:J

.field final d:I

.field volatile e:Le/a/y/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/c/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field volatile f:Z


# direct methods
.method constructor <init>(Le/a/y/e/b/p$b;JI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/y/e/b/p$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/p$a;->b:Le/a/y/e/b/p$b;

    iput-wide p2, p0, Le/a/y/e/b/p$a;->c:J

    iput p4, p0, Le/a/y/e/b/p$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-static {p0}, Le/a/y/a/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public a(Le/a/v/b;)V
    .registers 4

    invoke-static {p0, p1}, Le/a/y/a/b;->c(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z

    move-result v0

    if-eqz v0, :cond_2d

    instance-of v0, p1, Le/a/y/c/d;

    if-eqz v0, :cond_24

    check-cast p1, Le/a/y/c/d;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Le/a/y/c/e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    iput-object p1, p0, Le/a/y/e/b/p$a;->e:Le/a/y/c/h;

    iput-boolean v1, p0, Le/a/y/e/b/p$a;->f:Z

    iget-object p1, p0, Le/a/y/e/b/p$a;->b:Le/a/y/e/b/p$b;

    invoke-virtual {p1}, Le/a/y/e/b/p$b;->d()V

    return-void

    :cond_1e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    iput-object p1, p0, Le/a/y/e/b/p$a;->e:Le/a/y/c/h;

    return-void

    :cond_24
    new-instance p1, Le/a/y/f/a;

    iget v0, p0, Le/a/y/e/b/p$a;->d:I

    invoke-direct {p1, v0}, Le/a/y/f/a;-><init>(I)V

    iput-object p1, p0, Le/a/y/e/b/p$a;->e:Le/a/y/c/h;

    :cond_2d
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-wide v0, p0, Le/a/y/e/b/p$a;->c:J

    iget-object v2, p0, Le/a/y/e/b/p$a;->b:Le/a/y/e/b/p$b;

    iget-wide v2, v2, Le/a/y/e/b/p$b;->k:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    if-eqz p1, :cond_11

    iget-object v0, p0, Le/a/y/e/b/p$a;->e:Le/a/y/c/h;

    invoke-interface {v0, p1}, Le/a/y/c/h;->b(Ljava/lang/Object;)Z

    :cond_11
    iget-object p1, p0, Le/a/y/e/b/p$a;->b:Le/a/y/e/b/p$b;

    invoke-virtual {p1}, Le/a/y/e/b/p$b;->d()V

    :cond_16
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/b/p$a;->b:Le/a/y/e/b/p$b;

    invoke-virtual {v0, p0, p1}, Le/a/y/e/b/p$b;->a(Le/a/y/e/b/p$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onComplete()V
    .registers 6

    iget-wide v0, p0, Le/a/y/e/b/p$a;->c:J

    iget-object v2, p0, Le/a/y/e/b/p$a;->b:Le/a/y/e/b/p$b;

    iget-wide v2, v2, Le/a/y/e/b/p$b;->k:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/e/b/p$a;->f:Z

    iget-object v0, p0, Le/a/y/e/b/p$a;->b:Le/a/y/e/b/p$b;

    invoke-virtual {v0}, Le/a/y/e/b/p$b;->d()V

    :cond_12
    return-void
.end method

###### Class e.a.y.e.b.p.b (e.a.y.e.b.p$b)
.class final Le/a/y/e/b/p$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source ""

# interfaces
.implements Le/a/m;
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Le/a/m<",
        "TT;>;",
        "Le/a/v/b;"
    }
.end annotation


# static fields
.field static final l:Le/a/y/e/b/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/e/b/p$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Le/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/m<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final c:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z

.field final f:Le/a/y/h/a;

.field volatile g:Z

.field volatile h:Z

.field i:Le/a/v/b;

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/y/e/b/p$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field volatile k:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Le/a/y/e/b/p$a;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/y/e/b/p$a;-><init>(Le/a/y/e/b/p$b;JI)V

    sput-object v0, Le/a/y/e/b/p$b;->l:Le/a/y/e/b/p$a;

    sget-object v0, Le/a/y/e/b/p$b;->l:Le/a/y/e/b/p$a;

    invoke-virtual {v0}, Le/a/y/e/b/p$a;->a()V

    return-void
.end method

.method constructor <init>(Le/a/m;Le/a/x/e;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TR;>;",
            "Le/a/x/e<",
            "-TT;+",
            "Le/a/k<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Le/a/y/e/b/p$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Le/a/y/e/b/p$b;->b:Le/a/m;

    iput-object p2, p0, Le/a/y/e/b/p$b;->c:Le/a/x/e;

    iput p3, p0, Le/a/y/e/b/p$b;->d:I

    iput-boolean p4, p0, Le/a/y/e/b/p$b;->e:Z

    new-instance p1, Le/a/y/h/a;

    invoke-direct {p1}, Le/a/y/h/a;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/p$b;->f:Le/a/y/h/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/b/p$b;->i:Le/a/v/b;

    invoke-static {v0, p1}, Le/a/y/a/b;->a(Le/a/v/b;Le/a/v/b;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Le/a/y/e/b/p$b;->i:Le/a/v/b;

    iget-object p1, p0, Le/a/y/e/b/p$b;->b:Le/a/m;

    invoke-interface {p1, p0}, Le/a/m;->a(Le/a/v/b;)V

    :cond_f
    return-void
.end method

.method a(Le/a/y/e/b/p$a;Ljava/lang/Throwable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/y/e/b/p$a<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-wide v0, p1, Le/a/y/e/b/p$a;->c:J

    iget-wide v2, p0, Le/a/y/e/b/p$b;->k:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    iget-object v0, p0, Le/a/y/e/b/p$b;->f:Le/a/y/h/a;

    invoke-virtual {v0, p2}, Le/a/y/h/a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean p2, p0, Le/a/y/e/b/p$b;->e:Z

    if-nez p2, :cond_19

    iget-object p2, p0, Le/a/y/e/b/p$b;->i:Le/a/v/b;

    invoke-interface {p2}, Le/a/v/b;->b()V

    :cond_19
    const/4 p2, 0x1

    iput-boolean p2, p1, Le/a/y/e/b/p$a;->f:Z

    invoke-virtual {p0}, Le/a/y/e/b/p$b;->d()V

    goto :goto_23

    :cond_20
    invoke-static {p2}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_23
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Le/a/y/e/b/p$b;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Le/a/y/e/b/p$b;->k:J

    iget-object v2, p0, Le/a/y/e/b/p$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y/e/b/p$a;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Le/a/y/e/b/p$a;->a()V

    :cond_14
    :try_start_14
    iget-object v2, p0, Le/a/y/e/b/p$b;->c:Le/a/x/e;

    invoke-interface {v2, p1}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The ObservableSource returned is null"

    invoke-static {p1, v2}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/k;
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_41

    new-instance v2, Le/a/y/e/b/p$a;

    iget v3, p0, Le/a/y/e/b/p$b;->d:I

    invoke-direct {v2, p0, v0, v1, v3}, Le/a/y/e/b/p$a;-><init>(Le/a/y/e/b/p$b;JI)V

    :cond_28
    iget-object v0, p0, Le/a/y/e/b/p$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/e/b/p$a;

    sget-object v1, Le/a/y/e/b/p$b;->l:Le/a/y/e/b/p$a;

    if-ne v0, v1, :cond_35

    goto :goto_40

    :cond_35
    iget-object v1, p0, Le/a/y/e/b/p$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1, v2}, Le/a/k;->a(Le/a/m;)V

    :goto_40
    return-void

    :catchall_41
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Le/a/y/e/b/p$b;->i:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    invoke-virtual {p0, p1}, Le/a/y/e/b/p$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Le/a/y/e/b/p$b;->g:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Le/a/y/e/b/p$b;->f:Le/a/y/h/a;

    invoke-virtual {v0, p1}, Le/a/y/h/a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean p1, p0, Le/a/y/e/b/p$b;->e:Z

    if-nez p1, :cond_13

    invoke-virtual {p0}, Le/a/y/e/b/p$b;->c()V

    :cond_13
    const/4 p1, 0x1

    iput-boolean p1, p0, Le/a/y/e/b/p$b;->g:Z

    invoke-virtual {p0}, Le/a/y/e/b/p$b;->d()V

    goto :goto_1d

    :cond_1a
    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_1d
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Le/a/y/e/b/p$b;->h:Z

    return v0
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/e/b/p$b;->h:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/e/b/p$b;->h:Z

    iget-object v0, p0, Le/a/y/e/b/p$b;->i:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    invoke-virtual {p0}, Le/a/y/e/b/p$b;->c()V

    :cond_f
    return-void
.end method

.method c()V
    .registers 3

    iget-object v0, p0, Le/a/y/e/b/p$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/e/b/p$a;

    sget-object v1, Le/a/y/e/b/p$b;->l:Le/a/y/e/b/p$a;

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Le/a/y/e/b/p$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/e/b/p$a;

    sget-object v1, Le/a/y/e/b/p$b;->l:Le/a/y/e/b/p$a;

    if-eq v0, v1, :cond_1d

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Le/a/y/e/b/p$a;->a()V

    :cond_1d
    return-void
.end method

.method d()V
    .registers 14

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Le/a/y/e/b/p$b;->b:Le/a/m;

    iget-object v1, p0, Le/a/y/e/b/p$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Le/a/y/e/b/p$b;->e:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_f
    :goto_f
    iget-boolean v5, p0, Le/a/y/e/b/p$b;->h:Z

    if-eqz v5, :cond_14

    return-void

    :cond_14
    iget-boolean v5, p0, Le/a/y/e/b/p$b;->g:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_52

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_21

    const/4 v5, 0x1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    :goto_22
    if-eqz v2, :cond_38

    if-eqz v5, :cond_52

    iget-object v1, p0, Le/a/y/e/b/p$b;->f:Le/a/y/h/a;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_34

    invoke-interface {v0, v1}, Le/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_34
    invoke-interface {v0}, Le/a/m;->onComplete()V

    :goto_37
    return-void

    :cond_38
    iget-object v7, p0, Le/a/y/e/b/p$b;->f:Le/a/y/h/a;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_4c

    :goto_42
    iget-object v1, p0, Le/a/y/e/b/p$b;->f:Le/a/y/h/a;

    invoke-virtual {v1}, Le/a/y/h/a;->a()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/m;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_4c
    if-eqz v5, :cond_52

    invoke-interface {v0}, Le/a/m;->onComplete()V

    return-void

    :cond_52
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/y/e/b/p$a;

    if-eqz v5, :cond_d4

    iget-object v7, v5, Le/a/y/e/b/p$a;->e:Le/a/y/c/h;

    if-eqz v7, :cond_d4

    iget-boolean v8, v5, Le/a/y/e/b/p$a;->f:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_7d

    invoke-interface {v7}, Le/a/y/c/h;->isEmpty()Z

    move-result v8

    if-eqz v2, :cond_6f

    if-eqz v8, :cond_7d

    :goto_6b
    invoke-virtual {v1, v5, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_f

    :cond_6f
    iget-object v10, p0, Le/a/y/e/b/p$b;->f:Le/a/y/h/a;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_7a

    goto :goto_42

    :cond_7a
    if-eqz v8, :cond_7d

    goto :goto_6b

    :cond_7d
    const/4 v8, 0x0

    :goto_7e
    iget-boolean v10, p0, Le/a/y/e/b/p$b;->h:Z

    if-eqz v10, :cond_83

    return-void

    :cond_83
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eq v5, v10, :cond_8b

    :goto_89
    const/4 v8, 0x1

    goto :goto_cc

    :cond_8b
    if-nez v2, :cond_98

    iget-object v10, p0, Le/a/y/e/b/p$b;->f:Le/a/y/h/a;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_98

    goto :goto_42

    :cond_98
    iget-boolean v10, v5, Le/a/y/e/b/p$a;->f:Z

    :try_start_9a
    invoke-interface {v7}, Le/a/y/c/h;->c()Ljava/lang/Object;

    move-result-object v11
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_9f

    goto :goto_bd

    :catchall_9f
    move-exception v8

    invoke-static {v8}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    iget-object v11, p0, Le/a/y/e/b/p$b;->f:Le/a/y/h/a;

    invoke-virtual {v11, v8}, Le/a/y/h/a;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v1, v5, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez v2, :cond_b8

    invoke-virtual {p0}, Le/a/y/e/b/p$b;->c()V

    iget-object v8, p0, Le/a/y/e/b/p$b;->i:Le/a/v/b;

    invoke-interface {v8}, Le/a/v/b;->b()V

    iput-boolean v3, p0, Le/a/y/e/b/p$b;->g:Z

    goto :goto_bb

    :cond_b8
    invoke-virtual {v5}, Le/a/y/e/b/p$a;->a()V

    :goto_bb
    move-object v11, v9

    const/4 v8, 0x1

    :goto_bd
    if-nez v11, :cond_c1

    const/4 v12, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v12, 0x0

    :goto_c2
    if-eqz v10, :cond_ca

    if-eqz v12, :cond_ca

    invoke-virtual {v1, v5, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_89

    :cond_ca
    if-eqz v12, :cond_d0

    :goto_cc
    if-eqz v8, :cond_d4

    goto/16 :goto_f

    :cond_d0
    invoke-interface {v0, v11}, Le/a/m;->a(Ljava/lang/Object;)V

    goto :goto_7e

    :cond_d4
    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_f

    return-void
.end method

.method public onComplete()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/e/b/p$b;->g:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/e/b/p$b;->g:Z

    invoke-virtual {p0}, Le/a/y/e/b/p$b;->d()V

    :cond_a
    return-void
.end method
