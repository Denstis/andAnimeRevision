###### Class h.h0.e.a (h.h0.e.a)
.class public final Lh/h0/e/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/u;


# instance fields
.field final a:Lh/h0/e/d;


# direct methods
.method public constructor <init>(Lh/h0/e/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/e/a;->a:Lh/h0/e/d;

    return-void
.end method

.method private static a(Lh/c0;)Lh/c0;
    .registers 2

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lh/c0;->j()Lh/d0;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lh/c0;->q()Lh/c0$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh/c0$a;->a(Lh/d0;)Lh/c0$a;

    invoke-virtual {p0}, Lh/c0$a;->a()Lh/c0;

    move-result-object p0

    :cond_14
    return-object p0
.end method

.method private a(Lh/h0/e/b;Lh/c0;)Lh/c0;
    .registers 7

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    invoke-interface {p1}, Lh/h0/e/b;->b()Li/r;

    move-result-object v0

    if-nez v0, :cond_a

    return-object p2

    :cond_a
    invoke-virtual {p2}, Lh/c0;->j()Lh/d0;

    move-result-object v1

    invoke-virtual {v1}, Lh/d0;->m()Li/e;

    move-result-object v1

    invoke-static {v0}, Li/l;->a(Li/r;)Li/d;

    move-result-object v0

    new-instance v2, Lh/h0/e/a$a;

    invoke-direct {v2, p0, v1, p1, v0}, Lh/h0/e/a$a;-><init>(Lh/h0/e/a;Li/e;Lh/h0/e/b;Li/d;)V

    const-string p1, "Content-Type"

    invoke-virtual {p2, p1}, Lh/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lh/c0;->j()Lh/d0;

    move-result-object v0

    invoke-virtual {v0}, Lh/d0;->k()J

    move-result-wide v0

    invoke-virtual {p2}, Lh/c0;->q()Lh/c0$a;

    move-result-object p2

    new-instance v3, Lh/h0/g/h;

    invoke-static {v2}, Li/l;->a(Li/s;)Li/e;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lh/h0/g/h;-><init>(Ljava/lang/String;JLi/e;)V

    invoke-virtual {p2, v3}, Lh/c0$a;->a(Lh/d0;)Lh/c0$a;

    invoke-virtual {p2}, Lh/c0$a;->a()Lh/c0;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lh/s;Lh/s;)Lh/s;
    .registers 9

    new-instance v0, Lh/s$a;

    invoke-direct {v0}, Lh/s$a;-><init>()V

    invoke-virtual {p0}, Lh/s;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_40

    invoke-virtual {p0, v3}, Lh/s;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lh/s;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_3d

    :cond_26
    invoke-static {v4}, Lh/h0/e/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_38

    invoke-static {v4}, Lh/h0/e/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-virtual {p1, v4}, Lh/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3d

    :cond_38
    sget-object v6, Lh/h0/a;->a:Lh/h0/a;

    invoke-virtual {v6, v0, v4, v5}, Lh/h0/a;->a(Lh/s$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_40
    invoke-virtual {p1}, Lh/s;->b()I

    move-result p0

    :goto_44
    if-ge v2, p0, :cond_62

    invoke-virtual {p1, v2}, Lh/s;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh/h0/e/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-static {v1}, Lh/h0/e/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    sget-object v3, Lh/h0/a;->a:Lh/h0/a;

    invoke-virtual {p1, v2}, Lh/s;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lh/h0/a;->a(Lh/s$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_62
    invoke-virtual {v0}, Lh/s$a;->a()Lh/s;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method static b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method


# virtual methods
.method public a(Lh/u$a;)Lh/c0;
    .registers 7

    iget-object v0, p0, Lh/h0/e/a;->a:Lh/h0/e/d;

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lh/u$a;->e()Lh/a0;

    move-result-object v1

    invoke-interface {v0, v1}, Lh/h0/e/d;->b(Lh/a0;)Lh/c0;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lh/h0/e/c$a;

    invoke-interface {p1}, Lh/u$a;->e()Lh/a0;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lh/h0/e/c$a;-><init>(JLh/a0;Lh/c0;)V

    invoke-virtual {v3}, Lh/h0/e/c$a;->a()Lh/h0/e/c;

    move-result-object v1

    iget-object v2, v1, Lh/h0/e/c;->a:Lh/a0;

    iget-object v3, v1, Lh/h0/e/c;->b:Lh/c0;

    iget-object v4, p0, Lh/h0/e/a;->a:Lh/h0/e/d;

    if-eqz v4, :cond_2a

    invoke-interface {v4, v1}, Lh/h0/e/d;->a(Lh/h0/e/c;)V

    :cond_2a
    if-eqz v0, :cond_35

    if-nez v3, :cond_35

    invoke-virtual {v0}, Lh/c0;->j()Lh/d0;

    move-result-object v1

    invoke-static {v1}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    :cond_35
    if-nez v2, :cond_6a

    if-nez v3, :cond_6a

    new-instance v0, Lh/c0$a;

    invoke-direct {v0}, Lh/c0$a;-><init>()V

    invoke-interface {p1}, Lh/u$a;->e()Lh/a0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh/c0$a;->a(Lh/a0;)Lh/c0$a;

    sget-object p1, Lh/y;->d:Lh/y;

    invoke-virtual {v0, p1}, Lh/c0$a;->a(Lh/y;)Lh/c0$a;

    const/16 p1, 0x1f8

    invoke-virtual {v0, p1}, Lh/c0$a;->a(I)Lh/c0$a;

    const-string p1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, p1}, Lh/c0$a;->a(Ljava/lang/String;)Lh/c0$a;

    sget-object p1, Lh/h0/c;->c:Lh/d0;

    invoke-virtual {v0, p1}, Lh/c0$a;->a(Lh/d0;)Lh/c0$a;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lh/c0$a;->b(J)Lh/c0$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh/c0$a;->a(J)Lh/c0$a;

    invoke-virtual {v0}, Lh/c0$a;->a()Lh/c0;

    move-result-object p1

    return-object p1

    :cond_6a
    if-nez v2, :cond_7c

    invoke-virtual {v3}, Lh/c0;->q()Lh/c0$a;

    move-result-object p1

    invoke-static {v3}, Lh/h0/e/a;->a(Lh/c0;)Lh/c0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh/c0$a;->a(Lh/c0;)Lh/c0$a;

    invoke-virtual {p1}, Lh/c0$a;->a()Lh/c0;

    move-result-object p1

    return-object p1

    :cond_7c
    :try_start_7c
    invoke-interface {p1, v2}, Lh/u$a;->a(Lh/a0;)Lh/c0;

    move-result-object p1
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_122

    if-nez p1, :cond_8b

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Lh/c0;->j()Lh/d0;

    move-result-object v0

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    :cond_8b
    if-eqz v3, :cond_e1

    invoke-virtual {p1}, Lh/c0;->l()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_da

    invoke-virtual {v3}, Lh/c0;->q()Lh/c0$a;

    move-result-object v0

    invoke-virtual {v3}, Lh/c0;->n()Lh/s;

    move-result-object v1

    invoke-virtual {p1}, Lh/c0;->n()Lh/s;

    move-result-object v2

    invoke-static {v1, v2}, Lh/h0/e/a;->a(Lh/s;Lh/s;)Lh/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/c0$a;->a(Lh/s;)Lh/c0$a;

    invoke-virtual {p1}, Lh/c0;->u()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh/c0$a;->b(J)Lh/c0$a;

    invoke-virtual {p1}, Lh/c0;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh/c0$a;->a(J)Lh/c0$a;

    invoke-static {v3}, Lh/h0/e/a;->a(Lh/c0;)Lh/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/c0$a;->a(Lh/c0;)Lh/c0$a;

    invoke-static {p1}, Lh/h0/e/a;->a(Lh/c0;)Lh/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/c0$a;->b(Lh/c0;)Lh/c0$a;

    invoke-virtual {v0}, Lh/c0$a;->a()Lh/c0;

    move-result-object v0

    invoke-virtual {p1}, Lh/c0;->j()Lh/d0;

    move-result-object p1

    invoke-virtual {p1}, Lh/d0;->close()V

    iget-object p1, p0, Lh/h0/e/a;->a:Lh/h0/e/d;

    invoke-interface {p1}, Lh/h0/e/d;->a()V

    iget-object p1, p0, Lh/h0/e/a;->a:Lh/h0/e/d;

    invoke-interface {p1, v3, v0}, Lh/h0/e/d;->a(Lh/c0;Lh/c0;)V

    return-object v0

    :cond_da
    invoke-virtual {v3}, Lh/c0;->j()Lh/d0;

    move-result-object v0

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    :cond_e1
    invoke-virtual {p1}, Lh/c0;->q()Lh/c0$a;

    move-result-object v0

    invoke-static {v3}, Lh/h0/e/a;->a(Lh/c0;)Lh/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/c0$a;->a(Lh/c0;)Lh/c0$a;

    invoke-static {p1}, Lh/h0/e/a;->a(Lh/c0;)Lh/c0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh/c0$a;->b(Lh/c0;)Lh/c0$a;

    invoke-virtual {v0}, Lh/c0$a;->a()Lh/c0;

    move-result-object p1

    iget-object v0, p0, Lh/h0/e/a;->a:Lh/h0/e/d;

    if-eqz v0, :cond_121

    invoke-static {p1}, Lh/h0/g/e;->b(Lh/c0;)Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-static {p1, v2}, Lh/h0/e/c;->a(Lh/c0;Lh/a0;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lh/h0/e/a;->a:Lh/h0/e/d;

    invoke-interface {v0, p1}, Lh/h0/e/d;->a(Lh/c0;)Lh/h0/e/b;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lh/h0/e/a;->a(Lh/h0/e/b;Lh/c0;)Lh/c0;

    move-result-object p1

    return-object p1

    :cond_112
    invoke-virtual {v2}, Lh/a0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh/h0/g/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    :try_start_11c
    iget-object v0, p0, Lh/h0/e/a;->a:Lh/h0/e/d;

    invoke-interface {v0, v2}, Lh/h0/e/d;->a(Lh/a0;)V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_121} :catch_121

    :catch_121
    :cond_121
    return-object p1

    :catchall_122
    move-exception p1

    if-eqz v0, :cond_12c

    invoke-virtual {v0}, Lh/c0;->j()Lh/d0;

    move-result-object v0

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    :cond_12c
    throw p1
.end method

###### Class h.h0.e.a.C0186a (h.h0.e.a$a)
.class Lh/h0/e/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/e/a;->a(Lh/h0/e/b;Lh/c0;)Lh/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field b:Z

.field final synthetic c:Li/e;

.field final synthetic d:Lh/h0/e/b;

.field final synthetic e:Li/d;


# direct methods
.method constructor <init>(Lh/h0/e/a;Li/e;Lh/h0/e/b;Li/d;)V
    .registers 5

    iput-object p2, p0, Lh/h0/e/a$a;->c:Li/e;

    iput-object p3, p0, Lh/h0/e/a$a;->d:Lh/h0/e/b;

    iput-object p4, p0, Lh/h0/e/a$a;->e:Li/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 12

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lh/h0/e/a$a;->c:Li/e;

    invoke-interface {v1, p1, p2, p3}, Li/s;->a(Li/c;J)J

    move-result-wide p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_30

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_19

    iget-boolean p1, p0, Lh/h0/e/a$a;->b:Z

    if-nez p1, :cond_18

    iput-boolean v0, p0, Lh/h0/e/a$a;->b:Z

    iget-object p1, p0, Lh/h0/e/a$a;->e:Li/d;

    invoke-interface {p1}, Li/r;->close()V

    :cond_18
    return-wide v1

    :cond_19
    iget-object v0, p0, Lh/h0/e/a$a;->e:Li/d;

    invoke-interface {v0}, Li/d;->a()Li/c;

    move-result-object v3

    invoke-virtual {p1}, Li/c;->s()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Li/c;->a(Li/c;JJ)Li/c;

    iget-object p1, p0, Lh/h0/e/a$a;->e:Li/d;

    invoke-interface {p1}, Li/d;->i()Li/d;

    return-wide p2

    :catch_30
    move-exception p1

    iget-boolean p2, p0, Lh/h0/e/a$a;->b:Z

    if-nez p2, :cond_3c

    iput-boolean v0, p0, Lh/h0/e/a$a;->b:Z

    iget-object p2, p0, Lh/h0/e/a$a;->d:Lh/h0/e/b;

    invoke-interface {p2}, Lh/h0/e/b;->a()V

    :cond_3c
    throw p1
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Lh/h0/e/a$a;->c:Li/e;

    invoke-interface {v0}, Li/s;->b()Li/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    iget-boolean v0, p0, Lh/h0/e/a$a;->b:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lh/h0/c;->a(Li/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/h0/e/a$a;->b:Z

    iget-object v0, p0, Lh/h0/e/a$a;->d:Lh/h0/e/b;

    invoke-interface {v0}, Lh/h0/e/b;->a()V

    :cond_16
    iget-object v0, p0, Lh/h0/e/a$a;->c:Li/e;

    invoke-interface {v0}, Li/s;->close()V

    return-void
.end method
