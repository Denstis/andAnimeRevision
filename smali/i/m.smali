###### Class i.m (i.m)
.class final Li/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/d;


# instance fields
.field public final b:Li/c;

.field public final c:Li/r;

.field d:Z


# direct methods
.method constructor <init>(Li/r;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li/c;

    invoke-direct {v0}, Li/c;-><init>()V

    iput-object v0, p0, Li/m;->b:Li/c;

    if-eqz p1, :cond_f

    iput-object p1, p0, Li/m;->c:Li/r;

    return-void

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Li/c;
    .registers 2

    iget-object v0, p0, Li/m;->b:Li/c;

    return-object v0
.end method

.method public a(Li/f;)Li/d;
    .registers 3

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->a(Li/f;)Li/c;

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Li/d;
    .registers 3

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->a(Ljava/lang/String;)Li/c;

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/m;->c:Li/r;

    invoke-interface {v0}, Li/r;->b()Li/t;

    move-result-object v0

    return-object v0
.end method

.method public b(Li/c;J)V
    .registers 5

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1, p2, p3}, Li/c;->b(Li/c;J)V

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 7

    iget-boolean v0, p0, Li/m;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Li/m;->b:Li/c;

    iget-wide v1, v1, Li/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1b

    iget-object v1, p0, Li/m;->c:Li/r;

    iget-object v2, p0, Li/m;->b:Li/c;

    iget-object v3, p0, Li/m;->b:Li/c;

    iget-wide v3, v3, Li/c;->c:J

    invoke-interface {v1, v2, v3, v4}, Li/r;->b(Li/c;J)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1d

    :cond_1b
    move-object v1, v0

    goto :goto_1e

    :catchall_1d
    move-exception v1

    :goto_1e
    :try_start_1e
    iget-object v2, p0, Li/m;->c:Li/r;

    invoke-interface {v2}, Li/r;->close()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v2

    if-nez v1, :cond_28

    move-object v1, v2

    :cond_28
    :goto_28
    const/4 v2, 0x1

    iput-boolean v2, p0, Li/m;->d:Z

    if-nez v1, :cond_2e

    return-void

    :cond_2e
    invoke-static {v1}, Li/u;->a(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public f(J)Li/d;
    .registers 4

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1, p2}, Li/c;->f(J)Li/c;

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .registers 7

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Li/m;->b:Li/c;

    iget-wide v1, v0, Li/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_13

    iget-object v3, p0, Li/m;->c:Li/r;

    invoke-interface {v3, v0, v1, v2}, Li/r;->b(Li/c;J)V

    :cond_13
    iget-object v0, p0, Li/m;->c:Li/r;

    invoke-interface {v0}, Li/r;->flush()V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(J)Li/d;
    .registers 4

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1, p2}, Li/c;->g(J)Li/c;

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Li/d;
    .registers 6

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0}, Li/c;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    iget-object v2, p0, Li/m;->c:Li/r;

    iget-object v3, p0, Li/m;->b:Li/c;

    invoke-interface {v2, v3, v0, v1}, Li/r;->b(Li/c;J)V

    :cond_17
    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .registers 2

    iget-boolean v0, p0, Li/m;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/m;->c:Li/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Li/d;
    .registers 3

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->write([B)Li/c;

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Li/d;
    .registers 5

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1, p2, p3}, Li/c;->write([BII)Li/c;

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Li/d;
    .registers 3

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->writeByte(I)Li/c;

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Li/d;
    .registers 3

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->writeInt(I)Li/c;

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Li/d;
    .registers 3

    iget-boolean v0, p0, Li/m;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Li/m;->b:Li/c;

    invoke-virtual {v0, p1}, Li/c;->writeShort(I)Li/c;

    invoke-virtual {p0}, Li/m;->i()Li/d;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
