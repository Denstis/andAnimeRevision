###### Class b.f.a.j.g (b.f.a.j.g)
.class public Lb/f/a/j/g;
.super Lb/f/a/j/q;
.source ""


# instance fields
.field public A0:I

.field public B0:I

.field private C0:I

.field public D0:Z

.field private E0:Z

.field private F0:Z

.field private l0:Z

.field protected m0:Lb/f/a/e;

.field private n0:Lb/f/a/j/p;

.field o0:I

.field p0:I

.field q0:I

.field r0:I

.field s0:I

.field t0:I

.field u0:[Lb/f/a/j/d;

.field v0:[Lb/f/a/j/d;

.field public w0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/f/a/j/h;",
            ">;"
        }
    .end annotation
.end field

.field public x0:Z

.field public y0:Z

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lb/f/a/j/q;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/f/a/j/g;->l0:Z

    new-instance v1, Lb/f/a/e;

    invoke-direct {v1}, Lb/f/a/e;-><init>()V

    iput-object v1, p0, Lb/f/a/j/g;->m0:Lb/f/a/e;

    iput v0, p0, Lb/f/a/j/g;->s0:I

    iput v0, p0, Lb/f/a/j/g;->t0:I

    const/4 v1, 0x4

    new-array v2, v1, [Lb/f/a/j/d;

    iput-object v2, p0, Lb/f/a/j/g;->u0:[Lb/f/a/j/d;

    new-array v1, v1, [Lb/f/a/j/d;

    iput-object v1, p0, Lb/f/a/j/g;->v0:[Lb/f/a/j/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/f/a/j/g;->w0:Ljava/util/List;

    iput-boolean v0, p0, Lb/f/a/j/g;->x0:Z

    iput-boolean v0, p0, Lb/f/a/j/g;->y0:Z

    iput-boolean v0, p0, Lb/f/a/j/g;->z0:Z

    iput v0, p0, Lb/f/a/j/g;->A0:I

    iput v0, p0, Lb/f/a/j/g;->B0:I

    const/4 v1, 0x7

    iput v1, p0, Lb/f/a/j/g;->C0:I

    iput-boolean v0, p0, Lb/f/a/j/g;->D0:Z

    iput-boolean v0, p0, Lb/f/a/j/g;->E0:Z

    iput-boolean v0, p0, Lb/f/a/j/g;->F0:Z

    return-void
.end method

.method private V()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/g;->s0:I

    iput v0, p0, Lb/f/a/j/g;->t0:I

    return-void
.end method

.method private d(Lb/f/a/j/f;)V
    .registers 7

    iget v0, p0, Lb/f/a/j/g;->s0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/f/a/j/g;->v0:[Lb/f/a/j/d;

    array-length v2, v1

    if-lt v0, v2, :cond_14

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/f/a/j/d;

    iput-object v0, p0, Lb/f/a/j/g;->v0:[Lb/f/a/j/d;

    :cond_14
    iget-object v0, p0, Lb/f/a/j/g;->v0:[Lb/f/a/j/d;

    iget v1, p0, Lb/f/a/j/g;->s0:I

    new-instance v2, Lb/f/a/j/d;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lb/f/a/j/g;->P()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lb/f/a/j/d;-><init>(Lb/f/a/j/f;IZ)V

    aput-object v2, v0, v1

    iget p1, p0, Lb/f/a/j/g;->s0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/f/a/j/g;->s0:I

    return-void
.end method

.method private e(Lb/f/a/j/f;)V
    .registers 7

    iget v0, p0, Lb/f/a/j/g;->t0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lb/f/a/j/g;->u0:[Lb/f/a/j/d;

    array-length v3, v2

    if-lt v0, v3, :cond_14

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/f/a/j/d;

    iput-object v0, p0, Lb/f/a/j/g;->u0:[Lb/f/a/j/d;

    :cond_14
    iget-object v0, p0, Lb/f/a/j/g;->u0:[Lb/f/a/j/d;

    iget v2, p0, Lb/f/a/j/g;->t0:I

    new-instance v3, Lb/f/a/j/d;

    invoke-virtual {p0}, Lb/f/a/j/g;->P()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Lb/f/a/j/d;-><init>(Lb/f/a/j/f;IZ)V

    aput-object v3, v0, v2

    iget p1, p0, Lb/f/a/j/g;->t0:I

    add-int/2addr p1, v1

    iput p1, p0, Lb/f/a/j/g;->t0:I

    return-void
.end method


# virtual methods
.method public D()V
    .registers 3

    iget-object v0, p0, Lb/f/a/j/g;->m0:Lb/f/a/e;

    invoke-virtual {v0}, Lb/f/a/e;->f()V

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/g;->o0:I

    iput v0, p0, Lb/f/a/j/g;->q0:I

    iput v0, p0, Lb/f/a/j/g;->p0:I

    iput v0, p0, Lb/f/a/j/g;->r0:I

    iget-object v1, p0, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lb/f/a/j/g;->D0:Z

    invoke-super {p0}, Lb/f/a/j/q;->D()V

    return-void
.end method

.method public K()V
    .registers 22

    move-object/from16 v1, p0

    iget v2, v1, Lb/f/a/j/f;->I:I

    iget v3, v1, Lb/f/a/j/f;->J:I

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->s()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput-boolean v4, v1, Lb/f/a/j/g;->E0:Z

    iput-boolean v4, v1, Lb/f/a/j/g;->F0:Z

    iget-object v0, v1, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-eqz v0, :cond_46

    iget-object v0, v1, Lb/f/a/j/g;->n0:Lb/f/a/j/p;

    if-nez v0, :cond_2a

    new-instance v0, Lb/f/a/j/p;

    invoke-direct {v0, v1}, Lb/f/a/j/p;-><init>(Lb/f/a/j/f;)V

    iput-object v0, v1, Lb/f/a/j/g;->n0:Lb/f/a/j/p;

    :cond_2a
    iget-object v0, v1, Lb/f/a/j/g;->n0:Lb/f/a/j/p;

    invoke-virtual {v0, v1}, Lb/f/a/j/p;->b(Lb/f/a/j/f;)V

    iget v0, v1, Lb/f/a/j/g;->o0:I

    invoke-virtual {v1, v0}, Lb/f/a/j/f;->r(I)V

    iget v0, v1, Lb/f/a/j/g;->p0:I

    invoke-virtual {v1, v0}, Lb/f/a/j/f;->s(I)V

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->E()V

    iget-object v0, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    invoke-virtual {v0}, Lb/f/a/e;->d()Lb/f/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/f/a/j/q;->a(Lb/f/a/c;)V

    goto :goto_4a

    :cond_46
    iput v4, v1, Lb/f/a/j/f;->I:I

    iput v4, v1, Lb/f/a/j/f;->J:I

    :goto_4a
    iget v0, v1, Lb/f/a/j/g;->C0:I

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v0, :cond_6a

    invoke-virtual {v1, v8}, Lb/f/a/j/g;->t(I)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/g;->S()V

    :cond_5c
    invoke-virtual {v1, v7}, Lb/f/a/j/g;->t(I)Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/g;->R()V

    :cond_65
    iget-object v0, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    iput-boolean v9, v0, Lb/f/a/e;->g:Z

    goto :goto_6e

    :cond_6a
    iget-object v0, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    iput-boolean v4, v0, Lb/f/a/e;->g:Z

    :goto_6e
    iget-object v0, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v10, v0, v9

    aget-object v11, v0, v4

    invoke-direct/range {p0 .. p0}, Lb/f/a/j/g;->V()V

    iget-object v0, v1, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, v1, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v1, Lb/f/a/j/g;->w0:Ljava/util/List;

    new-instance v12, Lb/f/a/j/h;

    iget-object v13, v1, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-direct {v12, v13}, Lb/f/a/j/h;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_90
    iget-object v0, v1, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    iget-object v13, v1, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v0

    sget-object v14, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-eq v0, v14, :cond_ab

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v0

    sget-object v14, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v0, v14, :cond_a9

    goto :goto_ab

    :cond_a9
    const/4 v14, 0x0

    goto :goto_ac

    :cond_ab
    :goto_ab
    const/4 v14, 0x1

    :goto_ac
    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_ae
    if-ge v15, v12, :cond_2ee

    iget-boolean v8, v1, Lb/f/a/j/g;->D0:Z

    if-nez v8, :cond_2ee

    iget-object v8, v1, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/f/a/j/h;

    iget-boolean v8, v8, Lb/f/a/j/h;->d:Z

    if-eqz v8, :cond_c4

    move/from16 v19, v12

    goto/16 :goto_2e2

    :cond_c4
    invoke-virtual {v1, v7}, Lb/f/a/j/g;->t(I)Z

    move-result v8

    if-eqz v8, :cond_f5

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object v8

    sget-object v7, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    if-ne v8, v7, :cond_e7

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object v7

    sget-object v8, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    if-ne v7, v8, :cond_e7

    iget-object v7, v1, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/f/a/j/h;

    invoke-virtual {v7}, Lb/f/a/j/h;->a()Ljava/util/List;

    move-result-object v7

    goto :goto_f1

    :cond_e7
    iget-object v7, v1, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/f/a/j/h;

    iget-object v7, v7, Lb/f/a/j/h;->a:Ljava/util/List;

    :goto_f1
    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, v1, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    :cond_f5
    invoke-direct/range {p0 .. p0}, Lb/f/a/j/g;->V()V

    iget-object v7, v1, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_ff
    if-ge v8, v7, :cond_117

    iget-object v4, v1, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/a/j/f;

    instance-of v9, v4, Lb/f/a/j/q;

    if-eqz v9, :cond_112

    check-cast v4, Lb/f/a/j/q;

    invoke-virtual {v4}, Lb/f/a/j/q;->K()V

    :cond_112
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_ff

    :cond_117
    move v9, v0

    const/4 v0, 0x0

    const/4 v4, 0x1

    :goto_11a
    if-eqz v4, :cond_2d1

    move/from16 v17, v4

    const/4 v8, 0x1

    add-int/lit8 v4, v0, 0x1

    :try_start_121
    iget-object v0, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    invoke-virtual {v0}, Lb/f/a/e;->f()V

    invoke-direct/range {p0 .. p0}, Lb/f/a/j/g;->V()V

    iget-object v0, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    invoke-virtual {v1, v0}, Lb/f/a/j/f;->b(Lb/f/a/e;)V

    const/4 v0, 0x0

    :goto_12f
    if-ge v0, v7, :cond_145

    iget-object v8, v1, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/f/a/j/f;
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_139} :catch_15e

    move/from16 v18, v9

    :try_start_13b
    iget-object v9, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    invoke-virtual {v8, v9}, Lb/f/a/j/f;->b(Lb/f/a/e;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v18

    goto :goto_12f

    :cond_145
    move/from16 v18, v9

    iget-object v0, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    invoke-virtual {v1, v0}, Lb/f/a/j/g;->d(Lb/f/a/e;)Z

    move-result v8
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_14d} :catch_15c

    if-eqz v8, :cond_157

    :try_start_14f
    iget-object v0, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    invoke-virtual {v0}, Lb/f/a/e;->e()V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_154} :catch_155

    goto :goto_157

    :catch_155
    move-exception v0

    goto :goto_163

    :cond_157
    :goto_157
    move/from16 v17, v8

    move/from16 v19, v12

    goto :goto_180

    :catch_15c
    move-exception v0

    goto :goto_161

    :catch_15e
    move-exception v0

    move/from16 v18, v9

    :goto_161
    move/from16 v8, v17

    :goto_163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v17, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v12

    const-string v12, "EXCEPTION : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_180
    iget-object v8, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    if-eqz v17, :cond_18b

    sget-object v9, Lb/f/a/j/k;->a:[Z

    invoke-virtual {v1, v8, v9}, Lb/f/a/j/g;->a(Lb/f/a/e;[Z)V

    :cond_189
    :goto_189
    const/4 v9, 0x2

    goto :goto_1d2

    :cond_18b
    invoke-virtual {v1, v8}, Lb/f/a/j/f;->c(Lb/f/a/e;)V

    const/4 v8, 0x0

    :goto_18f
    if-ge v8, v7, :cond_189

    iget-object v9, v1, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/f/a/j/f;

    iget-object v12, v9, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/16 v16, 0x0

    aget-object v12, v12, v16

    sget-object v0, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v12, v0, :cond_1b4

    invoke-virtual {v9}, Lb/f/a/j/f;->s()I

    move-result v0

    invoke-virtual {v9}, Lb/f/a/j/f;->u()I

    move-result v12

    if-ge v0, v12, :cond_1b4

    sget-object v0, Lb/f/a/j/k;->a:[Z

    const/4 v8, 0x2

    const/4 v12, 0x1

    aput-boolean v12, v0, v8

    goto :goto_189

    :cond_1b4
    const/4 v12, 0x1

    iget-object v0, v9, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v0, v0, v12

    sget-object v12, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v0, v12, :cond_1ce

    invoke-virtual {v9}, Lb/f/a/j/f;->i()I

    move-result v0

    invoke-virtual {v9}, Lb/f/a/j/f;->t()I

    move-result v9

    if-ge v0, v9, :cond_1ce

    sget-object v0, Lb/f/a/j/k;->a:[Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    aput-boolean v8, v0, v9

    goto :goto_1d2

    :cond_1ce
    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_18f

    :goto_1d2
    if-eqz v14, :cond_24c

    const/16 v8, 0x8

    if-ge v4, v8, :cond_24c

    sget-object v0, Lb/f/a/j/k;->a:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_24c

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_1e1
    if-ge v0, v7, :cond_20b

    iget-object v8, v1, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/f/a/j/f;

    move/from16 v17, v4

    iget v4, v8, Lb/f/a/j/f;->I:I

    invoke-virtual {v8}, Lb/f/a/j/f;->s()I

    move-result v20

    add-int v4, v4, v20

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v4, v8, Lb/f/a/j/f;->J:I

    invoke-virtual {v8}, Lb/f/a/j/f;->i()I

    move-result v8

    add-int/2addr v4, v8

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v17

    const/16 v8, 0x8

    goto :goto_1e1

    :cond_20b
    move/from16 v17, v4

    iget v0, v1, Lb/f/a/j/f;->R:I

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Lb/f/a/j/f;->S:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v8, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v11, v8, :cond_231

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->s()I

    move-result v8

    if-ge v8, v0, :cond_231

    invoke-virtual {v1, v0}, Lb/f/a/j/f;->o(I)V

    iget-object v0, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    sget-object v8, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    const/4 v9, 0x0

    aput-object v8, v0, v9

    const/4 v0, 0x1

    const/16 v18, 0x1

    goto :goto_232

    :cond_231
    const/4 v0, 0x0

    :goto_232
    sget-object v8, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v10, v8, :cond_249

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v8

    if-ge v8, v4, :cond_249

    invoke-virtual {v1, v4}, Lb/f/a/j/f;->g(I)V

    iget-object v0, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    sget-object v4, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    const/4 v8, 0x1

    aput-object v4, v0, v8

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_251

    :cond_249
    move/from16 v9, v18

    goto :goto_251

    :cond_24c
    move/from16 v17, v4

    move/from16 v9, v18

    const/4 v0, 0x0

    :goto_251
    iget v4, v1, Lb/f/a/j/f;->R:I

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->s()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->s()I

    move-result v8

    if-le v4, v8, :cond_26d

    invoke-virtual {v1, v4}, Lb/f/a/j/f;->o(I)V

    iget-object v0, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    sget-object v4, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    const/4 v8, 0x0

    aput-object v4, v0, v8

    const/4 v0, 0x1

    const/4 v9, 0x1

    :cond_26d
    iget v4, v1, Lb/f/a/j/f;->S:I

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v8

    if-le v4, v8, :cond_28a

    invoke-virtual {v1, v4}, Lb/f/a/j/f;->g(I)V

    iget-object v0, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    sget-object v4, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    const/4 v8, 0x1

    aput-object v4, v0, v8

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_28b

    :cond_28a
    const/4 v8, 0x1

    :goto_28b
    if-nez v9, :cond_2ca

    iget-object v4, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v12, 0x0

    aget-object v4, v4, v12

    sget-object v12, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v4, v12, :cond_2ac

    if-lez v5, :cond_2ac

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->s()I

    move-result v4

    if-le v4, v5, :cond_2ac

    iput-boolean v8, v1, Lb/f/a/j/g;->E0:Z

    iget-object v0, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    sget-object v4, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    const/4 v9, 0x0

    aput-object v4, v0, v9

    invoke-virtual {v1, v5}, Lb/f/a/j/f;->o(I)V

    const/4 v0, 0x1

    const/4 v9, 0x1

    :cond_2ac
    iget-object v4, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v4, v4, v8

    sget-object v12, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v4, v12, :cond_2ca

    if-lez v6, :cond_2ca

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v4

    if-le v4, v6, :cond_2ca

    iput-boolean v8, v1, Lb/f/a/j/g;->F0:Z

    iget-object v0, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    sget-object v4, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    aput-object v4, v0, v8

    invoke-virtual {v1, v6}, Lb/f/a/j/f;->g(I)V

    const/4 v4, 0x1

    const/4 v9, 0x1

    goto :goto_2cb

    :cond_2ca
    move v4, v0

    :goto_2cb
    move/from16 v0, v17

    move/from16 v12, v19

    goto/16 :goto_11a

    :cond_2d1
    move/from16 v18, v9

    move/from16 v19, v12

    iget-object v0, v1, Lb/f/a/j/g;->w0:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/a/j/h;

    invoke-virtual {v0}, Lb/f/a/j/h;->b()V

    move/from16 v0, v18

    :goto_2e2
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v19

    const/4 v4, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x1

    goto/16 :goto_ae

    :cond_2ee
    iput-object v13, v1, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    iget-object v4, v1, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-eqz v4, :cond_320

    iget v2, v1, Lb/f/a/j/f;->R:I

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->s()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v1, Lb/f/a/j/f;->S:I

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->i()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v1, Lb/f/a/j/g;->n0:Lb/f/a/j/p;

    invoke-virtual {v4, v1}, Lb/f/a/j/p;->a(Lb/f/a/j/f;)V

    iget v4, v1, Lb/f/a/j/g;->o0:I

    add-int/2addr v2, v4

    iget v4, v1, Lb/f/a/j/g;->q0:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lb/f/a/j/f;->o(I)V

    iget v2, v1, Lb/f/a/j/g;->p0:I

    add-int/2addr v3, v2

    iget v2, v1, Lb/f/a/j/g;->r0:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lb/f/a/j/f;->g(I)V

    goto :goto_324

    :cond_320
    iput v2, v1, Lb/f/a/j/f;->I:I

    iput v3, v1, Lb/f/a/j/f;->J:I

    :goto_324
    if-eqz v0, :cond_32e

    iget-object v0, v1, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v2, 0x0

    aput-object v11, v0, v2

    const/4 v2, 0x1

    aput-object v10, v0, v2

    :cond_32e
    iget-object v0, v1, Lb/f/a/j/g;->m0:Lb/f/a/e;

    invoke-virtual {v0}, Lb/f/a/e;->d()Lb/f/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/f/a/j/q;->a(Lb/f/a/c;)V

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/q;->J()Lb/f/a/j/g;

    move-result-object v0

    if-ne v1, v0, :cond_340

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/q;->H()V

    :cond_340
    return-void
.end method

.method public M()I
    .registers 2

    iget v0, p0, Lb/f/a/j/g;->C0:I

    return v0
.end method

.method public N()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .registers 2

    iget-boolean v0, p0, Lb/f/a/j/g;->F0:Z

    return v0
.end method

.method public P()Z
    .registers 2

    iget-boolean v0, p0, Lb/f/a/j/g;->l0:Z

    return v0
.end method

.method public Q()Z
    .registers 2

    iget-boolean v0, p0, Lb/f/a/j/g;->E0:Z

    return v0
.end method

.method public R()V
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lb/f/a/j/g;->t(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lb/f/a/j/g;->C0:I

    invoke-virtual {p0, v0}, Lb/f/a/j/g;->a(I)V

    :cond_d
    invoke-virtual {p0}, Lb/f/a/j/g;->U()V

    return-void
.end method

.method public S()V
    .registers 4

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lb/f/a/j/f;->F()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/f;

    invoke-virtual {v2}, Lb/f/a/j/f;->F()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public T()V
    .registers 2

    invoke-virtual {p0}, Lb/f/a/j/g;->S()V

    iget v0, p0, Lb/f/a/j/g;->C0:I

    invoke-virtual {p0, v0}, Lb/f/a/j/g;->a(I)V

    return-void
.end method

.method public U()V
    .registers 5

    sget-object v0, Lb/f/a/j/e$d;->c:Lb/f/a/j/e$d;

    invoke-virtual {p0, v0}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    sget-object v1, Lb/f/a/j/e$d;->d:Lb/f/a/j/e$d;

    invoke-virtual {p0, v1}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lb/f/a/j/m;->a(Lb/f/a/j/m;F)V

    invoke-virtual {v1, v3, v2}, Lb/f/a/j/m;->a(Lb/f/a/j/m;F)V

    return-void
.end method

.method public a(I)V
    .registers 5

    invoke-super {p0, p1}, Lb/f/a/j/f;->a(I)V

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

    invoke-virtual {v2, p1}, Lb/f/a/j/f;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public a(Lb/f/a/e;[Z)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-boolean v0, p2, v1

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->c(Lb/f/a/e;)V

    iget-object v2, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_47

    iget-object v4, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/a/j/f;

    invoke-virtual {v4, p1}, Lb/f/a/j/f;->c(Lb/f/a/e;)V

    iget-object v5, v4, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v5, v5, v0

    sget-object v6, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_30

    invoke-virtual {v4}, Lb/f/a/j/f;->s()I

    move-result v5

    invoke-virtual {v4}, Lb/f/a/j/f;->u()I

    move-result v6

    if-ge v5, v6, :cond_30

    aput-boolean v7, p2, v1

    :cond_30
    iget-object v5, v4, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v5, v5, v7

    sget-object v6, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v5, v6, :cond_44

    invoke-virtual {v4}, Lb/f/a/j/f;->i()I

    move-result v5

    invoke-virtual {v4}, Lb/f/a/j/f;->t()I

    move-result v4

    if-ge v5, v4, :cond_44

    aput-boolean v7, p2, v1

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_47
    return-void
.end method

.method a(Lb/f/a/j/f;I)V
    .registers 4

    if-nez p2, :cond_6

    invoke-direct {p0, p1}, Lb/f/a/j/g;->d(Lb/f/a/j/f;)V

    goto :goto_c

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    invoke-direct {p0, p1}, Lb/f/a/j/g;->e(Lb/f/a/j/f;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/f/a/j/g;->l0:Z

    return-void
.end method

.method public d(Lb/f/a/e;)Z
    .registers 9

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->a(Lb/f/a/e;)V

    iget-object v0, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4d

    iget-object v4, p0, Lb/f/a/j/q;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/a/j/f;

    instance-of v5, v4, Lb/f/a/j/g;

    if-eqz v5, :cond_44

    iget-object v5, v4, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v6, v5, v1

    aget-object v3, v5, v3

    sget-object v5, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v6, v5, :cond_29

    sget-object v5, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    invoke-virtual {v4, v5}, Lb/f/a/j/f;->a(Lb/f/a/j/f$b;)V

    :cond_29
    sget-object v5, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v3, v5, :cond_32

    sget-object v5, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    invoke-virtual {v4, v5}, Lb/f/a/j/f;->b(Lb/f/a/j/f$b;)V

    :cond_32
    invoke-virtual {v4, p1}, Lb/f/a/j/f;->a(Lb/f/a/e;)V

    sget-object v5, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v6, v5, :cond_3c

    invoke-virtual {v4, v6}, Lb/f/a/j/f;->a(Lb/f/a/j/f$b;)V

    :cond_3c
    sget-object v5, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v3, v5, :cond_4a

    invoke-virtual {v4, v3}, Lb/f/a/j/f;->b(Lb/f/a/j/f$b;)V

    goto :goto_4a

    :cond_44
    invoke-static {p0, p1, v4}, Lb/f/a/j/k;->a(Lb/f/a/j/g;Lb/f/a/e;Lb/f/a/j/f;)V

    invoke-virtual {v4, p1}, Lb/f/a/j/f;->a(Lb/f/a/e;)V

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_4d
    iget v0, p0, Lb/f/a/j/g;->s0:I

    if-lez v0, :cond_54

    invoke-static {p0, p1, v1}, Lb/f/a/j/c;->a(Lb/f/a/j/g;Lb/f/a/e;I)V

    :cond_54
    iget v0, p0, Lb/f/a/j/g;->t0:I

    if-lez v0, :cond_5b

    invoke-static {p0, p1, v3}, Lb/f/a/j/c;->a(Lb/f/a/j/g;Lb/f/a/e;I)V

    :cond_5b
    return v3
.end method

.method public f(II)V
    .registers 5

    iget-object v0, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lb/f/a/j/f;->c:Lb/f/a/j/n;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lb/f/a/j/n;->a(I)V

    :cond_10
    iget-object p1, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    sget-object v0, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-eq p1, v0, :cond_20

    iget-object p1, p0, Lb/f/a/j/f;->d:Lb/f/a/j/n;

    if-eqz p1, :cond_20

    invoke-virtual {p1, p2}, Lb/f/a/j/n;->a(I)V

    :cond_20
    return-void
.end method

.method public t(I)Z
    .registers 3

    iget v0, p0, Lb/f/a/j/g;->C0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public u(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/g;->C0:I

    return-void
.end method
