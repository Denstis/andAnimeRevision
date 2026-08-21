###### Class h.a (h.a)
.class public final Lh/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Lh/t;

.field final b:Lh/o;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lh/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/y;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/k;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:Lh/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILh/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lh/g;Lh/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lh/o;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lh/g;",
            "Lh/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lh/y;",
            ">;",
            "Ljava/util/List<",
            "Lh/k;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/t$a;

    invoke-direct {v0}, Lh/t$a;-><init>()V

    if-eqz p5, :cond_d

    const-string v1, "https"

    goto :goto_f

    :cond_d
    const-string v1, "http"

    :goto_f
    invoke-virtual {v0, v1}, Lh/t$a;->d(Ljava/lang/String;)Lh/t$a;

    invoke-virtual {v0, p1}, Lh/t$a;->b(Ljava/lang/String;)Lh/t$a;

    invoke-virtual {v0, p2}, Lh/t$a;->a(I)Lh/t$a;

    invoke-virtual {v0}, Lh/t$a;->a()Lh/t;

    move-result-object p1

    iput-object p1, p0, Lh/a;->a:Lh/t;

    if-eqz p3, :cond_6f

    iput-object p3, p0, Lh/a;->b:Lh/o;

    if-eqz p4, :cond_67

    iput-object p4, p0, Lh/a;->c:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_5f

    iput-object p8, p0, Lh/a;->d:Lh/b;

    if-eqz p10, :cond_57

    invoke-static {p10}, Lh/h0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh/a;->e:Ljava/util/List;

    if-eqz p11, :cond_4f

    invoke-static {p11}, Lh/h0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh/a;->f:Ljava/util/List;

    if-eqz p12, :cond_47

    iput-object p12, p0, Lh/a;->g:Ljava/net/ProxySelector;

    iput-object p9, p0, Lh/a;->h:Ljava/net/Proxy;

    iput-object p5, p0, Lh/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lh/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lh/a;->k:Lh/g;

    return-void

    :cond_47
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_57
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_67
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lh/g;
    .registers 2

    iget-object v0, p0, Lh/a;->k:Lh/g;

    return-object v0
.end method

.method a(Lh/a;)Z
    .registers 4

    iget-object v0, p0, Lh/a;->b:Lh/o;

    iget-object v1, p1, Lh/a;->b:Lh/o;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lh/a;->d:Lh/b;

    iget-object v1, p1, Lh/a;->d:Lh/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lh/a;->e:Ljava/util/List;

    iget-object v1, p1, Lh/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lh/a;->f:Ljava/util/List;

    iget-object v1, p1, Lh/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lh/a;->g:Ljava/net/ProxySelector;

    iget-object v1, p1, Lh/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lh/a;->h:Ljava/net/Proxy;

    iget-object v1, p1, Lh/a;->h:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lh/h0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lh/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lh/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lh/h0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lh/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lh/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lh/h0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lh/a;->k:Lh/g;

    iget-object v1, p1, Lh/a;->k:Lh/g;

    invoke-static {v0, v1}, Lh/h0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lh/a;->k()Lh/t;

    move-result-object v0

    invoke-virtual {v0}, Lh/t;->k()I

    move-result v0

    invoke-virtual {p1}, Lh/a;->k()Lh/t;

    move-result-object p1

    invoke-virtual {p1}, Lh/t;->k()I

    move-result p1

    if-ne v0, p1, :cond_6e

    const/4 p1, 0x1

    goto :goto_6f

    :cond_6e
    const/4 p1, 0x0

    :goto_6f
    return p1
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public c()Lh/o;
    .registers 2

    iget-object v0, p0, Lh/a;->b:Lh/o;

    return-object v0
.end method

.method public d()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lh/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lh/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lh/a;->a:Lh/t;

    check-cast p1, Lh/a;

    iget-object v1, p1, Lh/a;->a:Lh/t;

    invoke-virtual {v0, v1}, Lh/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lh/a;->a(Lh/a;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public f()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lh/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public g()Lh/b;
    .registers 2

    iget-object v0, p0, Lh/a;->d:Lh/b;

    return-object v0
.end method

.method public h()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lh/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lh/a;->a:Lh/t;

    invoke-virtual {v0}, Lh/t;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/a;->b:Lh/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/a;->d:Lh/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lh/a;->k:Lh/g;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lh/g;->hashCode()I

    move-result v2

    :cond_68
    add-int/2addr v1, v2

    return v1
.end method

.method public i()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lh/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lh/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Lh/t;
    .registers 2

    iget-object v0, p0, Lh/a;->a:Lh/t;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/a;->a:Lh/t;

    invoke-virtual {v1}, Lh/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/a;->a:Lh/t;

    invoke-virtual {v1}, Lh/t;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/a;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_2d

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/a;->h:Ljava/net/Proxy;

    goto :goto_34

    :cond_2d
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/a;->g:Ljava/net/ProxySelector;

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
