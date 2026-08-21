###### Class h.i0.a (h.i0.a)
.class public final Lh/i0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/i0/a$b;,
        Lh/i0/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lh/i0/a$b;

.field private volatile b:Lh/i0/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lh/i0/a;->c:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lh/i0/a$b;->a:Lh/i0/a$b;

    invoke-direct {p0, v0}, Lh/i0/a;-><init>(Lh/i0/a$b;)V

    return-void
.end method

.method public constructor <init>(Lh/i0/a$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh/i0/a$a;->b:Lh/i0/a$a;

    iput-object v0, p0, Lh/i0/a;->b:Lh/i0/a$a;

    iput-object p1, p0, Lh/i0/a;->a:Lh/i0/a$b;

    return-void
.end method

.method private a(Lh/s;)Z
    .registers 3

    const-string v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lh/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    const-string v0, "identity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method static a(Li/c;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    new-instance v7, Li/c;

    invoke-direct {v7}, Li/c;-><init>()V

    invoke-virtual {p0}, Li/c;->s()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-gez v5, :cond_16

    invoke-virtual {p0}, Li/c;->s()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_17

    :cond_16
    move-wide v5, v3

    :goto_17
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Li/c;->a(Li/c;JJ)Li/c;

    const/4 p0, 0x0

    :goto_1f
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3e

    invoke-virtual {v7}, Li/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_3e

    :cond_2a
    invoke-virtual {v7}, Li/c;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_38
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_38} :catch_40

    if-nez v1, :cond_3b

    return v0

    :cond_3b
    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    :cond_3e
    :goto_3e
    const/4 p0, 0x1

    return p0

    :catch_40
    return v0
.end method


# virtual methods
.method public a(Lh/u$a;)Lh/c0;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lh/i0/a;->b:Lh/i0/a$a;

    invoke-interface/range {p1 .. p1}, Lh/u$a;->e()Lh/a0;

    move-result-object v3

    sget-object v4, Lh/i0/a$a;->b:Lh/i0/a$a;

    if-ne v2, v4, :cond_13

    invoke-interface {v0, v3}, Lh/u$a;->a(Lh/a0;)Lh/c0;

    move-result-object v0

    return-object v0

    :cond_13
    sget-object v4, Lh/i0/a$a;->e:Lh/i0/a$a;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    if-nez v4, :cond_24

    sget-object v7, Lh/i0/a$a;->d:Lh/i0/a$a;

    if-ne v2, v7, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v2, 0x1

    :goto_25
    invoke-virtual {v3}, Lh/a0;->a()Lh/b0;

    move-result-object v7

    if-eqz v7, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    invoke-interface/range {p1 .. p1}, Lh/u$a;->c()Lh/i;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lh/a0;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lh/a0;->g()Lh/t;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ""

    if-eqz v8, :cond_68

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lh/i;->a()Lh/y;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_69

    :cond_68
    move-object v8, v11

    :goto_69
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-byte body)"

    const-string v12, " ("

    if-nez v2, :cond_91

    if-eqz v5, :cond_91

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lh/b0;->a()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_91
    iget-object v13, v1, Lh/i0/a;->a:Lh/i0/a$b;

    invoke-interface {v13, v8}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    const-string v8, "-byte body omitted)"

    const-string v13, ": "

    if-eqz v2, :cond_1d6

    if-eqz v5, :cond_e2

    invoke-virtual {v7}, Lh/b0;->b()Lh/v;

    move-result-object v16

    if-eqz v16, :cond_be

    iget-object v6, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Type: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lh/b0;->b()Lh/v;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    :cond_be
    invoke-virtual {v7}, Lh/b0;->a()J

    move-result-wide v14

    const-wide/16 v17, -0x1

    cmp-long v6, v14, v17

    if-eqz v6, :cond_e2

    iget-object v6, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Length: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lh/b0;->a()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    :cond_e2
    invoke-virtual {v3}, Lh/a0;->c()Lh/s;

    move-result-object v6

    invoke-virtual {v6}, Lh/s;->b()I

    move-result v10

    const/4 v14, 0x0

    :goto_eb
    if-ge v14, v10, :cond_12a

    invoke-virtual {v6, v14}, Lh/s;->a(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v19, v10

    const-string v10, "Content-Type"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_121

    const-string v10, "Content-Length"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_121

    iget-object v10, v1, Lh/i0/a;->a:Lh/i0/a$b;

    move/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Lh/s;->b(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    goto :goto_123

    :cond_121
    move/from16 v20, v2

    :goto_123
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v19

    move/from16 v2, v20

    goto :goto_eb

    :cond_12a
    move/from16 v20, v2

    const-string v2, "--> END "

    if-eqz v4, :cond_1bd

    if-nez v5, :cond_134

    goto/16 :goto_1bd

    :cond_134
    invoke-virtual {v3}, Lh/a0;->c()Lh/s;

    move-result-object v5

    invoke-direct {v1, v5}, Lh/i0/a;->a(Lh/s;)Z

    move-result v5

    if-eqz v5, :cond_153

    iget-object v5, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lh/a0;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (encoded body omitted)"

    goto/16 :goto_1cb

    :cond_153
    new-instance v5, Li/c;

    invoke-direct {v5}, Li/c;-><init>()V

    invoke-virtual {v7, v5}, Lh/b0;->a(Li/d;)V

    sget-object v6, Lh/i0/a;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Lh/b0;->b()Lh/v;

    move-result-object v10

    if-eqz v10, :cond_169

    sget-object v6, Lh/i0/a;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v6}, Lh/v;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    :cond_169
    iget-object v10, v1, Lh/i0/a;->a:Lh/i0/a$b;

    invoke-interface {v10, v11}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    invoke-static {v5}, Lh/i0/a;->a(Li/c;)Z

    move-result v10

    if-eqz v10, :cond_19c

    iget-object v10, v1, Lh/i0/a;->a:Lh/i0/a$b;

    invoke-virtual {v5, v6}, Li/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    iget-object v5, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lh/a0;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lh/b0;->a()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ce

    :cond_19c
    iget-object v5, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lh/a0;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (binary "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lh/b0;->a()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ce

    :cond_1bd
    :goto_1bd
    iget-object v5, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lh/a0;->e()Ljava/lang/String;

    move-result-object v2

    :goto_1cb
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1ce
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    goto :goto_1d8

    :cond_1d6
    move/from16 v20, v2

    :goto_1d8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    :try_start_1dc
    invoke-interface {v0, v3}, Lh/u$a;->a(Lh/a0;)Lh/c0;

    move-result-object v0
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1e0} :catch_35e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-virtual {v2, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0}, Lh/c0;->j()Lh/d0;

    move-result-object v5

    invoke-virtual {v5}, Lh/d0;->k()J

    move-result-wide v6

    const-wide/16 v14, -0x1

    cmp-long v10, v6, v14

    if-eqz v10, :cond_20b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-byte"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_20d

    :cond_20b
    const-string v10, "unknown-length"

    :goto_20d
    iget-object v14, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v9

    const-string v9, "<-- "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lh/c0;->l()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lh/c0;->p()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_232

    move-wide/from16 v18, v6

    move-object v7, v11

    const/16 v6, 0x20

    goto :goto_249

    :cond_232
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v6

    const/16 v6, 0x20

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lh/c0;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_249
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lh/c0;->t()Lh/a0;

    move-result-object v6

    invoke-virtual {v6}, Lh/a0;->g()Lh/t;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v20, :cond_27e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " body"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27f

    :cond_27e
    move-object v2, v11

    :goto_27f
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    if-eqz v20, :cond_35d

    invoke-virtual {v0}, Lh/c0;->n()Lh/s;

    move-result-object v2

    invoke-virtual {v2}, Lh/s;->b()I

    move-result v3

    const/4 v6, 0x0

    :goto_299
    if-ge v6, v3, :cond_2bd

    iget-object v7, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lh/s;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lh/s;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_299

    :cond_2bd
    if-eqz v4, :cond_356

    invoke-static {v0}, Lh/h0/g/e;->b(Lh/c0;)Z

    move-result v2

    if-nez v2, :cond_2c7

    goto/16 :goto_356

    :cond_2c7
    invoke-virtual {v0}, Lh/c0;->n()Lh/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lh/i0/a;->a(Lh/s;)Z

    move-result v2

    if-eqz v2, :cond_2d7

    iget-object v2, v1, Lh/i0/a;->a:Lh/i0/a$b;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    goto/16 :goto_35a

    :cond_2d7
    invoke-virtual {v5}, Lh/d0;->m()Li/e;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {v2, v3, v4}, Li/e;->a(J)Z

    invoke-interface {v2}, Li/e;->a()Li/c;

    move-result-object v2

    sget-object v3, Lh/i0/a;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Lh/d0;->l()Lh/v;

    move-result-object v4

    if-eqz v4, :cond_2f5

    sget-object v3, Lh/i0/a;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v3}, Lh/v;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v3

    :cond_2f5
    invoke-static {v2}, Lh/i0/a;->a(Li/c;)Z

    move-result v4

    if-nez v4, :cond_31e

    iget-object v3, v1, Lh/i0/a;->a:Lh/i0/a$b;

    invoke-interface {v3, v11}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    iget-object v3, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP (binary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Li/c;->s()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_31e
    const-wide/16 v4, 0x0

    cmp-long v6, v18, v4

    if-eqz v6, :cond_336

    iget-object v4, v1, Lh/i0/a;->a:Lh/i0/a$b;

    invoke-interface {v4, v11}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lh/i0/a;->a:Lh/i0/a$b;

    invoke-virtual {v2}, Li/c;->clone()Li/c;

    move-result-object v5

    invoke-virtual {v5, v3}, Li/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    :cond_336
    iget-object v3, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Li/c;->s()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    goto :goto_35d

    :cond_356
    :goto_356
    iget-object v2, v1, Lh/i0/a;->a:Lh/i0/a$b;

    const-string v3, "<-- END HTTP"

    :goto_35a
    invoke-interface {v2, v3}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    :cond_35d
    :goto_35d
    return-object v0

    :catch_35e
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lh/i0/a;->a:Lh/i0/a$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<-- HTTP FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lh/i0/a$b;->a(Ljava/lang/String;)V

    goto :goto_378

    :goto_377
    throw v2

    :goto_378
    goto :goto_377
.end method

.method public a(Lh/i0/a$a;)Lh/i0/a;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lh/i0/a;->b:Lh/i0/a$a;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "level == null. Use Level.NONE instead."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class h.i0.a.EnumC0190a (h.i0.a$a)
.class public final enum Lh/i0/a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/i0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh/i0/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lh/i0/a$a;

.field public static final enum c:Lh/i0/a$a;

.field public static final enum d:Lh/i0/a$a;

.field public static final enum e:Lh/i0/a$a;

.field private static final synthetic f:[Lh/i0/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lh/i0/a$a;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lh/i0/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/i0/a$a;->b:Lh/i0/a$a;

    new-instance v0, Lh/i0/a$a;

    const/4 v2, 0x1

    const-string v3, "BASIC"

    invoke-direct {v0, v3, v2}, Lh/i0/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/i0/a$a;->c:Lh/i0/a$a;

    new-instance v0, Lh/i0/a$a;

    const/4 v3, 0x2

    const-string v4, "HEADERS"

    invoke-direct {v0, v4, v3}, Lh/i0/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/i0/a$a;->d:Lh/i0/a$a;

    new-instance v0, Lh/i0/a$a;

    const/4 v4, 0x3

    const-string v5, "BODY"

    invoke-direct {v0, v5, v4}, Lh/i0/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/i0/a$a;->e:Lh/i0/a$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lh/i0/a$a;

    sget-object v5, Lh/i0/a$a;->b:Lh/i0/a$a;

    aput-object v5, v0, v1

    sget-object v1, Lh/i0/a$a;->c:Lh/i0/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lh/i0/a$a;->d:Lh/i0/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lh/i0/a$a;->e:Lh/i0/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lh/i0/a$a;->f:[Lh/i0/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lh/i0/a$a;
    .registers 2

    const-class v0, Lh/i0/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh/i0/a$a;

    return-object p0
.end method

.method public static values()[Lh/i0/a$a;
    .registers 1

    sget-object v0, Lh/i0/a$a;->f:[Lh/i0/a$a;

    invoke-virtual {v0}, [Lh/i0/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/i0/a$a;

    return-object v0
.end method

###### Class h.i0.a.b (h.i0.a$b)
.class public interface abstract Lh/i0/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/i0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lh/i0/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh/i0/a$b$a;

    invoke-direct {v0}, Lh/i0/a$b$a;-><init>()V

    sput-object v0, Lh/i0/a$b;->a:Lh/i0/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

###### Class h.i0.a.b.C0191a (h.i0.a$b$a)
.class final Lh/i0/a$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/i0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/i0/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lh/h0/j/f;->c()Lh/h0/j/f;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lh/h0/j/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
