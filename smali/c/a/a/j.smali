###### Class c.a.a.j (c.a.a.j)
.class public Lc/a/a/j;
.super Lc/a/a/r/a;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lc/a/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lc/a/a/r/a<",
        "Lc/a/a/j<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Lc/a/a/g<",
        "Lc/a/a/j<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field private final B:Landroid/content/Context;

.field private final C:Lc/a/a/k;

.field private final D:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final E:Lc/a/a/e;

.field private F:Lc/a/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/l<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/Object;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/a/r/e<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private I:Lc/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private J:Lc/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private K:Ljava/lang/Float;

.field private L:Z

.field private M:Z

.field private N:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0}, Lc/a/a/r/f;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/n/j;->b:Lcom/bumptech/glide/load/n/j;

    invoke-virtual {v0, v1}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/n/j;)Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/r/f;

    sget-object v1, Lc/a/a/h;->e:Lc/a/a/h;

    invoke-virtual {v0, v1}, Lc/a/a/r/a;->a(Lc/a/a/h;)Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/r/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a/a/r/a;->a(Z)Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/r/f;

    return-void
.end method

.method protected constructor <init>(Lc/a/a/c;Lc/a/a/k;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/c;",
            "Lc/a/a/k;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/a/a/r/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/j;->L:Z

    iput-object p2, p0, Lc/a/a/j;->C:Lc/a/a/k;

    iput-object p3, p0, Lc/a/a/j;->D:Ljava/lang/Class;

    iput-object p4, p0, Lc/a/a/j;->B:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lc/a/a/k;->b(Ljava/lang/Class;)Lc/a/a/l;

    move-result-object p3

    iput-object p3, p0, Lc/a/a/j;->F:Lc/a/a/l;

    invoke-virtual {p1}, Lc/a/a/c;->f()Lc/a/a/e;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/j;->E:Lc/a/a/e;

    invoke-virtual {p2}, Lc/a/a/k;->d()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/j;->a(Ljava/util/List;)V

    invoke-virtual {p2}, Lc/a/a/k;->e()Lc/a/a/r/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    return-void
.end method

.method private a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILjava/util/concurrent/Executor;)Lc/a/a/r/c;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/j/h<",
            "TTranscodeType;>;",
            "Lc/a/a/r/e<",
            "TTranscodeType;>;",
            "Lc/a/a/r/a<",
            "*>;",
            "Lc/a/a/r/d;",
            "Lc/a/a/l<",
            "*-TTranscodeType;>;",
            "Lc/a/a/h;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc/a/a/r/c;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/a/a/j;->B:Landroid/content/Context;

    iget-object v2, v0, Lc/a/a/j;->E:Lc/a/a/e;

    iget-object v3, v0, Lc/a/a/j;->G:Ljava/lang/Object;

    iget-object v4, v0, Lc/a/a/j;->D:Ljava/lang/Class;

    iget-object v11, v0, Lc/a/a/j;->H:Ljava/util/List;

    invoke-virtual {v2}, Lc/a/a/e;->d()Lcom/bumptech/glide/load/n/k;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Lc/a/a/l;->a()Lc/a/a/r/k/c;

    move-result-object v14

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v15, p9

    invoke-static/range {v1 .. v15}, Lc/a/a/r/h;->b(Landroid/content/Context;Lc/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lc/a/a/r/a;IILc/a/a/h;Lc/a/a/r/j/h;Lc/a/a/r/e;Ljava/util/List;Lc/a/a/r/d;Lcom/bumptech/glide/load/n/k;Lc/a/a/r/k/c;Ljava/util/concurrent/Executor;)Lc/a/a/r/h;

    move-result-object v1

    return-object v1
.end method

.method private a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/c;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/j/h<",
            "TTranscodeType;>;",
            "Lc/a/a/r/e<",
            "TTranscodeType;>;",
            "Lc/a/a/r/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc/a/a/r/c;"
        }
    .end annotation

    iget-object v4, p0, Lc/a/a/j;->F:Lc/a/a/l;

    invoke-virtual {p3}, Lc/a/a/r/a;->q()Lc/a/a/h;

    move-result-object v5

    invoke-virtual {p3}, Lc/a/a/r/a;->n()I

    move-result v6

    invoke-virtual {p3}, Lc/a/a/r/a;->m()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lc/a/a/j;->a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/c;

    move-result-object p1

    return-object p1
.end method

.method private a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/c;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/j/h<",
            "TTranscodeType;>;",
            "Lc/a/a/r/e<",
            "TTranscodeType;>;",
            "Lc/a/a/r/d;",
            "Lc/a/a/l<",
            "*-TTranscodeType;>;",
            "Lc/a/a/h;",
            "II",
            "Lc/a/a/r/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc/a/a/r/c;"
        }
    .end annotation

    move-object/from16 v10, p0

    iget-object v0, v10, Lc/a/a/j;->J:Lc/a/a/j;

    if-eqz v0, :cond_10

    new-instance v0, Lc/a/a/r/b;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lc/a/a/r/b;-><init>(Lc/a/a/r/d;)V

    move-object v3, v0

    move-object v15, v3

    goto :goto_15

    :cond_10
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v15, v0

    move-object v3, v1

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lc/a/a/j;->b(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/c;

    move-result-object v0

    if-nez v15, :cond_2e

    return-object v0

    :cond_2e
    iget-object v1, v10, Lc/a/a/j;->J:Lc/a/a/j;

    invoke-virtual {v1}, Lc/a/a/r/a;->n()I

    move-result v1

    iget-object v2, v10, Lc/a/a/j;->J:Lc/a/a/j;

    invoke-virtual {v2}, Lc/a/a/r/a;->m()I

    move-result v2

    invoke-static/range {p6 .. p7}, Lc/a/a/t/k;->b(II)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, v10, Lc/a/a/j;->J:Lc/a/a/j;

    invoke-virtual {v3}, Lc/a/a/r/a;->E()Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual/range {p8 .. p8}, Lc/a/a/r/a;->n()I

    move-result v1

    invoke-virtual/range {p8 .. p8}, Lc/a/a/r/a;->m()I

    move-result v2

    :cond_50
    move/from16 v17, v1

    move/from16 v18, v2

    iget-object v11, v10, Lc/a/a/j;->J:Lc/a/a/j;

    iget-object v1, v11, Lc/a/a/j;->F:Lc/a/a/l;

    invoke-virtual {v11}, Lc/a/a/r/a;->q()Lc/a/a/h;

    move-result-object v16

    iget-object v2, v10, Lc/a/a/j;->J:Lc/a/a/j;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v19, v2

    move-object/from16 v20, p9

    invoke-direct/range {v11 .. v20}, Lc/a/a/j;->a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/c;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lc/a/a/r/b;->a(Lc/a/a/r/c;Lc/a/a/r/c;)V

    return-object v3
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/a/a/r/e<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/r/e;

    invoke-virtual {p0, v0}, Lc/a/a/j;->a(Lc/a/a/r/e;)Lc/a/a/j;

    goto :goto_4

    :cond_14
    return-void
.end method

.method private a(Lc/a/a/r/a;Lc/a/a/r/c;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/a<",
            "*>;",
            "Lc/a/a/r/c;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lc/a/a/r/a;->y()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-interface {p2}, Lc/a/a/r/c;->f()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private b(Lc/a/a/h;)Lc/a/a/h;
    .registers 4

    sget-object v0, Lc/a/a/j$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_36

    const/4 v0, 0x2

    if-eq p1, v0, :cond_33

    const/4 v0, 0x3

    if-eq p1, v0, :cond_30

    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    goto :goto_30

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/a/r/a;->q()Lc/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    :goto_30
    sget-object p1, Lc/a/a/h;->b:Lc/a/a/h;

    return-object p1

    :cond_33
    sget-object p1, Lc/a/a/h;->c:Lc/a/a/h;

    return-object p1

    :cond_36
    sget-object p1, Lc/a/a/h;->d:Lc/a/a/h;

    return-object p1
.end method

.method private b(Ljava/lang/Object;)Lc/a/a/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lc/a/a/j;->G:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/a/a/j;->M:Z

    return-object p0
.end method

.method private b(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/c;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/j/h<",
            "TTranscodeType;>;",
            "Lc/a/a/r/e<",
            "TTranscodeType;>;",
            "Lc/a/a/r/d;",
            "Lc/a/a/l<",
            "*-TTranscodeType;>;",
            "Lc/a/a/h;",
            "II",
            "Lc/a/a/r/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc/a/a/r/c;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p5

    iget-object v0, v10, Lc/a/a/j;->I:Lc/a/a/j;

    if-eqz v0, :cond_91

    iget-boolean v1, v10, Lc/a/a/j;->N:Z

    if-nez v1, :cond_89

    iget-object v1, v0, Lc/a/a/j;->F:Lc/a/a/l;

    iget-boolean v0, v0, Lc/a/a/j;->L:Z

    if-eqz v0, :cond_17

    move-object/from16 v15, p4

    goto :goto_18

    :cond_17
    move-object v15, v1

    :goto_18
    iget-object v0, v10, Lc/a/a/j;->I:Lc/a/a/j;

    invoke-virtual {v0}, Lc/a/a/r/a;->z()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v10, Lc/a/a/j;->I:Lc/a/a/j;

    invoke-virtual {v0}, Lc/a/a/r/a;->q()Lc/a/a/h;

    move-result-object v0

    goto :goto_2b

    :cond_27
    invoke-direct {v10, v11}, Lc/a/a/j;->b(Lc/a/a/h;)Lc/a/a/h;

    move-result-object v0

    :goto_2b
    move-object/from16 v16, v0

    iget-object v0, v10, Lc/a/a/j;->I:Lc/a/a/j;

    invoke-virtual {v0}, Lc/a/a/r/a;->n()I

    move-result v0

    iget-object v1, v10, Lc/a/a/j;->I:Lc/a/a/j;

    invoke-virtual {v1}, Lc/a/a/r/a;->m()I

    move-result v1

    invoke-static/range {p6 .. p7}, Lc/a/a/t/k;->b(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, v10, Lc/a/a/j;->I:Lc/a/a/j;

    invoke-virtual {v2}, Lc/a/a/r/a;->E()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual/range {p8 .. p8}, Lc/a/a/r/a;->n()I

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lc/a/a/r/a;->m()I

    move-result v1

    :cond_4f
    move/from16 v17, v0

    move/from16 v18, v1

    new-instance v14, Lc/a/a/r/i;

    invoke-direct {v14, v4}, Lc/a/a/r/i;-><init>(Lc/a/a/r/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v14

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lc/a/a/j;->a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILjava/util/concurrent/Executor;)Lc/a/a/r/c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v10, Lc/a/a/j;->N:Z

    iget-object v1, v10, Lc/a/a/j;->I:Lc/a/a/j;

    move-object v11, v1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v2, v14

    move-object/from16 v19, v1

    move-object/from16 v20, p9

    invoke-direct/range {v11 .. v20}, Lc/a/a/j;->a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/c;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v10, Lc/a/a/j;->N:Z

    invoke-virtual {v2, v0, v1}, Lc/a/a/r/i;->a(Lc/a/a/r/c;Lc/a/a/r/c;)V

    return-object v2

    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    iget-object v0, v10, Lc/a/a/j;->K:Ljava/lang/Float;

    if-eqz v0, :cond_cf

    new-instance v12, Lc/a/a/r/i;

    invoke-direct {v12, v4}, Lc/a/a/r/i;-><init>(Lc/a/a/r/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lc/a/a/j;->a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILjava/util/concurrent/Executor;)Lc/a/a/r/c;

    move-result-object v13

    invoke-virtual/range {p8 .. p8}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    iget-object v1, v10, Lc/a/a/j;->K:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/r/a;->a(F)Lc/a/a/r/a;

    move-result-object v3

    invoke-direct {v10, v11}, Lc/a/a/j;->b(Lc/a/a/h;)Lc/a/a/h;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v9}, Lc/a/a/j;->a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILjava/util/concurrent/Executor;)Lc/a/a/r/c;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lc/a/a/r/i;->a(Lc/a/a/r/c;Lc/a/a/r/c;)V

    return-object v12

    :cond_cf
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lc/a/a/j;->a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Lc/a/a/r/d;Lc/a/a/l;Lc/a/a/h;IILjava/util/concurrent/Executor;)Lc/a/a/r/c;

    move-result-object v0

    return-object v0
.end method

.method private b(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/j/h;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lc/a/a/r/j/h<",
            "TTranscodeType;>;>(TY;",
            "Lc/a/a/r/e<",
            "TTranscodeType;>;",
            "Lc/a/a/r/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lc/a/a/j;->M:Z

    if-eqz v0, :cond_3c

    invoke-direct {p0, p1, p2, p3, p4}, Lc/a/a/j;->a(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/c;

    move-result-object p2

    invoke-interface {p1}, Lc/a/a/r/j/h;->a()Lc/a/a/r/c;

    move-result-object p4

    invoke-interface {p2, p4}, Lc/a/a/r/c;->a(Lc/a/a/r/c;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0, p3, p4}, Lc/a/a/j;->a(Lc/a/a/r/a;Lc/a/a/r/c;)Z

    move-result p3

    if-nez p3, :cond_2e

    invoke-interface {p2}, Lc/a/a/r/c;->a()V

    invoke-static {p4}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p4

    check-cast p2, Lc/a/a/r/c;

    invoke-interface {p2}, Lc/a/a/r/c;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2d

    invoke-interface {p4}, Lc/a/a/r/c;->begin()V

    :cond_2d
    return-object p1

    :cond_2e
    iget-object p3, p0, Lc/a/a/j;->C:Lc/a/a/k;

    invoke-virtual {p3, p1}, Lc/a/a/k;->a(Lc/a/a/r/j/h;)V

    invoke-interface {p1, p2}, Lc/a/a/r/j/h;->a(Lc/a/a/r/c;)V

    iget-object p3, p0, Lc/a/a/j;->C:Lc/a/a/k;

    invoke-virtual {p3, p1, p2}, Lc/a/a/k;->a(Lc/a/a/r/j/h;Lc/a/a/r/c;)V

    return-object p1

    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lc/a/a/r/a;)Lc/a/a/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/a<",
            "*>;)",
            "Lc/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lc/a/a/r/a;->a(Lc/a/a/r/a;)Lc/a/a/r/a;

    move-result-object p1

    check-cast p1, Lc/a/a/j;

    return-object p1
.end method

.method public a(Lc/a/a/r/e;)Lc/a/a/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/e<",
            "TTranscodeType;>;)",
            "Lc/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_12

    iget-object v0, p0, Lc/a/a/j;->H:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a/a/j;->H:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lc/a/a/j;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lc/a/a/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/a/a/j;->b(Ljava/lang/Object;)Lc/a/a/j;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lc/a/a/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/a/a/j;->b(Ljava/lang/Object;)Lc/a/a/j;

    return-object p0
.end method

.method public bridge synthetic a(Lc/a/a/r/a;)Lc/a/a/r/a;
    .registers 2

    invoke-virtual {p0, p1}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/a/a/r/j/h;)Lc/a/a/r/j/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lc/a/a/r/j/h<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    invoke-static {}, Lc/a/a/t/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lc/a/a/j;->a(Lc/a/a/r/j/h;Lc/a/a/r/e;Ljava/util/concurrent/Executor;)Lc/a/a/r/j/h;

    return-object p1
.end method

.method a(Lc/a/a/r/j/h;Lc/a/a/r/e;Ljava/util/concurrent/Executor;)Lc/a/a/r/j/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lc/a/a/r/j/h<",
            "TTranscodeType;>;>(TY;",
            "Lc/a/a/r/e<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p0, p3}, Lc/a/a/j;->b(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/j/h;

    return-object p1
.end method

.method public a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lc/a/a/r/j/i<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lc/a/a/t/k;->a()V

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lc/a/a/r/a;->D()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lc/a/a/r/a;->B()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_43

    sget-object v0, Lc/a/a/j$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    goto :goto_43

    :pswitch_28
    invoke-virtual {p0}, Lc/a/a/j;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/r/a;->I()Lc/a/a/r/a;

    move-result-object v0

    goto :goto_44

    :pswitch_31
    invoke-virtual {p0}, Lc/a/a/j;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/r/a;->H()Lc/a/a/r/a;

    move-result-object v0

    goto :goto_44

    :pswitch_3a
    invoke-virtual {p0}, Lc/a/a/j;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/r/a;->G()Lc/a/a/r/a;

    move-result-object v0

    goto :goto_44

    :cond_43
    :goto_43
    move-object v0, p0

    :goto_44
    iget-object v1, p0, Lc/a/a/j;->E:Lc/a/a/e;

    iget-object v2, p0, Lc/a/a/j;->D:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lc/a/a/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/a/a/r/j/i;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {}, Lc/a/a/t/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lc/a/a/j;->b(Lc/a/a/r/j/h;Lc/a/a/r/e;Lc/a/a/r/a;Ljava/util/concurrent/Executor;)Lc/a/a/r/j/h;

    check-cast p1, Lc/a/a/r/j/i;

    return-object p1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_31
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_31
    .end packed-switch
.end method

.method public b(Lc/a/a/r/e;)Lc/a/a/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/e<",
            "TTranscodeType;>;)",
            "Lc/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/j;->H:Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/a/a/j;->a(Lc/a/a/r/e;)Lc/a/a/j;

    return-object p0
.end method

.method public clone()Lc/a/a/j;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/j;

    iget-object v1, v0, Lc/a/a/j;->F:Lc/a/a/l;

    invoke-virtual {v1}, Lc/a/a/l;->clone()Lc/a/a/l;

    move-result-object v1

    iput-object v1, v0, Lc/a/a/j;->F:Lc/a/a/l;

    return-object v0
.end method

.method public bridge synthetic clone()Lc/a/a/r/a;
    .registers 2

    invoke-virtual {p0}, Lc/a/a/j;->clone()Lc/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lc/a/a/j;->clone()Lc/a/a/j;

    move-result-object v0

    return-object v0
.end method

###### Class c.a.a.j.a (c.a.a.j$a)
.class synthetic Lc/a/a/j$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/j;
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

    invoke-static {}, Lc/a/a/h;->values()[Lc/a/a/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/a/a/j$a;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lc/a/a/j$a;->b:[I

    sget-object v2, Lc/a/a/h;->e:Lc/a/a/h;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lc/a/a/j$a;->b:[I

    sget-object v3, Lc/a/a/h;->d:Lc/a/a/h;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lc/a/a/j$a;->b:[I

    sget-object v4, Lc/a/a/h;->c:Lc/a/a/h;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lc/a/a/j$a;->b:[I

    sget-object v5, Lc/a/a/h;->b:Lc/a/a/h;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lc/a/a/j$a;->a:[I

    :try_start_3e
    sget-object v4, Lc/a/a/j$a;->a:[I

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Lc/a/a/j$a;->a:[I

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v0, Lc/a/a/j$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5c
    sget-object v0, Lc/a/a/j$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_66

    :catch_66
    :try_start_66
    sget-object v0, Lc/a/a/j$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v0, Lc/a/a/j$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7c
    sget-object v0, Lc/a/a/j$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_87} :catch_87

    :catch_87
    :try_start_87
    sget-object v0, Lc/a/a/j$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_93} :catch_93

    :catch_93
    return-void
.end method
