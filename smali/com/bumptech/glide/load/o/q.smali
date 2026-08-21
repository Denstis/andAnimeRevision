###### Class com.bumptech.glide.load.o.q (com.bumptech.glide.load.o.q)
.class Lcom/bumptech/glide/load/o/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/o/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/o/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/o/n<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/o/n<",
            "TModel;TData;>;>;"
        }
    .end annotation
.end field

.field private final b:Lb/h/n/d;
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
.method constructor <init>(Ljava/util/List;Lb/h/n/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/o/n<",
            "TModel;TData;>;>;",
            "Lb/h/n/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/o/q;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/o/q;->b:Lb/h/n/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/o/n$a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/o/n$a<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_e
    if-ge v3, v0, :cond_2e

    iget-object v5, p0, Lcom/bumptech/glide/load/o/q;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/o/n;

    invoke-interface {v5, p1}, Lcom/bumptech/glide/load/o/n;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v5, p1, p2, p3, p4}, Lcom/bumptech/glide/load/o/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/o/n$a;

    move-result-object v5

    if-eqz v5, :cond_2b

    iget-object v4, v5, Lcom/bumptech/glide/load/o/n$a;->a:Lcom/bumptech/glide/load/g;

    iget-object v5, v5, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_42

    if-eqz v4, :cond_42

    new-instance v2, Lcom/bumptech/glide/load/o/n$a;

    new-instance p1, Lcom/bumptech/glide/load/o/q$a;

    iget-object p2, p0, Lcom/bumptech/glide/load/o/q;->b:Lb/h/n/d;

    invoke-direct {p1, v1, p2}, Lcom/bumptech/glide/load/o/q$a;-><init>(Ljava/util/List;Lb/h/n/d;)V

    invoke-direct {v2, v4, p1}, Lcom/bumptech/glide/load/o/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/m/d;)V

    :cond_42
    return-object v2
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/o/n;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/o/n;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiModelLoader{modelLoaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/o/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.o.q.a (com.bumptech.glide.load.o.q$a)
.class Lcom/bumptech/glide/load/o/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/m/d;
.implements Lcom/bumptech/glide/load/m/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/o/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m/d<",
        "TData;>;",
        "Lcom/bumptech/glide/load/m/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/m/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field private final c:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lc/a/a/h;

.field private f:Lcom/bumptech/glide/load/m/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method constructor <init>(Ljava/util/List;Lb/h/n/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/m/d<",
            "TData;>;>;",
            "Lb/h/n/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/o/q$a;->c:Lb/h/n/d;

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/util/Collection;)Ljava/util/Collection;

    iput-object p1, p0, Lcom/bumptech/glide/load/o/q$a;->b:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/load/o/q$a;->d:I

    return-void
.end method

.method private d()V
    .registers 5

    iget-boolean v0, p0, Lcom/bumptech/glide/load/o/q$a;->h:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/bumptech/glide/load/o/q$a;->d:I

    iget-object v1, p0, Lcom/bumptech/glide/load/o/q$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1f

    iget v0, p0, Lcom/bumptech/glide/load/o/q$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/o/q$a;->d:I

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->e:Lc/a/a/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/o/q$a;->f:Lcom/bumptech/glide/load/m/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/o/q$a;->a(Lc/a/a/h;Lcom/bumptech/glide/load/m/d$a;)V

    goto :goto_37

    :cond_1f
    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->g:Ljava/util/List;

    invoke-static {v0}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->f:Lcom/bumptech/glide/load/m/d$a;

    new-instance v1, Lcom/bumptech/glide/load/n/q;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/load/o/q$a;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/load/n/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/m/d$a;->a(Ljava/lang/Exception;)V

    :goto_37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/m/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/m/d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/a/a/h;Lcom/bumptech/glide/load/m/d$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/h;",
            "Lcom/bumptech/glide/load/m/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/o/q$a;->e:Lc/a/a/h;

    iput-object p2, p0, Lcom/bumptech/glide/load/o/q$a;->f:Lcom/bumptech/glide/load/m/d$a;

    iget-object p2, p0, Lcom/bumptech/glide/load/o/q$a;->c:Lb/h/n/d;

    invoke-interface {p2}, Lb/h/n/d;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/o/q$a;->g:Ljava/util/List;

    iget-object p2, p0, Lcom/bumptech/glide/load/o/q$a;->b:Ljava/util/List;

    iget v0, p0, Lcom/bumptech/glide/load/o/q$a;->d:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/m/d;

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/load/m/d;->a(Lc/a/a/h;Lcom/bumptech/glide/load/m/d$a;)V

    iget-boolean p1, p0, Lcom/bumptech/glide/load/o/q$a;->h:Z

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/bumptech/glide/load/o/q$a;->cancel()V

    :cond_22
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->g:Ljava/util/List;

    invoke-static {v0}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/o/q$a;->d()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->f:Lcom/bumptech/glide/load/m/d$a;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/m/d$a;->a(Ljava/lang/Object;)V

    goto :goto_b

    :cond_8
    invoke-direct {p0}, Lcom/bumptech/glide/load/o/q$a;->d()V

    :goto_b
    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->g:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/bumptech/glide/load/o/q$a;->c:Lb/h/n/d;

    invoke-interface {v1, v0}, Lb/h/n/d;->a(Ljava/lang/Object;)Z

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/m/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/m/d;->b()V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/m/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/m/d;->c()Lcom/bumptech/glide/load/a;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/o/q$a;->h:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/o/q$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/m/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/m/d;->cancel()V

    goto :goto_9

    :cond_19
    return-void
.end method
