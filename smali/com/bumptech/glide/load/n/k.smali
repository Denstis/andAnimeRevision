###### Class com.bumptech.glide.load.n.k (com.bumptech.glide.load.n.k)
.class public Lcom/bumptech/glide/load/n/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/m;
.implements Lcom/bumptech/glide/load/n/b0/h$a;
.implements Lcom/bumptech/glide/load/n/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/k$b;,
        Lcom/bumptech/glide/load/n/k$a;,
        Lcom/bumptech/glide/load/n/k$c;,
        Lcom/bumptech/glide/load/n/k$d;
    }
.end annotation


# static fields
.field private static final i:Z


# instance fields
.field private final a:Lcom/bumptech/glide/load/n/s;

.field private final b:Lcom/bumptech/glide/load/n/o;

.field private final c:Lcom/bumptech/glide/load/n/b0/h;

.field private final d:Lcom/bumptech/glide/load/n/k$b;

.field private final e:Lcom/bumptech/glide/load/n/y;

.field private final f:Lcom/bumptech/glide/load/n/k$c;

.field private final g:Lcom/bumptech/glide/load/n/k$a;

.field private final h:Lcom/bumptech/glide/load/n/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/n/k;->i:Z

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/n/b0/h;Lcom/bumptech/glide/load/n/b0/a$a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/s;Lcom/bumptech/glide/load/n/o;Lcom/bumptech/glide/load/n/a;Lcom/bumptech/glide/load/n/k$b;Lcom/bumptech/glide/load/n/k$a;Lcom/bumptech/glide/load/n/y;Z)V
    .registers 23

    move-object v6, p0

    move-object v7, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v7, v6, Lcom/bumptech/glide/load/n/k;->c:Lcom/bumptech/glide/load/n/b0/h;

    new-instance v0, Lcom/bumptech/glide/load/n/k$c;

    move-object v1, p2

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/n/k$c;-><init>(Lcom/bumptech/glide/load/n/b0/a$a;)V

    iput-object v0, v6, Lcom/bumptech/glide/load/n/k;->f:Lcom/bumptech/glide/load/n/k$c;

    if-nez p9, :cond_19

    new-instance v0, Lcom/bumptech/glide/load/n/a;

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/n/a;-><init>(Z)V

    goto :goto_1b

    :cond_19
    move-object/from16 v0, p9

    :goto_1b
    iput-object v0, v6, Lcom/bumptech/glide/load/n/k;->h:Lcom/bumptech/glide/load/n/a;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/n/a;->a(Lcom/bumptech/glide/load/n/p$a;)V

    if-nez p8, :cond_28

    new-instance v0, Lcom/bumptech/glide/load/n/o;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/o;-><init>()V

    goto :goto_2a

    :cond_28
    move-object/from16 v0, p8

    :goto_2a
    iput-object v0, v6, Lcom/bumptech/glide/load/n/k;->b:Lcom/bumptech/glide/load/n/o;

    if-nez p7, :cond_34

    new-instance v0, Lcom/bumptech/glide/load/n/s;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/s;-><init>()V

    goto :goto_36

    :cond_34
    move-object/from16 v0, p7

    :goto_36
    iput-object v0, v6, Lcom/bumptech/glide/load/n/k;->a:Lcom/bumptech/glide/load/n/s;

    if-nez p10, :cond_46

    new-instance v8, Lcom/bumptech/glide/load/n/k$b;

    move-object v0, v8

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/n/k$b;-><init>(Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/m;)V

    goto :goto_48

    :cond_46
    move-object/from16 v8, p10

    :goto_48
    iput-object v8, v6, Lcom/bumptech/glide/load/n/k;->d:Lcom/bumptech/glide/load/n/k$b;

    if-nez p11, :cond_54

    new-instance v0, Lcom/bumptech/glide/load/n/k$a;

    iget-object v1, v6, Lcom/bumptech/glide/load/n/k;->f:Lcom/bumptech/glide/load/n/k$c;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/n/k$a;-><init>(Lcom/bumptech/glide/load/n/h$e;)V

    goto :goto_56

    :cond_54
    move-object/from16 v0, p11

    :goto_56
    iput-object v0, v6, Lcom/bumptech/glide/load/n/k;->g:Lcom/bumptech/glide/load/n/k$a;

    if-nez p12, :cond_60

    new-instance v0, Lcom/bumptech/glide/load/n/y;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/y;-><init>()V

    goto :goto_62

    :cond_60
    move-object/from16 v0, p12

    :goto_62
    iput-object v0, v6, Lcom/bumptech/glide/load/n/k;->e:Lcom/bumptech/glide/load/n/y;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/n/b0/h;->a(Lcom/bumptech/glide/load/n/b0/h$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/n/b0/h;Lcom/bumptech/glide/load/n/b0/a$a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Z)V
    .registers 22

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/load/n/k;-><init>(Lcom/bumptech/glide/load/n/b0/h;Lcom/bumptech/glide/load/n/b0/a$a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/s;Lcom/bumptech/glide/load/n/o;Lcom/bumptech/glide/load/n/a;Lcom/bumptech/glide/load/n/k$b;Lcom/bumptech/glide/load/n/k$a;Lcom/bumptech/glide/load/n/y;Z)V

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/n/p;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k;->c:Lcom/bumptech/glide/load/n/b0/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/n/b0/h;->a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/n/v;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_18

    :cond_a
    instance-of v0, p1, Lcom/bumptech/glide/load/n/p;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/bumptech/glide/load/n/p;

    goto :goto_18

    :cond_11
    new-instance v0, Lcom/bumptech/glide/load/n/p;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lcom/bumptech/glide/load/n/p;-><init>(Lcom/bumptech/glide/load/n/v;ZZ)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/g;Z)Lcom/bumptech/glide/load/n/p;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Z)",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget-object p2, p0, Lcom/bumptech/glide/load/n/k;->h:Lcom/bumptech/glide/load/n/a;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/n/a;->b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/n/p;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/p;->d()V

    :cond_f
    return-object p1
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lc/a/a/t/f;->a(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/g;Z)Lcom/bumptech/glide/load/n/p;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Z)",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/n/k;->a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/n/p;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/bumptech/glide/load/n/p;->d()V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k;->h:Lcom/bumptech/glide/load/n/a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/n/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V

    :cond_12
    return-object p2
.end method


# virtual methods
.method public declared-synchronized a(Lc/a/a/e;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/load/n/j;Ljava/util/Map;ZZLcom/bumptech/glide/load/i;ZZZZLc/a/a/r/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/n/k$d;
    .registers 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/a/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/a/a/h;",
            "Lcom/bumptech/glide/load/n/j;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/l<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/i;",
            "ZZZZ",
            "Lc/a/a/r/g;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/load/n/k$d;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p14

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    monitor-enter p0

    :try_start_9
    sget-boolean v2, Lcom/bumptech/glide/load/n/k;->i:Z

    if-eqz v2, :cond_12

    invoke-static {}, Lc/a/a/t/f;->a()J

    move-result-wide v2

    goto :goto_14

    :cond_12
    const-wide/16 v2, 0x0

    :goto_14
    move-wide v10, v2

    iget-object v12, v1, Lcom/bumptech/glide/load/n/k;->b:Lcom/bumptech/glide/load/n/o;

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p10

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p13

    invoke-virtual/range {v12 .. v20}, Lcom/bumptech/glide/load/n/o;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/n/n;

    move-result-object v12

    invoke-direct {v1, v12, v0}, Lcom/bumptech/glide/load/n/k;->a(Lcom/bumptech/glide/load/g;Z)Lcom/bumptech/glide/load/n/p;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_42

    sget-object v0, Lcom/bumptech/glide/load/a;->f:Lcom/bumptech/glide/load/a;

    invoke-interface {v8, v2, v0}, Lc/a/a/r/g;->a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V

    sget-boolean v0, Lcom/bumptech/glide/load/n/k;->i:Z

    if-eqz v0, :cond_40

    const-string v0, "Loaded resource from active resources"

    invoke-static {v0, v10, v11, v12}, Lcom/bumptech/glide/load/n/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_c5

    :cond_40
    monitor-exit p0

    return-object v3

    :cond_42
    :try_start_42
    invoke-direct {v1, v12, v0}, Lcom/bumptech/glide/load/n/k;->b(Lcom/bumptech/glide/load/g;Z)Lcom/bumptech/glide/load/n/p;

    move-result-object v2

    if-eqz v2, :cond_58

    sget-object v0, Lcom/bumptech/glide/load/a;->f:Lcom/bumptech/glide/load/a;

    invoke-interface {v8, v2, v0}, Lc/a/a/r/g;->a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V

    sget-boolean v0, Lcom/bumptech/glide/load/n/k;->i:Z

    if-eqz v0, :cond_56

    const-string v0, "Loaded resource from cache"

    invoke-static {v0, v10, v11, v12}, Lcom/bumptech/glide/load/n/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V
    :try_end_56
    .catchall {:try_start_42 .. :try_end_56} :catchall_c5

    :cond_56
    monitor-exit p0

    return-object v3

    :cond_58
    :try_start_58
    iget-object v2, v1, Lcom/bumptech/glide/load/n/k;->a:Lcom/bumptech/glide/load/n/s;

    move/from16 v15, p17

    invoke-virtual {v2, v12, v15}, Lcom/bumptech/glide/load/n/s;->a(Lcom/bumptech/glide/load/g;Z)Lcom/bumptech/glide/load/n/l;

    move-result-object v2

    if-eqz v2, :cond_75

    invoke-virtual {v2, v8, v9}, Lcom/bumptech/glide/load/n/l;->a(Lc/a/a/r/g;Ljava/util/concurrent/Executor;)V

    sget-boolean v0, Lcom/bumptech/glide/load/n/k;->i:Z

    if-eqz v0, :cond_6e

    const-string v0, "Added to existing load"

    invoke-static {v0, v10, v11, v12}, Lcom/bumptech/glide/load/n/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    :cond_6e
    new-instance v0, Lcom/bumptech/glide/load/n/k$d;

    invoke-direct {v0, v1, v8, v2}, Lcom/bumptech/glide/load/n/k$d;-><init>(Lcom/bumptech/glide/load/n/k;Lc/a/a/r/g;Lcom/bumptech/glide/load/n/l;)V
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_c5

    monitor-exit p0

    return-object v0

    :cond_75
    :try_start_75
    iget-object v2, v1, Lcom/bumptech/glide/load/n/k;->d:Lcom/bumptech/glide/load/n/k$b;

    move-object v3, v12

    move/from16 v4, p14

    move/from16 v5, p15

    move/from16 v6, p16

    move/from16 v7, p17

    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/load/n/k$b;->a(Lcom/bumptech/glide/load/g;ZZZZ)Lcom/bumptech/glide/load/n/l;

    move-result-object v0

    iget-object v13, v1, Lcom/bumptech/glide/load/n/k;->g:Lcom/bumptech/glide/load/n/k$a;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v12

    move-object/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move/from16 v25, p11

    move/from16 v26, p12

    move/from16 v27, p17

    move-object/from16 v28, p13

    move-object/from16 v29, v0

    invoke-virtual/range {v13 .. v29}, Lcom/bumptech/glide/load/n/k$a;->a(Lc/a/a/e;Ljava/lang/Object;Lcom/bumptech/glide/load/n/n;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/load/n/j;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/n/h$b;)Lcom/bumptech/glide/load/n/h;

    move-result-object v2

    iget-object v3, v1, Lcom/bumptech/glide/load/n/k;->a:Lcom/bumptech/glide/load/n/s;

    invoke-virtual {v3, v12, v0}, Lcom/bumptech/glide/load/n/s;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/l;)V

    invoke-virtual {v0, v8, v9}, Lcom/bumptech/glide/load/n/l;->a(Lc/a/a/r/g;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/n/l;->b(Lcom/bumptech/glide/load/n/h;)V

    sget-boolean v2, Lcom/bumptech/glide/load/n/k;->i:Z

    if-eqz v2, :cond_be

    const-string v2, "Started new load"

    invoke-static {v2, v10, v11, v12}, Lcom/bumptech/glide/load/n/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    :cond_be
    new-instance v2, Lcom/bumptech/glide/load/n/k$d;

    invoke-direct {v2, v1, v8, v0}, Lcom/bumptech/glide/load/n/k$d;-><init>(Lcom/bumptech/glide/load/n/k;Lc/a/a/r/g;Lcom/bumptech/glide/load/n/l;)V
    :try_end_c3
    .catchall {:try_start_75 .. :try_end_c3} :catchall_c5

    monitor-exit p0

    return-object v2

    :catchall_c5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/k;->h:Lcom/bumptech/glide/load/n/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/n/a;->a(Lcom/bumptech/glide/load/g;)V

    invoke-virtual {p2}, Lcom/bumptech/glide/load/n/p;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k;->c:Lcom/bumptech/glide/load/n/b0/h;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/n/b0/h;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/v;

    goto :goto_17

    :cond_12
    iget-object p1, p0, Lcom/bumptech/glide/load/n/k;->e:Lcom/bumptech/glide/load/n/y;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/n/y;->a(Lcom/bumptech/glide/load/n/v;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :goto_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/load/n/l;Lcom/bumptech/glide/load/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/l<",
            "*>;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/k;->a:Lcom/bumptech/glide/load/n/s;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/n/s;->b(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/l;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/load/n/l;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/l<",
            "*>;",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_11

    :try_start_3
    invoke-virtual {p3, p2, p0}, Lcom/bumptech/glide/load/n/p;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p$a;)V

    invoke-virtual {p3}, Lcom/bumptech/glide/load/n/p;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k;->h:Lcom/bumptech/glide/load/n/a;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/n/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V

    :cond_11
    iget-object p3, p0, Lcom/bumptech/glide/load/n/k;->a:Lcom/bumptech/glide/load/n/s;

    invoke-virtual {p3, p2, p1}, Lcom/bumptech/glide/load/n/s;->b(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/l;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/bumptech/glide/load/n/v;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k;->e:Lcom/bumptech/glide/load/n/y;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/n/y;->a(Lcom/bumptech/glide/load/n/v;)V

    return-void
.end method

.method public b(Lcom/bumptech/glide/load/n/v;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/n/p;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/bumptech/glide/load/n/p;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/p;->g()V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.bumptech.glide.load.n.k.a (com.bumptech.glide.load.n.k$a)
.class Lcom/bumptech/glide/load/n/k$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/n/h$e;

.field final b:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Lcom/bumptech/glide/load/n/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/h$e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/n/k$a$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/n/k$a$a;-><init>(Lcom/bumptech/glide/load/n/k$a;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lc/a/a/t/l/a;->a(ILc/a/a/t/l/a$d;)Lb/h/n/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/k$a;->b:Lb/h/n/d;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/k$a;->a:Lcom/bumptech/glide/load/n/h$e;

    return-void
.end method


# virtual methods
.method a(Lc/a/a/e;Ljava/lang/Object;Lcom/bumptech/glide/load/n/n;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/load/n/j;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/n/h$b;)Lcom/bumptech/glide/load/n/h;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/a/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/n/n;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/a/a/h;",
            "Lcom/bumptech/glide/load/n/j;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/l<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/i;",
            "Lcom/bumptech/glide/load/n/h$b<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/n/h<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    iget-object v1, v0, Lcom/bumptech/glide/load/n/k$a;->b:Lb/h/n/d;

    invoke-interface {v1}, Lb/h/n/d;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/n/h;

    invoke-static {v1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v1

    check-cast v19, Lcom/bumptech/glide/load/n/h;

    move-object/from16 v1, v19

    move-object/from16 p1, v1

    iget v1, v0, Lcom/bumptech/glide/load/n/k$a;->c:I

    move/from16 v18, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/load/n/k$a;->c:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v18}, Lcom/bumptech/glide/load/n/h;->a(Lc/a/a/e;Ljava/lang/Object;Lcom/bumptech/glide/load/n/n;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/load/n/j;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/n/h$b;I)Lcom/bumptech/glide/load/n/h;

    return-object v19
.end method

###### Class com.bumptech.glide.load.n.k.a.C0143a (com.bumptech.glide.load.n.k$a$a)
.class Lcom/bumptech/glide/load/n/k$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/t/l/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/t/l/a$d<",
        "Lcom/bumptech/glide/load/n/h<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/n/k$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/k$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/n/k$a$a;->a:Lcom/bumptech/glide/load/n/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/n/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/n/h<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/n/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/k$a$a;->a:Lcom/bumptech/glide/load/n/k$a;

    iget-object v2, v1, Lcom/bumptech/glide/load/n/k$a;->a:Lcom/bumptech/glide/load/n/h$e;

    iget-object v1, v1, Lcom/bumptech/glide/load/n/k$a;->b:Lb/h/n/d;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/n/h;-><init>(Lcom/bumptech/glide/load/n/h$e;Lb/h/n/d;)V

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/k$a$a;->a()Lcom/bumptech/glide/load/n/h;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.k.b (com.bumptech.glide.load.n.k$b)
.class Lcom/bumptech/glide/load/n/k$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/n/c0/a;

.field final b:Lcom/bumptech/glide/load/n/c0/a;

.field final c:Lcom/bumptech/glide/load/n/c0/a;

.field final d:Lcom/bumptech/glide/load/n/c0/a;

.field final e:Lcom/bumptech/glide/load/n/m;

.field final f:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Lcom/bumptech/glide/load/n/l<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/m;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/n/k$b$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/n/k$b$a;-><init>(Lcom/bumptech/glide/load/n/k$b;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lc/a/a/t/l/a;->a(ILc/a/a/t/l/a$d;)Lb/h/n/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/k$b;->f:Lb/h/n/d;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/k$b;->a:Lcom/bumptech/glide/load/n/c0/a;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/k$b;->b:Lcom/bumptech/glide/load/n/c0/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/n/k$b;->c:Lcom/bumptech/glide/load/n/c0/a;

    iput-object p4, p0, Lcom/bumptech/glide/load/n/k$b;->d:Lcom/bumptech/glide/load/n/c0/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/n/k$b;->e:Lcom/bumptech/glide/load/n/m;

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/g;ZZZZ)Lcom/bumptech/glide/load/n/l;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/n/l<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k$b;->f:Lb/h/n/d;

    invoke-interface {v0}, Lb/h/n/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/n/l;

    invoke-static {v0}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/n/l;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/n/l;->a(Lcom/bumptech/glide/load/g;ZZZZ)Lcom/bumptech/glide/load/n/l;

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.k.b.a (com.bumptech.glide.load.n.k$b$a)
.class Lcom/bumptech/glide/load/n/k$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/t/l/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/k$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/t/l/a$d<",
        "Lcom/bumptech/glide/load/n/l<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/n/k$b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/k$b;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/n/k$b$a;->a:Lcom/bumptech/glide/load/n/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/n/l;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/n/l<",
            "*>;"
        }
    .end annotation

    new-instance v7, Lcom/bumptech/glide/load/n/l;

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k$b$a;->a:Lcom/bumptech/glide/load/n/k$b;

    iget-object v1, v0, Lcom/bumptech/glide/load/n/k$b;->a:Lcom/bumptech/glide/load/n/c0/a;

    iget-object v2, v0, Lcom/bumptech/glide/load/n/k$b;->b:Lcom/bumptech/glide/load/n/c0/a;

    iget-object v3, v0, Lcom/bumptech/glide/load/n/k$b;->c:Lcom/bumptech/glide/load/n/c0/a;

    iget-object v4, v0, Lcom/bumptech/glide/load/n/k$b;->d:Lcom/bumptech/glide/load/n/c0/a;

    iget-object v5, v0, Lcom/bumptech/glide/load/n/k$b;->e:Lcom/bumptech/glide/load/n/m;

    iget-object v6, v0, Lcom/bumptech/glide/load/n/k$b;->f:Lb/h/n/d;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/n/l;-><init>(Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/c0/a;Lcom/bumptech/glide/load/n/m;Lb/h/n/d;)V

    return-object v7
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/k$b$a;->a()Lcom/bumptech/glide/load/n/l;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.k.c (com.bumptech.glide.load.n.k$c)
.class Lcom/bumptech/glide/load/n/k$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/n/b0/a$a;

.field private volatile b:Lcom/bumptech/glide/load/n/b0/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/b0/a$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/n/k$c;->a:Lcom/bumptech/glide/load/n/b0/a$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/n/b0/a;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k$c;->b:Lcom/bumptech/glide/load/n/b0/a;

    if-nez v0, :cond_21

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/load/n/k$c;->b:Lcom/bumptech/glide/load/n/b0/a;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k$c;->a:Lcom/bumptech/glide/load/n/b0/a$a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/b0/a$a;->a()Lcom/bumptech/glide/load/n/b0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/k$c;->b:Lcom/bumptech/glide/load/n/b0/a;

    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/load/n/k$c;->b:Lcom/bumptech/glide/load/n/b0/a;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/bumptech/glide/load/n/b0/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/b0/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/k$c;->b:Lcom/bumptech/glide/load/n/b0/a;

    :cond_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/bumptech/glide/load/n/k$c;->b:Lcom/bumptech/glide/load/n/b0/a;

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.k.d (com.bumptech.glide.load.n.k$d)
.class public Lcom/bumptech/glide/load/n/k$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/n/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/l<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/r/g;

.field final synthetic c:Lcom/bumptech/glide/load/n/k;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/k;Lc/a/a/r/g;Lcom/bumptech/glide/load/n/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/g;",
            "Lcom/bumptech/glide/load/n/l<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/n/k$d;->c:Lcom/bumptech/glide/load/n/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/n/k$d;->b:Lc/a/a/r/g;

    iput-object p3, p0, Lcom/bumptech/glide/load/n/k$d;->a:Lcom/bumptech/glide/load/n/l;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/n/k$d;->c:Lcom/bumptech/glide/load/n/k;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/n/k$d;->a:Lcom/bumptech/glide/load/n/l;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/k$d;->b:Lc/a/a/r/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/n/l;->c(Lc/a/a/r/g;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
