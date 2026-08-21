###### Class b.f.a.j.a (b.f.a.j.a)
.class public Lb/f/a/j/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Lb/f/a/j/f;)I
    .registers 3

    invoke-virtual {p0}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v0

    sget-object v1, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v0, v1, :cond_23

    iget v0, p0, Lb/f/a/j/f;->H:I

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lb/f/a/j/f;->i()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lb/f/a/j/f;->G:F

    mul-float v0, v0, v1

    goto :goto_1e

    :cond_16
    invoke-virtual {p0}, Lb/f/a/j/f;->i()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lb/f/a/j/f;->G:F

    div-float/2addr v0, v1

    :goto_1e
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lb/f/a/j/f;->o(I)V

    goto :goto_48

    :cond_23
    invoke-virtual {p0}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v0

    sget-object v1, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v0, v1, :cond_47

    iget v0, p0, Lb/f/a/j/f;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    invoke-virtual {p0}, Lb/f/a/j/f;->s()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lb/f/a/j/f;->G:F

    mul-float v0, v0, v1

    goto :goto_42

    :cond_3a
    invoke-virtual {p0}, Lb/f/a/j/f;->s()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lb/f/a/j/f;->G:F

    div-float/2addr v0, v1

    :goto_42
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lb/f/a/j/f;->g(I)V

    goto :goto_48

    :cond_47
    const/4 v0, -0x1

    :goto_48
    return v0
.end method

.method private static a(Lb/f/a/j/f;I)I
    .registers 6

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    iget-object v1, v2, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v1, :cond_3b

    iget-object v1, v1, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-object v3, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-ne v1, v3, :cond_3b

    iget-object v1, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v1, :cond_3b

    iget-object v1, v1, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    if-ne v1, v3, :cond_3b

    invoke-virtual {v3, p1}, Lb/f/a/j/f;->d(I)I

    move-result v1

    if-nez p1, :cond_25

    iget v3, p0, Lb/f/a/j/f;->V:F

    goto :goto_27

    :cond_25
    iget v3, p0, Lb/f/a/j/f;->W:F

    :goto_27
    invoke-virtual {p0, p1}, Lb/f/a/j/f;->d(I)I

    move-result p0

    invoke-virtual {v2}, Lb/f/a/j/e;->b()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float p0, p0, v3

    float-to-int p0, p0

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lb/f/a/j/f;IZI)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lb/f/a/j/f;->b0:Z

    const/4 v4, 0x0

    if-nez v3, :cond_c

    return v4

    :cond_c
    iget-object v3, v0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    const/4 v5, 0x1

    if-eqz v3, :cond_17

    if-ne v1, v5, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-eqz v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->c()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->c()I

    move-result v8

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, 0x1

    goto :goto_3d

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->c()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->c()I

    move-result v7

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v8, v9, 0x1

    :goto_3d
    iget-object v10, v0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v11, v10, v9

    iget-object v11, v11, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v11, :cond_4f

    aget-object v10, v10, v8

    iget-object v10, v10, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v10, :cond_4f

    move v10, v8

    move v8, v9

    const/4 v9, -0x1

    goto :goto_51

    :cond_4f
    move v10, v9

    const/4 v9, 0x1

    :goto_51
    if-eqz v3, :cond_56

    sub-int v11, p3, v6

    goto :goto_58

    :cond_56
    move/from16 v11, p3

    :goto_58
    iget-object v13, v0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Lb/f/a/j/e;->b()I

    move-result v13

    mul-int v13, v13, v9

    invoke-static/range {p0 .. p1}, Lb/f/a/j/a;->a(Lb/f/a/j/f;I)I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v11, v13

    if-nez v1, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->s()I

    move-result v14

    goto :goto_73

    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v14

    :goto_73
    mul-int v14, v14, v9

    iget-object v15, v0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v15, v15, v8

    invoke-virtual {v15}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v15

    iget-object v15, v15, Lb/f/a/j/o;->a:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_83
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lb/f/a/j/m;

    iget-object v12, v12, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v12, v12, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-static {v12, v1, v2, v11}, Lb/f/a/j/a;->a(Lb/f/a/j/f;IZI)I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_83

    :cond_9e
    iget-object v12, v0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v12, v12, v10

    invoke-virtual {v12}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v12

    iget-object v12, v12, Lb/f/a/j/o;->a:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v15, 0x0

    :goto_ad
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_cf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lb/f/a/j/m;

    iget-object v5, v5, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v5, v5, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    move-object/from16 p3, v12

    add-int v12, v14, v11

    invoke-static {v5, v1, v2, v12}, Lb/f/a/j/a;->a(Lb/f/a/j/f;IZI)I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v12, p3

    const/4 v5, 0x1

    goto :goto_ad

    :cond_cf
    if-eqz v3, :cond_d5

    sub-int/2addr v4, v6

    add-int/2addr v15, v7

    :goto_d3
    const/4 v5, 0x1

    goto :goto_e4

    :cond_d5
    if-nez v1, :cond_dc

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->s()I

    move-result v5

    goto :goto_e0

    :cond_dc
    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v5

    :goto_e0
    mul-int v5, v5, v9

    add-int/2addr v15, v5

    goto :goto_d3

    :goto_e4
    if-ne v1, v5, :cond_156

    iget-object v12, v0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    invoke-virtual {v12}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v12

    iget-object v12, v12, Lb/f/a/j/o;->a:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v18, 0x0

    :goto_f4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_137

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p3, v12

    move-object/from16 v12, v16

    check-cast v12, Lb/f/a/j/m;

    if-ne v9, v5, :cond_11b

    iget-object v5, v12, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v5, v5, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    add-int v12, v6, v11

    invoke-static {v5, v1, v2, v12}, Lb/f/a/j/a;->a(Lb/f/a/j/f;IZI)I

    move-result v5

    move/from16 v12, v18

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v18, v5

    move/from16 v17, v10

    goto :goto_131

    :cond_11b
    move/from16 v5, v18

    iget-object v12, v12, Lb/f/a/j/m;->c:Lb/f/a/j/e;

    iget-object v12, v12, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    mul-int v16, v7, v9

    move/from16 v17, v10

    add-int v10, v16, v11

    invoke-static {v12, v1, v2, v10}, Lb/f/a/j/a;->a(Lb/f/a/j/f;IZI)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v18, v5

    :goto_131
    move-object/from16 v12, p3

    move/from16 v10, v17

    const/4 v5, 0x1

    goto :goto_f4

    :cond_137
    move/from16 v17, v10

    move/from16 v5, v18

    iget-object v10, v0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    invoke-virtual {v10}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v10

    iget-object v10, v10, Lb/f/a/j/o;->a:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_154

    if-nez v3, :cond_154

    const/4 v3, 0x1

    if-ne v9, v3, :cond_151

    add-int v3, v5, v6

    goto :goto_159

    :cond_151
    sub-int v3, v5, v7

    goto :goto_159

    :cond_154
    move v3, v5

    goto :goto_159

    :cond_156
    move/from16 v17, v10

    const/4 v3, 0x0

    :goto_159
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v13, v3

    add-int v3, v11, v14

    const/4 v4, -0x1

    if-ne v9, v4, :cond_168

    goto :goto_16d

    :cond_168
    move/from16 v19, v11

    move v11, v3

    move/from16 v3, v19

    :goto_16d
    if-eqz v2, :cond_176

    invoke-static {v0, v1, v3}, Lb/f/a/j/k;->a(Lb/f/a/j/f;II)V

    invoke-virtual {v0, v3, v11, v1}, Lb/f/a/j/f;->a(III)V

    goto :goto_17e

    :cond_176
    iget-object v2, v0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    invoke-virtual {v2, v0, v1}, Lb/f/a/j/h;->a(Lb/f/a/j/f;I)V

    invoke-virtual {v0, v3, v1}, Lb/f/a/j/f;->d(II)V

    :goto_17e
    invoke-virtual/range {p0 .. p1}, Lb/f/a/j/f;->c(I)Lb/f/a/j/f$b;

    move-result-object v2

    sget-object v3, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v2, v3, :cond_192

    iget v2, v0, Lb/f/a/j/f;->G:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_192

    iget-object v2, v0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    invoke-virtual {v2, v0, v1}, Lb/f/a/j/h;->a(Lb/f/a/j/f;I)V

    :cond_192
    iget-object v2, v0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v3, v2, v8

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_1bb

    aget-object v2, v2, v17

    iget-object v2, v2, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v2, :cond_1bb

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v2

    iget-object v3, v0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v4, v3, v8

    iget-object v4, v4, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v4, v4, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    if-ne v4, v2, :cond_1bb

    aget-object v3, v3, v17

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    if-ne v3, v2, :cond_1bb

    iget-object v2, v0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    invoke-virtual {v2, v0, v1}, Lb/f/a/j/h;->a(Lb/f/a/j/f;I)V

    :cond_1bb
    return v13
.end method

.method private static a(Lb/f/a/j/h;I)I
    .registers 12

    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1}, Lb/f/a/j/h;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, v2, :cond_3a

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/f/a/j/f;

    iget-object v7, v6, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v8, v0, 0x1

    aget-object v9, v7, v8

    iget-object v9, v9, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v9, :cond_2e

    aget-object v9, v7, v0

    iget-object v9, v9, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v9, :cond_2c

    aget-object v7, v7, v8

    iget-object v7, v7, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v7, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v7, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v7, 0x1

    :goto_2f
    invoke-static {v6, p1, v7, v3}, Lb/f/a/j/a;->a(Lb/f/a/j/f;IZI)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_3a
    iget-object p0, p0, Lb/f/a/j/h;->e:[I

    aput v5, p0, p1

    return v5
.end method

.method private static a(Lb/f/a/j/e;)V
    .registers 4

    invoke-virtual {p0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget-object v1, p0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eq v2, p0, :cond_13

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object p0

    invoke-virtual {p0, v0}, Lb/f/a/j/o;->a(Lb/f/a/j/o;)V

    :cond_13
    return-void
.end method

.method private static a(Lb/f/a/j/f;II)V
    .registers 9

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    iget-object v3, v2, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    const/4 v4, 0x1

    if-eqz v3, :cond_15

    iget-object v3, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    if-eqz v3, :cond_25

    invoke-static {p0, p1}, Lb/f/a/j/a;->a(Lb/f/a/j/f;I)I

    move-result p2

    invoke-virtual {v2}, Lb/f/a/j/e;->b()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lb/f/a/j/k;->a(Lb/f/a/j/f;II)V

    return-void

    :cond_25
    iget v3, p0, Lb/f/a/j/f;->G:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_60

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->c(I)Lb/f/a/j/f$b;

    move-result-object v3

    sget-object v5, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v3, v5, :cond_60

    invoke-static {p0}, Lb/f/a/j/a;->a(Lb/f/a/j/f;)I

    move-result p2

    iget-object v3, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget v0, v0, Lb/f/a/j/m;->g:F

    float-to-int v0, v0

    add-int v3, v0, p2

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v5

    invoke-virtual {v2}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v2

    iput-object v2, v5, Lb/f/a/j/m;->f:Lb/f/a/j/m;

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v2

    int-to-float p2, p2

    iput p2, v2, Lb/f/a/j/m;->g:F

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object p2

    iput v4, p2, Lb/f/a/j/o;->b:I

    invoke-virtual {p0, v0, v3, p1}, Lb/f/a/j/f;->a(III)V

    return-void

    :cond_60
    invoke-virtual {p0, p1}, Lb/f/a/j/f;->e(I)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->d(I)I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0, v0, p2, p1}, Lb/f/a/j/f;->a(III)V

    invoke-static {p0, p1, v0}, Lb/f/a/j/k;->a(Lb/f/a/j/f;II)V

    return-void
.end method

.method public static a(Lb/f/a/j/g;)V
    .registers 11

    invoke-virtual {p0}, Lb/f/a/j/g;->M()I

    move-result v0

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    invoke-static {p0}, Lb/f/a/j/a;->b(Lb/f/a/j/g;)V

    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/f/a/j/g;->D0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/f/a/j/g;->x0:Z

    iput-boolean v1, p0, Lb/f/a/j/g;->y0:Z

    iput-boolean v1, p0, Lb/f/a/j/g;->z0:Z

    iget-object v2, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    iget-object v3, p0, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-virtual {p0}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v4

    sget-object v5, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {p0}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v5

    sget-object v6, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v5, v6, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    :goto_31
    if-nez v4, :cond_38

    if-eqz v5, :cond_36

    goto :goto_38

    :cond_36
    const/4 v6, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v6, 0x1

    :goto_39
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/f/a/j/f;

    const/4 v9, 0x0

    iput-object v9, v8, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    iput-boolean v1, v8, Lb/f/a/j/f;->d0:Z

    invoke-virtual {v8}, Lb/f/a/j/f;->F()V

    goto :goto_40

    :cond_55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/f/a/j/f;

    iget-object v8, v7, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    if-nez v8, :cond_59

    invoke-static {v7, v3, v6}, Lb/f/a/j/a;->a(Lb/f/a/j/f;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_59

    invoke-static {p0}, Lb/f/a/j/a;->b(Lb/f/a/j/g;)V

    iput-boolean v1, p0, Lb/f/a/j/g;->D0:Z

    return-void

    :cond_75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/f/a/j/h;

    invoke-static {v8, v1}, Lb/f/a/j/a;->a(Lb/f/a/j/h;I)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v8, v0}, Lb/f/a/j/a;->a(Lb/f/a/j/h;I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7b

    :cond_98
    if-eqz v4, :cond_a8

    sget-object v2, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    invoke-virtual {p0, v2}, Lb/f/a/j/f;->a(Lb/f/a/j/f$b;)V

    invoke-virtual {p0, v6}, Lb/f/a/j/f;->o(I)V

    iput-boolean v0, p0, Lb/f/a/j/g;->x0:Z

    iput-boolean v0, p0, Lb/f/a/j/g;->y0:Z

    iput v6, p0, Lb/f/a/j/g;->A0:I

    :cond_a8
    if-eqz v5, :cond_b8

    sget-object v2, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    invoke-virtual {p0, v2}, Lb/f/a/j/f;->b(Lb/f/a/j/f$b;)V

    invoke-virtual {p0, v7}, Lb/f/a/j/f;->g(I)V

    iput-boolean v0, p0, Lb/f/a/j/g;->x0:Z

    iput-boolean v0, p0, Lb/f/a/j/g;->z0:Z

    iput v7, p0, Lb/f/a/j/g;->B0:I

    :cond_b8
    invoke-virtual {p0}, Lb/f/a/j/f;->s()I

    move-result v2

    invoke-static {v3, v1, v2}, Lb/f/a/j/a;->a(Ljava/util/List;II)V

    invoke-virtual {p0}, Lb/f/a/j/f;->i()I

    move-result p0

    invoke-static {v3, v0, p0}, Lb/f/a/j/a;->a(Ljava/util/List;II)V

    return-void
.end method

.method private static a(Lb/f/a/j/g;Lb/f/a/j/f;Lb/f/a/j/h;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p2, Lb/f/a/j/h;->d:Z

    iput-boolean v0, p0, Lb/f/a/j/g;->D0:Z

    iput-boolean v0, p1, Lb/f/a/j/f;->b0:Z

    return-void
.end method

.method public static a(Ljava/util/List;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/f/a/j/h;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/h;

    invoke-virtual {v2, p1}, Lb/f/a/j/h;->b(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/f/a/j/f;

    iget-boolean v4, v3, Lb/f/a/j/f;->b0:Z

    if-eqz v4, :cond_15

    invoke-static {v3, p1, p2}, Lb/f/a/j/a;->a(Lb/f/a/j/f;II)V

    goto :goto_15

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2c
    return-void
.end method

.method private static a(Lb/f/a/j/f;Lb/f/a/j/h;Ljava/util/List;Z)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/a/j/f;",
            "Lb/f/a/j/h;",
            "Ljava/util/List<",
            "Lb/f/a/j/h;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/f/a/j/f;->c0:Z

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v2

    check-cast v2, Lb/f/a/j/g;

    iget-object v3, p0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    if-nez v3, :cond_1f0

    iput-boolean v0, p0, Lb/f/a/j/f;->b0:Z

    iget-object v3, p1, Lb/f/a/j/h;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    iget-object v3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_44

    iget-object v3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_44

    iget-object v3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_44

    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_44

    iget-object v3, p0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_44

    iget-object v3, p0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_44

    invoke-static {v2, p0, p1}, Lb/f/a/j/a;->a(Lb/f/a/j/g;Lb/f/a/j/f;Lb/f/a/j/h;)V

    if-eqz p3, :cond_44

    return v1

    :cond_44
    iget-object v3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_77

    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_77

    invoke-virtual {v2}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v3

    sget-object v4, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-eqz p3, :cond_5c

    invoke-static {v2, p0, p1}, Lb/f/a/j/a;->a(Lb/f/a/j/g;Lb/f/a/j/f;Lb/f/a/j/h;)V

    return v1

    :cond_5c
    iget-object v3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v4

    if-ne v3, v4, :cond_74

    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v4

    if-eq v3, v4, :cond_77

    :cond_74
    invoke-static {v2, p0, p1}, Lb/f/a/j/a;->a(Lb/f/a/j/g;Lb/f/a/j/f;Lb/f/a/j/h;)V

    :cond_77
    iget-object v3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_aa

    iget-object v3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_aa

    invoke-virtual {v2}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v3

    sget-object v4, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-eqz p3, :cond_8f

    invoke-static {v2, p0, p1}, Lb/f/a/j/a;->a(Lb/f/a/j/g;Lb/f/a/j/f;Lb/f/a/j/h;)V

    return v1

    :cond_8f
    iget-object v3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v4

    if-ne v3, v4, :cond_a7

    iget-object v3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v4

    if-eq v3, v4, :cond_aa

    :cond_a7
    invoke-static {v2, p0, p1}, Lb/f/a/j/a;->a(Lb/f/a/j/g;Lb/f/a/j/f;Lb/f/a/j/h;)V

    :cond_aa
    invoke-virtual {p0}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v3

    sget-object v4, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v3, v4, :cond_b4

    const/4 v3, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v3, 0x0

    :goto_b5
    invoke-virtual {p0}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v4

    sget-object v5, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v4, v5, :cond_bf

    const/4 v4, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v4, 0x0

    :goto_c0
    xor-int/2addr v3, v4

    if-eqz v3, :cond_ce

    iget v3, p0, Lb/f/a/j/f;->G:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_ce

    invoke-static {p0}, Lb/f/a/j/a;->a(Lb/f/a/j/f;)I

    goto :goto_e4

    :cond_ce
    invoke-virtual {p0}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v3

    sget-object v4, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-eq v3, v4, :cond_de

    invoke-virtual {p0}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v3

    sget-object v4, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v3, v4, :cond_e4

    :cond_de
    invoke-static {v2, p0, p1}, Lb/f/a/j/a;->a(Lb/f/a/j/g;Lb/f/a/j/f;Lb/f/a/j/h;)V

    if-eqz p3, :cond_e4

    return v1

    :cond_e4
    :goto_e4
    iget-object v3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_f0

    iget-object v3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_12a

    :cond_f0
    iget-object v3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_102

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-object v4, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-ne v3, v4, :cond_102

    iget-object v3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_12a

    :cond_102
    iget-object v3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_114

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-object v4, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-ne v3, v4, :cond_114

    iget-object v3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_12a

    :cond_114
    iget-object v3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_13d

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-object v4, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-ne v3, v4, :cond_13d

    iget-object v3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_13d

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    if-ne v3, v4, :cond_13d

    :cond_12a
    iget-object v3, p0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_13d

    instance-of v3, p0, Lb/f/a/j/i;

    if-nez v3, :cond_13d

    instance-of v3, p0, Lb/f/a/j/j;

    if-nez v3, :cond_13d

    iget-object v3, p1, Lb/f/a/j/h;->f:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13d
    iget-object v3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_149

    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_183

    :cond_149
    iget-object v3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_15b

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-object v4, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-ne v3, v4, :cond_15b

    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_183

    :cond_15b
    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_16d

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-object v4, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-ne v3, v4, :cond_16d

    iget-object v3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_183

    :cond_16d
    iget-object v3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_19c

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-object v4, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-ne v3, v4, :cond_19c

    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_19c

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    if-ne v3, v4, :cond_19c

    :cond_183
    iget-object v3, p0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_19c

    iget-object v3, p0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v3, :cond_19c

    instance-of v3, p0, Lb/f/a/j/i;

    if-nez v3, :cond_19c

    instance-of v3, p0, Lb/f/a/j/j;

    if-nez v3, :cond_19c

    iget-object v3, p1, Lb/f/a/j/h;->g:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19c
    instance-of v3, p0, Lb/f/a/j/j;

    if-eqz v3, :cond_1bc

    invoke-static {v2, p0, p1}, Lb/f/a/j/a;->a(Lb/f/a/j/g;Lb/f/a/j/f;Lb/f/a/j/h;)V

    if-eqz p3, :cond_1a6

    return v1

    :cond_1a6
    move-object v3, p0

    check-cast v3, Lb/f/a/j/j;

    const/4 v4, 0x0

    :goto_1aa
    iget v5, v3, Lb/f/a/j/j;->l0:I

    if-ge v4, v5, :cond_1bc

    iget-object v5, v3, Lb/f/a/j/j;->k0:[Lb/f/a/j/f;

    aget-object v5, v5, v4

    invoke-static {v5, p1, p2, p3}, Lb/f/a/j/a;->a(Lb/f/a/j/f;Lb/f/a/j/h;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1b9

    return v1

    :cond_1b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1aa

    :cond_1bc
    iget-object v3, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_1c0
    if-ge v4, v3, :cond_1ef

    iget-object v5, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v5, v4

    iget-object v6, v5, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v6, :cond_1ec

    iget-object v6, v6, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v7

    if-eq v6, v7, :cond_1ec

    iget-object v6, v5, Lb/f/a/j/e;->c:Lb/f/a/j/e$d;

    sget-object v7, Lb/f/a/j/e$d;->h:Lb/f/a/j/e$d;

    if-ne v6, v7, :cond_1de

    invoke-static {v2, p0, p1}, Lb/f/a/j/a;->a(Lb/f/a/j/g;Lb/f/a/j/f;Lb/f/a/j/h;)V

    if-eqz p3, :cond_1e1

    return v1

    :cond_1de
    invoke-static {v5}, Lb/f/a/j/a;->a(Lb/f/a/j/e;)V

    :cond_1e1
    iget-object v5, v5, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v5, v5, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    invoke-static {v5, p1, p2, p3}, Lb/f/a/j/a;->a(Lb/f/a/j/f;Lb/f/a/j/h;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1ec

    return v1

    :cond_1ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c0

    :cond_1ef
    return v0

    :cond_1f0
    if-eq v3, p1, :cond_22f

    iget-object p3, p1, Lb/f/a/j/h;->a:Ljava/util/List;

    iget-object v2, v3, Lb/f/a/j/h;->a:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p1, Lb/f/a/j/h;->f:Ljava/util/List;

    iget-object v2, p0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    iget-object v2, v2, Lb/f/a/j/h;->f:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p1, Lb/f/a/j/h;->g:Ljava/util/List;

    iget-object v2, p0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    iget-object v2, v2, Lb/f/a/j/h;->g:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    iget-boolean p3, p3, Lb/f/a/j/h;->d:Z

    if-nez p3, :cond_213

    iput-boolean v1, p1, Lb/f/a/j/h;->d:Z

    :cond_213
    iget-object p3, p0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    iget-object p0, p0, Lb/f/a/j/h;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_220
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_22f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/f/a/j/f;

    iput-object p1, p2, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    goto :goto_220

    :cond_22f
    return v0
.end method

.method private static a(Lb/f/a/j/f;Ljava/util/List;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/a/j/f;",
            "Ljava/util/List<",
            "Lb/f/a/j/h;",
            ">;Z)Z"
        }
    .end annotation

    new-instance v0, Lb/f/a/j/h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lb/f/a/j/h;-><init>(Ljava/util/List;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p1, p2}, Lb/f/a/j/a;->a(Lb/f/a/j/f;Lb/f/a/j/h;Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method private static b(Lb/f/a/j/g;)V
    .registers 3

    iget-object v0, p0, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lb/f/a/j/g;->w0:Ljava/util/List;

    new-instance v1, Lb/f/a/j/h;

    iget-object p0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Lb/f/a/j/h;-><init>(Ljava/util/List;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
