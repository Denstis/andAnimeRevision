###### Class h.h0.f.b (h.h0.f.b)
.class public final Lh/h0/f/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh/h0/f/b;->b:I

    iput-object p1, p0, Lh/h0/f/b;->a:Ljava/util/List;

    return-void
.end method

.method private b(Ljavax/net/ssl/SSLSocket;)Z
    .registers 4

    iget v0, p0, Lh/h0/f/b;->b:I

    :goto_2
    iget-object v1, p0, Lh/h0/f/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lh/h0/f/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/k;

    invoke-virtual {v1, p1}, Lh/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Lh/k;
    .registers 6

    iget v0, p0, Lh/h0/f/b;->b:I

    iget-object v1, p0, Lh/h0/f/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_8
    if-ge v0, v1, :cond_1d

    iget-object v2, p0, Lh/h0/f/b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/k;

    invoke-virtual {v2, p1}, Lh/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    add-int/lit8 v0, v0, 0x1

    if-eqz v3, :cond_8

    iput v0, p0, Lh/h0/f/b;->b:I

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-eqz v2, :cond_2e

    invoke-direct {p0, p1}, Lh/h0/f/b;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    iput-boolean v0, p0, Lh/h0/f/b;->c:Z

    sget-object v0, Lh/h0/a;->a:Lh/h0/a;

    iget-boolean v1, p0, Lh/h0/f/b;->d:Z

    invoke-virtual {v0, v2, p1, v1}, Lh/h0/a;->a(Lh/k;Ljavax/net/ssl/SSLSocket;Z)V

    return-object v2

    :cond_2e
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lh/h0/f/b;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh/h0/f/b;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", supported protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    goto :goto_62

    :goto_61
    throw v0

    :goto_62
    goto :goto_61
.end method

.method public a(Ljava/io/IOException;)Z
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/h0/f/b;->d:Z

    iget-boolean v1, p0, Lh/h0/f/b;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return v2

    :cond_9
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_e

    return v2

    :cond_e
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_13

    return v2

    :cond_13
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_20

    return v2

    :cond_20
    instance-of v3, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v3, :cond_25

    return v2

    :cond_25
    if-nez v1, :cond_2d

    instance-of p1, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :cond_2d
    :goto_2d
    return v0
.end method
