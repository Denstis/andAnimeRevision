###### Class h.h0.f.g (h.h0.f.g)
.class public final Lh/h0/f/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/f/g$a;
    }
.end annotation


# instance fields
.field public final a:Lh/a;

.field private b:Lh/h0/f/f$a;

.field private c:Lh/e0;

.field private final d:Lh/j;

.field public final e:Lh/e;

.field public final f:Lh/p;

.field private final g:Ljava/lang/Object;

.field private final h:Lh/h0/f/f;

.field private i:I

.field private j:Lh/h0/f/c;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lh/h0/g/c;


# direct methods
.method public constructor <init>(Lh/j;Lh/a;Lh/e;Lh/p;Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/f/g;->d:Lh/j;

    iput-object p2, p0, Lh/h0/f/g;->a:Lh/a;

    iput-object p3, p0, Lh/h0/f/g;->e:Lh/e;

    iput-object p4, p0, Lh/h0/f/g;->f:Lh/p;

    new-instance p1, Lh/h0/f/f;

    invoke-direct {p0}, Lh/h0/f/g;->i()Lh/h0/f/d;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p4}, Lh/h0/f/f;-><init>(Lh/a;Lh/h0/f/d;Lh/e;Lh/p;)V

    iput-object p1, p0, Lh/h0/f/g;->h:Lh/h0/f/f;

    iput-object p5, p0, Lh/h0/f/g;->g:Ljava/lang/Object;

    return-void
.end method

.method private a(IIIIZ)Lh/h0/f/c;
    .registers 24

    move-object/from16 v1, p0

    iget-object v2, v1, Lh/h0/f/g;->d:Lh/j;

    monitor-enter v2

    :try_start_5
    iget-boolean v0, v1, Lh/h0/f/g;->l:Z

    if-nez v0, :cond_12d

    iget-object v0, v1, Lh/h0/f/g;->n:Lh/h0/g/c;

    if-nez v0, :cond_125

    iget-boolean v0, v1, Lh/h0/f/g;->m:Z

    if-nez v0, :cond_11d

    iget-object v0, v1, Lh/h0/f/g;->j:Lh/h0/f/c;

    invoke-direct/range {p0 .. p0}, Lh/h0/f/g;->h()Ljava/net/Socket;

    move-result-object v3

    iget-object v4, v1, Lh/h0/f/g;->j:Lh/h0/f/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_20

    iget-object v0, v1, Lh/h0/f/g;->j:Lh/h0/f/c;

    move-object v4, v5

    goto :goto_22

    :cond_20
    move-object v4, v0

    move-object v0, v5

    :goto_22
    iget-boolean v6, v1, Lh/h0/f/g;->k:Z

    if-nez v6, :cond_27

    move-object v4, v5

    :cond_27
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_43

    sget-object v8, Lh/h0/a;->a:Lh/h0/a;

    iget-object v9, v1, Lh/h0/f/g;->d:Lh/j;

    iget-object v10, v1, Lh/h0/f/g;->a:Lh/a;

    invoke-virtual {v8, v9, v10, v1, v5}, Lh/h0/a;->a(Lh/j;Lh/a;Lh/h0/f/g;Lh/e0;)Lh/h0/f/c;

    iget-object v8, v1, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-eqz v8, :cond_3e

    iget-object v0, v1, Lh/h0/f/g;->j:Lh/h0/f/c;

    move-object v8, v0

    move-object v9, v5

    const/4 v0, 0x1

    goto :goto_46

    :cond_3e
    iget-object v8, v1, Lh/h0/f/g;->c:Lh/e0;

    move-object v9, v8

    move-object v8, v0

    goto :goto_45

    :cond_43
    move-object v8, v0

    move-object v9, v5

    :goto_45
    const/4 v0, 0x0

    :goto_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_135

    invoke-static {v3}, Lh/h0/c;->a(Ljava/net/Socket;)V

    if-eqz v4, :cond_53

    iget-object v2, v1, Lh/h0/f/g;->f:Lh/p;

    iget-object v3, v1, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {v2, v3, v4}, Lh/p;->b(Lh/e;Lh/i;)V

    :cond_53
    if-eqz v0, :cond_5c

    iget-object v2, v1, Lh/h0/f/g;->f:Lh/p;

    iget-object v3, v1, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {v2, v3, v8}, Lh/p;->a(Lh/e;Lh/i;)V

    :cond_5c
    if-eqz v8, :cond_5f

    return-object v8

    :cond_5f
    if-nez v9, :cond_75

    iget-object v2, v1, Lh/h0/f/g;->b:Lh/h0/f/f$a;

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Lh/h0/f/f$a;->b()Z

    move-result v2

    if-nez v2, :cond_75

    :cond_6b
    iget-object v2, v1, Lh/h0/f/g;->h:Lh/h0/f/f;

    invoke-virtual {v2}, Lh/h0/f/f;->b()Lh/h0/f/f$a;

    move-result-object v2

    iput-object v2, v1, Lh/h0/f/g;->b:Lh/h0/f/f$a;

    const/4 v2, 0x1

    goto :goto_76

    :cond_75
    const/4 v2, 0x0

    :goto_76
    iget-object v3, v1, Lh/h0/f/g;->d:Lh/j;

    monitor-enter v3

    :try_start_79
    iget-boolean v4, v1, Lh/h0/f/g;->m:Z

    if-nez v4, :cond_112

    if-eqz v2, :cond_a8

    iget-object v2, v1, Lh/h0/f/g;->b:Lh/h0/f/f$a;

    invoke-virtual {v2}, Lh/h0/f/f$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_8a
    if-ge v10, v4, :cond_a8

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh/e0;

    sget-object v12, Lh/h0/a;->a:Lh/h0/a;

    iget-object v13, v1, Lh/h0/f/g;->d:Lh/j;

    iget-object v14, v1, Lh/h0/f/g;->a:Lh/a;

    invoke-virtual {v12, v13, v14, v1, v11}, Lh/h0/a;->a(Lh/j;Lh/a;Lh/h0/f/g;Lh/e0;)Lh/h0/f/c;

    iget-object v12, v1, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-eqz v12, :cond_a5

    iget-object v8, v1, Lh/h0/f/g;->j:Lh/h0/f/c;

    iput-object v11, v1, Lh/h0/f/g;->c:Lh/e0;

    const/4 v0, 0x1

    goto :goto_a8

    :cond_a5
    add-int/lit8 v10, v10, 0x1

    goto :goto_8a

    :cond_a8
    :goto_a8
    if-nez v0, :cond_c0

    if-nez v9, :cond_b2

    iget-object v2, v1, Lh/h0/f/g;->b:Lh/h0/f/f$a;

    invoke-virtual {v2}, Lh/h0/f/f$a;->c()Lh/e0;

    move-result-object v9

    :cond_b2
    iput-object v9, v1, Lh/h0/f/g;->c:Lh/e0;

    iput v7, v1, Lh/h0/f/g;->i:I

    new-instance v8, Lh/h0/f/c;

    iget-object v2, v1, Lh/h0/f/g;->d:Lh/j;

    invoke-direct {v8, v2, v9}, Lh/h0/f/c;-><init>(Lh/j;Lh/e0;)V

    invoke-virtual {v1, v8, v7}, Lh/h0/f/g;->a(Lh/h0/f/c;Z)V

    :cond_c0
    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_79 .. :try_end_c1} :catchall_11a

    if-eqz v0, :cond_cb

    :goto_c3
    iget-object v0, v1, Lh/h0/f/g;->f:Lh/p;

    iget-object v2, v1, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {v0, v2, v8}, Lh/p;->a(Lh/e;Lh/i;)V

    return-object v8

    :cond_cb
    iget-object v0, v1, Lh/h0/f/g;->e:Lh/e;

    iget-object v2, v1, Lh/h0/f/g;->f:Lh/p;

    move-object v10, v8

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lh/h0/f/c;->a(IIIIZLh/e;Lh/p;)V

    invoke-direct/range {p0 .. p0}, Lh/h0/f/g;->i()Lh/h0/f/d;

    move-result-object v0

    invoke-virtual {v8}, Lh/h0/f/c;->e()Lh/e0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh/h0/f/d;->a(Lh/e0;)V

    iget-object v2, v1, Lh/h0/f/g;->d:Lh/j;

    monitor-enter v2

    :try_start_ef
    iput-boolean v6, v1, Lh/h0/f/g;->k:Z

    sget-object v0, Lh/h0/a;->a:Lh/h0/a;

    iget-object v3, v1, Lh/h0/f/g;->d:Lh/j;

    invoke-virtual {v0, v3, v8}, Lh/h0/a;->b(Lh/j;Lh/h0/f/c;)V

    invoke-virtual {v8}, Lh/h0/f/c;->d()Z

    move-result v0

    if-eqz v0, :cond_10a

    sget-object v0, Lh/h0/a;->a:Lh/h0/a;

    iget-object v3, v1, Lh/h0/f/g;->d:Lh/j;

    iget-object v4, v1, Lh/h0/f/g;->a:Lh/a;

    invoke-virtual {v0, v3, v4, v1}, Lh/h0/a;->a(Lh/j;Lh/a;Lh/h0/f/g;)Ljava/net/Socket;

    move-result-object v5

    iget-object v8, v1, Lh/h0/f/g;->j:Lh/h0/f/c;

    :cond_10a
    monitor-exit v2
    :try_end_10b
    .catchall {:try_start_ef .. :try_end_10b} :catchall_10f

    invoke-static {v5}, Lh/h0/c;->a(Ljava/net/Socket;)V

    goto :goto_c3

    :catchall_10f
    move-exception v0

    :try_start_110
    monitor-exit v2
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v0

    :cond_112
    :try_start_112
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_11a
    move-exception v0

    monitor-exit v3
    :try_end_11c
    .catchall {:try_start_112 .. :try_end_11c} :catchall_11a

    throw v0

    :cond_11d
    :try_start_11d
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_135
    move-exception v0

    monitor-exit v2
    :try_end_137
    .catchall {:try_start_11d .. :try_end_137} :catchall_135

    goto :goto_139

    :goto_138
    throw v0

    :goto_139
    goto :goto_138
.end method

.method private a(IIIIZZ)Lh/h0/f/c;
    .registers 10

    :goto_0
    invoke-direct/range {p0 .. p5}, Lh/h0/f/g;->a(IIIIZ)Lh/h0/f/c;

    move-result-object v0

    iget-object v1, p0, Lh/h0/f/g;->d:Lh/j;

    monitor-enter v1

    :try_start_7
    iget v2, v0, Lh/h0/f/c;->l:I

    if-nez v2, :cond_d

    monitor-exit v1

    return-object v0

    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    invoke-virtual {v0, p6}, Lh/h0/f/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lh/h0/f/g;->e()V

    goto :goto_0

    :cond_18
    return-object v0

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    goto :goto_1d

    :goto_1c
    throw p1

    :goto_1d
    goto :goto_1c
.end method

.method private a(ZZZ)Ljava/net/Socket;
    .registers 5

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    iput-object v0, p0, Lh/h0/f/g;->n:Lh/h0/g/c;

    :cond_5
    const/4 p3, 0x1

    if-eqz p2, :cond_a

    iput-boolean p3, p0, Lh/h0/f/g;->l:Z

    :cond_a
    iget-object p2, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-eqz p2, :cond_4e

    if-eqz p1, :cond_12

    iput-boolean p3, p2, Lh/h0/f/c;->k:Z

    :cond_12
    iget-object p1, p0, Lh/h0/f/g;->n:Lh/h0/g/c;

    if-nez p1, :cond_4e

    iget-boolean p1, p0, Lh/h0/f/g;->l:Z

    if-nez p1, :cond_20

    iget-object p1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    iget-boolean p1, p1, Lh/h0/f/c;->k:Z

    if-eqz p1, :cond_4e

    :cond_20
    iget-object p1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    invoke-direct {p0, p1}, Lh/h0/f/g;->b(Lh/h0/f/c;)V

    iget-object p1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    iget-object p1, p1, Lh/h0/f/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lh/h0/f/c;->o:J

    sget-object p1, Lh/h0/a;->a:Lh/h0/a;

    iget-object p2, p0, Lh/h0/f/g;->d:Lh/j;

    iget-object p3, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    invoke-virtual {p1, p2, p3}, Lh/h0/a;->a(Lh/j;Lh/h0/f/c;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    invoke-virtual {p1}, Lh/h0/f/c;->f()Ljava/net/Socket;

    move-result-object p1

    goto :goto_4b

    :cond_4a
    move-object p1, v0

    :goto_4b
    iput-object v0, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    goto :goto_4f

    :cond_4e
    move-object p1, v0

    :goto_4f
    return-object p1
.end method

.method private b(Lh/h0/f/c;)V
    .registers 5

    iget-object v0, p1, Lh/h0/f/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    iget-object v2, p1, Lh/h0/f/c;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    iget-object p1, p1, Lh/h0/f/c;->n:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_27

    :goto_26
    throw p1

    :goto_27
    goto :goto_26
.end method

.method private h()Ljava/net/Socket;
    .registers 3

    iget-object v0, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-eqz v0, :cond_f

    iget-boolean v0, v0, Lh/h0/f/c;->k:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lh/h0/f/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private i()Lh/h0/f/d;
    .registers 3

    sget-object v0, Lh/h0/a;->a:Lh/h0/a;

    iget-object v1, p0, Lh/h0/f/g;->d:Lh/j;

    invoke-virtual {v0, v1}, Lh/h0/a;->a(Lh/j;)Lh/h0/f/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lh/x;Lh/u$a;Z)Lh/h0/g/c;
    .registers 11

    invoke-interface {p2}, Lh/u$a;->d()I

    move-result v1

    invoke-interface {p2}, Lh/u$a;->a()I

    move-result v2

    invoke-interface {p2}, Lh/u$a;->b()I

    move-result v3

    invoke-virtual {p1}, Lh/x;->r()I

    move-result v4

    invoke-virtual {p1}, Lh/x;->x()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    :try_start_16
    invoke-direct/range {v0 .. v6}, Lh/h0/f/g;->a(IIIIZZ)Lh/h0/f/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p0}, Lh/h0/f/c;->a(Lh/x;Lh/u$a;Lh/h0/f/g;)Lh/h0/g/c;

    move-result-object p1

    iget-object p2, p0, Lh/h0/f/g;->d:Lh/j;

    monitor-enter p2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_28

    :try_start_21
    iput-object p1, p0, Lh/h0/f/g;->n:Lh/h0/g/c;

    monitor-exit p2

    return-object p1

    :catchall_25
    move-exception p1

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    :try_start_27
    throw p1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_28} :catch_28

    :catch_28
    move-exception p1

    new-instance p2, Lh/h0/f/e;

    invoke-direct {p2, p1}, Lh/h0/f/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lh/h0/f/c;)Ljava/net/Socket;
    .registers 5

    iget-object v0, p0, Lh/h0/f/g;->n:Lh/h0/g/c;

    if-nez v0, :cond_26

    iget-object v0, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    iget-object v0, v0, Lh/h0/f/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    iget-object v0, v0, Lh/h0/f/c;->n:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-direct {p0, v1, v2, v2}, Lh/h0/f/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    iget-object p1, p1, Lh/h0/f/c;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lh/h0/f/g;->d:Lh/j;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lh/h0/f/g;->m:Z

    iget-object v1, p0, Lh/h0/f/g;->n:Lh/h0/g/c;

    iget-object v2, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    if-eqz v1, :cond_11

    invoke-interface {v1}, Lh/h0/g/c;->cancel()V

    goto :goto_16

    :cond_11
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lh/h0/f/c;->b()V

    :cond_16
    :goto_16
    return-void

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public a(Lh/h0/f/c;Z)V
    .registers 4

    iget-object v0, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-nez v0, :cond_15

    iput-object p1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    iput-boolean p2, p0, Lh/h0/f/g;->k:Z

    iget-object p1, p1, Lh/h0/f/c;->n:Ljava/util/List;

    new-instance p2, Lh/h0/f/g$a;

    iget-object v0, p0, Lh/h0/f/g;->g:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lh/h0/f/g$a;-><init>(Lh/h0/f/g;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Ljava/io/IOException;)V
    .registers 8

    iget-object v0, p0, Lh/h0/f/g;->d:Lh/j;

    monitor-enter v0

    :try_start_3
    instance-of v1, p1, Lh/h0/i/n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    check-cast p1, Lh/h0/i/n;

    iget-object v1, p1, Lh/h0/i/n;->b:Lh/h0/i/b;

    sget-object v5, Lh/h0/i/b;->g:Lh/h0/i/b;

    if-ne v1, v5, :cond_17

    iget v1, p0, Lh/h0/f/g;->i:I

    add-int/2addr v1, v4

    iput v1, p0, Lh/h0/f/g;->i:I

    :cond_17
    iget-object p1, p1, Lh/h0/i/n;->b:Lh/h0/i/b;

    sget-object v1, Lh/h0/i/b;->g:Lh/h0/i/b;

    if-ne p1, v1, :cond_45

    iget p1, p0, Lh/h0/f/g;->i:I

    if-le p1, v4, :cond_49

    goto :goto_45

    :cond_22
    iget-object v1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    invoke-virtual {v1}, Lh/h0/f/c;->d()Z

    move-result v1

    if-eqz v1, :cond_32

    instance-of v1, p1, Lh/h0/i/a;

    if-eqz v1, :cond_49

    :cond_32
    iget-object v1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    iget v1, v1, Lh/h0/f/c;->l:I

    if-nez v1, :cond_47

    iget-object v1, p0, Lh/h0/f/g;->c:Lh/e0;

    if-eqz v1, :cond_45

    if-eqz p1, :cond_45

    iget-object v1, p0, Lh/h0/f/g;->h:Lh/h0/f/f;

    iget-object v5, p0, Lh/h0/f/g;->c:Lh/e0;

    invoke-virtual {v1, v5, p1}, Lh/h0/f/f;->a(Lh/e0;Ljava/io/IOException;)V

    :cond_45
    :goto_45
    iput-object v3, p0, Lh/h0/f/g;->c:Lh/e0;

    :cond_47
    const/4 p1, 0x1

    goto :goto_4a

    :cond_49
    const/4 p1, 0x0

    :goto_4a
    iget-object v1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    invoke-direct {p0, p1, v2, v4}, Lh/h0/f/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    iget-object v2, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-nez v2, :cond_58

    iget-boolean v2, p0, Lh/h0/f/g;->k:Z

    if-nez v2, :cond_59

    :cond_58
    move-object v1, v3

    :cond_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_67

    invoke-static {p1}, Lh/h0/c;->a(Ljava/net/Socket;)V

    if-eqz v1, :cond_66

    iget-object p1, p0, Lh/h0/f/g;->f:Lh/p;

    iget-object v0, p0, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {p1, v0, v1}, Lh/p;->b(Lh/e;Lh/i;)V

    :cond_66
    return-void

    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public a(ZLh/h0/g/c;JLjava/io/IOException;)V
    .registers 8

    iget-object v0, p0, Lh/h0/f/g;->f:Lh/p;

    iget-object v1, p0, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {v0, v1, p3, p4}, Lh/p;->b(Lh/e;J)V

    iget-object p3, p0, Lh/h0/f/g;->d:Lh/j;

    monitor-enter p3

    if-eqz p2, :cond_49

    :try_start_c
    iget-object p4, p0, Lh/h0/f/g;->n:Lh/h0/g/c;

    if-ne p2, p4, :cond_49

    const/4 p2, 0x1

    if-nez p1, :cond_1a

    iget-object p4, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    iget v0, p4, Lh/h0/f/c;->l:I

    add-int/2addr v0, p2

    iput v0, p4, Lh/h0/f/c;->l:I

    :cond_1a
    iget-object p4, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lh/h0/f/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    iget-object p2, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-eqz p2, :cond_26

    const/4 p4, 0x0

    :cond_26
    iget-boolean p2, p0, Lh/h0/f/g;->l:Z

    monitor-exit p3
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_6a

    invoke-static {p1}, Lh/h0/c;->a(Ljava/net/Socket;)V

    if-eqz p4, :cond_35

    iget-object p1, p0, Lh/h0/f/g;->f:Lh/p;

    iget-object p3, p0, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {p1, p3, p4}, Lh/p;->b(Lh/e;Lh/i;)V

    :cond_35
    if-eqz p5, :cond_3f

    iget-object p1, p0, Lh/h0/f/g;->f:Lh/p;

    iget-object p2, p0, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {p1, p2, p5}, Lh/p;->a(Lh/e;Ljava/io/IOException;)V

    goto :goto_48

    :cond_3f
    if-eqz p2, :cond_48

    iget-object p1, p0, Lh/h0/f/g;->f:Lh/p;

    iget-object p2, p0, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {p1, p2}, Lh/p;->a(Lh/e;)V

    :cond_48
    :goto_48
    return-void

    :cond_49
    :try_start_49
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lh/h0/f/g;->n:Lh/h0/g/c;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_6a
    move-exception p1

    monitor-exit p3
    :try_end_6c
    .catchall {:try_start_49 .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public b()Lh/h0/g/c;
    .registers 3

    iget-object v0, p0, Lh/h0/f/g;->d:Lh/j;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh/h0/f/g;->n:Lh/h0/g/c;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public declared-synchronized c()Lh/h0/f/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/f/g;->j:Lh/h0/f/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lh/h0/f/g;->c:Lh/e0;

    if-nez v0, :cond_19

    iget-object v0, p0, Lh/h0/f/g;->b:Lh/h0/f/f$a;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lh/h0/f/f$a;->b()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_e
    iget-object v0, p0, Lh/h0/f/g;->h:Lh/h0/f/f;

    invoke-virtual {v0}, Lh/h0/f/f;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lh/h0/f/g;->d:Lh/j;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lh/h0/f/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-eqz v3, :cond_10

    const/4 v1, 0x0

    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    invoke-static {v2}, Lh/h0/c;->a(Ljava/net/Socket;)V

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lh/h0/f/g;->f:Lh/p;

    iget-object v2, p0, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {v0, v2, v1}, Lh/p;->b(Lh/e;Lh/i;)V

    :cond_1d
    return-void

    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public f()V
    .registers 5

    iget-object v0, p0, Lh/h0/f/g;->d:Lh/j;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2, v3}, Lh/h0/f/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lh/h0/f/g;->j:Lh/h0/f/c;

    if-eqz v3, :cond_10

    const/4 v1, 0x0

    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    invoke-static {v2}, Lh/h0/c;->a(Ljava/net/Socket;)V

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lh/h0/f/g;->f:Lh/p;

    iget-object v2, p0, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {v0, v2, v1}, Lh/p;->b(Lh/e;Lh/i;)V

    :cond_1d
    return-void

    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public g()Lh/e0;
    .registers 2

    iget-object v0, p0, Lh/h0/f/g;->c:Lh/e0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lh/h0/f/g;->c()Lh/h0/f/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lh/h0/f/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lh/h0/f/g;->a:Lh/a;

    invoke-virtual {v0}, Lh/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method

###### Class h.h0.f.g.a (h.h0.f.g$a)
.class public final Lh/h0/f/g$a;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lh/h0/f/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lh/h0/f/g;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lh/h0/f/g$a;->a:Ljava/lang/Object;

    return-void
.end method
