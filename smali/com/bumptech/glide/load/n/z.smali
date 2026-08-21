###### Class com.bumptech.glide.load.n.z (com.bumptech.glide.load.n.z)
.class Lcom/bumptech/glide/load/n/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/f;
.implements Lcom/bumptech/glide/load/m/d$a;
.implements Lcom/bumptech/glide/load/n/f$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/f;",
        "Lcom/bumptech/glide/load/m/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/bumptech/glide/load/n/f$a;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/n/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/g<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/n/f$a;

.field private d:I

.field private e:Lcom/bumptech/glide/load/n/c;

.field private f:Ljava/lang/Object;

.field private volatile g:Lcom/bumptech/glide/load/o/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/o/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private h:Lcom/bumptech/glide/load/n/d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/g;Lcom/bumptech/glide/load/n/f$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/g<",
            "*>;",
            "Lcom/bumptech/glide/load/n/f$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/z;->c:Lcom/bumptech/glide/load/n/f$a;

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 10

    const-string v0, "SourceGenerator"

    invoke-static {}, Lc/a/a/t/f;->a()J

    move-result-wide v1

    :try_start_6
    iget-object v3, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/load/n/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/load/n/e;

    iget-object v5, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/n/g;->i()Lcom/bumptech/glide/load/i;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lcom/bumptech/glide/load/n/e;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/i;)V

    new-instance v5, Lcom/bumptech/glide/load/n/d;

    iget-object v6, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v6, v6, Lcom/bumptech/glide/load/o/n$a;->a:Lcom/bumptech/glide/load/g;

    iget-object v7, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v7}, Lcom/bumptech/glide/load/n/g;->l()Lcom/bumptech/glide/load/g;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/n/d;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    iput-object v5, p0, Lcom/bumptech/glide/load/n/z;->h:Lcom/bumptech/glide/load/n/d;

    iget-object v5, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/n/g;->d()Lcom/bumptech/glide/load/n/b0/a;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/load/n/z;->h:Lcom/bumptech/glide/load/n/d;

    invoke-interface {v5, v6, v4}, Lcom/bumptech/glide/load/n/b0/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/b0/a$b;)V

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bumptech/glide/load/n/z;->h:Lcom/bumptech/glide/load/n/d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lc/a/a/t/f;->a(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_6 .. :try_end_6c} :catchall_85

    :cond_6c
    iget-object p1, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {p1}, Lcom/bumptech/glide/load/m/d;->b()V

    new-instance p1, Lcom/bumptech/glide/load/n/c;

    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/o/n$a;->a:Lcom/bumptech/glide/load/g;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/n/c;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/n/g;Lcom/bumptech/glide/load/n/f$a;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/z;->e:Lcom/bumptech/glide/load/n/c;

    return-void

    :catchall_85
    move-exception p1

    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/m/d;->b()V

    throw p1
.end method

.method private c()Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/n/z;->d:I

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/g;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/m/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/bumptech/glide/load/n/z;->c:Lcom/bumptech/glide/load/n/f$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/m/d;->c()Lcom/bumptech/glide/load/a;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/n/f$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/m/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->c:Lcom/bumptech/glide/load/n/f$a;

    iget-object p4, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object p4, p4, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {p4}, Lcom/bumptech/glide/load/m/d;->c()Lcom/bumptech/glide/load/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/n/f$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 6

    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->c:Lcom/bumptech/glide/load/n/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->h:Lcom/bumptech/glide/load/n/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/m/d;->c()Lcom/bumptech/glide/load/a;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/n/f$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/g;->e()Lcom/bumptech/glide/load/n/j;

    move-result-object v0

    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/m/d;->c()Lcom/bumptech/glide/load/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/n/j;->a(Lcom/bumptech/glide/load/a;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-object p1, p0, Lcom/bumptech/glide/load/n/z;->f:Ljava/lang/Object;

    iget-object p1, p0, Lcom/bumptech/glide/load/n/z;->c:Lcom/bumptech/glide/load/n/f$a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/n/f$a;->b()V

    goto :goto_36

    :cond_1e
    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->c:Lcom/bumptech/glide/load/n/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/o/n$a;->a:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v2}, Lcom/bumptech/glide/load/m/d;->c()Lcom/bumptech/glide/load/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/n/z;->h:Lcom/bumptech/glide/load/n/d;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/n/f$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    :goto_36
    return-void
.end method

.method public a()Z
    .registers 6

    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-object v1, p0, Lcom/bumptech/glide/load/n/z;->f:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/n/z;->b(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->e:Lcom/bumptech/glide/load/n/c;

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/c;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    return v2

    :cond_16
    iput-object v1, p0, Lcom/bumptech/glide/load/n/z;->e:Lcom/bumptech/glide/load/n/c;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    const/4 v0, 0x0

    :cond_1b
    :goto_1b
    if-nez v0, :cond_6e

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/z;->c()Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/g;->g()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/load/n/z;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/n/z;->d:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/o/n$a;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/g;->e()Lcom/bumptech/glide/load/n/j;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/m/d;->c()Lcom/bumptech/glide/load/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/n/j;->a(Lcom/bumptech/glide/load/a;)Z

    move-result v1

    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/m/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/n/g;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_5f
    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/z;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/g;->j()Lc/a/a/h;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/m/d;->a(Lc/a/a/h;Lcom/bumptech/glide/load/m/d$a;)V

    const/4 v0, 0x1

    goto :goto_1b

    :cond_6e
    return v0
.end method

.method public b()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/z;->g:Lcom/bumptech/glide/load/o/n$a;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/m/d;->cancel()V

    :cond_9
    return-void
.end method
