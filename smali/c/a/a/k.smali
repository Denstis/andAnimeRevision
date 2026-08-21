###### Class c.a.a.k (c.a.a.k)
.class public Lc/a/a/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/o/i;
.implements Lc/a/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/i;",
        "Lc/a/a/g<",
        "Lc/a/a/j<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final m:Lc/a/a/r/f;


# instance fields
.field protected final b:Lc/a/a/c;

.field protected final c:Landroid/content/Context;

.field final d:Lc/a/a/o/h;

.field private final e:Lc/a/a/o/n;

.field private final f:Lc/a/a/o/m;

.field private final g:Lc/a/a/o/p;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/os/Handler;

.field private final j:Lc/a/a/o/c;

.field private final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lc/a/a/r/e<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Lc/a/a/r/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lc/a/a/r/f;->b(Ljava/lang/Class;)Lc/a/a/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/r/a;->F()Lc/a/a/r/a;

    check-cast v0, Lc/a/a/r/f;

    sput-object v0, Lc/a/a/k;->m:Lc/a/a/r/f;

    const-class v0, Lcom/bumptech/glide/load/p/g/c;

    invoke-static {v0}, Lc/a/a/r/f;->b(Ljava/lang/Class;)Lc/a/a/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/r/a;->F()Lc/a/a/r/a;

    check-cast v0, Lc/a/a/r/f;

    sget-object v0, Lcom/bumptech/glide/load/n/j;->b:Lcom/bumptech/glide/load/n/j;

    invoke-static {v0}, Lc/a/a/r/f;->b(Lcom/bumptech/glide/load/n/j;)Lc/a/a/r/f;

    move-result-object v0

    sget-object v1, Lc/a/a/h;->e:Lc/a/a/h;

    invoke-virtual {v0, v1}, Lc/a/a/r/a;->a(Lc/a/a/h;)Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/r/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a/a/r/a;->a(Z)Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/r/f;

    return-void
.end method

.method public constructor <init>(Lc/a/a/c;Lc/a/a/o/h;Lc/a/a/o/m;Landroid/content/Context;)V
    .registers 12

    new-instance v4, Lc/a/a/o/n;

    invoke-direct {v4}, Lc/a/a/o/n;-><init>()V

    invoke-virtual {p1}, Lc/a/a/c;->d()Lc/a/a/o/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc/a/a/k;-><init>(Lc/a/a/c;Lc/a/a/o/h;Lc/a/a/o/m;Lc/a/a/o/n;Lc/a/a/o/d;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lc/a/a/c;Lc/a/a/o/h;Lc/a/a/o/m;Lc/a/a/o/n;Lc/a/a/o/d;Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/o/p;

    invoke-direct {v0}, Lc/a/a/o/p;-><init>()V

    iput-object v0, p0, Lc/a/a/k;->g:Lc/a/a/o/p;

    new-instance v0, Lc/a/a/k$a;

    invoke-direct {v0, p0}, Lc/a/a/k$a;-><init>(Lc/a/a/k;)V

    iput-object v0, p0, Lc/a/a/k;->h:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/a/a/k;->i:Landroid/os/Handler;

    iput-object p1, p0, Lc/a/a/k;->b:Lc/a/a/c;

    iput-object p2, p0, Lc/a/a/k;->d:Lc/a/a/o/h;

    iput-object p3, p0, Lc/a/a/k;->f:Lc/a/a/o/m;

    iput-object p4, p0, Lc/a/a/k;->e:Lc/a/a/o/n;

    iput-object p6, p0, Lc/a/a/k;->c:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lc/a/a/k$b;

    invoke-direct {p6, p0, p4}, Lc/a/a/k$b;-><init>(Lc/a/a/k;Lc/a/a/o/n;)V

    invoke-interface {p5, p3, p6}, Lc/a/a/o/d;->a(Landroid/content/Context;Lc/a/a/o/c$a;)Lc/a/a/o/c;

    move-result-object p3

    iput-object p3, p0, Lc/a/a/k;->j:Lc/a/a/o/c;

    invoke-static {}, Lc/a/a/t/k;->b()Z

    move-result p3

    if-eqz p3, :cond_43

    iget-object p3, p0, Lc/a/a/k;->i:Landroid/os/Handler;

    iget-object p4, p0, Lc/a/a/k;->h:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_46

    :cond_43
    invoke-interface {p2, p0}, Lc/a/a/o/h;->a(Lc/a/a/o/i;)V

    :goto_46
    iget-object p3, p0, Lc/a/a/k;->j:Lc/a/a/o/c;

    invoke-interface {p2, p3}, Lc/a/a/o/h;->a(Lc/a/a/o/i;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lc/a/a/c;->f()Lc/a/a/e;

    move-result-object p3

    invoke-virtual {p3}, Lc/a/a/e;->b()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lc/a/a/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lc/a/a/c;->f()Lc/a/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lc/a/a/e;->c()Lc/a/a/r/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Lc/a/a/k;->a(Lc/a/a/r/f;)V

    invoke-virtual {p1, p0}, Lc/a/a/c;->a(Lc/a/a/k;)V

    return-void
.end method

.method private c(Lc/a/a/r/j/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/j/h<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lc/a/a/k;->b(Lc/a/a/r/j/h;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lc/a/a/k;->b:Lc/a/a/c;

    invoke-virtual {v0, p1}, Lc/a/a/c;->a(Lc/a/a/r/j/h;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-interface {p1}, Lc/a/a/r/j/h;->a()Lc/a/a/r/c;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Lc/a/a/r/j/h;->a()Lc/a/a/r/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lc/a/a/r/j/h;->a(Lc/a/a/r/c;)V

    invoke-interface {v0}, Lc/a/a/r/c;->clear()V

    :cond_1f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lc/a/a/j;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lc/a/a/j<",
            "TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lc/a/a/j;

    iget-object v1, p0, Lc/a/a/k;->b:Lc/a/a/c;

    iget-object v2, p0, Lc/a/a/k;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lc/a/a/j;-><init>(Lc/a/a/c;Lc/a/a/k;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lc/a/a/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/a/a/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/a/a/k;->c()Lc/a/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/j;->a(Ljava/lang/String;)Lc/a/a/j;

    return-object v0
.end method

.method protected declared-synchronized a(Lc/a/a/r/f;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object p1

    check-cast p1, Lc/a/a/r/f;

    invoke-virtual {p1}, Lc/a/a/r/a;->a()Lc/a/a/r/a;

    check-cast p1, Lc/a/a/r/f;

    iput-object p1, p0, Lc/a/a/k;->l:Lc/a/a/r/f;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lc/a/a/r/j/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/j/h<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lc/a/a/k;->c(Lc/a/a/r/j/h;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lc/a/a/r/j/h;Lc/a/a/r/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/j/h<",
            "*>;",
            "Lc/a/a/r/c;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/k;->g:Lc/a/a/o/p;

    invoke-virtual {v0, p1}, Lc/a/a/o/p;->a(Lc/a/a/r/j/h;)V

    iget-object p1, p0, Lc/a/a/k;->e:Lc/a/a/o/n;

    invoke-virtual {p1, p2}, Lc/a/a/o/n;->b(Lc/a/a/r/c;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lc/a/a/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lc/a/a/k;->a(Ljava/lang/Class;)Lc/a/a/j;

    move-result-object v0

    sget-object v1, Lc/a/a/k;->m:Lc/a/a/r/f;

    invoke-virtual {v0, v1}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Class;)Lc/a/a/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/a/a/l<",
            "*TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/k;->b:Lc/a/a/c;

    invoke-virtual {v0}, Lc/a/a/c;->f()Lc/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/e;->a(Ljava/lang/Class;)Lc/a/a/l;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized b(Lc/a/a/r/j/h;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/j/h<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Lc/a/a/r/j/h;->a()Lc/a/a/r/c;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_20

    const/4 v1, 0x1

    if-nez v0, :cond_a

    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    iget-object v2, p0, Lc/a/a/k;->e:Lc/a/a/o/n;

    invoke-virtual {v2, v0}, Lc/a/a/o/n;->a(Lc/a/a/r/c;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lc/a/a/k;->g:Lc/a/a/o/p;

    invoke-virtual {v0, p1}, Lc/a/a/o/p;->b(Lc/a/a/r/j/h;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lc/a/a/r/j/h;->a(Lc/a/a/r/c;)V
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_20

    monitor-exit p0

    return v1

    :cond_1d
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Lc/a/a/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lc/a/a/k;->a(Ljava/lang/Class;)Lc/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/a/a/r/e<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/k;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method declared-synchronized e()Lc/a/a/r/f;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/k;->l:Lc/a/a/r/f;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/k;->e:Lc/a/a/o/n;

    invoke-virtual {v0}, Lc/a/a/o/n;->b()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/k;->e:Lc/a/a/o/n;

    invoke-virtual {v0}, Lc/a/a/o/n;->d()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/k;->g:Lc/a/a/o/p;

    invoke-virtual {v0}, Lc/a/a/o/p;->onDestroy()V

    iget-object v0, p0, Lc/a/a/k;->g:Lc/a/a/o/p;

    invoke-virtual {v0}, Lc/a/a/o/p;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/r/j/h;

    invoke-virtual {p0, v1}, Lc/a/a/k;->a(Lc/a/a/r/j/h;)V

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lc/a/a/k;->g:Lc/a/a/o/p;

    invoke-virtual {v0}, Lc/a/a/o/p;->b()V

    iget-object v0, p0, Lc/a/a/k;->e:Lc/a/a/o/n;

    invoke-virtual {v0}, Lc/a/a/o/n;->a()V

    iget-object v0, p0, Lc/a/a/k;->d:Lc/a/a/o/h;

    invoke-interface {v0, p0}, Lc/a/a/o/h;->b(Lc/a/a/o/i;)V

    iget-object v0, p0, Lc/a/a/k;->d:Lc/a/a/o/h;

    iget-object v1, p0, Lc/a/a/k;->j:Lc/a/a/o/c;

    invoke-interface {v0, v1}, Lc/a/a/o/h;->b(Lc/a/a/o/i;)V

    iget-object v0, p0, Lc/a/a/k;->i:Landroid/os/Handler;

    iget-object v1, p0, Lc/a/a/k;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lc/a/a/k;->b:Lc/a/a/c;

    invoke-virtual {v0, p0}, Lc/a/a/c;->b(Lc/a/a/k;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    goto :goto_48

    :goto_47
    throw v0

    :goto_48
    goto :goto_47
.end method

.method public declared-synchronized onStart()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lc/a/a/k;->g()V

    iget-object v0, p0, Lc/a/a/k;->g:Lc/a/a/o/p;

    invoke-virtual {v0}, Lc/a/a/o/p;->onStart()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lc/a/a/k;->f()V

    iget-object v0, p0, Lc/a/a/k;->g:Lc/a/a/o/p;

    invoke-virtual {v0}, Lc/a/a/o/p;->onStop()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/k;->e:Lc/a/a/o/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/k;->f:Lc/a/a/o/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-object v0

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class c.a.a.k.a (c.a.a.k$a)
.class Lc/a/a/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lc/a/a/k;


# direct methods
.method constructor <init>(Lc/a/a/k;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/k$a;->b:Lc/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lc/a/a/k$a;->b:Lc/a/a/k;

    iget-object v1, v0, Lc/a/a/k;->d:Lc/a/a/o/h;

    invoke-interface {v1, v0}, Lc/a/a/o/h;->a(Lc/a/a/o/i;)V

    return-void
.end method

###### Class c.a.a.k.b (c.a.a.k$b)
.class Lc/a/a/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lc/a/a/o/n;

.field final synthetic b:Lc/a/a/k;


# direct methods
.method constructor <init>(Lc/a/a/k;Lc/a/a/o/n;)V
    .registers 3

    iput-object p1, p0, Lc/a/a/k$b;->b:Lc/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/a/a/k$b;->a:Lc/a/a/o/n;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object p1, p0, Lc/a/a/k$b;->b:Lc/a/a/k;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lc/a/a/k$b;->a:Lc/a/a/o/n;

    invoke-virtual {v0}, Lc/a/a/o/n;->c()V

    monitor-exit p1

    goto :goto_f

    :catchall_c
    move-exception v0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0

    :cond_f
    :goto_f
    return-void
.end method
