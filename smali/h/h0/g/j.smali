###### Class h.h0.g.j (h.h0.g.j)
.class public final Lh/h0/g/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/u;


# instance fields
.field private final a:Lh/x;

.field private final b:Z

.field private volatile c:Lh/h0/f/g;

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lh/x;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/g/j;->a:Lh/x;

    iput-boolean p2, p0, Lh/h0/g/j;->b:Z

    return-void
.end method

.method private a(Lh/c0;I)I
    .registers 4

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lh/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    return p2

    :cond_9
    const-string p2, "\\d+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1a
    const p1, 0x7fffffff

    return p1
.end method

.method private a(Lh/c0;Lh/e0;)Lh/a0;
    .registers 9

    if-eqz p1, :cond_14a

    invoke-virtual {p1}, Lh/c0;->l()I

    move-result v0

    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object v1

    invoke-virtual {v1}, Lh/a0;->e()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_ae

    const/16 v2, 0x134

    if-eq v0, v2, :cond_ae

    const/16 v2, 0x191

    if-eq v0, v2, :cond_a3

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_83

    const/16 v2, 0x197

    if-eq v0, v2, :cond_5b

    const/16 p2, 0x198

    if-eq v0, p2, :cond_2d

    packed-switch v0, :pswitch_data_150

    return-object v4

    :cond_2d
    iget-object v0, p0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v0}, Lh/x;->x()Z

    move-result v0

    if-nez v0, :cond_36

    return-object v4

    :cond_36
    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object v0

    invoke-virtual {v0}, Lh/a0;->a()Lh/b0;

    invoke-virtual {p1}, Lh/c0;->r()Lh/c0;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lh/c0;->r()Lh/c0;

    move-result-object v0

    invoke-virtual {v0}, Lh/c0;->l()I

    move-result v0

    if-ne v0, p2, :cond_4e

    return-object v4

    :cond_4e
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lh/h0/g/j;->a(Lh/c0;I)I

    move-result p2

    if-lez p2, :cond_56

    return-object v4

    :cond_56
    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object p1

    return-object p1

    :cond_5b
    if-eqz p2, :cond_62

    invoke-virtual {p2}, Lh/e0;->b()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_68

    :cond_62
    iget-object v0, p0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v0}, Lh/x;->t()Ljava/net/Proxy;

    move-result-object v0

    :goto_68
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_7b

    iget-object v0, p0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v0}, Lh/x;->u()Lh/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lh/b;->a(Lh/e0;Lh/c0;)Lh/a0;

    move-result-object p1

    return-object p1

    :cond_7b
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_83
    invoke-virtual {p1}, Lh/c0;->r()Lh/c0;

    move-result-object p2

    if-eqz p2, :cond_94

    invoke-virtual {p1}, Lh/c0;->r()Lh/c0;

    move-result-object p2

    invoke-virtual {p2}, Lh/c0;->l()I

    move-result p2

    if-ne p2, v2, :cond_94

    return-object v4

    :cond_94
    const p2, 0x7fffffff

    invoke-direct {p0, p1, p2}, Lh/h0/g/j;->a(Lh/c0;I)I

    move-result p2

    if-nez p2, :cond_a2

    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object p1

    return-object p1

    :cond_a2
    return-object v4

    :cond_a3
    iget-object v0, p0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v0}, Lh/x;->a()Lh/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lh/b;->a(Lh/e0;Lh/c0;)Lh/a0;

    move-result-object p1

    return-object p1

    :cond_ae
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_bd

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_bd

    return-object v4

    :cond_bd
    :pswitch_bd
    iget-object p2, p0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {p2}, Lh/x;->l()Z

    move-result p2

    if-nez p2, :cond_c6

    return-object v4

    :cond_c6
    const-string p2, "Location"

    invoke-virtual {p1, p2}, Lh/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_cf

    return-object v4

    :cond_cf
    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object v0

    invoke-virtual {v0}, Lh/a0;->g()Lh/t;

    move-result-object v0

    invoke-virtual {v0, p2}, Lh/t;->b(Ljava/lang/String;)Lh/t;

    move-result-object p2

    if-nez p2, :cond_de

    return-object v4

    :cond_de
    invoke-virtual {p2}, Lh/t;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object v2

    invoke-virtual {v2}, Lh/a0;->g()Lh/t;

    move-result-object v2

    invoke-virtual {v2}, Lh/t;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v0}, Lh/x;->m()Z

    move-result v0

    if-nez v0, :cond_fd

    return-object v4

    :cond_fd
    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object v0

    invoke-virtual {v0}, Lh/a0;->f()Lh/a0$a;

    move-result-object v0

    invoke-static {v1}, Lh/h0/g/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_137

    invoke-static {v1}, Lh/h0/g/f;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1}, Lh/h0/g/f;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_119

    invoke-virtual {v0, v3, v4}, Lh/a0$a;->a(Ljava/lang/String;Lh/b0;)Lh/a0$a;

    goto :goto_126

    :cond_119
    if-eqz v2, :cond_123

    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object v3

    invoke-virtual {v3}, Lh/a0;->a()Lh/b0;

    move-result-object v4

    :cond_123
    invoke-virtual {v0, v1, v4}, Lh/a0$a;->a(Ljava/lang/String;Lh/b0;)Lh/a0$a;

    :goto_126
    if-nez v2, :cond_137

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lh/a0$a;->a(Ljava/lang/String;)Lh/a0$a;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lh/a0$a;->a(Ljava/lang/String;)Lh/a0$a;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lh/a0$a;->a(Ljava/lang/String;)Lh/a0$a;

    :cond_137
    invoke-direct {p0, p1, p2}, Lh/h0/g/j;->a(Lh/c0;Lh/t;)Z

    move-result p1

    if-nez p1, :cond_142

    const-string p1, "Authorization"

    invoke-virtual {v0, p1}, Lh/a0$a;->a(Ljava/lang/String;)Lh/a0$a;

    :cond_142
    invoke-virtual {v0, p2}, Lh/a0$a;->a(Lh/t;)Lh/a0$a;

    invoke-virtual {v0}, Lh/a0$a;->a()Lh/a0;

    move-result-object p1

    return-object p1

    :cond_14a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_150
    .packed-switch 0x12c
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
    .end packed-switch
.end method

.method private a(Lh/t;)Lh/a;
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lh/t;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v1}, Lh/x;->z()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v1, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v1}, Lh/x;->n()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v3, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v3}, Lh/x;->b()Lh/g;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_22

    :cond_1f
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    :goto_22
    new-instance v1, Lh/a;

    invoke-virtual/range {p1 .. p1}, Lh/t;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lh/t;->k()I

    move-result v6

    iget-object v2, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v2}, Lh/x;->h()Lh/o;

    move-result-object v7

    iget-object v2, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v2}, Lh/x;->y()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v2}, Lh/x;->u()Lh/b;

    move-result-object v12

    iget-object v2, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v2}, Lh/x;->t()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v2}, Lh/x;->s()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v2}, Lh/x;->e()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v2}, Lh/x;->v()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lh/a;-><init>(Ljava/lang/String;ILh/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lh/g;Lh/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private a(Lh/c0;Lh/t;)Z
    .registers 5

    invoke-virtual {p1}, Lh/c0;->t()Lh/a0;

    move-result-object p1

    invoke-virtual {p1}, Lh/a0;->g()Lh/t;

    move-result-object p1

    invoke-virtual {p1}, Lh/t;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lh/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lh/t;->k()I

    move-result v0

    invoke-virtual {p2}, Lh/t;->k()I

    move-result v1

    if-ne v0, v1, :cond_30

    invoke-virtual {p1}, Lh/t;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lh/t;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    return p1
.end method

.method private a(Ljava/io/IOException;Lh/h0/f/g;ZLh/a0;)Z
    .registers 7

    invoke-virtual {p2, p1}, Lh/h0/f/g;->a(Ljava/io/IOException;)V

    iget-object v0, p0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v0}, Lh/x;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    if-eqz p3, :cond_12

    invoke-virtual {p4}, Lh/a0;->a()Lh/b0;

    :cond_12
    invoke-direct {p0, p1, p3}, Lh/h0/g/j;->a(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_19

    return v1

    :cond_19
    invoke-virtual {p2}, Lh/h0/f/g;->d()Z

    move-result p1

    if-nez p1, :cond_20

    return v1

    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/io/IOException;Z)Z
    .registers 6

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    :cond_13
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_20

    return v1

    :cond_20
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_25

    return v1

    :cond_25
    return v2
.end method


# virtual methods
.method public a(Lh/u$a;)Lh/c0;
    .registers 16

    invoke-interface {p1}, Lh/u$a;->e()Lh/a0;

    move-result-object v0

    check-cast p1, Lh/h0/g/g;

    invoke-virtual {p1}, Lh/h0/g/g;->f()Lh/e;

    move-result-object v7

    invoke-virtual {p1}, Lh/h0/g/g;->g()Lh/p;

    move-result-object v8

    new-instance v9, Lh/h0/f/g;

    iget-object v1, p0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v1}, Lh/x;->d()Lh/j;

    move-result-object v2

    invoke-virtual {v0}, Lh/a0;->g()Lh/t;

    move-result-object v1

    invoke-direct {p0, v1}, Lh/h0/g/j;->a(Lh/t;)Lh/a;

    move-result-object v3

    iget-object v6, p0, Lh/h0/g/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lh/h0/f/g;-><init>(Lh/j;Lh/a;Lh/e;Lh/p;Ljava/lang/Object;)V

    iput-object v9, p0, Lh/h0/g/j;->c:Lh/h0/f/g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v11

    const/4 v2, 0x0

    :goto_2c
    iget-boolean v3, p0, Lh/h0/g/j;->e:Z

    if-nez v3, :cond_102

    :try_start_30
    invoke-virtual {p1, v0, v9, v11, v11}, Lh/h0/g/g;->a(Lh/a0;Lh/h0/f/g;Lh/h0/g/c;Lh/h0/f/c;)Lh/c0;

    move-result-object v0
    :try_end_34
    .catch Lh/h0/f/e; {:try_start_30 .. :try_end_34} :catch_e9
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_d8
    .catchall {:try_start_30 .. :try_end_34} :catchall_d6

    if-eqz v1, :cond_4c

    invoke-virtual {v0}, Lh/c0;->q()Lh/c0$a;

    move-result-object v0

    invoke-virtual {v1}, Lh/c0;->q()Lh/c0$a;

    move-result-object v1

    invoke-virtual {v1, v11}, Lh/c0$a;->a(Lh/d0;)Lh/c0$a;

    invoke-virtual {v1}, Lh/c0$a;->a()Lh/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/c0$a;->c(Lh/c0;)Lh/c0$a;

    invoke-virtual {v0}, Lh/c0$a;->a()Lh/c0;

    move-result-object v0

    :cond_4c
    invoke-virtual {v9}, Lh/h0/f/g;->g()Lh/e0;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lh/h0/g/j;->a(Lh/c0;Lh/e0;)Lh/a0;

    move-result-object v12

    if-nez v12, :cond_5e

    iget-boolean p1, p0, Lh/h0/g/j;->b:Z

    if-nez p1, :cond_5d

    invoke-virtual {v9}, Lh/h0/f/g;->f()V

    :cond_5d
    return-object v0

    :cond_5e
    invoke-virtual {v0}, Lh/c0;->j()Lh/d0;

    move-result-object v1

    invoke-static {v1}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_bc

    invoke-virtual {v12}, Lh/a0;->a()Lh/b0;

    invoke-virtual {v12}, Lh/a0;->g()Lh/t;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lh/h0/g/j;->a(Lh/c0;Lh/t;)Z

    move-result v1

    if-nez v1, :cond_96

    invoke-virtual {v9}, Lh/h0/f/g;->f()V

    new-instance v9, Lh/h0/f/g;

    iget-object v1, p0, Lh/h0/g/j;->a:Lh/x;

    invoke-virtual {v1}, Lh/x;->d()Lh/j;

    move-result-object v2

    invoke-virtual {v12}, Lh/a0;->g()Lh/t;

    move-result-object v1

    invoke-direct {p0, v1}, Lh/h0/g/j;->a(Lh/t;)Lh/a;

    move-result-object v3

    iget-object v6, p0, Lh/h0/g/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lh/h0/f/g;-><init>(Lh/j;Lh/a;Lh/e;Lh/p;Ljava/lang/Object;)V

    iput-object v9, p0, Lh/h0/g/j;->c:Lh/h0/f/g;

    goto :goto_9c

    :cond_96
    invoke-virtual {v9}, Lh/h0/f/g;->b()Lh/h0/g/c;

    move-result-object v1

    if-nez v1, :cond_a0

    :goto_9c
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_2c

    :cond_a0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bc
    invoke-virtual {v9}, Lh/h0/f/g;->f()V

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_d6
    move-exception p1

    goto :goto_fb

    :catch_d8
    move-exception v3

    :try_start_d9
    instance-of v4, v3, Lh/h0/i/a;

    if-nez v4, :cond_df

    const/4 v4, 0x1

    goto :goto_e0

    :cond_df
    const/4 v4, 0x0

    :goto_e0
    invoke-direct {p0, v3, v9, v4, v0}, Lh/h0/g/j;->a(Ljava/io/IOException;Lh/h0/f/g;ZLh/a0;)Z

    move-result v4

    if-eqz v4, :cond_e8

    goto/16 :goto_2c

    :cond_e8
    throw v3

    :catch_e9
    move-exception v3

    invoke-virtual {v3}, Lh/h0/f/e;->a()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v10, v0}, Lh/h0/g/j;->a(Ljava/io/IOException;Lh/h0/f/g;ZLh/a0;)Z

    move-result v4

    if-eqz v4, :cond_f6

    goto/16 :goto_2c

    :cond_f6
    invoke-virtual {v3}, Lh/h0/f/e;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_fb
    .catchall {:try_start_d9 .. :try_end_fb} :catchall_d6

    :goto_fb
    invoke-virtual {v9, v11}, Lh/h0/f/g;->a(Ljava/io/IOException;)V

    invoke-virtual {v9}, Lh/h0/f/g;->f()V

    throw p1

    :cond_102
    invoke-virtual {v9}, Lh/h0/f/g;->f()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_10e

    :goto_10d
    throw p1

    :goto_10e
    goto :goto_10d
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/h0/g/j;->e:Z

    iget-object v0, p0, Lh/h0/g/j;->c:Lh/h0/f/g;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lh/h0/f/g;->a()V

    :cond_a
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lh/h0/g/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lh/h0/g/j;->e:Z

    return v0
.end method
