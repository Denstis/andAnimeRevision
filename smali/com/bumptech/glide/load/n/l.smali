###### Class com.bumptech.glide.load.n.l (com.bumptech.glide.load.n.l)
.class Lcom/bumptech/glide/load/n/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/h$b;
.implements Lc/a/a/t/l/a$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/l$c;,
        Lcom/bumptech/glide/load/n/l$d;,
        Lcom/bumptech/glide/load/n/l$e;,
        Lcom/bumptech/glide/load/n/l$b;,
        Lcom/bumptech/glide/load/n/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/h$b<",
        "TR;>;",
        "Lc/a/a/t/l/a$f;"
    }
.end annotation


# static fields
.field private static final y:Lcom/bumptech/glide/load/n/l$c;


# instance fields
.field final b:Lcom/bumptech/glide/load/n/l$e;

.field private final c:Lc/a/a/t/l/c;

.field private final d:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Lcom/bumptech/glide/load/n/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/n/l$c;

.field private final f:Lcom/bumptech/glide/load/n/m;

.field private final g:Lcom/bumptech/glide/load/n/c0/a;

.field private final h:Lcom/bumptech/glide/load/n/c0/a;

.field private final i:Lcom/bumptech/glide/load/n/c0/a;

.field private final j:Lcom/bumptech/glide/load/n/c0/a;

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l:Lcom/bumptech/glide/load/g;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/bumptech/glide/load/n/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/v<",
            "*>;"
        }
    .end annotation
.end field

.field r:Lcom/bumptech/glide/load/a;

.field private s:Z

.field t:Lcom/bumptech/glide/load/n/q;

.field private u:Z

.field v:Lcom/bumptech/glide/load/n/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/p<",
            "*>;"
        }
    .end annotation
.end field

.field private w:Lcom/bumptech/glide/load/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field private volatile x:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/n/l$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/l$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/n/l;->y:Lcom/bumptech/glide/load/n/l$c;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/m;Lb/h/n/d;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/c0/a;",
            "Lcom/bumptech/glide/load/n/c0/a;",
            "Lcom/bumptech/glide/load/n/c0/a;",
            "Lcom/bumptech/glide/load/n/c0/a;",
            "Lcom/bumptech/glide/load/n/m;",
            "Lb/h/n/d<",
            "Lcom/bumptech/glide/load/n/l<",
            "*>;>;)V"
        }
    .end annotation

    sget-object v7, Lcom/bumptech/glide/load/n/l;->y:Lcom/bumptech/glide/load/n/l$c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/n/l;-><init>(Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/m;Lb/h/n/d;Lcom/bumptech/glide/load/n/l$c;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/m;Lb/h/n/d;Lcom/bumptech/glide/load/n/l$c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/c0/a;",
            "Lcom/bumptech/glide/load/n/c0/a;",
            "Lcom/bumptech/glide/load/n/c0/a;",
            "Lcom/bumptech/glide/load/n/c0/a;",
            "Lcom/bumptech/glide/load/n/m;",
            "Lb/h/n/d<",
            "Lcom/bumptech/glide/load/n/l<",
            "*>;>;",
            "Lcom/bumptech/glide/load/n/l$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/n/l$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/l$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    invoke-static {}, Lc/a/a/t/l/c;->b()Lc/a/a/t/l/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->c:Lc/a/a/t/l/c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/l;->g:Lcom/bumptech/glide/load/n/c0/a;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/l;->h:Lcom/bumptech/glide/load/n/c0/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/n/l;->i:Lcom/bumptech/glide/load/n/c0/a;

    iput-object p4, p0, Lcom/bumptech/glide/load/n/l;->j:Lcom/bumptech/glide/load/n/c0/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/n/l;->f:Lcom/bumptech/glide/load/n/m;

    iput-object p6, p0, Lcom/bumptech/glide/load/n/l;->d:Lb/h/n/d;

    iput-object p7, p0, Lcom/bumptech/glide/load/n/l;->e:Lcom/bumptech/glide/load/n/l$c;

    return-void
.end method

.method private g()Lcom/bumptech/glide/load/n/c0/a;
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->n:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->i:Lcom/bumptech/glide/load/n/c0/a;

    goto :goto_10

    :cond_7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->o:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->j:Lcom/bumptech/glide/load/n/c0/a;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->h:Lcom/bumptech/glide/load/n/c0/a;

    :goto_10
    return-object v0
.end method

.method private h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->u:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->s:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->x:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private declared-synchronized i()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->l:Lcom/bumptech/glide/load/g;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/l$e;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->l:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->v:Lcom/bumptech/glide/load/n/p;

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->q:Lcom/bumptech/glide/load/n/v;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/n/l;->u:Z

    iput-boolean v1, p0, Lcom/bumptech/glide/load/n/l;->x:Z

    iput-boolean v1, p0, Lcom/bumptech/glide/load/n/l;->s:Z

    iget-object v2, p0, Lcom/bumptech/glide/load/n/l;->w:Lcom/bumptech/glide/load/n/h;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/n/h;->a(Z)V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->w:Lcom/bumptech/glide/load/n/h;

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->t:Lcom/bumptech/glide/load/n/q;

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->r:Lcom/bumptech/glide/load/a;

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->d:Lb/h/n/d;

    invoke-interface {v0, p0}, Lb/h/n/d;->a(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_30

    monitor-exit p0

    return-void

    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized a(Lcom/bumptech/glide/load/g;ZZZZ)Lcom/bumptech/glide/load/n/l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/n/l<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/load/n/l;->l:Lcom/bumptech/glide/load/g;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/n/l;->m:Z

    iput-boolean p3, p0, Lcom/bumptech/glide/load/n/l;->n:Z

    iput-boolean p4, p0, Lcom/bumptech/glide/load/n/l;->o:Z

    iput-boolean p5, p0, Lcom/bumptech/glide/load/n/l;->p:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p0

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a()V
    .registers 3

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/l;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->x:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->w:Lcom/bumptech/glide/load/n/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/h;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->f:Lcom/bumptech/glide/load/n/m;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/l;->l:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/n/m;->a(Lcom/bumptech/glide/load/n/l;Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method declared-synchronized a(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/n/l;->h()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lc/a/a/t/j;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/bumptech/glide/load/n/l;->v:Lcom/bumptech/glide/load/n/p;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/bumptech/glide/load/n/l;->v:Lcom/bumptech/glide/load/n/p;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/p;->d()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lc/a/a/r/g;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->t:Lcom/bumptech/glide/load/n/q;

    invoke-interface {p1, v0}, Lc/a/a/r/g;->a(Lcom/bumptech/glide/load/n/q;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    new-instance v0, Lcom/bumptech/glide/load/n/b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/n/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lc/a/a/r/g;Ljava/util/concurrent/Executor;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->c:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/n/l$e;->a(Lc/a/a/r/g;Ljava/util/concurrent/Executor;)V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->s:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/n/l;->a(I)V

    new-instance v0, Lcom/bumptech/glide/load/n/l$b;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/n/l$b;-><init>(Lcom/bumptech/glide/load/n/l;Lc/a/a/r/g;)V

    :goto_18
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_34

    :cond_1c
    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->u:Z

    if-eqz v0, :cond_29

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/n/l;->a(I)V

    new-instance v0, Lcom/bumptech/glide/load/n/l$a;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/n/l$a;-><init>(Lcom/bumptech/glide/load/n/l;Lc/a/a/r/g;)V

    goto :goto_18

    :cond_29
    iget-boolean p1, p0, Lcom/bumptech/glide/load/n/l;->x:Z

    if-nez p1, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Lc/a/a/t/j;->a(ZLjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    :goto_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0

    goto :goto_3a

    :goto_39
    throw p1

    :goto_3a
    goto :goto_39
.end method

.method public a(Lcom/bumptech/glide/load/n/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/h<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/l;->g()Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/n/c0/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/n/q;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/load/n/l;->t:Lcom/bumptech/glide/load/n/q;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/l;->c()V

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/load/n/l;->q:Lcom/bumptech/glide/load/n/v;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/l;->r:Lcom/bumptech/glide/load/a;

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/l;->e()V

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->c:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/l;->h()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lc/a/a/t/j;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, Lc/a/a/t/j;->a(ZLjava/lang/String;)V

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->v:Lcom/bumptech/glide/load/n/p;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->v:Lcom/bumptech/glide/load/n/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/p;->g()V

    :cond_2a
    invoke-direct {p0}, Lcom/bumptech/glide/load/n/l;->i()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lc/a/a/r/g;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->v:Lcom/bumptech/glide/load/n/p;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/l;->r:Lcom/bumptech/glide/load/a;

    invoke-interface {p1, v0, v1}, Lc/a/a/r/g;->a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    new-instance v0, Lcom/bumptech/glide/load/n/b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/n/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_11

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/bumptech/glide/load/n/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/h<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/load/n/l;->w:Lcom/bumptech/glide/load/n/h;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/h;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->g:Lcom/bumptech/glide/load/n/c0/a;

    goto :goto_10

    :cond_c
    invoke-direct {p0}, Lcom/bumptech/glide/load/n/l;->g()Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v0

    :goto_10
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/n/c0/a;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->c:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->x:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/l;->i()V

    monitor-exit p0

    return-void

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/l$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->u:Z

    if-nez v0, :cond_56

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->u:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/n/l;->l:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/n/l$e;->a()Lcom/bumptech/glide/load/n/l$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/load/n/l$e;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/n/l;->a(I)V

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_66

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->f:Lcom/bumptech/glide/load/n/m;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v3}, Lcom/bumptech/glide/load/n/m;->a(Lcom/bumptech/glide/load/n/l;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/n/l$e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/n/l$d;

    iget-object v2, v1, Lcom/bumptech/glide/load/n/l$d;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/bumptech/glide/load/n/l$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/n/l$d;->a:Lc/a/a/r/g;

    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/n/l$a;-><init>(Lcom/bumptech/glide/load/n/l;Lc/a/a/r/g;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_39

    :cond_52
    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/l;->b()V

    return-void

    :cond_56
    :try_start_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_66
    move-exception v0

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_66

    goto :goto_6a

    :goto_69
    throw v0

    :goto_6a
    goto :goto_69
.end method

.method declared-synchronized c(Lc/a/a/r/g;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->c:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/n/l$e;->b(Lc/a/a/r/g;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/l$e;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/l;->a()V

    iget-boolean p1, p0, Lcom/bumptech/glide/load/n/l;->s:Z

    if-nez p1, :cond_21

    iget-boolean p1, p0, Lcom/bumptech/glide/load/n/l;->u:Z

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p1, 0x1

    :goto_22
    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/bumptech/glide/load/n/l;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2f

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/l;->i()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Lc/a/a/t/l/c;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->c:Lc/a/a/t/l/c;

    return-object v0
.end method

.method e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->c:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->x:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->q:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->a()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/l;->i()V

    monitor-exit p0

    return-void

    :cond_14
    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/l$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->s:Z

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->e:Lcom/bumptech/glide/load/n/l$c;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/l;->q:Lcom/bumptech/glide/load/n/v;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/n/l;->m:Z

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/n/l$c;->a(Lcom/bumptech/glide/load/n/v;Z)Lcom/bumptech/glide/load/n/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/l;->v:Lcom/bumptech/glide/load/n/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->s:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/l$e;->a()Lcom/bumptech/glide/load/n/l$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/l$e;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/n/l;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l;->l:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/l;->v:Lcom/bumptech/glide/load/n/p;

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_78

    iget-object v3, p0, Lcom/bumptech/glide/load/n/l;->f:Lcom/bumptech/glide/load/n/m;

    invoke-interface {v3, p0, v0, v2}, Lcom/bumptech/glide/load/n/m;->a(Lcom/bumptech/glide/load/n/l;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/l$e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/n/l$d;

    iget-object v2, v1, Lcom/bumptech/glide/load/n/l$d;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/bumptech/glide/load/n/l$b;

    iget-object v1, v1, Lcom/bumptech/glide/load/n/l$d;->a:Lc/a/a/r/g;

    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/n/l$b;-><init>(Lcom/bumptech/glide/load/n/l;Lc/a/a/r/g;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4b

    :cond_64
    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/l;->b()V

    return-void

    :cond_68
    :try_start_68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_78
    move-exception v0

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_78

    goto :goto_7c

    :goto_7b
    throw v0

    :goto_7c
    goto :goto_7b
.end method

.method f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/l;->p:Z

    return v0
.end method

###### Class com.bumptech.glide.load.n.l.a (com.bumptech.glide.load.n.l$a)
.class Lcom/bumptech/glide/load/n/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final b:Lc/a/a/r/g;

.field final synthetic c:Lcom/bumptech/glide/load/n/l;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/l;Lc/a/a/r/g;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/load/n/l$a;->c:Lcom/bumptech/glide/load/n/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/n/l$a;->b:Lc/a/a/r/g;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$a;->c:Lcom/bumptech/glide/load/n/l;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/n/l$a;->c:Lcom/bumptech/glide/load/n/l;

    iget-object v1, v1, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/l$a;->b:Lc/a/a/r/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/n/l$e;->a(Lc/a/a/r/g;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/bumptech/glide/load/n/l$a;->c:Lcom/bumptech/glide/load/n/l;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/l$a;->b:Lc/a/a/r/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/n/l;->a(Lc/a/a/r/g;)V

    :cond_16
    iget-object v1, p0, Lcom/bumptech/glide/load/n/l$a;->c:Lcom/bumptech/glide/load/n/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/l;->b()V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

###### Class com.bumptech.glide.load.n.l.b (com.bumptech.glide.load.n.l$b)
.class Lcom/bumptech/glide/load/n/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final b:Lc/a/a/r/g;

.field final synthetic c:Lcom/bumptech/glide/load/n/l;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/l;Lc/a/a/r/g;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/load/n/l$b;->c:Lcom/bumptech/glide/load/n/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/n/l$b;->b:Lc/a/a/r/g;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$b;->c:Lcom/bumptech/glide/load/n/l;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/n/l$b;->c:Lcom/bumptech/glide/load/n/l;

    iget-object v1, v1, Lcom/bumptech/glide/load/n/l;->b:Lcom/bumptech/glide/load/n/l$e;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/l$b;->b:Lc/a/a/r/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/n/l$e;->a(Lc/a/a/r/g;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bumptech/glide/load/n/l$b;->c:Lcom/bumptech/glide/load/n/l;

    iget-object v1, v1, Lcom/bumptech/glide/load/n/l;->v:Lcom/bumptech/glide/load/n/p;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/p;->d()V

    iget-object v1, p0, Lcom/bumptech/glide/load/n/l$b;->c:Lcom/bumptech/glide/load/n/l;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/l$b;->b:Lc/a/a/r/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/n/l;->b(Lc/a/a/r/g;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/n/l$b;->c:Lcom/bumptech/glide/load/n/l;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/l$b;->b:Lc/a/a/r/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/n/l;->c(Lc/a/a/r/g;)V

    :cond_24
    iget-object v1, p0, Lcom/bumptech/glide/load/n/l$b;->c:Lcom/bumptech/glide/load/n/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/l;->b()V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

###### Class com.bumptech.glide.load.n.l.c (com.bumptech.glide.load.n.l$c)
.class Lcom/bumptech/glide/load/n/l$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/n/v;Z)Lcom/bumptech/glide/load/n/p;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;Z)",
            "Lcom/bumptech/glide/load/n/p<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/n/p;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bumptech/glide/load/n/p;-><init>(Lcom/bumptech/glide/load/n/v;ZZ)V

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.l.d (com.bumptech.glide.load.n.l$d)
.class final Lcom/bumptech/glide/load/n/l$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final a:Lc/a/a/r/g;

.field final b:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lc/a/a/r/g;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/l$d;->a:Lc/a/a/r/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/l$d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/bumptech/glide/load/n/l$d;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/bumptech/glide/load/n/l$d;

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$d;->a:Lc/a/a/r/g;

    iget-object p1, p1, Lcom/bumptech/glide/load/n/l$d;->a:Lc/a/a/r/g;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$d;->a:Lc/a/a/r/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

###### Class com.bumptech.glide.load.n.l.e (com.bumptech.glide.load.n.l$e)
.class final Lcom/bumptech/glide/load/n/l$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/bumptech/glide/load/n/l$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/n/l$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/n/l$e;-><init>(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/n/l$d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/l$e;->b:Ljava/util/List;

    return-void
.end method

.method private static c(Lc/a/a/r/g;)Lcom/bumptech/glide/load/n/l$d;
    .registers 3

    new-instance v0, Lcom/bumptech/glide/load/n/l$d;

    invoke-static {}, Lc/a/a/t/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/n/l$d;-><init>(Lc/a/a/r/g;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method a()Lcom/bumptech/glide/load/n/l$e;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/n/l$e;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/l$e;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/n/l$e;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method a(Lc/a/a/r/g;Ljava/util/concurrent/Executor;)V
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$e;->b:Ljava/util/List;

    new-instance v1, Lcom/bumptech/glide/load/n/l$d;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/n/l$d;-><init>(Lc/a/a/r/g;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lc/a/a/r/g;)Z
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$e;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/bumptech/glide/load/n/l$e;->c(Lc/a/a/r/g;)Lcom/bumptech/glide/load/n/l$d;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b(Lc/a/a/r/g;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$e;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/bumptech/glide/load/n/l$e;->c(Lc/a/a/r/g;)Lcom/bumptech/glide/load/n/l$d;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method clear()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/bumptech/glide/load/n/l$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method size()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/l$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
