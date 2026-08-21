###### Class h.h0.j.a (h.h0.j.a)
.class Lh/h0/j/a;
.super Lh/h0/j/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/j/a$b;,
        Lh/h0/j/a$c;,
        Lh/h0/j/a$a;
    }
.end annotation


# instance fields
.field private final c:Lh/h0/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/h0/j/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lh/h0/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/h0/j/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lh/h0/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/h0/j/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lh/h0/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/h0/j/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lh/h0/j/a$c;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lh/h0/j/e;Lh/h0/j/e;Lh/h0/j/e;Lh/h0/j/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lh/h0/j/e<",
            "Ljava/net/Socket;",
            ">;",
            "Lh/h0/j/e<",
            "Ljava/net/Socket;",
            ">;",
            "Lh/h0/j/e<",
            "Ljava/net/Socket;",
            ">;",
            "Lh/h0/j/e<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lh/h0/j/f;-><init>()V

    invoke-static {}, Lh/h0/j/a$c;->a()Lh/h0/j/a$c;

    move-result-object p1

    iput-object p1, p0, Lh/h0/j/a;->g:Lh/h0/j/a$c;

    iput-object p2, p0, Lh/h0/j/a;->c:Lh/h0/j/e;

    iput-object p3, p0, Lh/h0/j/a;->d:Lh/h0/j/e;

    iput-object p4, p0, Lh/h0/j/a;->e:Lh/h0/j/e;

    iput-object p5, p0, Lh/h0/j/a;->f:Lh/h0/j/e;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_16

    return p1

    :catch_16
    invoke-super {p0, p1}, Lh/h0/j/f;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static b()Lh/h0/j/f;
    .registers 10

    const-class v0, [B

    const-string v1, "com.android.org.conscrypt.SSLParametersImpl"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_9} :catch_b

    :goto_9
    move-object v4, v1

    goto :goto_12

    :catch_b
    const-string v1, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    :try_start_d
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_9

    :goto_12
    new-instance v5, Lh/h0/j/e;

    const-string v1, "setUseSessionTickets"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-direct {v5, v2, v1, v6}, Lh/h0/j/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v6, Lh/h0/j/e;

    const-string v1, "setHostname"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v6, v2, v1, v7}, Lh/h0/j/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-static {}, Lh/h0/j/a;->e()Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Lh/h0/j/e;

    const-string v7, "getAlpnSelectedProtocol"

    new-array v9, v8, [Ljava/lang/Class;

    invoke-direct {v1, v0, v7, v9}, Lh/h0/j/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-instance v7, Lh/h0/j/e;

    const-string v9, "setAlpnProtocols"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v8

    invoke-direct {v7, v2, v9, v3}, Lh/h0/j/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v8, v7

    move-object v7, v1

    goto :goto_4d

    :cond_4b
    move-object v7, v2

    move-object v8, v7

    :goto_4d
    new-instance v0, Lh/h0/j/a;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lh/h0/j/a;-><init>(Ljava/lang/Class;Lh/h0/j/e;Lh/h0/j/e;Lh/h0/j/e;Lh/h0/j/e;)V
    :try_end_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_53} :catch_54

    return-object v0

    :catch_54
    return-object v2
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    :try_start_0
    const-string v0, "isCleartextTrafficPermitted"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d

    return p1

    :catch_1d
    invoke-direct {p0, p1, p2, p3}, Lh/h0/j/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static e()Z
    .registers 2

    const-string v0, "GMSCore_OpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "android.net.Network"

    :try_start_c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_f} :catch_10

    return v1

    :catch_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lh/h0/k/c;
    .registers 9

    const-string v0, "android.net.http.X509TrustManagerExtensions"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkServerTrusted"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    const/4 v1, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Lh/h0/j/a$a;

    invoke-direct {v1, v2, v0}, Lh/h0/j/a$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    return-object v1

    :catch_36
    invoke-super {p0, p1}, Lh/h0/j/f;->a(Ljavax/net/ssl/X509TrustManager;)Lh/h0/k/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lh/h0/j/a;->g:Lh/h0/j/a$c;

    invoke-virtual {v0, p1}, Lh/h0/j/a$c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    :goto_5
    const/16 p1, 0xa

    if-eqz p3, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1f
    const/4 p3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_24
    if-ge p3, v1, :cond_45

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    add-int/lit16 v3, p3, 0xfa0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v4, "OkHttp"

    invoke-static {v0, v4, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_43

    add-int/lit8 p3, v3, 0x1

    goto :goto_24

    :cond_43
    move p3, v3

    goto :goto_2f

    :cond_45
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lh/h0/j/a;->g:Lh/h0/j/a$c;

    invoke-virtual {v0, p2}, Lh/h0/j/a$c;->a(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lh/h0/j/a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 5

    const-string v0, "Exception in connect"

    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_17
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ne p2, p3, :cond_16

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_16
    throw p1

    :catch_17
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_21
    move-exception p1

    invoke-static {p1}, Lh/h0/c;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2e

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2e
    throw p1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1a

    iget-object v2, p0, Lh/h0/j/a;->c:Lh/h0/j/e;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lh/h0/j/e;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lh/h0/j/a;->d:Lh/h0/j/e;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lh/h0/j/e;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object p2, p0, Lh/h0/j/a;->f:Lh/h0/j/e;

    if-eqz p2, :cond_31

    invoke-virtual {p2, p1}, Lh/h0/j/e;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Lh/h0/j/f;->b(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    iget-object p3, p0, Lh/h0/j/a;->f:Lh/h0/j/e;

    invoke-virtual {p3, p1, p2}, Lh/h0/j/e;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Lh/h0/k/e;
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v1, Lh/h0/j/a$b;

    invoke-direct {v1, p1, v0}, Lh/h0/j/a$b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    invoke-super {p0, p1}, Lh/h0/j/f;->b(Ljavax/net/ssl/X509TrustManager;)Lh/h0/k/e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lh/h0/j/a;->e:Lh/h0/j/e;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0, p1}, Lh/h0/j/e;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    iget-object v0, p0, Lh/h0/j/a;->e:Lh/h0/j/e;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lh/h0/j/e;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_21

    new-instance v1, Ljava/lang/String;

    sget-object v0, Lh/h0/c;->i:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_21
    return-object v1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "android.security.NetworkSecurityPolicy"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lh/h0/j/a;->b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_1a} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1a} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1a} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1a} :catch_1b

    return p1

    :catch_1b
    move-exception p1

    goto :goto_20

    :catch_1d
    move-exception p1

    goto :goto_20

    :catch_1f
    move-exception p1

    :goto_20
    const-string v0, "unable to determine cleartext support"

    invoke-static {v0, p1}, Lh/h0/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :catch_27
    invoke-super {p0, p1}, Lh/h0/j/f;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class h.h0.j.a.C0189a (h.h0.j.a$a)
.class final Lh/h0/j/a$a;
.super Lh/h0/k/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Lh/h0/k/c;-><init>()V

    iput-object p1, p0, Lh/h0/j/a$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lh/h0/j/a$a;->b:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Lh/h0/j/a$a;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lh/h0/j/a$a;->a:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    const-string v3, "RSA"

    aput-object v3, v2, p1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_24} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_24} :catch_25

    return-object p1

    :catch_25
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_2c
    move-exception p1

    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lh/h0/j/a$a;

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class h.h0.j.a.b (h.h0.j.a$b)
.class final Lh/h0/j/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/h0/k/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljavax/net/ssl/X509TrustManager;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/h0/j/a$b;->b:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lh/h0/j/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lh/h0/j/a$b;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lh/h0/j/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/TrustAnchor;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_17} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-object v0

    :catch_18
    move-exception p1

    const-string v0, "unable to get issues and signature"

    invoke-static {v0, p1}, Lh/h0/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lh/h0/j/a$b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lh/h0/j/a$b;

    iget-object v1, p0, Lh/h0/j/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    iget-object v3, p1, Lh/h0/j/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lh/h0/j/a$b;->b:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lh/h0/j/a$b;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lh/h0/j/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lh/h0/j/a$b;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

###### Class h.h0.j.a.c (h.h0.j.a$c)
.class final Lh/h0/j/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/j/a$c;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lh/h0/j/a$c;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lh/h0/j/a$c;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method static a()Lh/h0/j/a$c;
    .registers 7

    const-string v0, "dalvik.system.CloseGuard"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "open"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "warnIfOpen"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_28

    move-object v0, v1

    move-object v1, v2

    goto :goto_2a

    :catch_28
    move-object v0, v1

    move-object v4, v0

    :goto_2a
    new-instance v2, Lh/h0/j/a$c;

    invoke-direct {v2, v1, v4, v0}, Lh/h0/j/a$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v2
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lh/h0/j/a$c;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v2, 0x0

    :try_start_6
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lh/h0/j/a$c;->b:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    :cond_17
    return-object v1
.end method

.method a(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    :try_start_3
    iget-object v1, p0, Lh/h0/j/a$c;->c:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    const/4 v0, 0x1

    :catch_b
    :cond_b
    return v0
.end method
