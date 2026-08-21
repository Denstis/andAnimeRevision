###### Class b.f.a.j.q (b.f.a.j.q)
.class public Lb/f/a/j/q;
.super Lb/f/a/j/f;
.source ""


# instance fields
.field protected k0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb/f/a/j/f;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public D()V
    .registers 2

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lb/f/a/j/f;->D()V

    return-void
.end method

.method public H()V
    .registers 6

    invoke-super {p0}, Lb/f/a/j/f;->H()V

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_2c

    iget-object v2, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/f;

    invoke-virtual {p0}, Lb/f/a/j/f;->g()I

    move-result v3

    invoke-virtual {p0}, Lb/f/a/j/f;->h()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lb/f/a/j/f;->b(II)V

    instance-of v3, v2, Lb/f/a/j/g;

    if-nez v3, :cond_29

    invoke-virtual {v2}, Lb/f/a/j/f;->H()V

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2c
    return-void
.end method

.method public J()Lb/f/a/j/g;
    .registers 5

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v0

    instance-of v1, p0, Lb/f/a/j/g;

    if-eqz v1, :cond_c

    move-object v1, p0

    check-cast v1, Lb/f/a/j/g;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v2

    instance-of v3, v0, Lb/f/a/j/g;

    if-eqz v3, :cond_1a

    move-object v1, v0

    check-cast v1, Lb/f/a/j/g;

    :cond_1a
    move-object v0, v2

    goto :goto_d

    :cond_1c
    return-object v1
.end method

.method public K()V
    .registers 5

    invoke-virtual {p0}, Lb/f/a/j/q;->H()V

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    iget-object v2, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/f;

    instance-of v3, v2, Lb/f/a/j/q;

    if-eqz v3, :cond_20

    check-cast v2, Lb/f/a/j/q;

    invoke-virtual {v2}, Lb/f/a/j/q;->K()V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    return-void
.end method

.method public L()V
    .registers 2

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(Lb/f/a/c;)V
    .registers 5

    invoke-super {p0, p1}, Lb/f/a/j/f;->a(Lb/f/a/c;)V

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/f;

    invoke-virtual {v2, p1}, Lb/f/a/j/f;->a(Lb/f/a/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public b(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Lb/f/a/j/f;->b(II)V

    iget-object p1, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_a
    if-ge p2, p1, :cond_22

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/a/j/f;

    invoke-virtual {p0}, Lb/f/a/j/f;->o()I

    move-result v1

    invoke-virtual {p0}, Lb/f/a/j/f;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lb/f/a/j/f;->b(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_22
    return-void
.end method

.method public b(Lb/f/a/j/f;)V
    .registers 3

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v0

    check-cast v0, Lb/f/a/j/q;

    invoke-virtual {v0, p1}, Lb/f/a/j/q;->c(Lb/f/a/j/f;)V

    :cond_14
    invoke-virtual {p1, p0}, Lb/f/a/j/f;->a(Lb/f/a/j/f;)V

    return-void
.end method

.method public c(Lb/f/a/j/f;)V
    .registers 3

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/f/a/j/f;->a(Lb/f/a/j/f;)V

    return-void
.end method
