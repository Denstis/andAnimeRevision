###### Class b.f.a.j.h (b.f.a.j.h)
.class public Lb/f/a/j/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field public d:Z

.field public final e:[I

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/f/a/j/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/f/a/j/h;->b:I

    iput v0, p0, Lb/f/a/j/h;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/f/a/j/h;->d:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lb/f/a/j/h;->b:I

    aput v2, v1, v0

    iget v0, p0, Lb/f/a/j/h;->c:I

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p0, Lb/f/a/j/h;->e:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->h:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->i:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->k:Ljava/util/List;

    iput-object p1, p0, Lb/f/a/j/h;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/f/a/j/f;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/f/a/j/h;->b:I

    iput v0, p0, Lb/f/a/j/h;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/f/a/j/h;->d:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lb/f/a/j/h;->b:I

    aput v2, v1, v0

    iget v0, p0, Lb/f/a/j/h;->c:I

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p0, Lb/f/a/j/h;->e:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->h:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->i:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/h;->k:Ljava/util/List;

    iput-object p1, p0, Lb/f/a/j/h;->a:Ljava/util/List;

    iput-boolean p2, p0, Lb/f/a/j/h;->d:Z

    return-void
.end method

.method private a(Lb/f/a/j/f;)V
    .registers 8

    iget-boolean v0, p1, Lb/f/a/j/f;->b0:Z

    if-eqz v0, :cond_d9

    invoke-virtual {p1}, Lb/f/a/j/f;->y()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p1, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1b

    iget-object v3, p1, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    goto :goto_1d

    :cond_1b
    iget-object v3, p1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    :goto_1d
    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_43

    iget-object v4, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-boolean v5, v4, Lb/f/a/j/f;->c0:Z

    if-nez v5, :cond_2a

    invoke-direct {p0, v4}, Lb/f/a/j/h;->a(Lb/f/a/j/f;)V

    :cond_2a
    iget-object v4, v3, Lb/f/a/j/e;->c:Lb/f/a/j/e$d;

    sget-object v5, Lb/f/a/j/e$d;->e:Lb/f/a/j/e$d;

    if-ne v4, v5, :cond_3a

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget v4, v3, Lb/f/a/j/f;->I:I

    invoke-virtual {v3}, Lb/f/a/j/f;->s()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_44

    :cond_3a
    sget-object v5, Lb/f/a/j/e$d;->c:Lb/f/a/j/e$d;

    if-ne v4, v5, :cond_43

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget v3, v3, Lb/f/a/j/f;->I:I

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    if-eqz v0, :cond_4e

    iget-object v0, p1, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_5a

    :cond_4e
    iget-object v0, p1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v0

    invoke-virtual {p1}, Lb/f/a/j/f;->s()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v3, v0

    :goto_5a
    invoke-virtual {p1}, Lb/f/a/j/f;->s()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p1, v0, v3}, Lb/f/a/j/f;->a(II)V

    iget-object v0, p1, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v0, :cond_85

    iget-object v1, v0, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-boolean v3, v1, Lb/f/a/j/f;->c0:Z

    if-nez v3, :cond_72

    invoke-direct {p0, v1}, Lb/f/a/j/h;->a(Lb/f/a/j/f;)V

    :cond_72
    iget-object v0, v0, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget v1, v0, Lb/f/a/j/f;->J:I

    iget v0, v0, Lb/f/a/j/f;->Q:I

    add-int/2addr v1, v0

    iget v0, p1, Lb/f/a/j/f;->Q:I

    sub-int/2addr v1, v0

    iget v0, p1, Lb/f/a/j/f;->F:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Lb/f/a/j/f;->e(II)V

    iput-boolean v2, p1, Lb/f/a/j/f;->c0:Z

    return-void

    :cond_85
    iget-object v0, p1, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v0, :cond_8c

    const/4 v1, 0x1

    :cond_8c
    if-eqz v1, :cond_91

    iget-object v0, p1, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    goto :goto_93

    :cond_91
    iget-object v0, p1, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    :goto_93
    iget-object v0, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v0, :cond_b8

    iget-object v4, v0, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-boolean v5, v4, Lb/f/a/j/f;->c0:Z

    if-nez v5, :cond_a0

    invoke-direct {p0, v4}, Lb/f/a/j/h;->a(Lb/f/a/j/f;)V

    :cond_a0
    iget-object v4, v0, Lb/f/a/j/e;->c:Lb/f/a/j/e$d;

    sget-object v5, Lb/f/a/j/e$d;->f:Lb/f/a/j/e$d;

    if-ne v4, v5, :cond_b0

    iget-object v0, v0, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget v3, v0, Lb/f/a/j/f;->J:I

    invoke-virtual {v0}, Lb/f/a/j/f;->i()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_b8

    :cond_b0
    sget-object v5, Lb/f/a/j/e$d;->d:Lb/f/a/j/e$d;

    if-ne v4, v5, :cond_b8

    iget-object v0, v0, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget v3, v0, Lb/f/a/j/f;->J:I

    :cond_b8
    :goto_b8
    if-eqz v1, :cond_c2

    iget-object v0, p1, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_ce

    :cond_c2
    iget-object v0, p1, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v0

    invoke-virtual {p1}, Lb/f/a/j/f;->i()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    :goto_ce
    invoke-virtual {p1}, Lb/f/a/j/f;->i()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p1, v0, v3}, Lb/f/a/j/f;->e(II)V

    iput-boolean v2, p1, Lb/f/a/j/f;->c0:Z

    :cond_d9
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lb/f/a/j/f;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/f/a/j/f;",
            ">;",
            "Lb/f/a/j/f;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p2, Lb/f/a/j/f;->d0:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p2, Lb/f/a/j/f;->d0:Z

    invoke-virtual {p2}, Lb/f/a/j/f;->y()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    instance-of v0, p2, Lb/f/a/j/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    move-object v0, p2

    check-cast v0, Lb/f/a/j/j;

    iget v2, v0, Lb/f/a/j/j;->l0:I

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_29

    iget-object v4, v0, Lb/f/a/j/j;->k0:[Lb/f/a/j/f;

    aget-object v4, v4, v3

    invoke-direct {p0, p1, v4}, Lb/f/a/j/h;->a(Ljava/util/ArrayList;Lb/f/a/j/f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_29
    iget-object v0, p2, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    array-length v0, v0

    :goto_2c
    if-ge v1, v0, :cond_46

    iget-object v2, p2, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v2, v2, v1

    iget-object v2, v2, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v2, :cond_43

    iget-object v3, v2, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    if-eqz v2, :cond_43

    invoke-virtual {p2}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v2

    if-eq v3, v2, :cond_43

    invoke-direct {p0, p1, v3}, Lb/f/a/j/h;->a(Ljava/util/ArrayList;Lb/f/a/j/f;)V

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_46
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/f/a/j/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lb/f/a/j/h;->j:Ljava/util/List;

    return-object v0

    :cond_b
    iget-object v0, p0, Lb/f/a/j/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2a

    iget-object v2, p0, Lb/f/a/j/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/f;

    iget-boolean v3, v2, Lb/f/a/j/f;->b0:Z

    if-nez v3, :cond_27

    iget-object v3, p0, Lb/f/a/j/h;->j:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lb/f/a/j/h;->a(Ljava/util/ArrayList;Lb/f/a/j/f;)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2a
    iget-object v0, p0, Lb/f/a/j/h;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lb/f/a/j/h;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/a/j/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lb/f/a/j/h;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/a/j/h;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lb/f/a/j/h;->j:Ljava/util/List;

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_5

    iget-object p1, p0, Lb/f/a/j/h;->f:Ljava/util/List;

    return-object p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lb/f/a/j/h;->g:Ljava/util/List;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lb/f/a/j/f;I)V
    .registers 4

    if-nez p2, :cond_8

    iget-object p2, p0, Lb/f/a/j/h;->h:Ljava/util/HashSet;

    :goto_4
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    iget-object p2, p0, Lb/f/a/j/h;->i:Ljava/util/HashSet;

    goto :goto_4

    :cond_e
    :goto_e
    return-void
.end method

.method b(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_5

    iget-object p1, p0, Lb/f/a/j/h;->h:Ljava/util/HashSet;

    return-object p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lb/f/a/j/h;->i:Ljava/util/HashSet;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method b()V
    .registers 4

    iget-object v0, p0, Lb/f/a/j/h;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lb/f/a/j/h;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/f;

    invoke-direct {p0, v2}, Lb/f/a/j/h;->a(Lb/f/a/j/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method
