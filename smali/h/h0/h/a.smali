###### Class h.h0.h.a (h.h0.h.a)
.class public final Lh/h0/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/h0/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/h/a$g;,
        Lh/h0/h/a$d;,
        Lh/h0/h/a$f;,
        Lh/h0/h/a$b;,
        Lh/h0/h/a$c;,
        Lh/h0/h/a$e;
    }
.end annotation


# instance fields
.field final a:Lh/x;

.field final b:Lh/h0/f/g;

.field final c:Li/e;

.field final d:Li/d;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Lh/x;Lh/h0/f/g;Li/e;Li/d;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh/h0/h/a;->e:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lh/h0/h/a;->f:J

    iput-object p1, p0, Lh/h0/h/a;->a:Lh/x;

    iput-object p2, p0, Lh/h0/h/a;->b:Lh/h0/f/g;

    iput-object p3, p0, Lh/h0/h/a;->c:Li/e;

    iput-object p4, p0, Lh/h0/h/a;->d:Li/d;

    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lh/h0/h/a;->c:Li/e;

    iget-wide v1, p0, Lh/h0/h/a;->f:J

    invoke-interface {v0, v1, v2}, Li/e;->c(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lh/h0/h/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lh/h0/h/a;->f:J

    return-object v0
.end method


# virtual methods
.method public a(Z)Lh/c0$a;
    .registers 6

    iget v0, p0, Lh/h0/h/a;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_22

    if-ne v0, v1, :cond_9

    goto :goto_22

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/h0/h/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    :goto_22
    :try_start_22
    invoke-direct {p0}, Lh/h0/h/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh/h0/g/k;->a(Ljava/lang/String;)Lh/h0/g/k;

    move-result-object v0

    new-instance v2, Lh/c0$a;

    invoke-direct {v2}, Lh/c0$a;-><init>()V

    iget-object v3, v0, Lh/h0/g/k;->a:Lh/y;

    invoke-virtual {v2, v3}, Lh/c0$a;->a(Lh/y;)Lh/c0$a;

    iget v3, v0, Lh/h0/g/k;->b:I

    invoke-virtual {v2, v3}, Lh/c0$a;->a(I)Lh/c0$a;

    iget-object v3, v0, Lh/h0/g/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lh/c0$a;->a(Ljava/lang/String;)Lh/c0$a;

    invoke-virtual {p0}, Lh/h0/h/a;->e()Lh/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh/c0$a;->a(Lh/s;)Lh/c0$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_4f

    iget p1, v0, Lh/h0/g/k;->b:I

    if-ne p1, v3, :cond_4f

    const/4 p1, 0x0

    return-object p1

    :cond_4f
    iget p1, v0, Lh/h0/g/k;->b:I

    if-ne p1, v3, :cond_56

    iput v1, p0, Lh/h0/h/a;->e:I

    return-object v2

    :cond_56
    const/4 p1, 0x4

    iput p1, p0, Lh/h0/h/a;->e:I
    :try_end_59
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_59} :catch_5a

    return-object v2

    :catch_5a
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh/h0/h/a;->b:Lh/h0/f/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public a(Lh/c0;)Lh/d0;
    .registers 8

    iget-object v0, p0, Lh/h0/h/a;->b:Lh/h0/f/g;

    iget-object v1, v0, Lh/h0/f/g;->f:Lh/p;

    iget-object v0, v0, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {v1, v0}, Lh/p;->e(Lh/e;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lh/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lh/h0/g/e;->b(Lh/c0;)Z

    move-result v1

    if-nez v1, :cond_25

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lh/h0/h/a;->b(J)Li/s;

    move-result-object p1

    new-instance v3, Lh/h0/g/h;

    invoke-static {p1}, Li/l;->a(Li/s;)Li/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lh/h0/g/h;-><init>(Ljava/lang/String;JLi/e;)V

    return-object v3

    :cond_25
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lh/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object p1

    invoke-virtual {p1}, Lh/a0;->g()Lh/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh/h0/h/a;->a(Lh/t;)Li/s;

    move-result-object p1

    new-instance v1, Lh/h0/g/h;

    invoke-static {p1}, Li/l;->a(Li/s;)Li/e;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lh/h0/g/h;-><init>(Ljava/lang/String;JLi/e;)V

    return-object v1

    :cond_4b
    invoke-static {p1}, Lh/h0/g/e;->a(Lh/c0;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_61

    invoke-virtual {p0, v4, v5}, Lh/h0/h/a;->b(J)Li/s;

    move-result-object p1

    new-instance v1, Lh/h0/g/h;

    invoke-static {p1}, Li/l;->a(Li/s;)Li/e;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lh/h0/g/h;-><init>(Ljava/lang/String;JLi/e;)V

    return-object v1

    :cond_61
    new-instance p1, Lh/h0/g/h;

    invoke-virtual {p0}, Lh/h0/h/a;->d()Li/s;

    move-result-object v1

    invoke-static {v1}, Li/l;->a(Li/s;)Li/e;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lh/h0/g/h;-><init>(Ljava/lang/String;JLi/e;)V

    return-object p1
.end method

.method public a(J)Li/r;
    .registers 5

    iget v0, p0, Lh/h0/h/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    iput v0, p0, Lh/h0/h/a;->e:I

    new-instance v0, Lh/h0/h/a$e;

    invoke-direct {v0, p0, p1, p2}, Lh/h0/h/a$e;-><init>(Lh/h0/h/a;J)V

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lh/h0/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lh/a0;J)Li/r;
    .registers 6

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lh/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lh/h0/h/a;->c()Li/r;

    move-result-object p1

    return-object p1

    :cond_13
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1e

    invoke-virtual {p0, p2, p3}, Lh/h0/h/a;->a(J)Li/r;

    move-result-object p1

    return-object p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lh/t;)Li/s;
    .registers 4

    iget v0, p0, Lh/h0/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    iput v0, p0, Lh/h0/h/a;->e:I

    new-instance v0, Lh/h0/h/a$d;

    invoke-direct {v0, p0, p1}, Lh/h0/h/a$d;-><init>(Lh/h0/h/a;Lh/t;)V

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/h0/h/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0}, Li/d;->flush()V

    return-void
.end method

.method public a(Lh/a0;)V
    .registers 3

    iget-object v0, p0, Lh/h0/h/a;->b:Lh/h0/f/g;

    invoke-virtual {v0}, Lh/h0/f/g;->c()Lh/h0/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lh/h0/f/c;->e()Lh/e0;

    move-result-object v0

    invoke-virtual {v0}, Lh/e0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lh/h0/g/i;->a(Lh/a0;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lh/a0;->c()Lh/s;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lh/h0/h/a;->a(Lh/s;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lh/s;Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lh/h0/h/a;->e:I

    if-nez v0, :cond_3d

    iget-object v0, p0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0, p2}, Li/d;->a(Ljava/lang/String;)Li/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Li/d;->a(Ljava/lang/String;)Li/d;

    const/4 p2, 0x0

    invoke-virtual {p1}, Lh/s;->b()I

    move-result v1

    :goto_14
    if-ge p2, v1, :cond_34

    iget-object v2, p0, Lh/h0/h/a;->d:Li/d;

    invoke-virtual {p1, p2}, Lh/s;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Li/d;->a(Ljava/lang/String;)Li/d;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Li/d;->a(Ljava/lang/String;)Li/d;

    move-result-object v2

    invoke-virtual {p1, p2}, Lh/s;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Li/d;->a(Ljava/lang/String;)Li/d;

    move-result-object v2

    invoke-interface {v2, v0}, Li/d;->a(Ljava/lang/String;)Li/d;

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_34
    iget-object p1, p0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {p1, v0}, Li/d;->a(Ljava/lang/String;)Li/d;

    const/4 p1, 0x1

    iput p1, p0, Lh/h0/h/a;->e:I

    return-void

    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lh/h0/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_57

    :goto_56
    throw p1

    :goto_57
    goto :goto_56
.end method

.method a(Li/i;)V
    .registers 4

    invoke-virtual {p1}, Li/i;->g()Li/t;

    move-result-object v0

    sget-object v1, Li/t;->d:Li/t;

    invoke-virtual {p1, v1}, Li/i;->a(Li/t;)Li/i;

    invoke-virtual {v0}, Li/t;->a()Li/t;

    invoke-virtual {v0}, Li/t;->b()Li/t;

    return-void
.end method

.method public b(J)Li/s;
    .registers 5

    iget v0, p0, Lh/h0/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    iput v0, p0, Lh/h0/h/a;->e:I

    new-instance v0, Lh/h0/h/a$f;

    invoke-direct {v0, p0, p1, p2}, Lh/h0/h/a$f;-><init>(Lh/h0/h/a;J)V

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lh/h0/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0}, Li/d;->flush()V

    return-void
.end method

.method public c()Li/r;
    .registers 4

    iget v0, p0, Lh/h0/h/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    iput v0, p0, Lh/h0/h/a;->e:I

    new-instance v0, Lh/h0/h/a$c;

    invoke-direct {v0, p0}, Lh/h0/h/a$c;-><init>(Lh/h0/h/a;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lh/h0/h/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lh/h0/h/a;->b:Lh/h0/f/g;

    invoke-virtual {v0}, Lh/h0/f/g;->c()Lh/h0/f/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lh/h0/f/c;->b()V

    :cond_b
    return-void
.end method

.method public d()Li/s;
    .registers 4

    iget v0, p0, Lh/h0/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lh/h0/h/a;->b:Lh/h0/f/g;

    if-eqz v0, :cond_15

    const/4 v1, 0x5

    iput v1, p0, Lh/h0/h/a;->e:I

    invoke-virtual {v0}, Lh/h0/f/g;->e()V

    new-instance v0, Lh/h0/h/a$g;

    invoke-direct {v0, p0}, Lh/h0/h/a$g;-><init>(Lh/h0/h/a;)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lh/h0/h/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lh/s;
    .registers 4

    new-instance v0, Lh/s$a;

    invoke-direct {v0}, Lh/s$a;-><init>()V

    :goto_5
    invoke-direct {p0}, Lh/h0/h/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lh/h0/a;->a:Lh/h0/a;

    invoke-virtual {v2, v0, v1}, Lh/h0/a;->a(Lh/s$a;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    invoke-virtual {v0}, Lh/s$a;->a()Lh/s;

    move-result-object v0

    return-object v0
.end method

###### Class h.h0.h.a.C0187a (h.h0.h.a$a)
.class synthetic Lh/h0/h/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class h.h0.h.a.b (h.h0.h.a$b)
.class abstract Lh/h0/h/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field protected final b:Li/i;

.field protected c:Z

.field protected d:J

.field final synthetic e:Lh/h0/h/a;


# direct methods
.method private constructor <init>(Lh/h0/h/a;)V
    .registers 4

    iput-object p1, p0, Lh/h0/h/a$b;->e:Lh/h0/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Li/i;

    iget-object v0, p0, Lh/h0/h/a$b;->e:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->c:Li/e;

    invoke-interface {v0}, Li/s;->b()Li/t;

    move-result-object v0

    invoke-direct {p1, v0}, Li/i;-><init>(Li/t;)V

    iput-object p1, p0, Lh/h0/h/a$b;->b:Li/i;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh/h0/h/a$b;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lh/h0/h/a;Lh/h0/h/a$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lh/h0/h/a$b;-><init>(Lh/h0/h/a;)V

    return-void
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 6

    :try_start_0
    iget-object v0, p0, Lh/h0/h/a$b;->e:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->c:Li/e;

    invoke-interface {v0, p1, p2, p3}, Li/s;->a(Li/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    iget-wide v0, p0, Lh/h0/h/a$b;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lh/h0/h/a$b;->d:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    throw p1
.end method

.method protected final a(ZLjava/io/IOException;)V
    .registers 12

    iget-object v0, p0, Lh/h0/h/a$b;->e:Lh/h0/h/a;

    iget v1, v0, Lh/h0/h/a;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    return-void

    :cond_8
    const/4 v3, 0x5

    if-ne v1, v3, :cond_21

    iget-object v1, p0, Lh/h0/h/a$b;->b:Li/i;

    invoke-virtual {v0, v1}, Lh/h0/h/a;->a(Li/i;)V

    iget-object v5, p0, Lh/h0/h/a$b;->e:Lh/h0/h/a;

    iput v2, v5, Lh/h0/h/a;->e:I

    iget-object v3, v5, Lh/h0/h/a;->b:Lh/h0/f/g;

    if-eqz v3, :cond_20

    xor-int/lit8 v4, p1, 0x1

    iget-wide v6, p0, Lh/h0/h/a$b;->d:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lh/h0/f/g;->a(ZLh/h0/g/c;JLjava/io/IOException;)V

    :cond_20
    return-void

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lh/h0/h/a$b;->e:Lh/h0/h/a;

    iget v0, v0, Lh/h0/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Lh/h0/h/a$b;->b:Li/i;

    return-object v0
.end method

###### Class h.h0.h.a.c (h.h0.h.a$c)
.class final Lh/h0/h/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final b:Li/i;

.field private c:Z

.field final synthetic d:Lh/h0/h/a;


# direct methods
.method constructor <init>(Lh/h0/h/a;)V
    .registers 3

    iput-object p1, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Li/i;

    iget-object v0, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0}, Li/r;->b()Li/t;

    move-result-object v0

    invoke-direct {p1, v0}, Li/i;-><init>(Li/t;)V

    iput-object p1, p0, Lh/h0/h/a$c;->b:Li/i;

    return-void
.end method


# virtual methods
.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Lh/h0/h/a$c;->b:Li/i;

    return-object v0
.end method

.method public b(Li/c;J)V
    .registers 7

    iget-boolean v0, p0, Lh/h0/h/a$c;->c:Z

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0, p2, p3}, Li/d;->f(J)Li/d;

    iget-object v0, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->d:Li/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Li/d;->a(Ljava/lang/String;)Li/d;

    iget-object v0, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0, p1, p2, p3}, Li/r;->b(Li/c;J)V

    iget-object p1, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    iget-object p1, p1, Lh/h0/h/a;->d:Li/d;

    invoke-interface {p1, v1}, Li/d;->a(Ljava/lang/String;)Li/d;

    return-void

    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/h/a$c;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lh/h0/h/a$c;->c:Z

    iget-object v0, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->d:Li/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Li/d;->a(Ljava/lang/String;)Li/d;

    iget-object v0, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    iget-object v1, p0, Lh/h0/h/a$c;->b:Li/i;

    invoke-virtual {v0, v1}, Lh/h0/h/a;->a(Li/i;)V

    iget-object v0, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    const/4 v1, 0x3

    iput v1, v0, Lh/h0/h/a;->e:I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/h/a$c;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lh/h0/h/a$c;->d:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0}, Li/d;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class h.h0.h.a.d (h.h0.h.a$d)
.class Lh/h0/h/a$d;
.super Lh/h0/h/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final f:Lh/t;

.field private g:J

.field private h:Z

.field final synthetic i:Lh/h0/h/a;


# direct methods
.method constructor <init>(Lh/h0/h/a;Lh/t;)V
    .registers 5

    iput-object p1, p0, Lh/h0/h/a$d;->i:Lh/h0/h/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/h0/h/a$b;-><init>(Lh/h0/h/a;Lh/h0/h/a$a;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lh/h0/h/a$d;->g:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh/h0/h/a$d;->h:Z

    iput-object p2, p0, Lh/h0/h/a$d;->f:Lh/t;

    return-void
.end method

.method private i()V
    .registers 7

    iget-wide v0, p0, Lh/h0/h/a$d;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    iget-object v0, p0, Lh/h0/h/a$d;->i:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->c:Li/e;

    invoke-interface {v0}, Li/e;->d()Ljava/lang/String;

    :cond_f
    :try_start_f
    iget-object v0, p0, Lh/h0/h/a$d;->i:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->c:Li/e;

    invoke-interface {v0}, Li/e;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lh/h0/h/a$d;->g:J

    iget-object v0, p0, Lh/h0/h/a$d;->i:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->c:Li/e;

    invoke-interface {v0}, Li/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lh/h0/h/a$d;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_39} :catch_7e

    if-eqz v1, :cond_5d

    :cond_3b
    iget-wide v0, p0, Lh/h0/h/a$d;->g:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_5c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/h0/h/a$d;->h:Z

    iget-object v0, p0, Lh/h0/h/a$d;->i:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->a:Lh/x;

    invoke-virtual {v0}, Lh/x;->f()Lh/m;

    move-result-object v0

    iget-object v1, p0, Lh/h0/h/a$d;->f:Lh/t;

    iget-object v2, p0, Lh/h0/h/a$d;->i:Lh/h0/h/a;

    invoke-virtual {v2}, Lh/h0/h/a;->e()Lh/s;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lh/h0/g/e;->a(Lh/m;Lh/t;Lh/s;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    :cond_5c
    return-void

    :cond_5d
    :try_start_5d
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lh/h0/h/a$d;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_7e} :catch_7e

    :catch_7e
    move-exception v0

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4b

    iget-boolean v2, p0, Lh/h0/h/a$b;->c:Z

    if-nez v2, :cond_43

    iget-boolean v2, p0, Lh/h0/h/a$d;->h:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_11

    return-wide v3

    :cond_11
    iget-wide v5, p0, Lh/h0/h/a$d;->g:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_1b

    cmp-long v0, v5, v3

    if-nez v0, :cond_23

    :cond_1b
    invoke-direct {p0}, Lh/h0/h/a$d;->i()V

    iget-boolean v0, p0, Lh/h0/h/a$d;->h:Z

    if-nez v0, :cond_23

    return-wide v3

    :cond_23
    iget-wide v0, p0, Lh/h0/h/a$d;->g:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lh/h0/h/a$b;->a(Li/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_37

    iget-wide v0, p0, Lh/h0/h/a$d;->g:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lh/h0/h/a$d;->g:J

    return-wide p1

    :cond_37
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    throw p1

    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
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
.end method

.method public close()V
    .registers 3

    iget-boolean v0, p0, Lh/h0/h/a$b;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lh/h0/h/a$d;->h:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lh/h0/c;->a(Li/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/h0/h/a$b;->c:Z

    return-void
.end method

###### Class h.h0.h.a.e (h.h0.h.a$e)
.class final Lh/h0/h/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final b:Li/i;

.field private c:Z

.field private d:J

.field final synthetic e:Lh/h0/h/a;


# direct methods
.method constructor <init>(Lh/h0/h/a;J)V
    .registers 5

    iput-object p1, p0, Lh/h0/h/a$e;->e:Lh/h0/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Li/i;

    iget-object v0, p0, Lh/h0/h/a$e;->e:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0}, Li/r;->b()Li/t;

    move-result-object v0

    invoke-direct {p1, v0}, Li/i;-><init>(Li/t;)V

    iput-object p1, p0, Lh/h0/h/a$e;->b:Li/i;

    iput-wide p2, p0, Lh/h0/h/a$e;->d:J

    return-void
.end method


# virtual methods
.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Lh/h0/h/a$e;->b:Li/i;

    return-object v0
.end method

.method public b(Li/c;J)V
    .registers 11

    iget-boolean v0, p0, Lh/h0/h/a$e;->c:Z

    if-nez v0, :cond_42

    invoke-virtual {p1}, Li/c;->s()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lh/h0/c;->a(JJJ)V

    iget-wide v0, p0, Lh/h0/h/a$e;->d:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_21

    iget-object v0, p0, Lh/h0/h/a$e;->e:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0, p1, p2, p3}, Li/r;->b(Li/c;J)V

    iget-wide v0, p0, Lh/h0/h/a$e;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lh/h0/h/a$e;->d:J

    return-void

    :cond_21
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lh/h0/h/a$e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 6

    iget-boolean v0, p0, Lh/h0/h/a$e;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/h0/h/a$e;->c:Z

    iget-wide v0, p0, Lh/h0/h/a$e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1d

    iget-object v0, p0, Lh/h0/h/a$e;->e:Lh/h0/h/a;

    iget-object v1, p0, Lh/h0/h/a$e;->b:Li/i;

    invoke-virtual {v0, v1}, Lh/h0/h/a;->a(Li/i;)V

    iget-object v0, p0, Lh/h0/h/a$e;->e:Lh/h0/h/a;

    const/4 v1, 0x3

    iput v1, v0, Lh/h0/h/a;->e:I

    return-void

    :cond_1d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 2

    iget-boolean v0, p0, Lh/h0/h/a$e;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lh/h0/h/a$e;->e:Lh/h0/h/a;

    iget-object v0, v0, Lh/h0/h/a;->d:Li/d;

    invoke-interface {v0}, Li/d;->flush()V

    return-void
.end method

###### Class h.h0.h.a.f (h.h0.h.a$f)
.class Lh/h0/h/a$f;
.super Lh/h0/h/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private f:J


# direct methods
.method constructor <init>(Lh/h0/h/a;J)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/h0/h/a$b;-><init>(Lh/h0/h/a;Lh/h0/h/a$a;)V

    iput-wide p2, p0, Lh/h0/h/a$f;->f:J

    iget-wide p1, p0, Lh/h0/h/a$f;->f:J

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-nez p3, :cond_12

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_44

    iget-boolean v2, p0, Lh/h0/h/a$b;->c:Z

    if-nez v2, :cond_3c

    iget-wide v2, p0, Lh/h0/h/a$f;->f:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v0

    if-nez v6, :cond_13

    return-wide v4

    :cond_13
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lh/h0/h/a$b;->a(Li/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v4

    if-eqz p3, :cond_30

    iget-wide v2, p0, Lh/h0/h/a$f;->f:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lh/h0/h/a$f;->f:J

    iget-wide v2, p0, Lh/h0/h/a$f;->f:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_2f

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    :cond_2f
    return-wide p1

    :cond_30
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    throw p1

    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
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
.end method

.method public close()V
    .registers 6

    iget-boolean v0, p0, Lh/h0/h/a$b;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lh/h0/h/a$f;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lh/h0/c;->a(Li/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/h0/h/a$b;->c:Z

    return-void
.end method

###### Class h.h0.h.a.g (h.h0.h.a$g)
.class Lh/h0/h/a$g;
.super Lh/h0/h/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private f:Z


# direct methods
.method constructor <init>(Lh/h0/h/a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/h0/h/a$b;-><init>(Lh/h0/h/a;Lh/h0/h/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2a

    iget-boolean v0, p0, Lh/h0/h/a$b;->c:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lh/h0/h/a$g;->f:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_11

    return-wide v1

    :cond_11
    invoke-super {p0, p1, p2, p3}, Lh/h0/h/a$b;->a(Li/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_21

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh/h0/h/a$g;->f:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    return-wide v1

    :cond_21
    return-wide p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
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
.end method

.method public close()V
    .registers 3

    iget-boolean v0, p0, Lh/h0/h/a$b;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lh/h0/h/a$g;->f:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lh/h0/h/a$b;->a(ZLjava/io/IOException;)V

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/h0/h/a$b;->c:Z

    return-void
.end method
