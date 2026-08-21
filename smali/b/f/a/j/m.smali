###### Class b.f.a.j.m (b.f.a.j.m)
.class public Lb/f/a/j/m;
.super Lb/f/a/j/o;
.source ""


# instance fields
.field c:Lb/f/a/j/e;

.field d:Lb/f/a/j/m;

.field e:F

.field f:Lb/f/a/j/m;

.field g:F

.field h:I

.field private i:Lb/f/a/j/m;

.field private j:Lb/f/a/j/n;

.field private k:I

.field private l:Lb/f/a/j/n;

.field private m:I


# direct methods
.method public constructor <init>(Lb/f/a/j/e;)V
    .registers 4

    invoke-direct {p0}, Lb/f/a/j/o;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/m;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/a/j/m;->j:Lb/f/a/j/n;

    const/4 v1, 0x1

    iput v1, p0, Lb/f/a/j/m;->k:I

    iput-object v0, p0, Lb/f/a/j/m;->l:Lb/f/a/j/n;

    iput v1, p0, Lb/f/a/j/m;->m:I

    iput-object p1, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "DIRECT"

    return-object p1

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    const-string p1, "CENTER"

    return-object p1

    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    const-string p1, "MATCH"

    return-object p1

    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    const-string p1, "CHAIN"

    return-object p1

    :cond_18
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    const-string p1, "BARRIER"

    return-object p1

    :cond_1e
    const-string p1, "UNCONNECTED"

    return-object p1
.end method

.method public a(ILb/f/a/j/m;I)V
    .registers 4

    iput p1, p0, Lb/f/a/j/m;->h:I

    iput-object p2, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    int-to-float p1, p3

    iput p1, p0, Lb/f/a/j/m;->e:F

    iget-object p1, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    invoke-virtual {p1, p0}, Lb/f/a/j/o;->a(Lb/f/a/j/o;)V

    return-void
.end method

.method a(Lb/f/a/e;)V
    .registers 6

    iget-object v0, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->e()Lb/f/a/i;

    move-result-object v0

    iget-object v1, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_14

    iget v1, p0, Lb/f/a/j/m;->g:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lb/f/a/e;->a(Lb/f/a/i;I)V

    goto :goto_22

    :cond_14
    iget-object v1, v1, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {p1, v1}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v1

    iget v3, p0, Lb/f/a/j/m;->g:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    :goto_22
    return-void
.end method

.method public a(Lb/f/a/j/m;F)V
    .registers 4

    iget v0, p0, Lb/f/a/j/o;->b:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    if-eq v0, p1, :cond_1d

    iget v0, p0, Lb/f/a/j/m;->g:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1d

    :cond_e
    iput-object p1, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iput p2, p0, Lb/f/a/j/m;->g:F

    iget p1, p0, Lb/f/a/j/o;->b:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1a

    invoke-virtual {p0}, Lb/f/a/j/o;->b()V

    :cond_1a
    invoke-virtual {p0}, Lb/f/a/j/o;->a()V

    :cond_1d
    return-void
.end method

.method public a(Lb/f/a/j/m;I)V
    .registers 3

    iput-object p1, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    int-to-float p1, p2

    iput p1, p0, Lb/f/a/j/m;->e:F

    iget-object p1, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    invoke-virtual {p1, p0}, Lb/f/a/j/o;->a(Lb/f/a/j/o;)V

    return-void
.end method

.method public a(Lb/f/a/j/m;ILb/f/a/j/n;)V
    .registers 4

    iput-object p1, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget-object p1, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    invoke-virtual {p1, p0}, Lb/f/a/j/o;->a(Lb/f/a/j/o;)V

    iput-object p3, p0, Lb/f/a/j/m;->j:Lb/f/a/j/n;

    iput p2, p0, Lb/f/a/j/m;->k:I

    iget-object p1, p0, Lb/f/a/j/m;->j:Lb/f/a/j/n;

    invoke-virtual {p1, p0}, Lb/f/a/j/o;->a(Lb/f/a/j/o;)V

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/m;->h:I

    return-void
.end method

.method public b(Lb/f/a/j/m;F)V
    .registers 3

    iput-object p1, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    return-void
.end method

.method public b(Lb/f/a/j/m;ILb/f/a/j/n;)V
    .registers 4

    iput-object p1, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    iput-object p3, p0, Lb/f/a/j/m;->l:Lb/f/a/j/n;

    iput p2, p0, Lb/f/a/j/m;->m:I

    return-void
.end method

.method public d()V
    .registers 4

    invoke-super {p0}, Lb/f/a/j/o;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    const/4 v1, 0x0

    iput v1, p0, Lb/f/a/j/m;->e:F

    iput-object v0, p0, Lb/f/a/j/m;->j:Lb/f/a/j/n;

    const/4 v2, 0x1

    iput v2, p0, Lb/f/a/j/m;->k:I

    iput-object v0, p0, Lb/f/a/j/m;->l:Lb/f/a/j/n;

    iput v2, p0, Lb/f/a/j/m;->m:I

    iput-object v0, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iput v1, p0, Lb/f/a/j/m;->g:F

    iput-object v0, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/m;->h:I

    return-void
.end method

.method public e()V
    .registers 9

    iget v0, p0, Lb/f/a/j/o;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lb/f/a/j/m;->h:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lb/f/a/j/m;->j:Lb/f/a/j/n;

    if-eqz v0, :cond_1e

    iget v2, v0, Lb/f/a/j/o;->b:I

    if-eq v2, v1, :cond_15

    return-void

    :cond_15
    iget v2, p0, Lb/f/a/j/m;->k:I

    int-to-float v2, v2

    iget v0, v0, Lb/f/a/j/n;->c:F

    mul-float v2, v2, v0

    iput v2, p0, Lb/f/a/j/m;->e:F

    :cond_1e
    iget-object v0, p0, Lb/f/a/j/m;->l:Lb/f/a/j/n;

    if-eqz v0, :cond_29

    iget v2, v0, Lb/f/a/j/o;->b:I

    if-eq v2, v1, :cond_27

    return-void

    :cond_27
    iget v0, v0, Lb/f/a/j/n;->c:F

    :cond_29
    iget v0, p0, Lb/f/a/j/m;->h:I

    if-ne v0, v1, :cond_4e

    iget-object v0, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    if-eqz v0, :cond_35

    iget v0, v0, Lb/f/a/j/o;->b:I

    if-ne v0, v1, :cond_4e

    :cond_35
    iget-object v0, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    if-nez v0, :cond_3e

    iput-object p0, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iget v0, p0, Lb/f/a/j/m;->e:F

    goto :goto_47

    :cond_3e
    iget-object v1, v0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iput-object v1, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iget v0, v0, Lb/f/a/j/m;->g:F

    iget v1, p0, Lb/f/a/j/m;->e:F

    add-float/2addr v0, v1

    :goto_47
    iput v0, p0, Lb/f/a/j/m;->g:F

    invoke-virtual {p0}, Lb/f/a/j/o;->a()V

    goto/16 :goto_18b

    :cond_4e
    iget v0, p0, Lb/f/a/j/m;->h:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    if-ne v0, v2, :cond_132

    iget-object v0, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    if-eqz v0, :cond_132

    iget v0, v0, Lb/f/a/j/o;->b:I

    if-ne v0, v1, :cond_132

    iget-object v0, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    if-eqz v0, :cond_132

    iget-object v0, v0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    if-eqz v0, :cond_132

    iget v0, v0, Lb/f/a/j/o;->b:I

    if-ne v0, v1, :cond_132

    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v0

    iget-wide v5, v0, Lb/f/a/f;->v:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lb/f/a/f;->v:J

    :cond_78
    iget-object v0, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget-object v0, v0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iput-object v0, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iget-object v0, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    iget-object v2, v0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget-object v2, v2, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iput-object v2, v0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iget-object v0, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->c:Lb/f/a/j/e$d;

    sget-object v2, Lb/f/a/j/e$d;->e:Lb/f/a/j/e$d;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_95

    sget-object v2, Lb/f/a/j/e$d;->f:Lb/f/a/j/e$d;

    if-ne v0, v2, :cond_94

    goto :goto_95

    :cond_94
    const/4 v1, 0x0

    :cond_95
    :goto_95
    if-eqz v1, :cond_a0

    iget-object v0, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget v0, v0, Lb/f/a/j/m;->g:F

    iget-object v2, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    iget-object v2, v2, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    goto :goto_a8

    :cond_a0
    iget-object v0, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    iget-object v0, v0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget v0, v0, Lb/f/a/j/m;->g:F

    iget-object v2, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    :goto_a8
    iget v2, v2, Lb/f/a/j/m;->g:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v4, v2, Lb/f/a/j/e;->c:Lb/f/a/j/e$d;

    sget-object v5, Lb/f/a/j/e$d;->c:Lb/f/a/j/e$d;

    if-eq v4, v5, :cond_c7

    sget-object v5, Lb/f/a/j/e$d;->e:Lb/f/a/j/e$d;

    if-ne v4, v5, :cond_b8

    goto :goto_c7

    :cond_b8
    iget-object v2, v2, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-virtual {v2}, Lb/f/a/j/f;->i()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v2, v2, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget v2, v2, Lb/f/a/j/f;->W:F

    goto :goto_d7

    :cond_c7
    :goto_c7
    iget-object v2, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v2, v2, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-virtual {v2}, Lb/f/a/j/f;->s()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v2, v2, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget v2, v2, Lb/f/a/j/f;->V:F

    :goto_d7
    iget-object v4, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v4}, Lb/f/a/j/e;->b()I

    move-result v4

    iget-object v5, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    iget-object v5, v5, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v5}, Lb/f/a/j/e;->b()I

    move-result v5

    iget-object v6, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v6}, Lb/f/a/j/e;->g()Lb/f/a/j/e;

    move-result-object v6

    iget-object v7, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    iget-object v7, v7, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v7}, Lb/f/a/j/e;->g()Lb/f/a/j/e;

    move-result-object v7

    if-ne v6, v7, :cond_f9

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    goto :goto_fa

    :cond_f9
    move v3, v4

    :goto_fa
    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v4, v5

    sub-float/2addr v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_11a

    iget-object v1, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    iget-object v6, v1, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget v6, v6, Lb/f/a/j/m;->g:F

    add-float/2addr v6, v4

    mul-float v4, v0, v2

    add-float/2addr v6, v4

    iput v6, v1, Lb/f/a/j/m;->g:F

    iget-object v1, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget v1, v1, Lb/f/a/j/m;->g:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v1, v0

    iput v1, p0, Lb/f/a/j/m;->g:F

    goto :goto_176

    :cond_11a
    iget-object v1, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget v1, v1, Lb/f/a/j/m;->g:F

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    iput v1, p0, Lb/f/a/j/m;->g:F

    iget-object v1, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    iget-object v3, v1, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget v3, v3, Lb/f/a/j/m;->g:F

    sub-float/2addr v3, v4

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v3, v0

    iput v3, v1, Lb/f/a/j/m;->g:F

    goto :goto_176

    :cond_132
    iget v0, p0, Lb/f/a/j/m;->h:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17f

    iget-object v0, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    if-eqz v0, :cond_17f

    iget v0, v0, Lb/f/a/j/o;->b:I

    if-ne v0, v1, :cond_17f

    iget-object v0, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    if-eqz v0, :cond_17f

    iget-object v0, v0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    if-eqz v0, :cond_17f

    iget v0, v0, Lb/f/a/j/o;->b:I

    if-ne v0, v1, :cond_17f

    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v0

    if-eqz v0, :cond_15a

    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v0

    iget-wide v1, v0, Lb/f/a/f;->w:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lb/f/a/f;->w:J

    :cond_15a
    iget-object v0, p0, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget-object v1, v0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iput-object v1, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iget-object v1, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    iget-object v2, v1, Lb/f/a/j/m;->d:Lb/f/a/j/m;

    iget-object v3, v2, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iput-object v3, v1, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    iget v0, v0, Lb/f/a/j/m;->g:F

    iget v3, p0, Lb/f/a/j/m;->e:F

    add-float/2addr v0, v3

    iput v0, p0, Lb/f/a/j/m;->g:F

    iget v0, v2, Lb/f/a/j/m;->g:F

    iget v2, v1, Lb/f/a/j/m;->e:F

    add-float/2addr v0, v2

    iput v0, v1, Lb/f/a/j/m;->g:F

    :goto_176
    invoke-virtual {p0}, Lb/f/a/j/o;->a()V

    iget-object v0, p0, Lb/f/a/j/m;->i:Lb/f/a/j/m;

    invoke-virtual {v0}, Lb/f/a/j/o;->a()V

    goto :goto_18b

    :cond_17f
    iget v0, p0, Lb/f/a/j/m;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18b

    iget-object v0, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-virtual {v0}, Lb/f/a/j/f;->G()V

    :cond_18b
    :goto_18b
    return-void
.end method

.method public f()F
    .registers 2

    iget v0, p0, Lb/f/a/j/m;->g:F

    return v0
.end method

.method public g()V
    .registers 5

    iget-object v0, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->g()Lb/f/a/j/e;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Lb/f/a/j/e;->g()Lb/f/a/j/e;

    move-result-object v1

    iget-object v2, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x4

    iput v1, p0, Lb/f/a/j/m;->h:I

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v2

    iput v1, v2, Lb/f/a/j/m;->h:I

    :cond_1a
    iget-object v1, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->b()I

    move-result v1

    iget-object v2, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v2, v2, Lb/f/a/j/e;->c:Lb/f/a/j/e$d;

    sget-object v3, Lb/f/a/j/e$d;->e:Lb/f/a/j/e$d;

    if-eq v2, v3, :cond_2c

    sget-object v3, Lb/f/a/j/e$d;->f:Lb/f/a/j/e$d;

    if-ne v2, v3, :cond_2d

    :cond_2c
    neg-int v1, v1

    :cond_2d
    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lb/f/a/j/m;->a(Lb/f/a/j/m;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lb/f/a/j/o;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    const-string v1, ", RESOLVED: "

    const-string v2, "["

    if-ne v0, p0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/f/a/j/m;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/f/a/j/m;->h:I

    invoke-virtual {p0, v1}, Lb/f/a/j/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/f/a/j/m;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    goto :goto_24

    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    goto :goto_24
.end method
