###### Class b.f.a.j.f (b.f.a.j.f)
.class public Lb/f/a/j/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/f/a/j/f$b;
    }
.end annotation


# static fields
.field public static j0:F = 0.5f


# instance fields
.field protected A:[Lb/f/a/j/e;

.field protected B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/f/a/j/e;",
            ">;"
        }
    .end annotation
.end field

.field protected C:[Lb/f/a/j/f$b;

.field D:Lb/f/a/j/f;

.field E:I

.field F:I

.field protected G:F

.field protected H:I

.field protected I:I

.field protected J:I

.field K:I

.field L:I

.field private M:I

.field private N:I

.field protected O:I

.field protected P:I

.field Q:I

.field protected R:I

.field protected S:I

.field private T:I

.field private U:I

.field V:F

.field W:F

.field private X:Ljava/lang/Object;

.field private Y:I

.field private Z:Ljava/lang/String;

.field public a:I

.field private a0:Ljava/lang/String;

.field public b:I

.field b0:Z

.field c:Lb/f/a/j/n;

.field c0:Z

.field d:Lb/f/a/j/n;

.field d0:Z

.field e:I

.field e0:I

.field f:I

.field f0:I

.field g:[I

.field g0:[F

.field h:I

.field protected h0:[Lb/f/a/j/f;

.field i:I

.field protected i0:[Lb/f/a/j/f;

.field j:F

.field k:I

.field l:I

.field m:F

.field n:I

.field o:F

.field p:Lb/f/a/j/h;

.field private q:[I

.field private r:F

.field s:Lb/f/a/j/e;

.field t:Lb/f/a/j/e;

.field u:Lb/f/a/j/e;

.field v:Lb/f/a/j/e;

.field w:Lb/f/a/j/e;

.field x:Lb/f/a/j/e;

.field y:Lb/f/a/j/e;

.field z:Lb/f/a/j/e;


# direct methods
.method public constructor <init>()V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/f/a/j/f;->a:I

    iput v0, p0, Lb/f/a/j/f;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lb/f/a/j/f;->e:I

    iput v1, p0, Lb/f/a/j/f;->f:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lb/f/a/j/f;->g:[I

    iput v1, p0, Lb/f/a/j/f;->h:I

    iput v1, p0, Lb/f/a/j/f;->i:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lb/f/a/j/f;->j:F

    iput v1, p0, Lb/f/a/j/f;->k:I

    iput v1, p0, Lb/f/a/j/f;->l:I

    iput v3, p0, Lb/f/a/j/f;->m:F

    iput v0, p0, Lb/f/a/j/f;->n:I

    iput v3, p0, Lb/f/a/j/f;->o:F

    const/4 v3, 0x0

    iput-object v3, p0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    new-array v4, v2, [I

    fill-array-data v4, :array_f8

    iput-object v4, p0, Lb/f/a/j/f;->q:[I

    const/4 v4, 0x0

    iput v4, p0, Lb/f/a/j/f;->r:F

    new-instance v5, Lb/f/a/j/e;

    sget-object v6, Lb/f/a/j/e$d;->c:Lb/f/a/j/e$d;

    invoke-direct {v5, p0, v6}, Lb/f/a/j/e;-><init>(Lb/f/a/j/f;Lb/f/a/j/e$d;)V

    iput-object v5, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    new-instance v5, Lb/f/a/j/e;

    sget-object v6, Lb/f/a/j/e$d;->d:Lb/f/a/j/e$d;

    invoke-direct {v5, p0, v6}, Lb/f/a/j/e;-><init>(Lb/f/a/j/f;Lb/f/a/j/e$d;)V

    iput-object v5, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    new-instance v5, Lb/f/a/j/e;

    sget-object v6, Lb/f/a/j/e$d;->e:Lb/f/a/j/e$d;

    invoke-direct {v5, p0, v6}, Lb/f/a/j/e;-><init>(Lb/f/a/j/f;Lb/f/a/j/e$d;)V

    iput-object v5, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    new-instance v5, Lb/f/a/j/e;

    sget-object v6, Lb/f/a/j/e$d;->f:Lb/f/a/j/e$d;

    invoke-direct {v5, p0, v6}, Lb/f/a/j/e;-><init>(Lb/f/a/j/f;Lb/f/a/j/e$d;)V

    iput-object v5, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    new-instance v5, Lb/f/a/j/e;

    sget-object v6, Lb/f/a/j/e$d;->g:Lb/f/a/j/e$d;

    invoke-direct {v5, p0, v6}, Lb/f/a/j/e;-><init>(Lb/f/a/j/f;Lb/f/a/j/e$d;)V

    iput-object v5, p0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    new-instance v5, Lb/f/a/j/e;

    sget-object v6, Lb/f/a/j/e$d;->i:Lb/f/a/j/e$d;

    invoke-direct {v5, p0, v6}, Lb/f/a/j/e;-><init>(Lb/f/a/j/f;Lb/f/a/j/e$d;)V

    iput-object v5, p0, Lb/f/a/j/f;->x:Lb/f/a/j/e;

    new-instance v5, Lb/f/a/j/e;

    sget-object v6, Lb/f/a/j/e$d;->j:Lb/f/a/j/e$d;

    invoke-direct {v5, p0, v6}, Lb/f/a/j/e;-><init>(Lb/f/a/j/f;Lb/f/a/j/e$d;)V

    iput-object v5, p0, Lb/f/a/j/f;->y:Lb/f/a/j/e;

    new-instance v5, Lb/f/a/j/e;

    sget-object v6, Lb/f/a/j/e$d;->h:Lb/f/a/j/e$d;

    invoke-direct {v5, p0, v6}, Lb/f/a/j/e;-><init>(Lb/f/a/j/f;Lb/f/a/j/e$d;)V

    iput-object v5, p0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    const/4 v5, 0x6

    new-array v5, v5, [Lb/f/a/j/e;

    iget-object v6, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    aput-object v6, v5, v1

    iget-object v6, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    aput-object v6, v5, v2

    iget-object v6, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, p0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    iget-object v6, p0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    const/4 v8, 0x5

    aput-object v6, v5, v8

    iput-object v5, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    new-array v5, v2, [Lb/f/a/j/f$b;

    sget-object v6, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    aput-object v6, v5, v1

    aput-object v6, v5, v7

    iput-object v5, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    iput-object v3, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    iput v1, p0, Lb/f/a/j/f;->E:I

    iput v1, p0, Lb/f/a/j/f;->F:I

    iput v4, p0, Lb/f/a/j/f;->G:F

    iput v0, p0, Lb/f/a/j/f;->H:I

    iput v1, p0, Lb/f/a/j/f;->I:I

    iput v1, p0, Lb/f/a/j/f;->J:I

    iput v1, p0, Lb/f/a/j/f;->K:I

    iput v1, p0, Lb/f/a/j/f;->L:I

    iput v1, p0, Lb/f/a/j/f;->M:I

    iput v1, p0, Lb/f/a/j/f;->N:I

    iput v1, p0, Lb/f/a/j/f;->O:I

    iput v1, p0, Lb/f/a/j/f;->P:I

    iput v1, p0, Lb/f/a/j/f;->Q:I

    sget v0, Lb/f/a/j/f;->j0:F

    iput v0, p0, Lb/f/a/j/f;->V:F

    iput v0, p0, Lb/f/a/j/f;->W:F

    iput v1, p0, Lb/f/a/j/f;->Y:I

    iput-object v3, p0, Lb/f/a/j/f;->Z:Ljava/lang/String;

    iput-object v3, p0, Lb/f/a/j/f;->a0:Ljava/lang/String;

    iput-boolean v1, p0, Lb/f/a/j/f;->b0:Z

    iput-boolean v1, p0, Lb/f/a/j/f;->c0:Z

    iput-boolean v1, p0, Lb/f/a/j/f;->d0:Z

    iput v1, p0, Lb/f/a/j/f;->e0:I

    iput v1, p0, Lb/f/a/j/f;->f0:I

    new-array v0, v2, [F

    fill-array-data v0, :array_100

    iput-object v0, p0, Lb/f/a/j/f;->g0:[F

    new-array v0, v2, [Lb/f/a/j/f;

    aput-object v3, v0, v1

    aput-object v3, v0, v7

    iput-object v0, p0, Lb/f/a/j/f;->h0:[Lb/f/a/j/f;

    new-array v0, v2, [Lb/f/a/j/f;

    aput-object v3, v0, v1

    aput-object v3, v0, v7

    iput-object v0, p0, Lb/f/a/j/f;->i0:[Lb/f/a/j/f;

    invoke-direct {p0}, Lb/f/a/j/f;->J()V

    return-void

    :array_f8
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_100
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private J()V
    .registers 3

    iget-object v0, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/f/a/j/f;->x:Lb/f/a/j/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/f/a/j/f;->y:Lb/f/a/j/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lb/f/a/e;ZLb/f/a/i;Lb/f/a/i;Lb/f/a/j/f$b;ZLb/f/a/j/e;Lb/f/a/j/e;IIIIFZZIIIFZ)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v1, p11

    move/from16 v2, p12

    invoke-virtual {v10, v13}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v15

    invoke-virtual {v10, v14}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v9

    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->g()Lb/f/a/j/e;

    move-result-object v3

    invoke-virtual {v10, v3}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v8

    invoke-virtual/range {p8 .. p8}, Lb/f/a/j/e;->g()Lb/f/a/j/e;

    move-result-object v3

    invoke-virtual {v10, v3}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v7

    iget-boolean v3, v10, Lb/f/a/e;->g:Z

    const/4 v6, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eqz v3, :cond_66

    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v3

    iget v3, v3, Lb/f/a/j/o;->b:I

    if-ne v3, v6, :cond_66

    invoke-virtual/range {p8 .. p8}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v3

    iget v3, v3, Lb/f/a/j/o;->b:I

    if-ne v3, v6, :cond_66

    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v1

    iget-wide v2, v1, Lb/f/a/f;->r:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v1, Lb/f/a/f;->r:J

    :cond_50
    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    invoke-virtual {v1, v10}, Lb/f/a/j/m;->a(Lb/f/a/e;)V

    invoke-virtual/range {p8 .. p8}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    invoke-virtual {v1, v10}, Lb/f/a/j/m;->a(Lb/f/a/e;)V

    if-nez p15, :cond_65

    if-eqz p2, :cond_65

    invoke-virtual {v10, v12, v9, v5, v4}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_65
    return-void

    :cond_66
    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v3

    if-eqz v3, :cond_78

    invoke-static {}, Lb/f/a/e;->h()Lb/f/a/f;

    move-result-object v3

    iget-wide v4, v3, Lb/f/a/f;->z:J

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    iput-wide v4, v3, Lb/f/a/f;->z:J

    :cond_78
    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->i()Z

    move-result v16

    invoke-virtual/range {p8 .. p8}, Lb/f/a/j/e;->i()Z

    move-result v17

    iget-object v3, v0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    invoke-virtual {v3}, Lb/f/a/j/e;->i()Z

    move-result v20

    if-eqz v16, :cond_8a

    const/4 v3, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v3, 0x0

    :goto_8b
    if-eqz v17, :cond_8f

    add-int/lit8 v3, v3, 0x1

    :cond_8f
    if-eqz v20, :cond_93

    add-int/lit8 v3, v3, 0x1

    :cond_93
    move v5, v3

    if-eqz p14, :cond_98

    const/4 v3, 0x3

    goto :goto_9a

    :cond_98
    move/from16 v3, p16

    :goto_9a
    sget-object v21, Lb/f/a/j/f$a;->b:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aget v4, v21, v22

    const/4 v14, 0x2

    const/4 v13, 0x4

    if-eq v4, v6, :cond_ad

    if-eq v4, v14, :cond_ad

    const/4 v14, 0x3

    if-eq v4, v14, :cond_ad

    if-eq v4, v13, :cond_af

    :cond_ad
    :goto_ad
    const/4 v4, 0x0

    goto :goto_b3

    :cond_af
    if-ne v3, v13, :cond_b2

    goto :goto_ad

    :cond_b2
    const/4 v4, 0x1

    :goto_b3
    iget v14, v0, Lb/f/a/j/f;->Y:I

    const/16 v13, 0x8

    if-ne v14, v13, :cond_bc

    const/4 v4, 0x0

    const/4 v13, 0x0

    goto :goto_bf

    :cond_bc
    move v13, v4

    move/from16 v4, p10

    :goto_bf
    if-eqz p20, :cond_da

    if-nez v16, :cond_cd

    if-nez v17, :cond_cd

    if-nez v20, :cond_cd

    move/from16 v14, p9

    invoke-virtual {v10, v15, v14}, Lb/f/a/e;->a(Lb/f/a/i;I)V

    goto :goto_da

    :cond_cd
    if-eqz v16, :cond_da

    if-nez v17, :cond_da

    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->b()I

    move-result v14

    const/4 v6, 0x6

    invoke-virtual {v10, v15, v8, v14, v6}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    goto :goto_db

    :cond_da
    :goto_da
    const/4 v6, 0x6

    :goto_db
    if-nez v13, :cond_107

    if-eqz p6, :cond_f4

    const/4 v6, 0x0

    const/4 v14, 0x3

    invoke-virtual {v10, v9, v15, v6, v14}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    const/4 v4, 0x6

    if-lez v1, :cond_ea

    invoke-virtual {v10, v9, v15, v1, v4}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_ea
    const v6, 0x7fffffff

    if-ge v2, v6, :cond_f2

    invoke-virtual {v10, v9, v15, v2, v4}, Lb/f/a/e;->c(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_f2
    const/4 v6, 0x6

    goto :goto_f8

    :cond_f4
    const/4 v14, 0x3

    invoke-virtual {v10, v9, v15, v4, v6}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    :goto_f8
    move/from16 v14, p18

    move/from16 p9, v3

    move v0, v5

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    const/4 v1, 0x0

    const/4 v2, 0x2

    move/from16 v3, p17

    goto/16 :goto_1e4

    :cond_107
    const/4 v14, 0x3

    const/4 v2, -0x2

    move/from16 v14, p17

    if-ne v14, v2, :cond_111

    move/from16 v14, p18

    move v6, v4

    goto :goto_114

    :cond_111
    move v6, v14

    move/from16 v14, p18

    :goto_114
    if-ne v14, v2, :cond_117

    move v14, v4

    :cond_117
    const/4 v2, 0x6

    if-lez v6, :cond_121

    invoke-virtual {v10, v9, v15, v6, v2}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_121
    if-lez v14, :cond_12a

    invoke-virtual {v10, v9, v15, v14, v2}, Lb/f/a/e;->c(Lb/f/a/i;Lb/f/a/i;II)V

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_12a
    const/4 v2, 0x1

    if-ne v3, v2, :cond_152

    const/4 v2, 0x6

    if-eqz p2, :cond_141

    invoke-virtual {v10, v9, v15, v4, v2}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    move/from16 p9, v3

    move v0, v5

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    move/from16 p10, v13

    const/4 v1, 0x0

    move v8, v4

    move v13, v6

    goto/16 :goto_1c8

    :cond_141
    move/from16 p10, v13

    if-eqz p15, :cond_14b

    const/4 v13, 0x4

    invoke-virtual {v10, v9, v15, v4, v13}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    goto/16 :goto_1be

    :cond_14b
    const/4 v2, 0x1

    const/4 v13, 0x4

    invoke-virtual {v10, v9, v15, v4, v2}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    goto/16 :goto_1be

    :cond_152
    move/from16 p10, v13

    const/4 v2, 0x2

    const/4 v13, 0x4

    if-ne v3, v2, :cond_1be

    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->h()Lb/f/a/j/e$d;

    move-result-object v2

    sget-object v13, Lb/f/a/j/e$d;->d:Lb/f/a/j/e$d;

    if-eq v2, v13, :cond_17c

    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->h()Lb/f/a/j/e$d;

    move-result-object v2

    sget-object v13, Lb/f/a/j/e$d;->f:Lb/f/a/j/e$d;

    if-ne v2, v13, :cond_169

    goto :goto_17c

    :cond_169
    iget-object v2, v0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    sget-object v13, Lb/f/a/j/e$d;->c:Lb/f/a/j/e$d;

    invoke-virtual {v2, v13}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v2

    invoke-virtual {v10, v2}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v2

    iget-object v13, v0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    move-object/from16 p6, v2

    sget-object v2, Lb/f/a/j/e$d;->e:Lb/f/a/j/e$d;

    goto :goto_18e

    :cond_17c
    :goto_17c
    iget-object v2, v0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    sget-object v13, Lb/f/a/j/e$d;->d:Lb/f/a/j/e$d;

    invoke-virtual {v2, v13}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v2

    invoke-virtual {v10, v2}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v2

    iget-object v13, v0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    move-object/from16 p6, v2

    sget-object v2, Lb/f/a/j/e$d;->f:Lb/f/a/j/e$d;

    :goto_18e
    invoke-virtual {v13, v2}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v2

    invoke-virtual {v10, v2}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v2

    move-object/from16 v22, p6

    move-object v13, v2

    invoke-virtual/range {p1 .. p1}, Lb/f/a/e;->b()Lb/f/a/b;

    move-result-object v2

    move-object/from16 p6, v2

    const/16 v18, 0x1

    const/16 v21, 0x6

    move v0, v3

    move-object v3, v9

    move/from16 p9, v0

    move-object/from16 v23, v8

    const/4 v0, 0x6

    move v8, v4

    move-object v4, v15

    move v0, v5

    const/4 v1, 0x0

    move-object v5, v13

    move v13, v6

    move-object/from16 v6, v22

    move-object/from16 v24, v7

    move/from16 v7, p19

    invoke-virtual/range {v2 .. v7}, Lb/f/a/b;->a(Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;F)Lb/f/a/b;

    invoke-virtual {v10, v2}, Lb/f/a/e;->a(Lb/f/a/b;)V

    const/4 v5, 0x0

    goto :goto_1ca

    :cond_1be
    :goto_1be
    move/from16 p9, v3

    move v0, v5

    move v13, v6

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    const/4 v1, 0x0

    move v8, v4

    :goto_1c8
    move/from16 v5, p10

    :goto_1ca
    const/4 v2, 0x2

    if-eqz v5, :cond_1e2

    if-eq v0, v2, :cond_1e2

    if-nez p14, :cond_1e2

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v14, :cond_1db

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_1db
    const/4 v4, 0x6

    invoke-virtual {v10, v9, v15, v3, v4}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    move v3, v13

    const/4 v13, 0x0

    goto :goto_1e4

    :cond_1e2
    move v3, v13

    move v13, v5

    :goto_1e4
    if-eqz p20, :cond_31a

    if-eqz p15, :cond_1ea

    goto/16 :goto_31a

    :cond_1ea
    const/4 v0, 0x5

    if-nez v16, :cond_1f4

    if-nez v17, :cond_1f4

    if-nez v20, :cond_1f4

    if-eqz p2, :cond_30f

    goto :goto_1fa

    :cond_1f4
    if-eqz v16, :cond_1ff

    if-nez v17, :cond_1ff

    if-eqz p2, :cond_30f

    :goto_1fa
    invoke-virtual {v10, v12, v9, v1, v0}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    goto/16 :goto_30f

    :cond_1ff
    if-nez v16, :cond_215

    if-eqz v17, :cond_215

    invoke-virtual/range {p8 .. p8}, Lb/f/a/j/e;->b()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v8, v24

    const/4 v3, 0x6

    invoke-virtual {v10, v9, v8, v2, v3}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    if-eqz p2, :cond_30f

    invoke-virtual {v10, v15, v11, v1, v0}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    goto/16 :goto_30f

    :cond_215
    move-object/from16 v8, v24

    if-eqz v16, :cond_30f

    if-eqz v17, :cond_30f

    if-eqz v13, :cond_287

    const/4 v7, 0x0

    if-eqz p2, :cond_226

    if-nez p11, :cond_226

    const/4 v1, 0x6

    invoke-virtual {v10, v9, v15, v7, v1}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_226
    if-nez p9, :cond_250

    if-gtz v14, :cond_230

    if-lez v3, :cond_22d

    goto :goto_230

    :cond_22d
    const/4 v1, 0x6

    const/4 v6, 0x0

    goto :goto_232

    :cond_230
    :goto_230
    const/4 v1, 0x4

    const/4 v6, 0x1

    :goto_232
    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->b()I

    move-result v2

    move-object/from16 v5, v23

    invoke-virtual {v10, v15, v5, v2, v1}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    invoke-virtual/range {p8 .. p8}, Lb/f/a/j/e;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v9, v8, v2, v1}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    if-gtz v14, :cond_24a

    if-lez v3, :cond_248

    goto :goto_24a

    :cond_248
    const/4 v1, 0x0

    goto :goto_24b

    :cond_24a
    :goto_24a
    const/4 v1, 0x1

    :goto_24b
    move/from16 v16, v6

    const/4 v6, 0x1

    const/4 v14, 0x5

    goto :goto_25b

    :cond_250
    move/from16 v4, p9

    move-object/from16 v5, v23

    const/4 v6, 0x1

    if-ne v4, v6, :cond_25e

    const/4 v1, 0x1

    const/4 v14, 0x6

    const/16 v16, 0x1

    :goto_25b
    move-object/from16 v4, p0

    goto :goto_291

    :cond_25e
    const/4 v1, 0x3

    if-ne v4, v1, :cond_283

    move-object/from16 v4, p0

    if-nez p14, :cond_26e

    iget v1, v4, Lb/f/a/j/f;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_26e

    if-gtz v14, :cond_26e

    const/4 v1, 0x6

    goto :goto_26f

    :cond_26e
    const/4 v1, 0x4

    :goto_26f
    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->b()I

    move-result v2

    invoke-virtual {v10, v15, v5, v2, v1}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    invoke-virtual/range {p8 .. p8}, Lb/f/a/j/e;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v9, v8, v2, v1}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    const/4 v1, 0x1

    const/4 v14, 0x5

    const/16 v16, 0x1

    goto :goto_291

    :cond_283
    move-object/from16 v4, p0

    const/4 v1, 0x0

    goto :goto_28e

    :cond_287
    move-object/from16 v5, v23

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p0

    const/4 v1, 0x1

    :goto_28e
    const/4 v14, 0x5

    const/16 v16, 0x0

    :goto_291
    if-eqz v1, :cond_2d6

    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->b()I

    move-result v17

    invoke-virtual/range {p8 .. p8}, Lb/f/a/j/e;->b()I

    move-result v18

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v5

    move/from16 v4, v17

    move-object/from16 v17, v5

    move/from16 v5, p13

    const/16 v19, 0x1

    move-object v6, v8

    const/4 v0, 0x0

    move-object v7, v9

    move-object v12, v8

    move-object/from16 v0, v17

    move/from16 v8, v18

    move-object v11, v9

    move v9, v14

    invoke-virtual/range {v1 .. v9}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;IFLb/f/a/i;Lb/f/a/i;II)V

    move-object/from16 v1, p7

    iget-object v2, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v2, v2, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    instance-of v2, v2, Lb/f/a/j/b;

    move-object/from16 v3, p8

    iget-object v4, v3, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v4, v4, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    instance-of v4, v4, Lb/f/a/j/b;

    if-eqz v2, :cond_2ce

    if-nez v4, :cond_2ce

    move/from16 v19, p2

    const/4 v2, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x6

    goto :goto_2e3

    :cond_2ce
    if-nez v2, :cond_2dd

    if-eqz v4, :cond_2dd

    move/from16 v2, p2

    const/4 v4, 0x6

    goto :goto_2e2

    :cond_2d6
    move-object/from16 v1, p7

    move-object/from16 v3, p8

    move-object v0, v5

    move-object v12, v8

    move-object v11, v9

    :cond_2dd
    move/from16 v2, p2

    move/from16 v19, v2

    const/4 v4, 0x5

    :goto_2e2
    const/4 v5, 0x5

    :goto_2e3
    if-eqz v16, :cond_2e7

    const/4 v4, 0x6

    const/4 v5, 0x6

    :cond_2e7
    if-nez v13, :cond_2eb

    if-nez v19, :cond_2ed

    :cond_2eb
    if-eqz v16, :cond_2f4

    :cond_2ed
    invoke-virtual/range {p7 .. p7}, Lb/f/a/j/e;->b()I

    move-result v1

    invoke-virtual {v10, v15, v0, v1, v4}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_2f4
    if-nez v13, :cond_2f8

    if-nez v2, :cond_2fa

    :cond_2f8
    if-eqz v16, :cond_302

    :cond_2fa
    invoke-virtual/range {p8 .. p8}, Lb/f/a/j/e;->b()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v10, v11, v12, v0, v5}, Lb/f/a/e;->c(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_302
    if-eqz p2, :cond_30d

    move-object/from16 v0, p3

    move-object v1, v11

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v10, v15, v0, v3, v2}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    goto :goto_312

    :cond_30d
    move-object v1, v11

    goto :goto_310

    :cond_30f
    :goto_30f
    move-object v1, v9

    :goto_310
    const/4 v2, 0x6

    const/4 v3, 0x0

    :goto_312
    if-eqz p2, :cond_319

    move-object/from16 v4, p4

    invoke-virtual {v10, v4, v1, v3, v2}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_319
    return-void

    :cond_31a
    :goto_31a
    move v5, v0

    move-object v1, v9

    move-object v0, v11

    move-object v4, v12

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_32b

    if-eqz p2, :cond_32b

    invoke-virtual {v10, v15, v0, v3, v2}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    invoke-virtual {v10, v4, v1, v3, v2}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_32b
    return-void
.end method

.method private t(I)Z
    .registers 6

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_27

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v1, :cond_27

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    return v2
.end method


# virtual methods
.method public A()Z
    .registers 3

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v1, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eq v1, v0, :cond_14

    :cond_a
    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v1, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-ne v1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .registers 4

    iget v0, p0, Lb/f/a/j/f;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    iget v0, p0, Lb/f/a/j/f;->G:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1d

    iget v0, p0, Lb/f/a/j/f;->k:I

    if-nez v0, :cond_1d

    iget v0, p0, Lb/f/a/j/f;->l:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v0, v0, v1

    sget-object v2, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v0, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method public C()Z
    .registers 4

    iget v0, p0, Lb/f/a/j/f;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    iget v0, p0, Lb/f/a/j/f;->G:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1d

    iget v0, p0, Lb/f/a/j/f;->h:I

    if-nez v0, :cond_1d

    iget v0, p0, Lb/f/a/j/f;->i:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v0, v0, v1

    sget-object v2, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v0, v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public D()V
    .registers 7

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->j()V

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->j()V

    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->j()V

    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->j()V

    iget-object v0, p0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->j()V

    iget-object v0, p0, Lb/f/a/j/f;->x:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->j()V

    iget-object v0, p0, Lb/f/a/j/f;->y:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->j()V

    iget-object v0, p0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    const/4 v1, 0x0

    iput v1, p0, Lb/f/a/j/f;->r:F

    const/4 v2, 0x0

    iput v2, p0, Lb/f/a/j/f;->E:I

    iput v2, p0, Lb/f/a/j/f;->F:I

    iput v1, p0, Lb/f/a/j/f;->G:F

    const/4 v1, -0x1

    iput v1, p0, Lb/f/a/j/f;->H:I

    iput v2, p0, Lb/f/a/j/f;->I:I

    iput v2, p0, Lb/f/a/j/f;->J:I

    iput v2, p0, Lb/f/a/j/f;->M:I

    iput v2, p0, Lb/f/a/j/f;->N:I

    iput v2, p0, Lb/f/a/j/f;->O:I

    iput v2, p0, Lb/f/a/j/f;->P:I

    iput v2, p0, Lb/f/a/j/f;->Q:I

    iput v2, p0, Lb/f/a/j/f;->R:I

    iput v2, p0, Lb/f/a/j/f;->S:I

    iput v2, p0, Lb/f/a/j/f;->T:I

    iput v2, p0, Lb/f/a/j/f;->U:I

    sget v3, Lb/f/a/j/f;->j0:F

    iput v3, p0, Lb/f/a/j/f;->V:F

    iput v3, p0, Lb/f/a/j/f;->W:F

    iget-object v3, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    sget-object v4, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v0, p0, Lb/f/a/j/f;->X:Ljava/lang/Object;

    iput v2, p0, Lb/f/a/j/f;->Y:I

    iput-object v0, p0, Lb/f/a/j/f;->a0:Ljava/lang/String;

    iput v2, p0, Lb/f/a/j/f;->e0:I

    iput v2, p0, Lb/f/a/j/f;->f0:I

    iget-object v3, p0, Lb/f/a/j/f;->g0:[F

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v3, v2

    aput v4, v3, v5

    iput v1, p0, Lb/f/a/j/f;->a:I

    iput v1, p0, Lb/f/a/j/f;->b:I

    iget-object v3, p0, Lb/f/a/j/f;->q:[I

    const v4, 0x7fffffff

    aput v4, v3, v2

    aput v4, v3, v5

    iput v2, p0, Lb/f/a/j/f;->e:I

    iput v2, p0, Lb/f/a/j/f;->f:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lb/f/a/j/f;->j:F

    iput v3, p0, Lb/f/a/j/f;->m:F

    iput v4, p0, Lb/f/a/j/f;->i:I

    iput v4, p0, Lb/f/a/j/f;->l:I

    iput v2, p0, Lb/f/a/j/f;->h:I

    iput v2, p0, Lb/f/a/j/f;->k:I

    iput v1, p0, Lb/f/a/j/f;->n:I

    iput v3, p0, Lb/f/a/j/f;->o:F

    iget-object v1, p0, Lb/f/a/j/f;->c:Lb/f/a/j/n;

    if-eqz v1, :cond_99

    invoke-virtual {v1}, Lb/f/a/j/n;->d()V

    :cond_99
    iget-object v1, p0, Lb/f/a/j/f;->d:Lb/f/a/j/n;

    if-eqz v1, :cond_a0

    invoke-virtual {v1}, Lb/f/a/j/n;->d()V

    :cond_a0
    iput-object v0, p0, Lb/f/a/j/f;->p:Lb/f/a/j/h;

    iput-boolean v2, p0, Lb/f/a/j/f;->b0:Z

    iput-boolean v2, p0, Lb/f/a/j/f;->c0:Z

    iput-boolean v2, p0, Lb/f/a/j/f;->d0:Z

    return-void
.end method

.method public E()V
    .registers 4

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v0

    if-eqz v0, :cond_17

    instance-of v0, v0, Lb/f/a/j/g;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lb/f/a/j/f;->k()Lb/f/a/j/f;

    move-result-object v0

    check-cast v0, Lb/f/a/j/g;

    invoke-virtual {v0}, Lb/f/a/j/g;->N()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    const/4 v0, 0x0

    iget-object v1, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1e
    if-ge v0, v1, :cond_2e

    iget-object v2, p0, Lb/f/a/j/f;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/e;

    invoke-virtual {v2}, Lb/f/a/j/e;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public F()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    invoke-virtual {v1}, Lb/f/a/j/m;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public G()V
    .registers 1

    return-void
.end method

.method public H()V
    .registers 3

    iget v0, p0, Lb/f/a/j/f;->I:I

    iget v1, p0, Lb/f/a/j/f;->J:I

    iput v0, p0, Lb/f/a/j/f;->M:I

    iput v1, p0, Lb/f/a/j/f;->N:I

    return-void
.end method

.method public I()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v1

    invoke-virtual {v1}, Lb/f/a/j/m;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public a(Lb/f/a/j/e$d;)Lb/f/a/j/e;
    .registers 4

    sget-object v0, Lb/f/a/j/f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_15
    const/4 p1, 0x0

    return-object p1

    :pswitch_17
    iget-object p1, p0, Lb/f/a/j/f;->y:Lb/f/a/j/e;

    return-object p1

    :pswitch_1a
    iget-object p1, p0, Lb/f/a/j/f;->x:Lb/f/a/j/e;

    return-object p1

    :pswitch_1d
    iget-object p1, p0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    return-object p1

    :pswitch_20
    iget-object p1, p0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    return-object p1

    :pswitch_23
    iget-object p1, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    return-object p1

    :pswitch_26
    iget-object p1, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    return-object p1

    :pswitch_29
    iget-object p1, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    return-object p1

    :pswitch_2c
    iget-object p1, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    return-object p1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->V:F

    return-void
.end method

.method public a(I)V
    .registers 2

    invoke-static {p1, p0}, Lb/f/a/j/k;->a(ILb/f/a/j/f;)V

    return-void
.end method

.method public a(II)V
    .registers 3

    iput p1, p0, Lb/f/a/j/f;->I:I

    sub-int/2addr p2, p1

    iput p2, p0, Lb/f/a/j/f;->E:I

    iget p1, p0, Lb/f/a/j/f;->E:I

    iget p2, p0, Lb/f/a/j/f;->R:I

    if-ge p1, p2, :cond_d

    iput p2, p0, Lb/f/a/j/f;->E:I

    :cond_d
    return-void
.end method

.method public a(III)V
    .registers 5

    const/4 v0, 0x1

    if-nez p3, :cond_7

    invoke-virtual {p0, p1, p2}, Lb/f/a/j/f;->a(II)V

    goto :goto_c

    :cond_7
    if-ne p3, v0, :cond_c

    invoke-virtual {p0, p1, p2}, Lb/f/a/j/f;->e(II)V

    :cond_c
    :goto_c
    iput-boolean v0, p0, Lb/f/a/j/f;->c0:Z

    return-void
.end method

.method public a(IIIF)V
    .registers 5

    iput p1, p0, Lb/f/a/j/f;->e:I

    iput p2, p0, Lb/f/a/j/f;->h:I

    iput p3, p0, Lb/f/a/j/f;->i:I

    iput p4, p0, Lb/f/a/j/f;->j:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_15

    iget p1, p0, Lb/f/a/j/f;->e:I

    if-nez p1, :cond_15

    const/4 p1, 0x2

    iput p1, p0, Lb/f/a/j/f;->e:I

    :cond_15
    return-void
.end method

.method public a(IIII)V
    .registers 6

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    iput p1, p0, Lb/f/a/j/f;->I:I

    iput p2, p0, Lb/f/a/j/f;->J:I

    iget p1, p0, Lb/f/a/j/f;->Y:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_12

    iput p2, p0, Lb/f/a/j/f;->E:I

    iput p2, p0, Lb/f/a/j/f;->F:I

    return-void

    :cond_12
    iget-object p1, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object p1, p1, p2

    sget-object p2, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    if-ne p1, p2, :cond_1f

    iget p1, p0, Lb/f/a/j/f;->E:I

    if-ge p3, p1, :cond_1f

    goto :goto_20

    :cond_1f
    move p1, p3

    :goto_20
    iget-object p2, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    sget-object v0, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    if-ne p2, v0, :cond_2e

    iget p2, p0, Lb/f/a/j/f;->F:I

    if-ge p4, p2, :cond_2e

    goto :goto_2f

    :cond_2e
    move p2, p4

    :goto_2f
    iput p1, p0, Lb/f/a/j/f;->E:I

    iput p2, p0, Lb/f/a/j/f;->F:I

    iget p1, p0, Lb/f/a/j/f;->F:I

    iget p2, p0, Lb/f/a/j/f;->S:I

    if-ge p1, p2, :cond_3b

    iput p2, p0, Lb/f/a/j/f;->F:I

    :cond_3b
    iget p1, p0, Lb/f/a/j/f;->E:I

    iget p2, p0, Lb/f/a/j/f;->R:I

    if-ge p1, p2, :cond_43

    iput p2, p0, Lb/f/a/j/f;->E:I

    :cond_43
    iput-boolean p3, p0, Lb/f/a/j/f;->c0:Z

    return-void
.end method

.method public a(Lb/f/a/c;)V
    .registers 3

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v0, p1}, Lb/f/a/j/e;->a(Lb/f/a/c;)V

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v0, p1}, Lb/f/a/j/e;->a(Lb/f/a/c;)V

    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v0, p1}, Lb/f/a/j/e;->a(Lb/f/a/c;)V

    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v0, p1}, Lb/f/a/j/e;->a(Lb/f/a/c;)V

    iget-object v0, p0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    invoke-virtual {v0, p1}, Lb/f/a/j/e;->a(Lb/f/a/c;)V

    iget-object v0, p0, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    invoke-virtual {v0, p1}, Lb/f/a/j/e;->a(Lb/f/a/c;)V

    iget-object v0, p0, Lb/f/a/j/f;->x:Lb/f/a/j/e;

    invoke-virtual {v0, p1}, Lb/f/a/j/e;->a(Lb/f/a/c;)V

    iget-object v0, p0, Lb/f/a/j/f;->y:Lb/f/a/j/e;

    invoke-virtual {v0, p1}, Lb/f/a/j/e;->a(Lb/f/a/c;)V

    return-void
.end method

.method public a(Lb/f/a/e;)V
    .registers 40

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v14, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v21

    iget-object v0, v15, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v14, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v10

    iget-object v0, v15, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v14, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v6

    iget-object v0, v15, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v14, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v4

    iget-object v0, v15, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    invoke-virtual {v14, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v3

    iget-object v0, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_b0

    if-eqz v0, :cond_36

    iget-object v0, v0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v0, v0, v13

    sget-object v5, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v0, v5, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iget-object v5, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-eqz v5, :cond_45

    iget-object v5, v5, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v5, v5, v2

    sget-object v7, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v5, v7, :cond_45

    const/4 v5, 0x1

    goto :goto_46

    :cond_45
    const/4 v5, 0x0

    :goto_46
    invoke-direct {v15, v13}, Lb/f/a/j/f;->t(I)Z

    move-result v7

    if-eqz v7, :cond_55

    iget-object v7, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    check-cast v7, Lb/f/a/j/g;

    invoke-virtual {v7, v15, v13}, Lb/f/a/j/g;->a(Lb/f/a/j/f;I)V

    const/4 v7, 0x1

    goto :goto_59

    :cond_55
    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->z()Z

    move-result v7

    :goto_59
    invoke-direct {v15, v2}, Lb/f/a/j/f;->t(I)Z

    move-result v8

    if-eqz v8, :cond_68

    iget-object v8, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    check-cast v8, Lb/f/a/j/g;

    invoke-virtual {v8, v15, v2}, Lb/f/a/j/g;->a(Lb/f/a/j/f;I)V

    const/4 v8, 0x1

    goto :goto_6c

    :cond_68
    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->A()Z

    move-result v8

    :goto_6c
    if-eqz v0, :cond_89

    iget v9, v15, Lb/f/a/j/f;->Y:I

    if-eq v9, v1, :cond_89

    iget-object v9, v15, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v9, v9, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v9, :cond_89

    iget-object v9, v15, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v9, v9, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v9, :cond_89

    iget-object v9, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    iget-object v9, v9, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v14, v9}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v9

    invoke-virtual {v14, v9, v10, v13, v2}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_89
    if-eqz v5, :cond_aa

    iget v9, v15, Lb/f/a/j/f;->Y:I

    if-eq v9, v1, :cond_aa

    iget-object v9, v15, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v9, v9, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v9, :cond_aa

    iget-object v9, v15, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget-object v9, v9, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-nez v9, :cond_aa

    iget-object v9, v15, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    if-nez v9, :cond_aa

    iget-object v9, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    iget-object v9, v9, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v14, v9}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v9

    invoke-virtual {v14, v9, v4, v13, v2}, Lb/f/a/e;->b(Lb/f/a/i;Lb/f/a/i;II)V

    :cond_aa
    move v12, v5

    move/from16 v16, v7

    move/from16 v22, v8

    goto :goto_b6

    :cond_b0
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    :goto_b6
    iget v5, v15, Lb/f/a/j/f;->E:I

    iget v7, v15, Lb/f/a/j/f;->R:I

    if-ge v5, v7, :cond_bd

    move v5, v7

    :cond_bd
    iget v7, v15, Lb/f/a/j/f;->F:I

    iget v8, v15, Lb/f/a/j/f;->S:I

    if-ge v7, v8, :cond_c4

    move v7, v8

    :cond_c4
    iget-object v8, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v8, v8, v13

    sget-object v9, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-eq v8, v9, :cond_ce

    const/4 v8, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v8, 0x0

    :goto_cf
    iget-object v9, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v9, v9, v2

    sget-object v11, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-eq v9, v11, :cond_d9

    const/4 v9, 0x1

    goto :goto_da

    :cond_d9
    const/4 v9, 0x0

    :goto_da
    iget v11, v15, Lb/f/a/j/f;->H:I

    iput v11, v15, Lb/f/a/j/f;->n:I

    iget v11, v15, Lb/f/a/j/f;->G:F

    iput v11, v15, Lb/f/a/j/f;->o:F

    iget v2, v15, Lb/f/a/j/f;->e:I

    iget v13, v15, Lb/f/a/j/f;->f:I

    const/16 v18, 0x0

    const/16 v19, 0x4

    cmpl-float v11, v11, v18

    if-lez v11, :cond_18b

    iget v11, v15, Lb/f/a/j/f;->Y:I

    const/16 v1, 0x8

    if-eq v11, v1, :cond_18b

    iget-object v1, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v11, 0x0

    aget-object v1, v1, v11

    sget-object v11, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    move-object/from16 v23, v3

    if-ne v1, v11, :cond_102

    if-nez v2, :cond_102

    const/4 v2, 0x3

    :cond_102
    iget-object v1, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v11, 0x1

    aget-object v1, v1, v11

    sget-object v11, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v1, v11, :cond_10e

    if-nez v13, :cond_10e

    const/4 v13, 0x3

    :cond_10e
    iget-object v1, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v11, 0x0

    aget-object v3, v1, v11

    sget-object v11, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v3, v11, :cond_125

    const/4 v3, 0x1

    aget-object v1, v1, v3

    if-ne v1, v11, :cond_125

    const/4 v1, 0x3

    if-ne v2, v1, :cond_126

    if-ne v13, v1, :cond_126

    invoke-virtual {v15, v0, v12, v8, v9}, Lb/f/a/j/f;->a(ZZZZ)V

    goto :goto_180

    :cond_125
    const/4 v1, 0x3

    :cond_126
    iget-object v3, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v8, 0x0

    aget-object v9, v3, v8

    sget-object v11, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v9, v11, :cond_14c

    if-ne v2, v1, :cond_14c

    iput v8, v15, Lb/f/a/j/f;->n:I

    iget v1, v15, Lb/f/a/j/f;->o:F

    iget v5, v15, Lb/f/a/j/f;->F:I

    int-to-float v5, v5

    mul-float v1, v1, v5

    float-to-int v1, v1

    const/4 v8, 0x1

    aget-object v3, v3, v8

    move/from16 v28, v1

    if-eq v3, v11, :cond_149

    move/from16 v29, v7

    move/from16 v26, v13

    const/16 v25, 0x4

    goto :goto_195

    :cond_149
    move/from16 v25, v2

    goto :goto_184

    :cond_14c
    const/4 v8, 0x1

    iget-object v1, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v1, v1, v8

    sget-object v3, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v1, v3, :cond_180

    const/4 v1, 0x3

    if-ne v13, v1, :cond_180

    iput v8, v15, Lb/f/a/j/f;->n:I

    iget v1, v15, Lb/f/a/j/f;->H:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_166

    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, v15, Lb/f/a/j/f;->o:F

    div-float/2addr v1, v3

    iput v1, v15, Lb/f/a/j/f;->o:F

    :cond_166
    iget v1, v15, Lb/f/a/j/f;->o:F

    iget v3, v15, Lb/f/a/j/f;->E:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v3, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v7, 0x0

    aget-object v3, v3, v7

    sget-object v7, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    move/from16 v29, v1

    move/from16 v25, v2

    move/from16 v28, v5

    if-eq v3, v7, :cond_186

    const/16 v26, 0x4

    goto :goto_195

    :cond_180
    :goto_180
    move/from16 v25, v2

    move/from16 v28, v5

    :goto_184
    move/from16 v29, v7

    :cond_186
    move/from16 v26, v13

    const/16 v27, 0x1

    goto :goto_197

    :cond_18b
    move-object/from16 v23, v3

    move/from16 v25, v2

    move/from16 v28, v5

    move/from16 v29, v7

    move/from16 v26, v13

    :goto_195
    const/16 v27, 0x0

    :goto_197
    iget-object v1, v15, Lb/f/a/j/f;->g:[I

    const/4 v2, 0x0

    aput v25, v1, v2

    const/4 v2, 0x1

    aput v26, v1, v2

    if-eqz v27, :cond_1ab

    iget v1, v15, Lb/f/a/j/f;->n:I

    const/4 v2, -0x1

    if-eqz v1, :cond_1a8

    if-ne v1, v2, :cond_1ac

    :cond_1a8
    const/16 v24, 0x1

    goto :goto_1ae

    :cond_1ab
    const/4 v2, -0x1

    :cond_1ac
    const/16 v24, 0x0

    :goto_1ae
    iget-object v1, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    sget-object v3, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v1, v3, :cond_1be

    instance-of v1, v15, Lb/f/a/j/g;

    if-eqz v1, :cond_1be

    const/16 v30, 0x1

    goto :goto_1c0

    :cond_1be
    const/16 v30, 0x0

    :goto_1c0
    iget-object v1, v15, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    invoke-virtual {v1}, Lb/f/a/j/e;->i()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/lit8 v31, v1, 0x1

    iget v1, v15, Lb/f/a/j/f;->a:I

    const/4 v13, 0x2

    const/16 v32, 0x0

    if-eq v1, v13, :cond_237

    iget-object v1, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-eqz v1, :cond_1dd

    iget-object v1, v1, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v14, v1}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_1df

    :cond_1dd
    move-object/from16 v20, v32

    :goto_1df
    iget-object v1, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-eqz v1, :cond_1ec

    iget-object v1, v1, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v14, v1}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v1

    move-object/from16 v33, v1

    goto :goto_1ee

    :cond_1ec
    move-object/from16 v33, v32

    :goto_1ee
    iget-object v1, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/16 v17, 0x0

    aget-object v5, v1, v17

    iget-object v7, v15, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v8, v15, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget v9, v15, Lb/f/a/j/f;->I:I

    iget v11, v15, Lb/f/a/j/f;->R:I

    iget-object v1, v15, Lb/f/a/j/f;->q:[I

    aget v1, v1, v17

    move/from16 v34, v12

    move v12, v1

    iget v1, v15, Lb/f/a/j/f;->V:F

    move v13, v1

    iget v1, v15, Lb/f/a/j/f;->h:I

    move/from16 v17, v1

    iget v1, v15, Lb/f/a/j/f;->i:I

    move/from16 v18, v1

    iget v1, v15, Lb/f/a/j/f;->j:F

    move/from16 v19, v1

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, -0x1

    move/from16 v2, v35

    move-object/from16 v36, v23

    move-object/from16 v3, v33

    move-object/from16 v23, v4

    move-object/from16 v4, v20

    move-object/from16 v37, v6

    move/from16 v6, v30

    move-object/from16 v30, v10

    move/from16 v10, v28

    move/from16 v14, v24

    move/from16 v15, v16

    move/from16 v16, v25

    move/from16 v20, v31

    invoke-direct/range {v0 .. v20}, Lb/f/a/j/f;->a(Lb/f/a/e;ZLb/f/a/i;Lb/f/a/i;Lb/f/a/j/f$b;ZLb/f/a/j/e;Lb/f/a/j/e;IIIIFZZIIIFZ)V

    goto :goto_241

    :cond_237
    move-object/from16 v37, v6

    move-object/from16 v30, v10

    move/from16 v34, v12

    move-object/from16 v36, v23

    move-object/from16 v23, v4

    :goto_241
    move-object/from16 v15, p0

    iget v0, v15, Lb/f/a/j/f;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_249

    return-void

    :cond_249
    iget-object v0, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v14, 0x1

    aget-object v0, v0, v14

    sget-object v1, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne v0, v1, :cond_258

    instance-of v0, v15, Lb/f/a/j/g;

    if-eqz v0, :cond_258

    const/4 v6, 0x1

    goto :goto_259

    :cond_258
    const/4 v6, 0x0

    :goto_259
    if-eqz v27, :cond_265

    iget v0, v15, Lb/f/a/j/f;->n:I

    if-eq v0, v14, :cond_262

    const/4 v1, -0x1

    if-ne v0, v1, :cond_265

    :cond_262
    const/16 v16, 0x1

    goto :goto_267

    :cond_265
    const/16 v16, 0x0

    :goto_267
    iget v0, v15, Lb/f/a/j/f;->Q:I

    if-lez v0, :cond_2a0

    iget-object v0, v15, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget v0, v0, Lb/f/a/j/o;->b:I

    if-ne v0, v14, :cond_281

    iget-object v0, v15, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Lb/f/a/j/m;->a(Lb/f/a/e;)V

    goto :goto_2a2

    :cond_281
    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Lb/f/a/j/f;->c()I

    move-result v0

    const/4 v1, 0x6

    move-object/from16 v2, v36

    move-object/from16 v4, v37

    invoke-virtual {v10, v2, v4, v0, v1}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    iget-object v0, v15, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    iget-object v0, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v0, :cond_2a4

    invoke-virtual {v10, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v0, v3, v1}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;II)Lb/f/a/b;

    const/16 v20, 0x0

    goto :goto_2a6

    :cond_2a0
    move-object/from16 v10, p1

    :goto_2a2
    move-object/from16 v4, v37

    :cond_2a4
    move/from16 v20, v31

    :goto_2a6
    iget-object v0, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-eqz v0, :cond_2b3

    iget-object v0, v0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v10, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v0

    move-object/from16 v24, v0

    goto :goto_2b5

    :cond_2b3
    move-object/from16 v24, v32

    :goto_2b5
    iget-object v0, v15, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    if-eqz v0, :cond_2c1

    iget-object v0, v0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v10, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    move-result-object v0

    move-object v3, v0

    goto :goto_2c3

    :cond_2c1
    move-object/from16 v3, v32

    :goto_2c3
    iget-object v0, v15, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v5, v0, v14

    iget-object v7, v15, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    iget-object v8, v15, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    iget v9, v15, Lb/f/a/j/f;->J:I

    iget v11, v15, Lb/f/a/j/f;->S:I

    iget-object v0, v15, Lb/f/a/j/f;->q:[I

    aget v12, v0, v14

    iget v13, v15, Lb/f/a/j/f;->W:F

    iget v0, v15, Lb/f/a/j/f;->k:I

    move/from16 v17, v0

    iget v0, v15, Lb/f/a/j/f;->l:I

    move/from16 v18, v0

    iget v0, v15, Lb/f/a/j/f;->m:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    move-object/from16 v25, v4

    move-object/from16 v4, v24

    move/from16 v10, v29

    move/from16 v14, v16

    move/from16 v15, v22

    move/from16 v16, v26

    invoke-direct/range {v0 .. v20}, Lb/f/a/j/f;->a(Lb/f/a/e;ZLb/f/a/i;Lb/f/a/i;Lb/f/a/j/f$b;ZLb/f/a/j/e;Lb/f/a/j/e;IIIIFZZIIIFZ)V

    if-eqz v27, :cond_31c

    const/4 v6, 0x6

    move-object/from16 v7, p0

    iget v0, v7, Lb/f/a/j/f;->n:I

    const/4 v1, 0x1

    iget v5, v7, Lb/f/a/j/f;->o:F

    if-ne v0, v1, :cond_30d

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    move-object/from16 v4, v21

    goto :goto_318

    :cond_30d
    const/4 v6, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move-object/from16 v4, v25

    :goto_318
    invoke-virtual/range {v0 .. v6}, Lb/f/a/e;->a(Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;FI)V

    goto :goto_31e

    :cond_31c
    move-object/from16 v7, p0

    :goto_31e
    iget-object v0, v7, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->i()Z

    move-result v0

    if-eqz v0, :cond_346

    iget-object v0, v7, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->g()Lb/f/a/j/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/f/a/j/e;->c()Lb/f/a/j/f;

    move-result-object v0

    iget v1, v7, Lb/f/a/j/f;->r:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Lb/f/a/j/f;->z:Lb/f/a/j/e;

    invoke-virtual {v2}, Lb/f/a/j/e;->b()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Lb/f/a/e;->a(Lb/f/a/j/f;Lb/f/a/j/f;FI)V

    :cond_346
    return-void
.end method

.method public a(Lb/f/a/j/e$d;Lb/f/a/j/f;Lb/f/a/j/e$d;II)V
    .registers 13

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v0

    invoke-virtual {p2, p3}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object v1

    sget-object v4, Lb/f/a/j/e$c;->c:Lb/f/a/j/e$c;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Lb/f/a/j/e;->a(Lb/f/a/j/e;IILb/f/a/j/e$c;IZ)Z

    return-void
.end method

.method public a(Lb/f/a/j/f$b;)V
    .registers 4

    iget-object v0, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v0, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne p1, v0, :cond_e

    iget p1, p0, Lb/f/a/j/f;->T:I

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->o(I)V

    :cond_e
    return-void
.end method

.method public a(Lb/f/a/j/f;)V
    .registers 2

    iput-object p1, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    return-void
.end method

.method public a(Lb/f/a/j/f;FI)V
    .registers 10

    sget-object v3, Lb/f/a/j/e$d;->h:Lb/f/a/j/e$d;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;Lb/f/a/j/f;Lb/f/a/j/e$d;II)V

    iput p2, p0, Lb/f/a/j/f;->r:F

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lb/f/a/j/f;->X:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lb/f/a/j/f;->Z:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(ZZZZ)V
    .registers 10

    iget v0, p0, Lb/f/a/j/f;->n:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_20

    if-eqz p3, :cond_10

    if-nez p4, :cond_10

    iput v2, p0, Lb/f/a/j/f;->n:I

    goto :goto_20

    :cond_10
    if-nez p3, :cond_20

    if-eqz p4, :cond_20

    iput v4, p0, Lb/f/a/j/f;->n:I

    iget p3, p0, Lb/f/a/j/f;->H:I

    if-ne p3, v3, :cond_20

    iget p3, p0, Lb/f/a/j/f;->o:F

    div-float p3, v1, p3

    iput p3, p0, Lb/f/a/j/f;->o:F

    :cond_20
    :goto_20
    iget p3, p0, Lb/f/a/j/f;->n:I

    if-nez p3, :cond_37

    iget-object p3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-eqz p3, :cond_34

    iget-object p3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-nez p3, :cond_37

    :cond_34
    iput v4, p0, Lb/f/a/j/f;->n:I

    goto :goto_4d

    :cond_37
    iget p3, p0, Lb/f/a/j/f;->n:I

    if-ne p3, v4, :cond_4d

    iget-object p3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-eqz p3, :cond_4b

    iget-object p3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-nez p3, :cond_4d

    :cond_4b
    iput v2, p0, Lb/f/a/j/f;->n:I

    :cond_4d
    :goto_4d
    iget p3, p0, Lb/f/a/j/f;->n:I

    if-ne p3, v3, :cond_9c

    iget-object p3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-eqz p3, :cond_71

    iget-object p3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-eqz p3, :cond_71

    iget-object p3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-eqz p3, :cond_71

    iget-object p3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-nez p3, :cond_9c

    :cond_71
    iget-object p3, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-eqz p3, :cond_84

    iget-object p3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-eqz p3, :cond_84

    iput v2, p0, Lb/f/a/j/f;->n:I

    goto :goto_9c

    :cond_84
    iget-object p3, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-eqz p3, :cond_9c

    iget-object p3, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {p3}, Lb/f/a/j/e;->i()Z

    move-result p3

    if-eqz p3, :cond_9c

    iget p3, p0, Lb/f/a/j/f;->o:F

    div-float p3, v1, p3

    iput p3, p0, Lb/f/a/j/f;->o:F

    iput v4, p0, Lb/f/a/j/f;->n:I

    :cond_9c
    :goto_9c
    iget p3, p0, Lb/f/a/j/f;->n:I

    if-ne p3, v3, :cond_b3

    if-eqz p1, :cond_a7

    if-nez p2, :cond_a7

    iput v2, p0, Lb/f/a/j/f;->n:I

    goto :goto_b3

    :cond_a7
    if-nez p1, :cond_b3

    if-eqz p2, :cond_b3

    iget p3, p0, Lb/f/a/j/f;->o:F

    div-float p3, v1, p3

    iput p3, p0, Lb/f/a/j/f;->o:F

    iput v4, p0, Lb/f/a/j/f;->n:I

    :cond_b3
    :goto_b3
    iget p3, p0, Lb/f/a/j/f;->n:I

    if-ne p3, v3, :cond_d2

    iget p3, p0, Lb/f/a/j/f;->h:I

    if-lez p3, :cond_c2

    iget p3, p0, Lb/f/a/j/f;->k:I

    if-nez p3, :cond_c2

    iput v2, p0, Lb/f/a/j/f;->n:I

    goto :goto_d2

    :cond_c2
    iget p3, p0, Lb/f/a/j/f;->h:I

    if-nez p3, :cond_d2

    iget p3, p0, Lb/f/a/j/f;->k:I

    if-lez p3, :cond_d2

    iget p3, p0, Lb/f/a/j/f;->o:F

    div-float p3, v1, p3

    iput p3, p0, Lb/f/a/j/f;->o:F

    iput v4, p0, Lb/f/a/j/f;->n:I

    :cond_d2
    :goto_d2
    iget p3, p0, Lb/f/a/j/f;->n:I

    if-ne p3, v3, :cond_e1

    if-eqz p1, :cond_e1

    if-eqz p2, :cond_e1

    iget p1, p0, Lb/f/a/j/f;->o:F

    div-float/2addr v1, p1

    iput v1, p0, Lb/f/a/j/f;->o:F

    iput v4, p0, Lb/f/a/j/f;->n:I

    :cond_e1
    return-void
.end method

.method public a()Z
    .registers 3

    iget v0, p0, Lb/f/a/j/f;->Y:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public b(I)F
    .registers 3

    if-nez p1, :cond_5

    iget p1, p0, Lb/f/a/j/f;->V:F

    return p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget p1, p0, Lb/f/a/j/f;->W:F

    return p1

    :cond_b
    const/high16 p1, -0x40800000    # -1.0f

    return p1
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

.method public b(F)V
    .registers 4

    iget-object v0, p0, Lb/f/a/j/f;->g0:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public b(II)V
    .registers 3

    iput p1, p0, Lb/f/a/j/f;->O:I

    iput p2, p0, Lb/f/a/j/f;->P:I

    return-void
.end method

.method public b(IIIF)V
    .registers 5

    iput p1, p0, Lb/f/a/j/f;->f:I

    iput p2, p0, Lb/f/a/j/f;->k:I

    iput p3, p0, Lb/f/a/j/f;->l:I

    iput p4, p0, Lb/f/a/j/f;->m:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_15

    iget p1, p0, Lb/f/a/j/f;->f:I

    if-nez p1, :cond_15

    const/4 p1, 0x2

    iput p1, p0, Lb/f/a/j/f;->f:I

    :cond_15
    return-void
.end method

.method public b(Lb/f/a/e;)V
    .registers 3

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    iget v0, p0, Lb/f/a/j/f;->Q:I

    if-lez v0, :cond_1d

    iget-object v0, p0, Lb/f/a/j/f;->w:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->a(Ljava/lang/Object;)Lb/f/a/i;

    :cond_1d
    return-void
.end method

.method public b(Lb/f/a/j/f$b;)V
    .registers 4

    iget-object v0, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v0, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    if-ne p1, v0, :cond_e

    iget p1, p0, Lb/f/a/j/f;->U:I

    invoke-virtual {p0, p1}, Lb/f/a/j/f;->g(I)V

    :cond_e
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_8e

    :cond_b
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_37

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_37

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    const/4 v1, 0x0

    goto :goto_35

    :cond_2c
    const-string v4, "H"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v1, 0x1

    :cond_35
    :goto_35
    add-int/lit8 v4, v3, 0x1

    :cond_37
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_75

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_75

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_84

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_84

    :try_start_57
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_84

    cmpl-float v3, p1, v0

    if-lez v3, :cond_84

    if-ne v1, v5, :cond_6f

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_85

    :cond_6f
    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_74} :catch_84

    goto :goto_85

    :cond_75
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_84

    :try_start_7f
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    :cond_84
    const/4 p1, 0x0

    :goto_85
    cmpl-float v0, p1, v0

    if-lez v0, :cond_8d

    iput p1, p0, Lb/f/a/j/f;->G:F

    iput v1, p0, Lb/f/a/j/f;->H:I

    :cond_8d
    return-void

    :cond_8e
    :goto_8e
    iput v0, p0, Lb/f/a/j/f;->G:F

    return-void
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lb/f/a/j/f;->Q:I

    return v0
.end method

.method public c(I)Lb/f/a/j/f$b;
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lb/f/a/j/f;->j()Lb/f/a/j/f$b;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lb/f/a/j/f;->q()Lb/f/a/j/f$b;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(F)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->W:F

    return-void
.end method

.method public c(II)V
    .registers 3

    iput p1, p0, Lb/f/a/j/f;->I:I

    iput p2, p0, Lb/f/a/j/f;->J:I

    return-void
.end method

.method public c(Lb/f/a/e;)V
    .registers 8

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {p1, v0}, Lb/f/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {p1, v1}, Lb/f/a/e;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {p1, v2}, Lb/f/a/e;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {p1, v3}, Lb/f/a/e;->b(Ljava/lang/Object;)I

    move-result p1

    sub-int v3, v2, v0

    sub-int v4, p1, v1

    const/4 v5, 0x0

    if-ltz v3, :cond_36

    if-ltz v4, :cond_36

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_36

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_36

    if-eq v1, v3, :cond_36

    if-eq v1, v4, :cond_36

    if-eq v2, v3, :cond_36

    if-eq v2, v4, :cond_36

    if-eq p1, v3, :cond_36

    if-ne p1, v4, :cond_3a

    :cond_36
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_3a
    invoke-virtual {p0, v0, v1, v2, p1}, Lb/f/a/j/f;->a(IIII)V

    return-void
.end method

.method public d()I
    .registers 3

    invoke-virtual {p0}, Lb/f/a/j/f;->w()I

    move-result v0

    iget v1, p0, Lb/f/a/j/f;->F:I

    add-int/2addr v0, v1

    return v0
.end method

.method public d(I)I
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lb/f/a/j/f;->s()I

    move-result p1

    return p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lb/f/a/j/f;->i()I

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public d(F)V
    .registers 4

    iget-object v0, p0, Lb/f/a/j/f;->g0:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method d(II)V
    .registers 4

    if-nez p2, :cond_5

    iput p1, p0, Lb/f/a/j/f;->K:I

    goto :goto_a

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    iput p1, p0, Lb/f/a/j/f;->L:I

    :cond_a
    :goto_a
    return-void
.end method

.method e(I)I
    .registers 3

    if-nez p1, :cond_5

    iget p1, p0, Lb/f/a/j/f;->K:I

    return p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget p1, p0, Lb/f/a/j/f;->L:I

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/f/a/j/f;->X:Ljava/lang/Object;

    return-object v0
.end method

.method public e(II)V
    .registers 3

    iput p1, p0, Lb/f/a/j/f;->J:I

    sub-int/2addr p2, p1

    iput p2, p0, Lb/f/a/j/f;->F:I

    iget p1, p0, Lb/f/a/j/f;->F:I

    iget p2, p0, Lb/f/a/j/f;->S:I

    if-ge p1, p2, :cond_d

    iput p2, p0, Lb/f/a/j/f;->F:I

    :cond_d
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/f/a/j/f;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->Q:I

    return-void
.end method

.method public g()I
    .registers 3

    iget v0, p0, Lb/f/a/j/f;->M:I

    iget v1, p0, Lb/f/a/j/f;->O:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .registers 3

    iput p1, p0, Lb/f/a/j/f;->F:I

    iget p1, p0, Lb/f/a/j/f;->F:I

    iget v0, p0, Lb/f/a/j/f;->S:I

    if-ge p1, v0, :cond_a

    iput v0, p0, Lb/f/a/j/f;->F:I

    :cond_a
    return-void
.end method

.method public h()I
    .registers 3

    iget v0, p0, Lb/f/a/j/f;->N:I

    iget v1, p0, Lb/f/a/j/f;->P:I

    add-int/2addr v0, v1

    return v0
.end method

.method public h(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->e0:I

    return-void
.end method

.method public i()I
    .registers 3

    iget v0, p0, Lb/f/a/j/f;->Y:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget v0, p0, Lb/f/a/j/f;->F:I

    return v0
.end method

.method public i(I)V
    .registers 4

    iget-object v0, p0, Lb/f/a/j/f;->q:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public j()Lb/f/a/j/f$b;
    .registers 3

    iget-object v0, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public j(I)V
    .registers 4

    iget-object v0, p0, Lb/f/a/j/f;->q:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public k()Lb/f/a/j/f;
    .registers 2

    iget-object v0, p0, Lb/f/a/j/f;->D:Lb/f/a/j/f;

    return-object v0
.end method

.method public k(I)V
    .registers 2

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iput p1, p0, Lb/f/a/j/f;->S:I

    return-void
.end method

.method public l()Lb/f/a/j/n;
    .registers 2

    iget-object v0, p0, Lb/f/a/j/f;->d:Lb/f/a/j/n;

    if-nez v0, :cond_b

    new-instance v0, Lb/f/a/j/n;

    invoke-direct {v0}, Lb/f/a/j/n;-><init>()V

    iput-object v0, p0, Lb/f/a/j/f;->d:Lb/f/a/j/n;

    :cond_b
    iget-object v0, p0, Lb/f/a/j/f;->d:Lb/f/a/j/n;

    return-object v0
.end method

.method public l(I)V
    .registers 2

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iput p1, p0, Lb/f/a/j/f;->R:I

    return-void
.end method

.method public m()Lb/f/a/j/n;
    .registers 2

    iget-object v0, p0, Lb/f/a/j/f;->c:Lb/f/a/j/n;

    if-nez v0, :cond_b

    new-instance v0, Lb/f/a/j/n;

    invoke-direct {v0}, Lb/f/a/j/n;-><init>()V

    iput-object v0, p0, Lb/f/a/j/f;->c:Lb/f/a/j/n;

    :cond_b
    iget-object v0, p0, Lb/f/a/j/f;->c:Lb/f/a/j/n;

    return-object v0
.end method

.method public m(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->f0:I

    return-void
.end method

.method public n()I
    .registers 3

    invoke-virtual {p0}, Lb/f/a/j/f;->v()I

    move-result v0

    iget v1, p0, Lb/f/a/j/f;->E:I

    add-int/2addr v0, v1

    return v0
.end method

.method public n(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->Y:I

    return-void
.end method

.method protected o()I
    .registers 3

    iget v0, p0, Lb/f/a/j/f;->I:I

    iget v1, p0, Lb/f/a/j/f;->O:I

    add-int/2addr v0, v1

    return v0
.end method

.method public o(I)V
    .registers 3

    iput p1, p0, Lb/f/a/j/f;->E:I

    iget p1, p0, Lb/f/a/j/f;->E:I

    iget v0, p0, Lb/f/a/j/f;->R:I

    if-ge p1, v0, :cond_a

    iput v0, p0, Lb/f/a/j/f;->E:I

    :cond_a
    return-void
.end method

.method protected p()I
    .registers 3

    iget v0, p0, Lb/f/a/j/f;->J:I

    iget v1, p0, Lb/f/a/j/f;->P:I

    add-int/2addr v0, v1

    return v0
.end method

.method public p(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->U:I

    return-void
.end method

.method public q()Lb/f/a/j/f$b;
    .registers 3

    iget-object v0, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public q(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->T:I

    return-void
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lb/f/a/j/f;->Y:I

    return v0
.end method

.method public r(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->I:I

    return-void
.end method

.method public s()I
    .registers 3

    iget v0, p0, Lb/f/a/j/f;->Y:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget v0, p0, Lb/f/a/j/f;->E:I

    return v0
.end method

.method public s(I)V
    .registers 2

    iput p1, p0, Lb/f/a/j/f;->J:I

    return-void
.end method

.method public t()I
    .registers 2

    iget v0, p0, Lb/f/a/j/f;->U:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/f/a/j/f;->a0:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/f/a/j/f;->a0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    move-object v1, v3

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/f/a/j/f;->Z:Ljava/lang/String;

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/f/a/j/f;->Z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/f/a/j/f;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/f/a/j/f;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/f/a/j/f;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/f/a/j/f;->F:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") wrap: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/f/a/j/f;->T:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/f/a/j/f;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .registers 2

    iget v0, p0, Lb/f/a/j/f;->T:I

    return v0
.end method

.method public v()I
    .registers 2

    iget v0, p0, Lb/f/a/j/f;->I:I

    return v0
.end method

.method public w()I
    .registers 2

    iget v0, p0, Lb/f/a/j/f;->J:I

    return v0
.end method

.method public x()Z
    .registers 2

    iget v0, p0, Lb/f/a/j/f;->Q:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public y()Z
    .registers 3

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget v0, v0, Lb/f/a/j/o;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget v0, v0, Lb/f/a/j/o;->b:I

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lb/f/a/j/f;->t:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget v0, v0, Lb/f/a/j/o;->b:I

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lb/f/a/j/f;->v:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->d()Lb/f/a/j/m;

    move-result-object v0

    iget v0, v0, Lb/f/a/j/o;->b:I

    if-ne v0, v1, :cond_2a

    return v1

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .registers 3

    iget-object v0, p0, Lb/f/a/j/f;->s:Lb/f/a/j/e;

    iget-object v1, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eq v1, v0, :cond_14

    :cond_a
    iget-object v0, p0, Lb/f/a/j/f;->u:Lb/f/a/j/e;

    iget-object v1, v0, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-ne v1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

###### Class b.f.a.j.f.a (b.f.a.j.f$a)
.class synthetic Lb/f/a/j/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/f/a/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lb/f/a/j/f$b;->values()[Lb/f/a/j/f$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lb/f/a/j/f$a;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lb/f/a/j/f$a;->b:[I

    sget-object v2, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lb/f/a/j/f$a;->b:[I

    sget-object v3, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lb/f/a/j/f$a;->b:[I

    sget-object v4, Lb/f/a/j/f$b;->e:Lb/f/a/j/f$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lb/f/a/j/f$a;->b:[I

    sget-object v5, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    invoke-static {}, Lb/f/a/j/e$d;->values()[Lb/f/a/j/e$d;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lb/f/a/j/f$a;->a:[I

    :try_start_3e
    sget-object v4, Lb/f/a/j/f$a;->a:[I

    sget-object v5, Lb/f/a/j/e$d;->c:Lb/f/a/j/e$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Lb/f/a/j/f$a;->a:[I

    sget-object v4, Lb/f/a/j/e$d;->d:Lb/f/a/j/e$d;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v0, Lb/f/a/j/f$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->e:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5c
    sget-object v0, Lb/f/a/j/f$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->f:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_66

    :catch_66
    :try_start_66
    sget-object v0, Lb/f/a/j/f$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->g:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v0, Lb/f/a/j/f$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->h:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7c
    sget-object v0, Lb/f/a/j/f$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->i:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_87} :catch_87

    :catch_87
    :try_start_87
    sget-object v0, Lb/f/a/j/f$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->j:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_93} :catch_93

    :catch_93
    :try_start_93
    sget-object v0, Lb/f/a/j/f$a;->a:[I

    sget-object v1, Lb/f/a/j/e$d;->b:Lb/f/a/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9f} :catch_9f

    :catch_9f
    return-void
.end method

###### Class b.f.a.j.f.b (b.f.a.j.f$b)
.class public final enum Lb/f/a/j/f$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/f/a/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/f/a/j/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/f/a/j/f$b;

.field public static final enum c:Lb/f/a/j/f$b;

.field public static final enum d:Lb/f/a/j/f$b;

.field public static final enum e:Lb/f/a/j/f$b;

.field private static final synthetic f:[Lb/f/a/j/f$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lb/f/a/j/f$b;

    const/4 v1, 0x0

    const-string v2, "FIXED"

    invoke-direct {v0, v2, v1}, Lb/f/a/j/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    new-instance v0, Lb/f/a/j/f$b;

    const/4 v2, 0x1

    const-string v3, "WRAP_CONTENT"

    invoke-direct {v0, v3, v2}, Lb/f/a/j/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    new-instance v0, Lb/f/a/j/f$b;

    const/4 v3, 0x2

    const-string v4, "MATCH_CONSTRAINT"

    invoke-direct {v0, v4, v3}, Lb/f/a/j/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    new-instance v0, Lb/f/a/j/f$b;

    const/4 v4, 0x3

    const-string v5, "MATCH_PARENT"

    invoke-direct {v0, v5, v4}, Lb/f/a/j/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/a/j/f$b;->e:Lb/f/a/j/f$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lb/f/a/j/f$b;

    sget-object v5, Lb/f/a/j/f$b;->b:Lb/f/a/j/f$b;

    aput-object v5, v0, v1

    sget-object v1, Lb/f/a/j/f$b;->c:Lb/f/a/j/f$b;

    aput-object v1, v0, v2

    sget-object v1, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    aput-object v1, v0, v3

    sget-object v1, Lb/f/a/j/f$b;->e:Lb/f/a/j/f$b;

    aput-object v1, v0, v4

    sput-object v0, Lb/f/a/j/f$b;->f:[Lb/f/a/j/f$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/f/a/j/f$b;
    .registers 2

    const-class v0, Lb/f/a/j/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/f/a/j/f$b;

    return-object p0
.end method

.method public static values()[Lb/f/a/j/f$b;
    .registers 1

    sget-object v0, Lb/f/a/j/f$b;->f:[Lb/f/a/j/f$b;

    invoke-virtual {v0}, [Lb/f/a/j/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/f/a/j/f$b;

    return-object v0
.end method
