###### Class c.a.a.d (c.a.a.d)
.class public final Lc/a/a/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/a/a/l<",
            "**>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bumptech/glide/load/n/k;

.field private c:Lcom/bumptech/glide/load/n/a0/e;

.field private d:Lcom/bumptech/glide/load/n/a0/b;

.field private e:Lcom/bumptech/glide/load/n/b0/h;

.field private f:Lcom/bumptech/glide/load/n/c0/a;

.field private g:Lcom/bumptech/glide/load/n/c0/a;

.field private h:Lcom/bumptech/glide/load/n/b0/a$a;

.field private i:Lcom/bumptech/glide/load/n/b0/i;

.field private j:Lc/a/a/o/d;

.field private k:I

.field private l:Lc/a/a/r/f;

.field private m:Lc/a/a/o/l$b;

.field private n:Lcom/bumptech/glide/load/n/c0/a;

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/a/r/e<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lc/a/a/d;->a:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lc/a/a/d;->k:I

    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0}, Lc/a/a/r/f;-><init>()V

    iput-object v0, p0, Lc/a/a/d;->l:Lc/a/a/r/f;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lc/a/a/c;
    .registers 16

    iget-object v0, p0, Lc/a/a/d;->f:Lcom/bumptech/glide/load/n/c0/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/bumptech/glide/load/n/c0/a;->d()Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/d;->f:Lcom/bumptech/glide/load/n/c0/a;

    :cond_a
    iget-object v0, p0, Lc/a/a/d;->g:Lcom/bumptech/glide/load/n/c0/a;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/bumptech/glide/load/n/c0/a;->c()Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/d;->g:Lcom/bumptech/glide/load/n/c0/a;

    :cond_14
    iget-object v0, p0, Lc/a/a/d;->n:Lcom/bumptech/glide/load/n/c0/a;

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/bumptech/glide/load/n/c0/a;->b()Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/d;->n:Lcom/bumptech/glide/load/n/c0/a;

    :cond_1e
    iget-object v0, p0, Lc/a/a/d;->i:Lcom/bumptech/glide/load/n/b0/i;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/bumptech/glide/load/n/b0/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/n/b0/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/b0/i$a;->a()Lcom/bumptech/glide/load/n/b0/i;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/d;->i:Lcom/bumptech/glide/load/n/b0/i;

    :cond_2d
    iget-object v0, p0, Lc/a/a/d;->j:Lc/a/a/o/d;

    if-nez v0, :cond_38

    new-instance v0, Lc/a/a/o/f;

    invoke-direct {v0}, Lc/a/a/o/f;-><init>()V

    iput-object v0, p0, Lc/a/a/d;->j:Lc/a/a/o/d;

    :cond_38
    iget-object v0, p0, Lc/a/a/d;->c:Lcom/bumptech/glide/load/n/a0/e;

    if-nez v0, :cond_54

    iget-object v0, p0, Lc/a/a/d;->i:Lcom/bumptech/glide/load/n/b0/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/b0/i;->b()I

    move-result v0

    if-lez v0, :cond_4d

    new-instance v1, Lcom/bumptech/glide/load/n/a0/k;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/n/a0/k;-><init>(J)V

    iput-object v1, p0, Lc/a/a/d;->c:Lcom/bumptech/glide/load/n/a0/e;

    goto :goto_54

    :cond_4d
    new-instance v0, Lcom/bumptech/glide/load/n/a0/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/a0/f;-><init>()V

    iput-object v0, p0, Lc/a/a/d;->c:Lcom/bumptech/glide/load/n/a0/e;

    :cond_54
    :goto_54
    iget-object v0, p0, Lc/a/a/d;->d:Lcom/bumptech/glide/load/n/a0/b;

    if-nez v0, :cond_65

    new-instance v0, Lcom/bumptech/glide/load/n/a0/j;

    iget-object v1, p0, Lc/a/a/d;->i:Lcom/bumptech/glide/load/n/b0/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/b0/i;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/n/a0/j;-><init>(I)V

    iput-object v0, p0, Lc/a/a/d;->d:Lcom/bumptech/glide/load/n/a0/b;

    :cond_65
    iget-object v0, p0, Lc/a/a/d;->e:Lcom/bumptech/glide/load/n/b0/h;

    if-nez v0, :cond_77

    new-instance v0, Lcom/bumptech/glide/load/n/b0/g;

    iget-object v1, p0, Lc/a/a/d;->i:Lcom/bumptech/glide/load/n/b0/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/b0/i;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/n/b0/g;-><init>(J)V

    iput-object v0, p0, Lc/a/a/d;->e:Lcom/bumptech/glide/load/n/b0/h;

    :cond_77
    iget-object v0, p0, Lc/a/a/d;->h:Lcom/bumptech/glide/load/n/b0/a$a;

    if-nez v0, :cond_82

    new-instance v0, Lcom/bumptech/glide/load/n/b0/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/n/b0/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/a/a/d;->h:Lcom/bumptech/glide/load/n/b0/a$a;

    :cond_82
    iget-object v0, p0, Lc/a/a/d;->b:Lcom/bumptech/glide/load/n/k;

    if-nez v0, :cond_a0

    new-instance v0, Lcom/bumptech/glide/load/n/k;

    iget-object v2, p0, Lc/a/a/d;->e:Lcom/bumptech/glide/load/n/b0/h;

    iget-object v3, p0, Lc/a/a/d;->h:Lcom/bumptech/glide/load/n/b0/a$a;

    iget-object v4, p0, Lc/a/a/d;->g:Lcom/bumptech/glide/load/n/c0/a;

    iget-object v5, p0, Lc/a/a/d;->f:Lcom/bumptech/glide/load/n/c0/a;

    invoke-static {}, Lcom/bumptech/glide/load/n/c0/a;->e()Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v6

    invoke-static {}, Lcom/bumptech/glide/load/n/c0/a;->b()Lcom/bumptech/glide/load/n/c0/a;

    move-result-object v7

    iget-boolean v8, p0, Lc/a/a/d;->o:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/n/k;-><init>(Lcom/bumptech/glide/load/n/b0/h;Lcom/bumptech/glide/load/n/b0/a$a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Z)V

    iput-object v0, p0, Lc/a/a/d;->b:Lcom/bumptech/glide/load/n/k;

    :cond_a0
    iget-object v0, p0, Lc/a/a/d;->p:Ljava/util/List;

    if-nez v0, :cond_a9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_ad

    :cond_a9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_ad
    iput-object v0, p0, Lc/a/a/d;->p:Ljava/util/List;

    new-instance v7, Lc/a/a/o/l;

    iget-object v0, p0, Lc/a/a/d;->m:Lc/a/a/o/l$b;

    invoke-direct {v7, v0}, Lc/a/a/o/l;-><init>(Lc/a/a/o/l$b;)V

    new-instance v0, Lc/a/a/c;

    iget-object v3, p0, Lc/a/a/d;->b:Lcom/bumptech/glide/load/n/k;

    iget-object v4, p0, Lc/a/a/d;->e:Lcom/bumptech/glide/load/n/b0/h;

    iget-object v5, p0, Lc/a/a/d;->c:Lcom/bumptech/glide/load/n/a0/e;

    iget-object v6, p0, Lc/a/a/d;->d:Lcom/bumptech/glide/load/n/a0/b;

    iget-object v8, p0, Lc/a/a/d;->j:Lc/a/a/o/d;

    iget v9, p0, Lc/a/a/d;->k:I

    iget-object v1, p0, Lc/a/a/d;->l:Lc/a/a/r/f;

    invoke-virtual {v1}, Lc/a/a/r/a;->F()Lc/a/a/r/a;

    move-object v10, v1

    check-cast v10, Lc/a/a/r/f;

    iget-object v11, p0, Lc/a/a/d;->a:Ljava/util/Map;

    iget-object v12, p0, Lc/a/a/d;->p:Ljava/util/List;

    iget-boolean v13, p0, Lc/a/a/d;->q:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lc/a/a/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/n/k;Lcom/bumptech/glide/load/n/b0/h;Lcom/bumptech/glide/load/n/a0/e;Lcom/bumptech/glide/load/n/a0/b;Lc/a/a/o/l;Lc/a/a/o/d;ILc/a/a/r/f;Ljava/util/Map;Ljava/util/List;Z)V

    return-object v0
.end method

.method a(Lc/a/a/o/l$b;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/d;->m:Lc/a/a/o/l$b;

    return-void
.end method
