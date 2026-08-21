###### Class b.f.a.j.d (b.f.a.j.d)
.class public Lb/f/a/j/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Lb/f/a/j/f;

.field protected b:Lb/f/a/j/f;

.field protected c:Lb/f/a/j/f;

.field protected d:Lb/f/a/j/f;

.field protected e:Lb/f/a/j/f;

.field protected f:Lb/f/a/j/f;

.field protected g:Lb/f/a/j/f;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/f/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I

.field protected j:I

.field protected k:F

.field private l:I

.field private m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lb/f/a/j/f;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/d;->k:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/f/a/j/d;->m:Z

    iput-object p1, p0, Lb/f/a/j/d;->a:Lb/f/a/j/f;

    iput p2, p0, Lb/f/a/j/d;->l:I

    iput-boolean p3, p0, Lb/f/a/j/d;->m:Z

    return-void
.end method

.method private static a(Lb/f/a/j/f;I)Z
    .registers 4

    invoke-virtual {p0}, Lb/f/a/j/f;->r()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    aget-object v0, v0, p1

    sget-object v1, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v0, v1, :cond_1d

    iget-object p0, p0, Lb/f/a/j/f;->g:[I

    aget v0, p0, p1

    if-eqz v0, :cond_1b

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method private b()V
    .registers 14

    iget v0, p0, Lb/f/a/j/d;->l:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lb/f/a/j/d;->a:Lb/f/a/j/f;

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    const/4 v2, 0x0

    :goto_b
    const/4 v6, 0x1

    if-nez v2, :cond_c0

    iget v7, p0, Lb/f/a/j/d;->i:I

    add-int/2addr v7, v6

    iput v7, p0, Lb/f/a/j/d;->i:I

    iget-object v7, v4, Lb/f/a/j/f;->i0:[Lb/f/a/j/f;

    iget v8, p0, Lb/f/a/j/d;->l:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    iget-object v7, v4, Lb/f/a/j/f;->h0:[Lb/f/a/j/f;

    aput-object v9, v7, v8

    invoke-virtual {v4}, Lb/f/a/j/f;->r()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_91

    iget-object v7, p0, Lb/f/a/j/d;->b:Lb/f/a/j/f;

    if-nez v7, :cond_2c

    iput-object v4, p0, Lb/f/a/j/d;->b:Lb/f/a/j/f;

    :cond_2c
    iput-object v4, p0, Lb/f/a/j/d;->d:Lb/f/a/j/f;

    iget-object v7, v4, Lb/f/a/j/f;->C:[Lb/f/a/j/f$b;

    iget v8, p0, Lb/f/a/j/d;->l:I

    aget-object v7, v7, v8

    sget-object v10, Lb/f/a/j/f$b;->d:Lb/f/a/j/f$b;

    if-ne v7, v10, :cond_91

    iget-object v7, v4, Lb/f/a/j/f;->g:[I

    aget v10, v7, v8

    if-eqz v10, :cond_47

    aget v10, v7, v8

    const/4 v11, 0x3

    if-eq v10, v11, :cond_47

    aget v7, v7, v8

    if-ne v7, v1, :cond_91

    :cond_47
    iget v7, p0, Lb/f/a/j/d;->j:I

    add-int/2addr v7, v6

    iput v7, p0, Lb/f/a/j/d;->j:I

    iget-object v7, v4, Lb/f/a/j/f;->g0:[F

    iget v8, p0, Lb/f/a/j/d;->l:I

    aget v10, v7, v8

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    if-lez v12, :cond_5e

    iget v12, p0, Lb/f/a/j/d;->k:F

    aget v7, v7, v8

    add-float/2addr v12, v7

    iput v12, p0, Lb/f/a/j/d;->k:F

    :cond_5e
    iget v7, p0, Lb/f/a/j/d;->l:I

    invoke-static {v4, v7}, Lb/f/a/j/d;->a(Lb/f/a/j/f;I)Z

    move-result v7

    if-eqz v7, :cond_7f

    cmpg-float v7, v10, v11

    if-gez v7, :cond_6d

    iput-boolean v6, p0, Lb/f/a/j/d;->n:Z

    goto :goto_6f

    :cond_6d
    iput-boolean v6, p0, Lb/f/a/j/d;->o:Z

    :goto_6f
    iget-object v7, p0, Lb/f/a/j/d;->h:Ljava/util/ArrayList;

    if-nez v7, :cond_7a

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lb/f/a/j/d;->h:Ljava/util/ArrayList;

    :cond_7a
    iget-object v7, p0, Lb/f/a/j/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v7, p0, Lb/f/a/j/d;->f:Lb/f/a/j/f;

    if-nez v7, :cond_85

    iput-object v4, p0, Lb/f/a/j/d;->f:Lb/f/a/j/f;

    :cond_85
    iget-object v7, p0, Lb/f/a/j/d;->g:Lb/f/a/j/f;

    if-eqz v7, :cond_8f

    iget-object v7, v7, Lb/f/a/j/f;->h0:[Lb/f/a/j/f;

    iget v8, p0, Lb/f/a/j/d;->l:I

    aput-object v4, v7, v8

    :cond_8f
    iput-object v4, p0, Lb/f/a/j/d;->g:Lb/f/a/j/f;

    :cond_91
    if-eq v5, v4, :cond_99

    iget-object v5, v5, Lb/f/a/j/f;->i0:[Lb/f/a/j/f;

    iget v7, p0, Lb/f/a/j/d;->l:I

    aput-object v4, v5, v7

    :cond_99
    iget-object v5, v4, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    add-int/lit8 v7, v0, 0x1

    aget-object v5, v5, v7

    iget-object v5, v5, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v5, :cond_b7

    iget-object v5, v5, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    iget-object v7, v5, Lb/f/a/j/f;->A:[Lb/f/a/j/e;

    aget-object v8, v7, v0

    iget-object v8, v8, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    if-eqz v8, :cond_b7

    aget-object v7, v7, v0

    iget-object v7, v7, Lb/f/a/j/e;->d:Lb/f/a/j/e;

    iget-object v7, v7, Lb/f/a/j/e;->b:Lb/f/a/j/f;

    if-eq v7, v4, :cond_b6

    goto :goto_b7

    :cond_b6
    move-object v9, v5

    :cond_b7
    :goto_b7
    if-eqz v9, :cond_ba

    goto :goto_bc

    :cond_ba
    move-object v9, v4

    const/4 v2, 0x1

    :goto_bc
    move-object v5, v4

    move-object v4, v9

    goto/16 :goto_b

    :cond_c0
    iput-object v4, p0, Lb/f/a/j/d;->c:Lb/f/a/j/f;

    iget v0, p0, Lb/f/a/j/d;->l:I

    if-nez v0, :cond_cd

    iget-boolean v0, p0, Lb/f/a/j/d;->m:Z

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lb/f/a/j/d;->c:Lb/f/a/j/f;

    goto :goto_cf

    :cond_cd
    iget-object v0, p0, Lb/f/a/j/d;->a:Lb/f/a/j/f;

    :goto_cf
    iput-object v0, p0, Lb/f/a/j/d;->e:Lb/f/a/j/f;

    iget-boolean v0, p0, Lb/f/a/j/d;->o:Z

    if-eqz v0, :cond_da

    iget-boolean v0, p0, Lb/f/a/j/d;->n:Z

    if-eqz v0, :cond_da

    const/4 v3, 0x1

    :cond_da
    iput-boolean v3, p0, Lb/f/a/j/d;->p:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-boolean v0, p0, Lb/f/a/j/d;->q:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lb/f/a/j/d;->b()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/f/a/j/d;->q:Z

    return-void
.end method
