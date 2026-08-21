###### Class b.f.a.j.b (b.f.a.j.b)
.class public Lb/f/a/j/b;
.super Lb/f/a/j/j;
.source ""


# instance fields
.field private m0:I

.field private n0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/f/a/j/m;",
            ">;"
        }
    .end annotation
.end field

.field private o0:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lb/f/a/j/j;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/b;->m0:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lb/f/a/j/b;->n0:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/f/a/j/b;->o0:Z

    return-void
.end method


# virtual methods
.method public F()V
    .registers 2

    invoke-super {p0}, Lb/f/a/j/f;->F()V

    iget-object v0, p0, Lb/f/a/j/b;->n0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public G()V
    .registers 12

    iget v0, p0, Lb/f/a/j/b;->m0:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_20

    if-eq v0, v4, :cond_18

    if-eq v0, v3, :cond_15

    if-eq v0, v2, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    goto :goto_1a

    :cond_15
    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    goto :goto_22

    :cond_18
    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    :goto_1a
    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_26

    :cond_20
    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    :goto_22
    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    :goto_26
    iget-object v5, p0, Lb/f/a/j/b;->n0:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v5, :cond_58

    iget-object v8, p0, Lb/f/a/j/b;->n0:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/f/a/j/m;

    iget v9, v8, Lb/f/a/j/o;->b:I

    if-eq v9, v4, :cond_3d

    return-void

    :cond_3d
    iget v9, p0, Lb/f/a/j/b;->m0:I

    if-eqz v9, :cond_4b

    if-ne v9, v3, :cond_44

    goto :goto_4b

    :cond_44
    iget v9, v8, Lb/f/a/j/m;->g:F

    cmpl-float v10, v9, v1

    if-lez v10, :cond_55

    goto :goto_51

    :cond_4b
    :goto_4b
    iget v9, v8, Lb/f/a/j/m;->g:F

    cmpg-float v10, v9, v1

    if-gez v10, :cond_55

    :goto_51
    iget-object v1, v8, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    move-object v6, v1

    move v1, v9

    :cond_55
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_58
    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v5

    if-eqz v5, :cond_69

    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v5

    iget-wide v7, v5, Lb/f/a/f;->y:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v5, Lb/f/a/f;->y:J

    :cond_69
    iput-object v6, v0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iput v1, v0, Lb/f/a/j/m;->g:F

    invoke-virtual {v0}, Lb/f/a/j/o;->a()V

    iget v0, p0, Lb/f/a/j/b;->m0:I

    if-eqz v0, :cond_84

    if-eq v0, v4, :cond_81

    if-eq v0, v3, :cond_7e

    if-eq v0, v2, :cond_7b

    return-void

    :cond_7b
    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    goto :goto_86

    :cond_7e
    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    goto :goto_86

    :cond_81
    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    goto :goto_86

    :cond_84
    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    :goto_86
    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Lb/f/a/j/m;->a(Lb/f/a/j/m;F)V

    return-void
.end method

.method public a(I)V
    .registers 9

    iget-object p1, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-nez p1, :cond_5

    return-void

    :cond_5
    check-cast p1, Lb/f/a/j/g;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lb/f/a/j/g;->t(I)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    iget p1, p0, Lb/f/a/j/b;->m0:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_25

    if-eq p1, v2, :cond_22

    if-eq p1, v0, :cond_1f

    if-eq p1, v1, :cond_1c

    return-void

    :cond_1c
    iget-object p1, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    goto :goto_27

    :cond_1f
    iget-object p1, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    goto :goto_27

    :cond_22
    iget-object p1, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    goto :goto_27

    :cond_25
    iget-object p1, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    :goto_27
    invoke-virtual {p1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object p1

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lb/f/a/j/m;->b(I)V

    iget v3, p0, Lb/f/a/j/b;->m0:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_44

    if-ne v3, v2, :cond_38

    goto :goto_44

    :cond_38
    iget-object v3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v3}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lb/f/a/j/m;->a(Lb/f/a/j/m;F)V

    iget-object v3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    goto :goto_4f

    :cond_44
    :goto_44
    iget-object v3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v3}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lb/f/a/j/m;->a(Lb/f/a/j/m;F)V

    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    :goto_4f
    invoke-virtual {v3}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lb/f/a/j/m;->a(Lb/f/a/j/m;F)V

    iget-object v3, p0, Lb/f/a/j/b;->n0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_5c
    iget v4, p0, Lb/f/a/j/j;->l0:I

    if-ge v3, v4, :cond_97

    iget-object v4, p0, Lb/f/a/j/j;->k0:[Lb/f/a/j/f;

    aget-object v4, v4, v3

    iget-boolean v6, p0, Lb/f/a/j/b;->o0:Z

    if-nez v6, :cond_6f

    invoke-virtual {v4}, Lb/f/a/j/f;->a()Z

    move-result v6

    if-nez v6, :cond_6f

    goto :goto_94

    :cond_6f
    iget v6, p0, Lb/f/a/j/b;->m0:I

    if-eqz v6, :cond_84

    if-eq v6, v2, :cond_81

    if-eq v6, v0, :cond_7e

    if-eq v6, v1, :cond_7b

    move-object v4, v5

    goto :goto_8a

    :cond_7b
    iget-object v4, v4, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    goto :goto_86

    :cond_7e
    iget-object v4, v4, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    goto :goto_86

    :cond_81
    iget-object v4, v4, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    goto :goto_86

    :cond_84
    iget-object v4, v4, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    :goto_86
    invoke-virtual {v4}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v4

    :goto_8a
    if-eqz v4, :cond_94

    iget-object v6, p0, Lb/f/a/j/b;->n0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p1}, Lb/f/a/j/o;->a(Lb/f/a/j/o;)V

    :cond_94
    :goto_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_97
    return-void
.end method

.method public a(Lb/f/a/e;)V
    .registers 12

    iget-object v0, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    iget-object v1, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget-object v1, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v0, 0x0

    :goto_17
    iget-object v1, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    array-length v6, v1

    if-ge v0, v6, :cond_29

    aget-object v6, v1, v0

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v1

    iput-object v1, v6, Lb/f/a/j/e;->i:Lb/f/a/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_29
    iget v0, p0, Lb/f/a/j/b;->m0:I

    if-ltz v0, :cond_12c

    const/4 v6, 0x4

    if-ge v0, v6, :cond_12c

    aget-object v0, v1, v0

    const/4 v1, 0x0

    :goto_33
    iget v6, p0, Lb/f/a/j/j;->l0:I

    if-ge v1, v6, :cond_68

    iget-object v6, p0, Lb/f/a/j/j;->k0:[Lb/f/a/j/f;

    aget-object v6, v6, v1

    iget-boolean v7, p0, Lb/f/a/j/b;->o0:Z

    if-nez v7, :cond_46

    invoke-virtual {v6}, Lb/f/a/j/f;->a()Z

    move-result v7

    if-nez v7, :cond_46

    goto :goto_65

    :cond_46
    iget v7, p0, Lb/f/a/j/b;->m0:I

    if-eqz v7, :cond_4c

    if-ne v7, v4, :cond_56

    :cond_4c
    invoke-virtual {v6}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v7

    sget-object v8, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v7, v8, :cond_56

    :goto_54
    const/4 v1, 0x1

    goto :goto_69

    :cond_56
    iget v7, p0, Lb/f/a/j/b;->m0:I

    if-eq v7, v3, :cond_5c

    if-ne v7, v5, :cond_65

    :cond_5c
    invoke-virtual {v6}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v6

    sget-object v7, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v6, v7, :cond_65

    goto :goto_54

    :cond_65
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_68
    const/4 v1, 0x0

    :goto_69
    iget v6, p0, Lb/f/a/j/b;->m0:I

    if-eqz v6, :cond_7d

    if-ne v6, v4, :cond_70

    goto :goto_7d

    :cond_70
    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v6

    invoke-virtual {v6}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v6

    sget-object v7, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v6, v7, :cond_8a

    goto :goto_89

    :cond_7d
    :goto_7d
    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v6

    invoke-virtual {v6}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v6

    sget-object v7, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v6, v7, :cond_8a

    :goto_89
    const/4 v1, 0x0

    :cond_8a
    const/4 v6, 0x0

    :goto_8b
    iget v7, p0, Lb/f/a/j/j;->l0:I

    if-ge v6, v7, :cond_c3

    iget-object v7, p0, Lb/f/a/j/j;->k0:[Lb/f/a/j/f;

    aget-object v7, v7, v6

    iget-boolean v8, p0, Lb/f/a/j/b;->o0:Z

    if-nez v8, :cond_9e

    invoke-virtual {v7}, Lb/f/a/j/f;->a()Z

    move-result v8

    if-nez v8, :cond_9e

    goto :goto_c0

    :cond_9e
    iget-object v8, v7, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    iget v9, p0, Lb/f/a/j/b;->m0:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v8

    iget-object v7, v7, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    iget v9, p0, Lb/f/a/j/b;->m0:I

    aget-object v7, v7, v9

    iput-object v8, v7, Lb/f/a/j/e;->i:Lb/f/a/i;

    if-eqz v9, :cond_bb

    if-ne v9, v3, :cond_b5

    goto :goto_bb

    :cond_b5
    iget-object v7, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {p1, v7, v8, v1}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;Z)V

    goto :goto_c0

    :cond_bb
    :goto_bb
    iget-object v7, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {p1, v7, v8, v1}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;Z)V

    :goto_c0
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    :cond_c3
    iget v0, p0, Lb/f/a/j/b;->m0:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-nez v0, :cond_e4

    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {p1, v0, v3, v2, v7}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    if-nez v1, :cond_12c

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v1, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    iget-object v1, v1, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    :goto_de
    iget-object v1, v1, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {p1, v0, v1, v2, v6}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    goto :goto_12c

    :cond_e4
    if-ne v0, v4, :cond_fc

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {p1, v0, v3, v2, v7}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    if-nez v1, :cond_12c

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v1, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    iget-object v1, v1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    goto :goto_de

    :cond_fc
    if-ne v0, v3, :cond_114

    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {p1, v0, v3, v2, v7}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    if-nez v1, :cond_12c

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v1, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    iget-object v1, v1, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    goto :goto_de

    :cond_114
    if-ne v0, v5, :cond_12c

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {p1, v0, v3, v2, v7}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    if-nez v1, :cond_12c

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v1, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    iget-object v1, v1, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    goto :goto_de

    :cond_12c
    :goto_12c
    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/f/a/j/b;->o0:Z

    return-void
.end method

.method public t(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/b;->m0:I

    return-void
.end method
