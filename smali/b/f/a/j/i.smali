###### Class b.f.a.j.i (b.f.a.j.i)
.class public Lb/f/a/j/i;
.super Lb/f/a/j/f;
.source ""


# instance fields
.field protected k0:F

.field protected l0:I

.field protected m0:I

.field private n0:Lb/f/a/j/e;

.field private o0:I

.field private p0:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lb/f/a/j/f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lb/f/a/j/i;->k0:F

    const/4 v0, -0x1

    iput v0, p0, Lb/f/a/j/i;->l0:I

    iput v0, p0, Lb/f/a/j/i;->m0:I

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iput-object v0, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/i;->o0:I

    iput-boolean v0, p0, Lb/f/a/j/i;->p0:Z

    new-instance v1, Lb/f/a/j/l;

    invoke-direct {v1}, Lb/f/a/j/l;-><init>()V

    iget-object v1, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    array-length v1, v1

    :goto_29
    if-ge v0, v1, :cond_34

    iget-object v2, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    iget-object v3, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_34
    return-void
.end method


# virtual methods
.method public J()I
    .registers 2

    iget v0, p0, Lb/f/a/j/i;->o0:I

    return v0
.end method

.method public a(Lb/f/a/j/e$d;)Lb/f/a/j/e;
    .registers 4

    sget-object v0, Lb/f/a/j/i$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    goto :goto_1d

    :pswitch_c
    const/4 p1, 0x0

    return-object p1

    :pswitch_e
    iget v0, p0, Lb/f/a/j/i;->o0:I

    if-nez v0, :cond_1d

    iget-object p1, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    return-object p1

    :pswitch_15
    iget v0, p0, Lb/f/a/j/i;->o0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    iget-object p1, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    return-object p1

    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public a(I)V
    .registers 8

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lb/f/a/j/i;->J()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_9e

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object v5, p1, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v5}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object v5, p1, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v5}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget v0, p0, Lb/f/a/j/i;->l0:I

    if-eq v0, v2, :cond_4f

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object v1, p1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    iget v2, p0, Lb/f/a/j/i;->l0:I

    invoke-virtual {v0, v4, v1, v2}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object p1, p1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    goto/16 :goto_d9

    :cond_4f
    iget v0, p0, Lb/f/a/j/i;->m0:I

    if-eq v0, v2, :cond_6f

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object v1, p1, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    iget v2, p0, Lb/f/a/j/i;->m0:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object p1, p1, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    goto/16 :goto_101

    :cond_6f
    iget v0, p0, Lb/f/a/j/i;->k0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13d

    invoke-virtual {p1}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v0

    sget-object v1, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    if-ne v0, v1, :cond_13d

    iget v0, p1, Lb/f/a/j/f;->E:I

    int-to-float v0, v0

    iget v1, p0, Lb/f/a/j/i;->k0:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    iget-object v2, p1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v2}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget-object v1, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    iget-object p1, p1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    goto/16 :goto_136

    :cond_9e
    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object v5, p1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v5}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object v5, p1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v5}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget v0, p0, Lb/f/a/j/i;->l0:I

    if-eq v0, v2, :cond_e3

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object v1, p1, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    iget v2, p0, Lb/f/a/j/i;->l0:I

    invoke-virtual {v0, v4, v1, v2}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object p1, p1, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    :goto_d9
    invoke-virtual {p1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object p1

    iget v1, p0, Lb/f/a/j/i;->l0:I

    :goto_df
    invoke-virtual {v0, v4, p1, v1}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    goto :goto_13d

    :cond_e3
    iget v0, p0, Lb/f/a/j/i;->m0:I

    if-eq v0, v2, :cond_109

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object v1, p1, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    iget v2, p0, Lb/f/a/j/i;->m0:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object p1, p1, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    :goto_101
    invoke-virtual {p1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object p1

    iget v1, p0, Lb/f/a/j/i;->m0:I

    neg-int v1, v1

    goto :goto_df

    :cond_109
    iget v0, p0, Lb/f/a/j/i;->k0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13d

    invoke-virtual {p1}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v0

    sget-object v1, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    if-ne v0, v1, :cond_13d

    iget v0, p1, Lb/f/a/j/f;->F:I

    int-to-float v0, v0

    iget v1, p0, Lb/f/a/j/i;->k0:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    iget-object v2, p1, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v2}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    iget-object v1, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    iget-object p1, p1, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    :goto_136
    invoke-virtual {p1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Lb/f/a/j/m;->a(ILb/f/a/j/m;I)V

    :cond_13d
    :goto_13d
    return-void
.end method

.method public a(Lb/f/a/e;)V
    .registers 11

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v0

    check-cast v0, Lb/f/a/j/g;

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v1, Lb/f/a/j/e$d;->c:Lb/f/a/j/e$d;

    invoke-virtual {v0, v1}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v1

    sget-object v2, Lb/f/a/j/e$d;->e:Lb/f/a/j/e$d;

    invoke-virtual {v0, v2}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v2

    iget-object v3, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_25

    iget-object v3, v3, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v3, v3, v5

    sget-object v6, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v3, v6, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    iget v6, p0, Lb/f/a/j/i;->o0:I

    if-nez v6, :cond_45

    sget-object v1, Lb/f/a/j/e$d;->d:Lb/f/a/j/e$d;

    invoke-virtual {v0, v1}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v1

    sget-object v2, Lb/f/a/j/e$d;->f:Lb/f/a/j/e$d;

    invoke-virtual {v0, v2}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v2

    iget-object v0, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-eqz v0, :cond_44

    iget-object v0, v0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v0, v0, v4

    sget-object v3, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v0, v3, :cond_44

    const/4 v3, 0x1

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :cond_45
    :goto_45
    iget v0, p0, Lb/f/a/j/i;->l0:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_65

    iget-object v0, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v0

    invoke-virtual {p1, v1}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v1

    iget v6, p0, Lb/f/a/j/i;->l0:I

    invoke-virtual {p1, v0, v1, v6, v4}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    if-eqz v3, :cond_a8

    invoke-virtual {p1, v2}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    goto :goto_a8

    :cond_65
    iget v0, p0, Lb/f/a/j/i;->m0:I

    if-eq v0, v6, :cond_86

    iget-object v0, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v0

    invoke-virtual {p1, v2}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v2

    iget v6, p0, Lb/f/a/j/i;->m0:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    if-eqz v3, :cond_a8

    invoke-virtual {p1, v1}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    invoke-virtual {p1, v2, v0, v5, v7}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    goto :goto_a8

    :cond_86
    iget v0, p0, Lb/f/a/j/i;->k0:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v4

    invoke-virtual {p1, v1}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v5

    invoke-virtual {p1, v2}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v6

    iget v7, p0, Lb/f/a/j/i;->k0:F

    iget-boolean v8, p0, Lb/f/a/j/i;->p0:Z

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lb/f/a/e;->a(Lb/f/a/e;Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;FZ)Lb/f/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/f/a/e;->a(Lb/f/a/b;)V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lb/f/a/j/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Lb/f/a/e;)V
    .registers 5

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->b(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lb/f/a/j/i;->o0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->r(I)V

    invoke-virtual {p0, v2}, Lb/f/a/j/f;->s(I)V

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object p1

    invoke-virtual {p1}, Lb/f/a/j/f;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->g(I)V

    invoke-virtual {p0, v2}, Lb/f/a/j/f;->o(I)V

    goto :goto_3c

    :cond_28
    invoke-virtual {p0, v2}, Lb/f/a/j/f;->r(I)V

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->s(I)V

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object p1

    invoke-virtual {p1}, Lb/f/a/j/f;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->o(I)V

    invoke-virtual {p0, v2}, Lb/f/a/j/f;->g(I)V

    :goto_3c
    return-void
.end method

.method public e(F)V
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    iput p1, p0, Lb/f/a/j/i;->k0:F

    const/4 p1, -0x1

    iput p1, p0, Lb/f/a/j/i;->l0:I

    iput p1, p0, Lb/f/a/j/i;->m0:I

    :cond_d
    return-void
.end method

.method public t(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lb/f/a/j/i;->k0:F

    iput p1, p0, Lb/f/a/j/i;->l0:I

    iput v0, p0, Lb/f/a/j/i;->m0:I

    :cond_b
    return-void
.end method

.method public u(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lb/f/a/j/i;->k0:F

    iput v0, p0, Lb/f/a/j/i;->l0:I

    iput p1, p0, Lb/f/a/j/i;->m0:I

    :cond_b
    return-void
.end method

.method public v(I)V
    .registers 5

    iget v0, p0, Lb/f/a/j/i;->o0:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lb/f/a/j/i;->o0:I

    iget-object p1, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lb/f/a/j/i;->o0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    goto :goto_16

    :cond_14
    iget-object p1, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    :goto_16
    iput-object p1, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    iget-object p1, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, p1, :cond_2e

    iget-object v1, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    iget-object v2, p0, Lb/f/a/j/i;->n0:Lb/f/a/j/e;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_2e
    return-void
.end method

###### Class b.f.a.j.i.a (b.f.a.j.i$a)
.class synthetic Lb/f/a/j/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/f/a/j/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lb/f/a/j/e$d;->values()[Lb/f/a/j/e$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lb/f/a/j/i$a;->a:[I

    :try_start_9
    sget-object v0, Lb/f/a/j/i$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->c:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lb/f/a/j/i$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->e:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lb/f/a/j/i$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->d:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lb/f/a/j/i$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->f:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lb/f/a/j/i$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->g:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lb/f/a/j/i$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->h:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lb/f/a/j/i$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->i:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v0, Lb/f/a/j/i$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->j:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v0, Lb/f/a/j/i$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->b:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6e

    :catch_6e
    return-void
.end method
