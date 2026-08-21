###### Class i.n (i.n)
.class final Li/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/e;


# instance fields
.field public final b:Li/c;

.field public final c:Li/s;

.field d:Z


# direct methods
.method constructor <init>(Li/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li/c;

    invoke-direct {v0}, Li/c;-><init>()V

    iput-object v0, p0, Li/n;->b:Li/c;

    if-eqz p1, :cond_f

    iput-object p1, p0, Li/n;->c:Li/s;

    return-void

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(B)J
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Li/n;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .registers 15

    iget-boolean v0, p0, Li/n;->d:Z

    if-nez v0, :cond_5a

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3d

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3d

    :goto_e
    const-wide/16 v7, -0x1

    cmp-long v0, p2, p4

    if-gez v0, :cond_3c

    iget-object v1, p0, Li/n;->b:Li/c;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Li/c;->a(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_22

    return-wide v0

    :cond_22
    iget-object v0, p0, Li/n;->b:Li/c;

    iget-wide v1, v0, Li/c;->c:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_3c

    iget-object v3, p0, Li/n;->c:Li/s;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Li/s;->a(Li/c;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_37

    goto :goto_3c

    :cond_37
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_e

    :cond_3c
    :goto_3c
    return-wide v7

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_63

    :goto_62
    throw p1

    :goto_63
    goto :goto_62
.end method

.method public a(Li/c;J)J
    .registers 10

    if-eqz p1, :cond_51

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3a

    iget-boolean v2, p0, Li/n;->d:Z

    if-nez v2, :cond_32

    iget-object v2, p0, Li/n;->b:Li/c;

    iget-wide v3, v2, Li/c;->c:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_23

    iget-object v0, p0, Li/n;->c:Li/s;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Li/s;->a(Li/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    return-wide v2

    :cond_23
    iget-object v0, p0, Li/n;->b:Li/c;

    iget-wide v0, v0, Li/c;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0, p1, p2, p3}, Li/c;->a(Li/c;J)J

    move-result-wide p1

    return-wide p1

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Li/r;)J
    .registers 11

    if-eqz p1, :cond_3f

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_5
    :goto_5
    iget-object v4, p0, Li/n;->c:Li/s;

    iget-object v5, p0, Li/n;->b:Li/c;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Li/s;->a(Li/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    iget-object v4, p0, Li/n;->b:Li/c;

    if-eqz v8, :cond_26

    invoke-virtual {v4}, Li/c;->m()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    add-long/2addr v2, v4

    iget-object v6, p0, Li/n;->b:Li/c;

    invoke-interface {p1, v6, v4, v5}, Li/r;->b(Li/c;J)V

    goto :goto_5

    :cond_26
    invoke-virtual {v4}, Li/c;->s()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_3e

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->s()J

    move-result-wide v0

    add-long/2addr v2, v0

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->s()J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Li/r;->b(Li/c;J)V

    :cond_3e
    return-wide v2

    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_48

    :goto_47
    throw p1

    :goto_48
    goto :goto_47
.end method

.method public a()Li/c;
    .registers 2

    iget-object v0, p0, Li/n;->b:Li/c;

    return-object v0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p0, Li/n;->b:Li/c;

    iget-object v1, p0, Li/n;->c:Li/s;

    invoke-virtual {v0, v1}, Li/c;->a(Li/s;)J

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    iget-boolean v0, p0, Li/n;->d:Z

    if-nez v0, :cond_24

    :cond_a
    iget-object v0, p0, Li/n;->b:Li/c;

    iget-wide v1, v0, Li/c;->c:J

    cmp-long v3, v1, p1

    if-gez v3, :cond_22

    iget-object v1, p0, Li/n;->c:Li/s;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Li/s;->a(Li/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_22
    const/4 p1, 0x1

    return p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_44

    :goto_43
    throw v0

    :goto_44
    goto :goto_43
.end method

.method public a(JLi/f;)Z
    .registers 10

    invoke-virtual {p3}, Li/f;->e()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Li/n;->a(JLi/f;II)Z

    move-result p1

    return p1
.end method

.method public a(JLi/f;II)Z
    .registers 13

    iget-boolean v0, p0, Li/n;->d:Z

    if-nez v0, :cond_3b

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_3a

    if-ltz p4, :cond_3a

    if-ltz p5, :cond_3a

    invoke-virtual {p3}, Li/f;->e()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_17

    goto :goto_3a

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-ge v0, p5, :cond_38

    int-to-long v3, v0

    add-long/2addr v3, p1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Li/n;->a(J)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Li/n;->b:Li/c;

    invoke-virtual {v1, v3, v4}, Li/c;->h(J)B

    move-result v1

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Li/f;->a(I)B

    move-result v3

    if-eq v1, v3, :cond_35

    return v2

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_38
    const/4 p1, 0x1

    return p1

    :cond_3a
    :goto_3a
    return v2

    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_44

    :goto_43
    throw p1

    :goto_44
    goto :goto_43
.end method

.method public b(J)Li/f;
    .registers 4

    invoke-virtual {p0, p1, p2}, Li/n;->e(J)V

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0, p1, p2}, Li/c;->b(J)Li/f;

    move-result-object p1

    return-object p1
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/n;->c:Li/s;

    invoke-interface {v0}, Li/s;->b()Li/t;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Ljava/lang/String;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_a7

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_13

    move-wide v4, v2

    goto :goto_15

    :cond_13
    add-long v4, p1, v0

    :goto_15
    const/16 v7, 0xa

    const-wide/16 v8, 0x0

    move-object v6, p0

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Li/n;->a(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2c

    iget-object p1, p0, Li/n;->b:Li/c;

    invoke-virtual {p1, v6, v7}, Li/c;->j(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2c
    cmp-long v6, v4, v2

    if-gez v6, :cond_5a

    invoke-virtual {p0, v4, v5}, Li/n;->a(J)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Li/n;->b:Li/c;

    sub-long v6, v4, v0

    invoke-virtual {v2, v6, v7}, Li/c;->h(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5a

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Li/n;->a(J)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0, v4, v5}, Li/c;->h(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5a

    iget-object p1, p0, Li/n;->b:Li/c;

    invoke-virtual {p1, v4, v5}, Li/c;->j(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5a
    new-instance v6, Li/c;

    invoke-direct {v6}, Li/c;-><init>()V

    iget-object v0, p0, Li/n;->b:Li/c;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual {v0}, Li/c;->s()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Li/c;->a(Li/c;JJ)Li/c;

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li/n;->b:Li/c;

    invoke-virtual {v2}, Li/c;->s()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Li/c;->p()Li/f;

    move-result-object p1

    invoke-virtual {p1}, Li/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .registers 6

    iget-boolean v0, p0, Li/n;->d:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Li/n;->c:Li/s;

    iget-object v1, p0, Li/n;->b:Li/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Li/s;->a(Li/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Li/n;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/n;->d:Z

    iget-object v0, p0, Li/n;->c:Li/s;

    invoke-interface {v0}, Li/s;->close()V

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->l()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Li/n;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)[B
    .registers 4

    invoke-virtual {p0, p1, p2}, Li/n;->e(J)V

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0, p1, p2}, Li/c;->d(J)[B

    move-result-object p1

    return-object p1
.end method

.method public e()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Li/n;->e(J)V

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->e()I

    move-result v0

    return v0
.end method

.method public e(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Li/n;->a(J)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public f()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Li/n;->e(J)V

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->f()S

    move-result v0

    return v0
.end method

.method public g()J
    .registers 7

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Li/n;->e(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Li/n;->a(J)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Li/n;->b:Li/c;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Li/c;->h(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_30

    :cond_1f
    const/16 v4, 0x61

    if-lt v3, v4, :cond_27

    const/16 v4, 0x66

    if-le v3, v4, :cond_30

    :cond_27
    const/16 v4, 0x41

    if-lt v3, v4, :cond_32

    const/16 v4, 0x46

    if-le v3, v4, :cond_30

    goto :goto_32

    :cond_30
    move v1, v2

    goto :goto_7

    :cond_32
    :goto_32
    if-eqz v1, :cond_35

    goto :goto_4a

    :cond_35
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4a
    :goto_4a
    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Li/n$a;

    invoke-direct {v0, p0}, Li/n$a;-><init>(Li/n;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    iget-boolean v0, p0, Li/n;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8

    iget-object v0, p0, Li/n;->b:Li/c;

    iget-wide v1, v0, Li/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    iget-object v1, p0, Li/n;->c:Li/s;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Li/s;->a(Li/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 p1, -0x1

    return p1

    :cond_1a
    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public readByte()B
    .registers 3

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Li/n;->e(J)V

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->readByte()B

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 10

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Li/n;->e(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_b

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->readFully([B)V

    return-void

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Li/n;->b:Li/c;

    iget-wide v3, v2, Li/c;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_27

    long-to-int v4, v3

    invoke-virtual {v2, p1, v1, v4}, Li/c;->a([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    add-int/2addr v1, v2

    goto :goto_d

    :cond_21
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_27
    goto :goto_29

    :goto_28
    throw v0

    :goto_29
    goto :goto_28
.end method

.method public readInt()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Li/n;->e(J)V

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Li/n;->e(J)V

    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->readShort()S

    move-result v0

    return v0
.end method

.method public skip(J)V
    .registers 9

    iget-boolean v0, p0, Li/n;->d:Z

    if-nez v0, :cond_39

    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_38

    iget-object v2, p0, Li/n;->b:Li/c;

    iget-wide v3, v2, Li/c;->c:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_27

    iget-object v0, p0, Li/n;->c:Li/s;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Li/s;->a(Li/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    goto :goto_27

    :cond_21
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_27
    :goto_27
    iget-object v0, p0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->s()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Li/n;->b:Li/c;

    invoke-virtual {v2, v0, v1}, Li/c;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_4

    :cond_38
    return-void

    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :goto_41
    throw p1

    :goto_42
    goto :goto_41
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/n;->c:Li/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class i.n.a (i.n$a)
.class Li/n$a;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/n;->h()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Li/n;


# direct methods
.method constructor <init>(Li/n;)V
    .registers 2

    iput-object p1, p0, Li/n$a;->b:Li/n;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    iget-object v0, p0, Li/n$a;->b:Li/n;

    iget-boolean v1, v0, Li/n;->d:Z

    if-nez v1, :cond_13

    iget-object v0, v0, Li/n;->b:Li/c;

    iget-wide v0, v0, Li/c;->c:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Li/n$a;->b:Li/n;

    invoke-virtual {v0}, Li/n;->close()V

    return-void
.end method

.method public read()I
    .registers 8

    iget-object v0, p0, Li/n$a;->b:Li/n;

    iget-boolean v1, v0, Li/n;->d:Z

    if-nez v1, :cond_2b

    iget-object v1, v0, Li/n;->b:Li/c;

    iget-wide v2, v1, Li/c;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_20

    iget-object v0, v0, Li/n;->c:Li/s;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Li/s;->a(Li/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    const/4 v0, -0x1

    return v0

    :cond_20
    iget-object v0, p0, Li/n$a;->b:Li/n;

    iget-object v0, v0, Li/n;->b:Li/c;

    invoke-virtual {v0}, Li/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 11

    iget-object v0, p0, Li/n$a;->b:Li/n;

    iget-boolean v0, v0, Li/n;->d:Z

    if-nez v0, :cond_32

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Li/u;->a(JJJ)V

    iget-object v0, p0, Li/n$a;->b:Li/n;

    iget-object v1, v0, Li/n;->b:Li/c;

    iget-wide v2, v1, Li/c;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_29

    iget-object v0, v0, Li/n;->c:Li/s;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Li/s;->a(Li/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_29

    const/4 p1, -0x1

    return p1

    :cond_29
    iget-object v0, p0, Li/n$a;->b:Li/n;

    iget-object v0, v0, Li/n;->b:Li/c;

    invoke-virtual {v0, p1, p2, p3}, Li/c;->a([BII)I

    move-result p1

    return p1

    :cond_32
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li/n$a;->b:Li/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
