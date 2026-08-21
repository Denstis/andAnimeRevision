###### Class h.h0.j.f (h.h0.j.f)
.class public Lh/h0/j/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lh/h0/j/f;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lh/h0/j/f;->b()Lh/h0/j/f;

    move-result-object v0

    sput-object v0, Lh/h0/j/f;->a:Lh/h0/j/f;

    const-class v0, Lh/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lh/h0/j/f;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/y;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_25

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh/y;

    sget-object v4, Lh/y;->c:Lh/y;

    if-ne v3, v4, :cond_1b

    goto :goto_22

    :cond_1b
    invoke-virtual {v3}, Lh/y;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_25
    return-object v0
.end method

.method private static b()Lh/h0/j/f;
    .registers 1

    invoke-static {}, Lh/h0/j/a;->b()Lh/h0/j/f;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-static {}, Lh/h0/j/f;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lh/h0/j/b;->b()Lh/h0/j/f;

    move-result-object v0

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    invoke-static {}, Lh/h0/j/c;->b()Lh/h0/j/c;

    move-result-object v0

    if-eqz v0, :cond_1b

    return-object v0

    :cond_1b
    invoke-static {}, Lh/h0/j/d;->b()Lh/h0/j/f;

    move-result-object v0

    if-eqz v0, :cond_22

    return-object v0

    :cond_22
    new-instance v0, Lh/h0/j/f;

    invoke-direct {v0}, Lh/h0/j/f;-><init>()V

    return-object v0
.end method

.method static b(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/y;",
            ">;)[B"
        }
    .end annotation

    new-instance v0, Li/c;

    invoke-direct {v0}, Li/c;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2c

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh/y;

    sget-object v4, Lh/y;->c:Lh/y;

    if-ne v3, v4, :cond_17

    goto :goto_29

    :cond_17
    invoke-virtual {v3}, Lh/y;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Li/c;->writeByte(I)Li/c;

    invoke-virtual {v3}, Lh/y;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Li/c;->a(Ljava/lang/String;)Li/c;

    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2c
    invoke-virtual {v0}, Li/c;->o()[B

    move-result-object p0

    return-object p0
.end method

.method public static c()Lh/h0/j/f;
    .registers 1

    sget-object v0, Lh/h0/j/f;->a:Lh/h0/j/f;

    return-object v0
.end method

.method public static d()Z
    .registers 2

    const-string v0, "okhttp.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "conscrypt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conscrypt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lh/h0/k/c;
    .registers 3

    new-instance v0, Lh/h0/k/a;

    invoke-virtual {p0, p1}, Lh/h0/j/f;->b(Ljavax/net/ssl/X509TrustManager;)Lh/h0/k/e;

    move-result-object p1

    invoke-direct {v0, p1}, Lh/h0/k/a;-><init>(Lh/h0/k/e;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lh/h0/j/f;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljavax/net/ssl/SSLContext;
    .registers 4

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_8

    :cond_6
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_8
    sget-object v0, Lh/h0/j/f;->b:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_13
    const/4 v0, 0x5

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, p2}, Lh/h0/j/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)V
    .registers 2

    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lh/y;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Lh/h0/k/e;
    .registers 3

    new-instance v0, Lh/h0/k/b;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-direct {v0, p1}, Lh/h0/k/b;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
