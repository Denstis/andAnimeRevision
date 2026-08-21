###### Class c.a.a.e (c.a.a.e)
.class public Lc/a/a/e;
.super Landroid/content/ContextWrapper;
.source ""


# static fields
.field static final j:Lc/a/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/l<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/bumptech/glide/load/n/a0/b;

.field private final b:Lc/a/a/i;

.field private final c:Lc/a/a/r/j/e;

.field private final d:Lc/a/a/r/f;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/a/r/e<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
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

.field private final g:Lcom/bumptech/glide/load/n/k;

.field private final h:Z

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc/a/a/b;

    invoke-direct {v0}, Lc/a/a/b;-><init>()V

    sput-object v0, Lc/a/a/e;->j:Lc/a/a/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/n/a0/b;Lc/a/a/i;Lc/a/a/r/j/e;Lc/a/a/r/f;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/load/n/k;ZI)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/n/a0/b;",
            "Lc/a/a/i;",
            "Lc/a/a/r/j/e;",
            "Lc/a/a/r/f;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/a/a/l<",
            "**>;>;",
            "Ljava/util/List<",
            "Lc/a/a/r/e<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/bumptech/glide/load/n/k;",
            "ZI)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lc/a/a/e;->a:Lcom/bumptech/glide/load/n/a0/b;

    iput-object p3, p0, Lc/a/a/e;->b:Lc/a/a/i;

    iput-object p4, p0, Lc/a/a/e;->c:Lc/a/a/r/j/e;

    iput-object p5, p0, Lc/a/a/e;->d:Lc/a/a/r/f;

    iput-object p7, p0, Lc/a/a/e;->e:Ljava/util/List;

    iput-object p6, p0, Lc/a/a/e;->f:Ljava/util/Map;

    iput-object p8, p0, Lc/a/a/e;->g:Lcom/bumptech/glide/load/n/k;

    iput-boolean p9, p0, Lc/a/a/e;->h:Z

    iput p10, p0, Lc/a/a/e;->i:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lc/a/a/l;
    .registers 6
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

    iget-object v0, p0, Lc/a/a/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/l;

    if-nez v0, :cond_33

    iget-object v1, p0, Lc/a/a/e;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/l;

    goto :goto_14

    :cond_33
    if-nez v0, :cond_37

    sget-object v0, Lc/a/a/e;->j:Lc/a/a/l;

    :cond_37
    return-object v0
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/a/a/r/j/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lc/a/a/r/j/i<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/e;->c:Lc/a/a/r/j/e;

    invoke-virtual {v0, p1, p2}, Lc/a/a/r/j/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/a/a/r/j/i;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/bumptech/glide/load/n/a0/b;
    .registers 2

    iget-object v0, p0, Lc/a/a/e;->a:Lcom/bumptech/glide/load/n/a0/b;

    return-object v0
.end method

.method public b()Ljava/util/List;
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

    iget-object v0, p0, Lc/a/a/e;->e:Ljava/util/List;

    return-object v0
.end method

.method public c()Lc/a/a/r/f;
    .registers 2

    iget-object v0, p0, Lc/a/a/e;->d:Lc/a/a/r/f;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/n/k;
    .registers 2

    iget-object v0, p0, Lc/a/a/e;->g:Lcom/bumptech/glide/load/n/k;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lc/a/a/e;->i:I

    return v0
.end method

.method public f()Lc/a/a/i;
    .registers 2

    iget-object v0, p0, Lc/a/a/e;->b:Lc/a/a/i;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lc/a/a/e;->h:Z

    return v0
.end method
