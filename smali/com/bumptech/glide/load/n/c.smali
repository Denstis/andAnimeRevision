###### Class com.bumptech.glide.load.n.c (com.bumptech.glide.load.n.c)
.class Lcom/bumptech/glide/load/n/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/f;
.implements Lcom/bumptech/glide/load/m/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/f;",
        "Lcom/bumptech/glide/load/m/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/n/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/g<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/n/f$a;

.field private e:I

.field private f:Lcom/bumptech/glide/load/g;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/o/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private h:I

.field private volatile i:Lcom/bumptech/glide/load/o/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/o/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/g;Lcom/bumptech/glide/load/n/f$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/g<",
            "*>;",
            "Lcom/bumptech/glide/load/n/f$a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/n/c;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/n/g;Lcom/bumptech/glide/load/n/f$a;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/n/g;Lcom/bumptech/glide/load/n/f$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;",
            "Lcom/bumptech/glide/load/n/g<",
            "*>;",
            "Lcom/bumptech/glide/load/n/f$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/n/c;->e:I

    iput-object p1, p0, Lcom/bumptech/glide/load/n/c;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/c;->c:Lcom/bumptech/glide/load/n/g;

    iput-object p3, p0, Lcom/bumptech/glide/load/n/c;->d:Lcom/bumptech/glide/load/n/f$a;

    return-void
.end method

.method private b()Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/n/c;->h:I

    iget-object v1, p0, Lcom/bumptech/glide/load/n/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 6

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->d:Lcom/bumptech/glide/load/n/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/c;->f:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/c;->i:Lcom/bumptech/glide/load/o/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    sget-object v3, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/n/f$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->d:Lcom/bumptech/glide/load/n/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/c;->f:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/c;->i:Lcom/bumptech/glide/load/o/n$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    sget-object v4, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    iget-object v5, p0, Lcom/bumptech/glide/load/n/c;->f:Lcom/bumptech/glide/load/g;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/n/f$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method public a()Z
    .registers 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->g:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_64

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/c;->b()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_64

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/c;->i:Lcom/bumptech/glide/load/o/n$a;

    :cond_10
    :goto_10
    if-nez v1, :cond_63

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/c;->b()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->g:Ljava/util/List;

    iget v3, p0, Lcom/bumptech/glide/load/n/c;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/n/c;->h:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/o/n;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/c;->j:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/n/c;->c:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/n/g;->n()I

    move-result v4

    iget-object v5, p0, Lcom/bumptech/glide/load/n/c;->c:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/n/g;->f()I

    move-result v5

    iget-object v6, p0, Lcom/bumptech/glide/load/n/c;->c:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/n/g;->i()Lcom/bumptech/glide/load/i;

    move-result-object v6

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/bumptech/glide/load/o/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/o/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/c;->i:Lcom/bumptech/glide/load/o/n$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->i:Lcom/bumptech/glide/load/o/n$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->c:Lcom/bumptech/glide/load/n/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/c;->i:Lcom/bumptech/glide/load/o/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/m/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/n/g;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->i:Lcom/bumptech/glide/load/o/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/c;->c:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/g;->j()Lc/a/a/h;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/m/d;->a(Lc/a/a/h;Lcom/bumptech/glide/load/m/d$a;)V

    const/4 v1, 0x1

    goto :goto_10

    :cond_63
    return v1

    :cond_64
    :goto_64
    iget v0, p0, Lcom/bumptech/glide/load/n/c;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/n/c;->e:I

    iget v0, p0, Lcom/bumptech/glide/load/n/c;->e:I

    iget-object v2, p0, Lcom/bumptech/glide/load/n/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_74

    return v1

    :cond_74
    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->b:Ljava/util/List;

    iget v2, p0, Lcom/bumptech/glide/load/n/c;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/g;

    new-instance v2, Lcom/bumptech/glide/load/n/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/c;->c:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/n/g;->l()Lcom/bumptech/glide/load/g;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/n/d;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/n/c;->c:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/n/g;->d()Lcom/bumptech/glide/load/n/b0/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/bumptech/glide/load/n/b0/a;->a(Lcom/bumptech/glide/load/g;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/load/n/c;->j:Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/c;->j:Ljava/io/File;

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/c;->f:Lcom/bumptech/glide/load/g;

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->c:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/n/g;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/c;->g:Ljava/util/List;

    iput v1, p0, Lcom/bumptech/glide/load/n/c;->h:I

    goto/16 :goto_0
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/c;->i:Lcom/bumptech/glide/load/o/n$a;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/bumptech/glide/load/o/n$a;->c:Lcom/bumptech/glide/load/m/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/m/d;->cancel()V

    :cond_9
    return-void
.end method
