###### Class c.a.a.i (c.a.a.i)
.class public Lc/a/a/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/i$b;,
        Lc/a/a/i$a;,
        Lc/a/a/i$e;,
        Lc/a/a/i$d;,
        Lc/a/a/i$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/o/p;

.field private final b:Lc/a/a/q/a;

.field private final c:Lc/a/a/q/e;

.field private final d:Lc/a/a/q/f;

.field private final e:Lcom/bumptech/glide/load/m/f;

.field private final f:Lcom/bumptech/glide/load/p/h/f;

.field private final g:Lc/a/a/q/b;

.field private final h:Lc/a/a/q/d;

.field private final i:Lc/a/a/q/c;

.field private final j:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/q/d;

    invoke-direct {v0}, Lc/a/a/q/d;-><init>()V

    iput-object v0, p0, Lc/a/a/i;->h:Lc/a/a/q/d;

    new-instance v0, Lc/a/a/q/c;

    invoke-direct {v0}, Lc/a/a/q/c;-><init>()V

    iput-object v0, p0, Lc/a/a/i;->i:Lc/a/a/q/c;

    invoke-static {}, Lc/a/a/t/l/a;->b()Lb/h/n/d;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/i;->j:Lb/h/n/d;

    new-instance v0, Lcom/bumptech/glide/load/o/p;

    iget-object v1, p0, Lc/a/a/i;->j:Lb/h/n/d;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/o/p;-><init>(Lb/h/n/d;)V

    iput-object v0, p0, Lc/a/a/i;->a:Lcom/bumptech/glide/load/o/p;

    new-instance v0, Lc/a/a/q/a;

    invoke-direct {v0}, Lc/a/a/q/a;-><init>()V

    iput-object v0, p0, Lc/a/a/i;->b:Lc/a/a/q/a;

    new-instance v0, Lc/a/a/q/e;

    invoke-direct {v0}, Lc/a/a/q/e;-><init>()V

    iput-object v0, p0, Lc/a/a/i;->c:Lc/a/a/q/e;

    new-instance v0, Lc/a/a/q/f;

    invoke-direct {v0}, Lc/a/a/q/f;-><init>()V

    iput-object v0, p0, Lc/a/a/i;->d:Lc/a/a/q/f;

    new-instance v0, Lcom/bumptech/glide/load/m/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/m/f;-><init>()V

    iput-object v0, p0, Lc/a/a/i;->e:Lcom/bumptech/glide/load/m/f;

    new-instance v0, Lcom/bumptech/glide/load/p/h/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/p/h/f;-><init>()V

    iput-object v0, p0, Lc/a/a/i;->f:Lcom/bumptech/glide/load/p/h/f;

    new-instance v0, Lc/a/a/q/b;

    invoke-direct {v0}, Lc/a/a/q/b;-><init>()V

    iput-object v0, p0, Lc/a/a/i;->g:Lc/a/a/q/b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gif"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bitmap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BitmapDrawable"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/a/i;->a(Ljava/util/List;)Lc/a/a/i;

    return-void
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/n/i<",
            "TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc/a/a/i;->c:Lc/a/a/q/e;

    invoke-virtual {v1, p1, p2}, Lc/a/a/q/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lc/a/a/i;->f:Lcom/bumptech/glide/load/p/h/f;

    invoke-virtual {v2, v1, p3}, Lcom/bumptech/glide/load/p/h/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_25
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    iget-object v2, p0, Lc/a/a/i;->c:Lc/a/a/q/e;

    invoke-virtual {v2, p1, v1}, Lc/a/a/q/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    iget-object v2, p0, Lc/a/a/i;->f:Lcom/bumptech/glide/load/p/h/f;

    invoke-virtual {v2, v1, v5}, Lcom/bumptech/glide/load/p/h/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/p/h/e;

    move-result-object v7

    new-instance v10, Lcom/bumptech/glide/load/n/i;

    iget-object v8, p0, Lc/a/a/i;->j:Lb/h/n/d;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/bumptech/glide/load/n/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/p/h/e;Lb/h/n/d;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_4c
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lc/a/a/i;
    .registers 3

    iget-object v0, p0, Lc/a/a/i;->g:Lc/a/a/q/b;

    invoke-virtual {v0, p1}, Lc/a/a/q/b;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/m/e$a;)Lc/a/a/i;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m/e$a<",
            "*>;)",
            "Lc/a/a/i;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->e:Lcom/bumptech/glide/load/m/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/m/f;->a(Lcom/bumptech/glide/load/m/e$a;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lc/a/a/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/d<",
            "TData;>;)",
            "Lc/a/a/i;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->b:Lc/a/a/q/a;

    invoke-virtual {v0, p1, p2}, Lc/a/a/q/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lc/a/a/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TTResource;>;)",
            "Lc/a/a/i;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->d:Lc/a/a/q/f;

    invoke-virtual {v0, p1, p2}, Lc/a/a/q/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lc/a/a/i;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/j<",
            "TData;TTResource;>;)",
            "Lc/a/a/i;"
        }
    .end annotation

    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lc/a/a/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lc/a/a/i;

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/o/o;)Lc/a/a/i;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/o/o<",
            "TModel;TData;>;)",
            "Lc/a/a/i;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->a:Lcom/bumptech/glide/load/o/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/o/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/o/o;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/p/h/e;)Lc/a/a/i;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lcom/bumptech/glide/load/p/h/e<",
            "TTResource;TTranscode;>;)",
            "Lc/a/a/i;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->f:Lcom/bumptech/glide/load/p/h/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/p/h/f;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/p/h/e;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lc/a/a/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/j<",
            "TData;TTResource;>;)",
            "Lc/a/a/i;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->c:Lc/a/a/q/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lc/a/a/q/e;->a(Ljava/lang/String;Lcom/bumptech/glide/load/j;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lc/a/a/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lc/a/a/i;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const-string v1, "legacy_prepend_all"

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, "legacy_append"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/a/a/i;->c:Lc/a/a/q/e;

    invoke-virtual {p1, v0}, Lc/a/a/q/e;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/k;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/n/v<",
            "TX;>;)",
            "Lcom/bumptech/glide/load/k<",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->d:Lc/a/a/q/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/n/v;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/q/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/k;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Lc/a/a/i$d;

    invoke-interface {p1}, Lcom/bumptech/glide/load/n/v;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/a/a/i$d;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/n/t;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/bumptech/glide/load/n/t<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->i:Lc/a/a/q/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/n/t;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/i;->i:Lc/a/a/q/c;

    invoke-virtual {v1, v0}, Lc/a/a/q/c;->a(Lcom/bumptech/glide/load/n/t;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return-object v2

    :cond_10
    if-nez v0, :cond_2e

    invoke-direct {p0, p1, p2, p3}, Lc/a/a/i;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, v2

    goto :goto_29

    :cond_1e
    new-instance v0, Lcom/bumptech/glide/load/n/t;

    iget-object v8, p0, Lc/a/a/i;->j:Lb/h/n/d;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/load/n/t;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lb/h/n/d;)V

    :goto_29
    iget-object v1, p0, Lc/a/a/i;->i:Lc/a/a/q/c;

    invoke-virtual {v1, p1, p2, p3, v0}, Lc/a/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/n/t;)V

    :cond_2e
    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->g:Lc/a/a/q/b;

    invoke-virtual {v0}, Lc/a/a/q/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Lc/a/a/i$b;

    invoke-direct {v0}, Lc/a/a/i$b;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/o/n<",
            "TModel;*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->a:Lcom/bumptech/glide/load/o/p;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/o/p;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Lc/a/a/i$c;

    invoke-direct {v0, p1}, Lc/a/a/i$c;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/load/m/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/m/e<",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->e:Lcom/bumptech/glide/load/m/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/m/f;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/m/e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->h:Lc/a/a/q/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/q/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_58

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc/a/a/i;->a:Lcom/bumptech/glide/load/o/p;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/o/p;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v3, p0, Lc/a/a/i;->c:Lc/a/a/q/e;

    invoke-virtual {v3, v2, p2}, Lc/a/a/q/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v4, p0, Lc/a/a/i;->f:Lcom/bumptech/glide/load/p/h/f;

    invoke-virtual {v4, v3, p3}, Lcom/bumptech/glide/load/p/h/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_4f
    iget-object v1, p0, Lc/a/a/i;->h:Lc/a/a/q/d;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lc/a/a/q/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    :cond_58
    return-object v0
.end method

.method public b(Lcom/bumptech/glide/load/n/v;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->d:Lc/a/a/q/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/n/v;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/a/a/q/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/k;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public c(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/d<",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/i;->b:Lc/a/a/q/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/q/a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Lc/a/a/i$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/a/a/i$e;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

###### Class c.a.a.i.a (c.a.a.i$a)
.class public Lc/a/a/i$a;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class c.a.a.i.b (c.a.a.i$b)
.class public final Lc/a/a/i$b;
.super Lc/a/a/i$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Failed to find image header parser."

    invoke-direct {p0, v0}, Lc/a/a/i$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class c.a.a.i.c (c.a.a.i$c)
.class public Lc/a/a/i$c;
.super Lc/a/a/i$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find any ModelLoaders for model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/i$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find any ModelLoaders for model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/i$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class c.a.a.i.d (c.a.a.i$d)
.class public Lc/a/a/i$d;
.super Lc/a/a/i$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find result encoder for resource class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/i$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class c.a.a.i.e (c.a.a.i$e)
.class public Lc/a/a/i$e;
.super Lc/a/a/i$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find source encoder for data class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/i$a;-><init>(Ljava/lang/String;)V

    return-void
.end method
