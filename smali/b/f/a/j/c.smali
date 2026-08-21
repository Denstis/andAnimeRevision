###### Class b.f.a.j.c (b.f.a.j.c)
.class Lb/f/a/j/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Lb/f/a/j/g;Lb/f/a/e;I)V
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_a

    iget v1, p0, Lb/f/a/j/g;->s0:I

    iget-object v2, p0, Lb/f/a/j/g;->v0:[Lb/f/a/j/d;

    move v3, v1

    const/4 v1, 0x0

    goto :goto_12

    :cond_a
    const/4 v1, 0x2

    iget v2, p0, Lb/f/a/j/g;->t0:I

    iget-object v3, p0, Lb/f/a/j/g;->u0:[Lb/f/a/j/d;

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    :goto_12
    if-ge v0, v3, :cond_2c

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lb/f/a/j/d;->a()V

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lb/f/a/j/g;->t(I)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static {p0, p1, p2, v1, v4}, Lb/f/a/j/k;->a(Lb/f/a/j/g;Lb/f/a/e;IILb/f/a/j/d;)Z

    move-result v5

    if-nez v5, :cond_29

    :cond_26
    invoke-static {p0, p1, p2, v1, v4}, Lb/f/a/j/c;->a(Lb/f/a/j/g;Lb/f/a/e;IILb/f/a/j/d;)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2c
    return-void
.end method

.method static a(Lb/f/a/j/g;Lb/f/a/e;IILb/f/a/j/d;)V
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p4

    iget-object v10, v1, Lb/f/a/j/d;->a:Lb/f/a/j/f;

    iget-object v11, v1, Lb/f/a/j/d;->c:Lb/f/a/j/f;

    iget-object v12, v1, Lb/f/a/j/d;->b:Lb/f/a/j/f;

    iget-object v13, v1, Lb/f/a/j/d;->d:Lb/f/a/j/f;

    iget-object v2, v1, Lb/f/a/j/d;->e:Lb/f/a/j/f;

    iget v3, v1, Lb/f/a/j/d;->k:F

    iget-object v4, v1, Lb/f/a/j/d;->f:Lb/f/a/j/f;

    iget-object v4, v1, Lb/f/a/j/d;->g:Lb/f/a/j/f;

    iget-object v4, v0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v4, v4, p2

    sget-object v5, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    const/4 v5, 0x2

    if-nez p2, :cond_38

    iget v8, v2, Lb/f/a/j/f;->e0:I

    if-nez v8, :cond_2b

    const/4 v8, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    :goto_2c
    iget v14, v2, Lb/f/a/j/f;->e0:I

    if-ne v14, v7, :cond_32

    const/4 v14, 0x1

    goto :goto_33

    :cond_32
    const/4 v14, 0x0

    :goto_33
    iget v15, v2, Lb/f/a/j/f;->e0:I

    if-ne v15, v5, :cond_4c

    goto :goto_4a

    :cond_38
    iget v8, v2, Lb/f/a/j/f;->f0:I

    if-nez v8, :cond_3e

    const/4 v8, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v8, 0x0

    :goto_3f
    iget v14, v2, Lb/f/a/j/f;->f0:I

    if-ne v14, v7, :cond_45

    const/4 v14, 0x1

    goto :goto_46

    :cond_45
    const/4 v14, 0x0

    :goto_46
    iget v15, v2, Lb/f/a/j/f;->f0:I

    if-ne v15, v5, :cond_4c

    :goto_4a
    const/4 v5, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v5, 0x0

    :goto_4d
    move v15, v8

    move-object v8, v10

    move/from16 v16, v14

    move v14, v5

    const/4 v5, 0x0

    :goto_53
    const/16 v21, 0x0

    if-nez v5, :cond_124

    iget-object v7, v8, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v7, v7, p3

    if-nez v4, :cond_63

    if-eqz v14, :cond_60

    goto :goto_63

    :cond_60
    const/16 v23, 0x4

    goto :goto_65

    :cond_63
    :goto_63
    const/16 v23, 0x1

    :goto_65
    invoke-virtual {v7}, Lb/f/a/j/e;->b()I

    move-result v24

    iget-object v6, v7, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v6, :cond_75

    if-eq v8, v10, :cond_75

    invoke-virtual {v6}, Lb/f/a/j/e;->b()I

    move-result v6

    add-int v24, v24, v6

    :cond_75
    move/from16 v6, v24

    if-eqz v14, :cond_83

    if-eq v8, v10, :cond_83

    if-eq v8, v12, :cond_83

    move/from16 v24, v3

    move/from16 v23, v5

    const/4 v3, 0x6

    goto :goto_93

    :cond_83
    if-eqz v15, :cond_8d

    if-eqz v4, :cond_8d

    move/from16 v24, v3

    move/from16 v23, v5

    const/4 v3, 0x4

    goto :goto_93

    :cond_8d
    move/from16 v24, v3

    move/from16 v3, v23

    move/from16 v23, v5

    :goto_93
    iget-object v5, v7, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v5, :cond_bc

    if-ne v8, v12, :cond_a6

    move/from16 v25, v15

    iget-object v15, v7, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v5, v5, Lb/f/a/j/e;->i:Lb/f/a/i;

    move-object/from16 v26, v2

    const/4 v2, 0x5

    invoke-virtual {v9, v15, v5, v6, v2}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    goto :goto_b2

    :cond_a6
    move-object/from16 v26, v2

    move/from16 v25, v15

    iget-object v2, v7, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v5, v5, Lb/f/a/j/e;->i:Lb/f/a/i;

    const/4 v15, 0x6

    invoke-virtual {v9, v2, v5, v6, v15}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :goto_b2
    iget-object v2, v7, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v5, v7, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v5, v5, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {v9, v2, v5, v6, v3}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    goto :goto_c0

    :cond_bc
    move-object/from16 v26, v2

    move/from16 v25, v15

    :goto_c0
    if-eqz v4, :cond_f5

    invoke-virtual {v8}, Lb/f/a/j/f;->r()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e4

    iget-object v2, v8, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v2, v2, p2

    sget-object v3, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v2, v3, :cond_e4

    iget-object v2, v8, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Lb/f/a/j/e;->i:Lb/f/a/i;

    aget-object v2, v2, p3

    iget-object v2, v2, Lb/f/a/j/e;->i:Lb/f/a/i;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v9, v3, v2, v6, v5}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    goto :goto_e5

    :cond_e4
    const/4 v6, 0x0

    :goto_e5
    iget-object v2, v8, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v2, v2, p3

    iget-object v2, v2, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v3, v0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v3, v3, p3

    iget-object v3, v3, Lb/f/a/j/e;->i:Lb/f/a/i;

    const/4 v5, 0x6

    invoke-virtual {v9, v2, v3, v6, v5}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_f5
    iget-object v2, v8, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v2, :cond_114

    iget-object v2, v2, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-object v3, v2, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v3, p3

    iget-object v5, v5, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v5, :cond_114

    aget-object v3, v3, p3

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v3, v3, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    if-eq v3, v8, :cond_112

    goto :goto_114

    :cond_112
    move-object/from16 v21, v2

    :cond_114
    :goto_114
    if-eqz v21, :cond_11b

    move-object/from16 v8, v21

    move/from16 v5, v23

    goto :goto_11c

    :cond_11b
    const/4 v5, 0x1

    :goto_11c
    move/from16 v3, v24

    move/from16 v15, v25

    move-object/from16 v2, v26

    goto/16 :goto_53

    :cond_124
    move-object/from16 v26, v2

    move/from16 v24, v3

    move/from16 v25, v15

    if-eqz v13, :cond_14c

    iget-object v2, v11, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v5, v2, v3

    iget-object v5, v5, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v5, :cond_14c

    iget-object v5, v13, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v5, v3

    iget-object v6, v5, Lb/f/a/j/e;->i:Lb/f/a/i;

    aget-object v2, v2, v3

    iget-object v2, v2, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v2, v2, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {v5}, Lb/f/a/j/e;->b()I

    move-result v3

    neg-int v3, v3

    const/4 v7, 0x5

    invoke-virtual {v9, v6, v2, v3, v7}, Lb/f/a/e;->c(Lb/f/a/i;Lb/f/a/i;II)V

    goto :goto_14d

    :cond_14c
    const/4 v7, 0x5

    :goto_14d
    if-eqz v4, :cond_167

    iget-object v0, v0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v3, v11, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v4, v3, v2

    iget-object v4, v4, Lb/f/a/j/e;->i:Lb/f/a/i;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lb/f/a/j/e;->b()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v9, v0, v4, v2, v3}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_167
    iget-object v0, v1, Lb/f/a/j/d;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_216

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_216

    iget-boolean v4, v1, Lb/f/a/j/d;->n:Z

    if-eqz v4, :cond_17e

    iget-boolean v4, v1, Lb/f/a/j/d;->p:Z

    if-nez v4, :cond_17e

    iget v4, v1, Lb/f/a/j/d;->j:I

    int-to-float v4, v4

    goto :goto_180

    :cond_17e
    move/from16 v4, v24

    :goto_180
    const/4 v5, 0x0

    move-object/from16 v8, v21

    const/4 v6, 0x0

    const/16 v28, 0x0

    :goto_186
    if-ge v6, v2, :cond_216

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/f/a/j/f;

    iget-object v3, v15, Lb/f/a/j/f;->g0:[F

    aget v3, v3, p2

    cmpg-float v23, v3, v5

    if-gez v23, :cond_1b2

    iget-boolean v3, v1, Lb/f/a/j/d;->p:Z

    if-eqz v3, :cond_1ad

    iget-object v3, v15, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Lb/f/a/j/e;->i:Lb/f/a/i;

    aget-object v3, v3, p3

    iget-object v3, v3, Lb/f/a/j/e;->i:Lb/f/a/i;

    const/4 v5, 0x0

    const/4 v7, 0x4

    invoke-virtual {v9, v15, v3, v5, v7}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    const/4 v7, 0x6

    goto :goto_1c8

    :cond_1ad
    const/4 v7, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    goto :goto_1b3

    :cond_1b2
    const/4 v7, 0x4

    :goto_1b3
    cmpl-float v20, v3, v5

    if-nez v20, :cond_1cd

    iget-object v3, v15, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Lb/f/a/j/e;->i:Lb/f/a/i;

    aget-object v3, v3, p3

    iget-object v3, v3, Lb/f/a/j/e;->i:Lb/f/a/i;

    const/4 v5, 0x0

    const/4 v7, 0x6

    invoke-virtual {v9, v15, v3, v5, v7}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    :goto_1c8
    move-object/from16 v24, v0

    move/from16 v22, v2

    goto :goto_20b

    :cond_1cd
    const/4 v5, 0x0

    const/4 v7, 0x6

    if-eqz v8, :cond_204

    iget-object v8, v8, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v8, p3

    iget-object v5, v5, Lb/f/a/j/e;->i:Lb/f/a/i;

    add-int/lit8 v22, p3, 0x1

    aget-object v8, v8, v22

    iget-object v8, v8, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v7, v15, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    move-object/from16 v24, v0

    aget-object v0, v7, p3

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    aget-object v7, v7, v22

    iget-object v7, v7, Lb/f/a/j/e;->i:Lb/f/a/i;

    move/from16 v22, v2

    invoke-virtual/range {p1 .. p1}, Lb/f/a/e;->b()Lb/f/a/b;

    move-result-object v2

    move-object/from16 v27, v2

    move/from16 v29, v4

    move/from16 v30, v3

    move-object/from16 v31, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v0

    move-object/from16 v34, v7

    invoke-virtual/range {v27 .. v34}, Lb/f/a/b;->a(FFFLb/f/a/i;Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;)Lb/f/a/b;

    invoke-virtual {v9, v2}, Lb/f/a/e;->a(Lb/f/a/b;)V

    goto :goto_208

    :cond_204
    move-object/from16 v24, v0

    move/from16 v22, v2

    :goto_208
    move/from16 v28, v3

    move-object v8, v15

    :goto_20b
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v22

    move-object/from16 v0, v24

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x5

    goto/16 :goto_186

    :cond_216
    if-eqz v12, :cond_276

    if-eq v12, v13, :cond_21c

    if-eqz v14, :cond_276

    :cond_21c
    iget-object v0, v10, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v1, v0, p3

    iget-object v2, v11, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    aget-object v4, v0, p3

    iget-object v4, v4, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v4, :cond_234

    aget-object v0, v0, p3

    iget-object v0, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    move-object v4, v0

    goto :goto_236

    :cond_234
    move-object/from16 v4, v21

    :goto_236
    iget-object v0, v11, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v0, v3

    iget-object v5, v5, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v5, :cond_246

    aget-object v0, v0, v3

    iget-object v0, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    move-object v5, v0

    goto :goto_248

    :cond_246
    move-object/from16 v5, v21

    :goto_248
    if-ne v12, v13, :cond_250

    iget-object v0, v12, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v1, v0, p3

    aget-object v2, v0, v3

    :cond_250
    if-eqz v4, :cond_493

    if-eqz v5, :cond_493

    move-object/from16 v0, v26

    if-nez p2, :cond_25b

    iget v0, v0, Lb/f/a/j/f;->V:F

    goto :goto_25d

    :cond_25b
    iget v0, v0, Lb/f/a/j/f;->W:F

    :goto_25d
    move v6, v0

    invoke-virtual {v1}, Lb/f/a/j/e;->b()I

    move-result v3

    invoke-virtual {v2}, Lb/f/a/j/e;->b()I

    move-result v7

    iget-object v1, v1, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v8, v2, Lb/f/a/j/e;->i:Lb/f/a/i;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v2, v4

    move v4, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;IFLb/f/a/i;Lb/f/a/i;II)V

    goto/16 :goto_493

    :cond_276
    if-eqz v25, :cond_366

    if-eqz v12, :cond_366

    iget v0, v1, Lb/f/a/j/d;->j:I

    if-lez v0, :cond_285

    iget v1, v1, Lb/f/a/j/d;->i:I

    if-ne v1, v0, :cond_285

    const/16 v17, 0x1

    goto :goto_287

    :cond_285
    const/16 v17, 0x0

    :goto_287
    move-object v14, v12

    move-object v15, v14

    :goto_289
    if-eqz v14, :cond_493

    iget-object v0, v14, Lb/f/a/j/f;->i0:[Lb/f/a/j/f;

    aget-object v0, v0, p2

    move-object v8, v0

    :goto_290
    if-eqz v8, :cond_29f

    invoke-virtual {v8}, Lb/f/a/j/f;->r()I

    move-result v0

    const/16 v7, 0x8

    if-ne v0, v7, :cond_2a1

    iget-object v0, v8, Lb/f/a/j/f;->i0:[Lb/f/a/j/f;

    aget-object v8, v0, p2

    goto :goto_290

    :cond_29f
    const/16 v7, 0x8

    :cond_2a1
    if-nez v8, :cond_2ae

    if-ne v14, v13, :cond_2a6

    goto :goto_2ae

    :cond_2a6
    move-object/from16 v18, v8

    const/16 v19, 0x4

    const/16 v20, 0x6

    goto/16 :goto_359

    :cond_2ae
    :goto_2ae
    iget-object v0, v14, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v0, v0, p3

    iget-object v1, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v2, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v2, :cond_2bb

    iget-object v2, v2, Lb/f/a/j/e;->i:Lb/f/a/i;

    goto :goto_2bd

    :cond_2bb
    move-object/from16 v2, v21

    :goto_2bd
    if-eq v15, v14, :cond_2c8

    iget-object v2, v15, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    :goto_2c5
    iget-object v2, v2, Lb/f/a/j/e;->i:Lb/f/a/i;

    goto :goto_2db

    :cond_2c8
    if-ne v14, v12, :cond_2db

    if-ne v15, v14, :cond_2db

    iget-object v2, v10, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v3, v2, p3

    iget-object v3, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_2d9

    aget-object v2, v2, p3

    iget-object v2, v2, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    goto :goto_2c5

    :cond_2d9
    move-object/from16 v2, v21

    :cond_2db
    :goto_2db
    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v0

    iget-object v3, v14, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lb/f/a/j/e;->b()I

    move-result v3

    if-eqz v8, :cond_2f8

    iget-object v5, v8, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v5, p3

    iget-object v6, v5, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v7, v14, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v7, v7, v4

    :goto_2f5
    iget-object v7, v7, Lb/f/a/j/e;->i:Lb/f/a/i;

    goto :goto_30a

    :cond_2f8
    iget-object v5, v11, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v5, v4

    iget-object v5, v5, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v5, :cond_303

    iget-object v6, v5, Lb/f/a/j/e;->i:Lb/f/a/i;

    goto :goto_305

    :cond_303
    move-object/from16 v6, v21

    :goto_305
    iget-object v7, v14, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v7, v7, v4

    goto :goto_2f5

    :goto_30a
    if-eqz v5, :cond_311

    invoke-virtual {v5}, Lb/f/a/j/e;->b()I

    move-result v5

    add-int/2addr v3, v5

    :cond_311
    if-eqz v15, :cond_31c

    iget-object v5, v15, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lb/f/a/j/e;->b()I

    move-result v5

    add-int/2addr v0, v5

    :cond_31c
    if-eqz v1, :cond_2a6

    if-eqz v2, :cond_2a6

    if-eqz v6, :cond_2a6

    if-eqz v7, :cond_2a6

    if-ne v14, v12, :cond_32e

    iget-object v0, v12, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v0

    :cond_32e
    move v5, v0

    if-ne v14, v13, :cond_33c

    iget-object v0, v13, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v0

    move/from16 v18, v0

    goto :goto_33e

    :cond_33c
    move/from16 v18, v3

    :goto_33e
    if-eqz v17, :cond_343

    const/16 v22, 0x6

    goto :goto_345

    :cond_343
    const/16 v22, 0x4

    :goto_345
    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    const/16 v19, 0x4

    const/16 v20, 0x6

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;IFLb/f/a/i;Lb/f/a/i;II)V

    :goto_359
    invoke-virtual {v14}, Lb/f/a/j/f;->r()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_362

    move-object v15, v14

    :cond_362
    move-object/from16 v14, v18

    goto/16 :goto_289

    :cond_366
    const/16 v8, 0x8

    const/16 v19, 0x4

    const/16 v20, 0x6

    if-eqz v16, :cond_493

    if-eqz v12, :cond_493

    iget v0, v1, Lb/f/a/j/d;->j:I

    if-lez v0, :cond_37b

    iget v1, v1, Lb/f/a/j/d;->i:I

    if-ne v1, v0, :cond_37b

    const/16 v17, 0x1

    goto :goto_37d

    :cond_37b
    const/16 v17, 0x0

    :goto_37d
    move-object v14, v12

    move-object v15, v14

    :goto_37f
    if-eqz v14, :cond_435

    iget-object v0, v14, Lb/f/a/j/f;->i0:[Lb/f/a/j/f;

    aget-object v0, v0, p2

    :goto_385
    if-eqz v0, :cond_392

    invoke-virtual {v0}, Lb/f/a/j/f;->r()I

    move-result v1

    if-ne v1, v8, :cond_392

    iget-object v0, v0, Lb/f/a/j/f;->i0:[Lb/f/a/j/f;

    aget-object v0, v0, p2

    goto :goto_385

    :cond_392
    if-eq v14, v12, :cond_422

    if-eq v14, v13, :cond_422

    if-eqz v0, :cond_422

    if-ne v0, v13, :cond_39d

    move-object/from16 v7, v21

    goto :goto_39e

    :cond_39d
    move-object v7, v0

    :goto_39e
    iget-object v0, v14, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v0, v0, p3

    iget-object v1, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v2, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v2, :cond_3aa

    iget-object v2, v2, Lb/f/a/j/e;->i:Lb/f/a/i;

    :cond_3aa
    iget-object v2, v15, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v0

    iget-object v4, v14, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lb/f/a/j/e;->b()I

    move-result v4

    if-eqz v7, :cond_3ce

    iget-object v5, v7, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v5, p3

    iget-object v6, v5, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v8, v5, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v8, :cond_3cb

    goto :goto_3df

    :cond_3cb
    move-object/from16 v8, v21

    goto :goto_3e1

    :cond_3ce
    iget-object v5, v14, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v5, v5, v3

    iget-object v5, v5, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v5, :cond_3d9

    iget-object v6, v5, Lb/f/a/j/e;->i:Lb/f/a/i;

    goto :goto_3db

    :cond_3d9
    move-object/from16 v6, v21

    :goto_3db
    iget-object v8, v14, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v8, v8, v3

    :goto_3df
    iget-object v8, v8, Lb/f/a/j/e;->i:Lb/f/a/i;

    :goto_3e1
    if-eqz v5, :cond_3e8

    invoke-virtual {v5}, Lb/f/a/j/e;->b()I

    move-result v5

    add-int/2addr v4, v5

    :cond_3e8
    move/from16 v18, v4

    if-eqz v15, :cond_3f5

    iget-object v4, v15, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lb/f/a/j/e;->b()I

    move-result v3

    add-int/2addr v0, v3

    :cond_3f5
    move v3, v0

    if-eqz v17, :cond_3fb

    const/16 v22, 0x6

    goto :goto_3fd

    :cond_3fb
    const/16 v22, 0x4

    :goto_3fd
    if-eqz v1, :cond_419

    if-eqz v2, :cond_419

    if-eqz v6, :cond_419

    if-eqz v8, :cond_419

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move-object v5, v6

    move-object v6, v8

    move-object/from16 v23, v7

    move/from16 v7, v18

    move-object/from16 v18, v15

    const/16 v15, 0x8

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;IFLb/f/a/i;Lb/f/a/i;II)V

    goto :goto_41f

    :cond_419
    move-object/from16 v23, v7

    move-object/from16 v18, v15

    const/16 v15, 0x8

    :goto_41f
    move-object/from16 v0, v23

    goto :goto_426

    :cond_422
    move-object/from16 v18, v15

    const/16 v15, 0x8

    :goto_426
    invoke-virtual {v14}, Lb/f/a/j/f;->r()I

    move-result v1

    if-eq v1, v15, :cond_42d

    goto :goto_42f

    :cond_42d
    move-object/from16 v14, v18

    :goto_42f
    move-object v15, v14

    const/16 v8, 0x8

    move-object v14, v0

    goto/16 :goto_37f

    :cond_435
    iget-object v0, v12, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v0, v0, p3

    iget-object v1, v10, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v1, v1, p3

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v2, v13, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    iget-object v2, v11, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v2, v2, v3

    iget-object v14, v2, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v1, :cond_482

    if-eq v12, v13, :cond_45c

    iget-object v2, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v1, v1, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v0

    const/4 v15, 0x5

    invoke-virtual {v9, v2, v1, v0, v15}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    goto :goto_483

    :cond_45c
    const/4 v15, 0x5

    if-eqz v14, :cond_483

    iget-object v2, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v3, v1, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v7, v14, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {v10}, Lb/f/a/j/e;->b()I

    move-result v8

    const/16 v17, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;IFLb/f/a/i;Lb/f/a/i;II)V

    goto :goto_483

    :cond_482
    const/4 v15, 0x5

    :cond_483
    :goto_483
    if-eqz v14, :cond_493

    if-eq v12, v13, :cond_493

    iget-object v0, v10, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v1, v14, Lb/f/a/j/e;->i:Lb/f/a/i;

    invoke-virtual {v10}, Lb/f/a/j/e;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v9, v0, v1, v2, v15}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    :cond_493
    :goto_493
    if-nez v25, :cond_497

    if-eqz v16, :cond_4f7

    :cond_497
    if-eqz v12, :cond_4f7

    iget-object v0, v12, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v0, v0, p3

    iget-object v1, v13, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v3, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v3, :cond_4aa

    iget-object v3, v3, Lb/f/a/j/e;->i:Lb/f/a/i;

    goto :goto_4ac

    :cond_4aa
    move-object/from16 v3, v21

    :goto_4ac
    iget-object v4, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v4, :cond_4b3

    iget-object v4, v4, Lb/f/a/j/e;->i:Lb/f/a/i;

    goto :goto_4b5

    :cond_4b3
    move-object/from16 v4, v21

    :goto_4b5
    if-eq v11, v13, :cond_4c4

    iget-object v4, v11, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v4, v4, v2

    iget-object v4, v4, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v4, :cond_4c2

    iget-object v4, v4, Lb/f/a/j/e;->i:Lb/f/a/i;

    goto :goto_4c4

    :cond_4c2
    move-object/from16 v4, v21

    :cond_4c4
    :goto_4c4
    move-object v5, v4

    if-ne v12, v13, :cond_4d2

    iget-object v0, v12, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v1, v0, p3

    aget-object v0, v0, v2

    move-object/from16 v35, v1

    move-object v1, v0

    move-object/from16 v0, v35

    :cond_4d2
    if-eqz v3, :cond_4f7

    if-eqz v5, :cond_4f7

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0}, Lb/f/a/j/e;->b()I

    move-result v6

    if-nez v13, :cond_4df

    goto :goto_4e0

    :cond_4df
    move-object v11, v13

    :goto_4e0
    iget-object v7, v11, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v2, v7, v2

    invoke-virtual {v2}, Lb/f/a/j/e;->b()I

    move-result v7

    iget-object v2, v0, Lb/f/a/j/e;->i:Lb/f/a/i;

    iget-object v8, v1, Lb/f/a/j/e;->i:Lb/f/a/i;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;IFLb/f/a/i;Lb/f/a/i;II)V

    :cond_4f7
    return-void
.end method
