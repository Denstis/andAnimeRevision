###### Class b.f.a.j.o (b.f.a.j.o)
.class public Lb/f/a/j/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lb/f/a/j/o;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lb/f/a/j/o;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/o;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lb/f/a/j/o;->b:I

    iget-object v0, p0, Lb/f/a/j/o;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/a/j/o;

    invoke-virtual {v1}, Lb/f/a/j/o;->e()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public a(Lb/f/a/j/o;)V
    .registers 3

    iget-object v0, p0, Lb/f/a/j/o;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/o;->b:I

    iget-object v0, p0, Lb/f/a/j/o;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/a/j/o;

    invoke-virtual {v1}, Lb/f/a/j/o;->b()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lb/f/a/j/o;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/o;->b:I

    iget-object v0, p0, Lb/f/a/j/o;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method
