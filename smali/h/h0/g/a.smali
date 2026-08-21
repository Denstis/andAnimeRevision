###### Class h.h0.g.a (h.h0.g.a)
.class public final Lh/h0/g/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/u;


# instance fields
.field private final a:Lh/m;


# direct methods
.method public constructor <init>(Lh/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/g/a;->a:Lh/m;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2f

    if-lez v2, :cond_13

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh/l;

    invoke-virtual {v3}, Lh/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lh/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lh/u$a;)Lh/c0;
    .registers 12

    invoke-interface {p1}, Lh/u$a;->e()Lh/a0;

    move-result-object v0

    invoke-virtual {v0}, Lh/a0;->f()Lh/a0$a;

    move-result-object v1

    invoke-virtual {v0}, Lh/a0;->a()Lh/b0;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lh/b0;->b()Lh/v;

    move-result-object v7

    if-eqz v7, :cond_21

    invoke-virtual {v7}, Lh/v;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lh/a0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    :cond_21
    invoke-virtual {v2}, Lh/b0;->a()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_36

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lh/a0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    invoke-virtual {v1, v2}, Lh/a0$a;->a(Ljava/lang/String;)Lh/a0$a;

    goto :goto_3e

    :cond_36
    const-string v7, "chunked"

    invoke-virtual {v1, v2, v7}, Lh/a0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    invoke-virtual {v1, v6}, Lh/a0$a;->a(Ljava/lang/String;)Lh/a0$a;

    :cond_3e
    :goto_3e
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lh/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_52

    invoke-virtual {v0}, Lh/a0;->g()Lh/t;

    move-result-object v7

    invoke-static {v7, v8}, Lh/h0/c;->a(Lh/t;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lh/a0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    :cond_52
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lh/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5f

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v2, v7}, Lh/a0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    :cond_5f
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lh/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_75

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lh/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_75

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v9}, Lh/a0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    :cond_75
    iget-object v2, p0, Lh/h0/g/a;->a:Lh/m;

    invoke-virtual {v0}, Lh/a0;->g()Lh/t;

    move-result-object v7

    invoke-interface {v2, v7}, Lh/m;->a(Lh/t;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8e

    invoke-direct {p0, v2}, Lh/h0/g/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Lh/a0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    :cond_8e
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lh/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9d

    invoke-static {}, Lh/h0/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lh/a0$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    :cond_9d
    invoke-virtual {v1}, Lh/a0$a;->a()Lh/a0;

    move-result-object v1

    invoke-interface {p1, v1}, Lh/u$a;->a(Lh/a0;)Lh/c0;

    move-result-object p1

    iget-object v1, p0, Lh/h0/g/a;->a:Lh/m;

    invoke-virtual {v0}, Lh/a0;->g()Lh/t;

    move-result-object v2

    invoke-virtual {p1}, Lh/c0;->n()Lh/s;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lh/h0/g/e;->a(Lh/m;Lh/t;Lh/s;)V

    invoke-virtual {p1}, Lh/c0;->q()Lh/c0$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh/c0$a;->a(Lh/a0;)Lh/c0$a;

    if-eqz v8, :cond_ff

    const-string v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lh/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-static {p1}, Lh/h0/g/e;->b(Lh/c0;)Z

    move-result v2

    if-eqz v2, :cond_ff

    new-instance v2, Li/j;

    invoke-virtual {p1}, Lh/c0;->j()Lh/d0;

    move-result-object v7

    invoke-virtual {v7}, Lh/d0;->m()Li/e;

    move-result-object v7

    invoke-direct {v2, v7}, Li/j;-><init>(Li/s;)V

    invoke-virtual {p1}, Lh/c0;->n()Lh/s;

    move-result-object v7

    invoke-virtual {v7}, Lh/s;->a()Lh/s$a;

    move-result-object v7

    invoke-virtual {v7, v0}, Lh/s$a;->b(Ljava/lang/String;)Lh/s$a;

    invoke-virtual {v7, v6}, Lh/s$a;->b(Ljava/lang/String;)Lh/s$a;

    invoke-virtual {v7}, Lh/s$a;->a()Lh/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh/c0$a;->a(Lh/s;)Lh/c0$a;

    invoke-virtual {p1, v3}, Lh/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lh/h0/g/h;

    invoke-static {v2}, Li/l;->a(Li/s;)Li/e;

    move-result-object v2

    invoke-direct {v0, p1, v4, v5, v2}, Lh/h0/g/h;-><init>(Ljava/lang/String;JLi/e;)V

    invoke-virtual {v1, v0}, Lh/c0$a;->a(Lh/d0;)Lh/c0$a;

    :cond_ff
    invoke-virtual {v1}, Lh/c0$a;->a()Lh/c0;

    move-result-object p1

    return-object p1
.end method
