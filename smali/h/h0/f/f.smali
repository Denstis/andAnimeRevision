###### Class h.h0.f.f (h.h0.f.f)
.class public final Lh/h0/f/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/f/f$a;
    }
.end annotation


# instance fields
.field private final a:Lh/a;

.field private final b:Lh/h0/f/d;

.field private final c:Lh/e;

.field private final d:Lh/p;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/a;Lh/h0/f/d;Lh/e;Lh/p;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lh/h0/f/f;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lh/h0/f/f;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/h0/f/f;->h:Ljava/util/List;

    iput-object p1, p0, Lh/h0/f/f;->a:Lh/a;

    iput-object p2, p0, Lh/h0/f/f;->b:Lh/h0/f/d;

    iput-object p3, p0, Lh/h0/f/f;->c:Lh/e;

    iput-object p4, p0, Lh/h0/f/f;->d:Lh/p;

    invoke-virtual {p1}, Lh/a;->k()Lh/t;

    move-result-object p2

    invoke-virtual {p1}, Lh/a;->f()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lh/h0/f/f;->a(Lh/t;Ljava/net/Proxy;)V

    return-void
.end method

.method static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lh/t;Ljava/net/Proxy;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_7
    iput-object p1, p0, Lh/h0/f/f;->e:Ljava/util/List;

    goto :goto_31

    :cond_a
    iget-object p2, p0, Lh/h0/f/f;->a:Lh/a;

    invoke-virtual {p2}, Lh/a;->h()Ljava/net/ProxySelector;

    move-result-object p2

    invoke-virtual {p1}, Lh/t;->o()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_25

    invoke-static {p1}, Lh/h0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_7

    :cond_25
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v0

    invoke-static {p1}, Lh/h0/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_7

    :goto_31
    iput v0, p0, Lh/h0/f/f;->f:I

    return-void
.end method

.method private a(Ljava/net/Proxy;)V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/h0/f/f;->g:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_46

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_18

    goto :goto_46

    :cond_18
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2b

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lh/h0/f/f;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_5a

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    :goto_46
    iget-object v0, p0, Lh/h0/f/f;->a:Lh/a;

    invoke-virtual {v0}, Lh/a;->k()Lh/t;

    move-result-object v0

    invoke-virtual {v0}, Lh/t;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lh/h0/f/f;->a:Lh/a;

    invoke-virtual {v0}, Lh/a;->k()Lh/t;

    move-result-object v0

    invoke-virtual {v0}, Lh/t;->k()I

    move-result v0

    :goto_5a
    const/4 v2, 0x1

    if-lt v0, v2, :cond_cd

    const v2, 0xffff

    if-gt v0, v2, :cond_cd

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne p1, v2, :cond_74

    iget-object p1, p0, Lh/h0/f/f;->g:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    :cond_74
    iget-object p1, p0, Lh/h0/f/f;->d:Lh/p;

    iget-object v2, p0, Lh/h0/f/f;->c:Lh/e;

    invoke-virtual {p1, v2, v1}, Lh/p;->a(Lh/e;Ljava/lang/String;)V

    iget-object p1, p0, Lh/h0/f/f;->a:Lh/a;

    invoke-virtual {p1}, Lh/a;->c()Lh/o;

    move-result-object p1

    invoke-interface {p1, v1}, Lh/o;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lh/h0/f/f;->d:Lh/p;

    iget-object v3, p0, Lh/h0/f/f;->c:Lh/e;

    invoke-virtual {v2, v3, v1, p1}, Lh/p;->a(Lh/e;Ljava/lang/String;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_97
    if-ge v1, v2, :cond_ac

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    iget-object v4, p0, Lh/h0/f/f;->g:Ljava/util/List;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    :cond_ac
    :goto_ac
    return-void

    :cond_ad
    new-instance p1, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lh/h0/f/f;->a:Lh/a;

    invoke-virtual {v2}, Lh/a;->c()Lh/o;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cd
    new-instance p1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_f2

    :goto_f1
    throw p1

    :goto_f2
    goto :goto_f1
.end method

.method private c()Z
    .registers 3

    iget v0, p0, Lh/h0/f/f;->f:I

    iget-object v1, p0, Lh/h0/f/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private d()Ljava/net/Proxy;
    .registers 4

    invoke-direct {p0}, Lh/h0/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lh/h0/f/f;->e:Ljava/util/List;

    iget v1, p0, Lh/h0/f/f;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lh/h0/f/f;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lh/h0/f/f;->a(Ljava/net/Proxy;)V

    return-object v0

    :cond_18
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh/h0/f/f;->a:Lh/a;

    invoke-virtual {v2}, Lh/a;->k()Lh/t;

    move-result-object v2

    invoke-virtual {v2}, Lh/t;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh/h0/f/f;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lh/e0;Ljava/io/IOException;)V
    .registers 6

    invoke-virtual {p1}, Lh/e0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lh/h0/f/f;->a:Lh/a;

    invoke-virtual {v0}, Lh/a;->h()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lh/h0/f/f;->a:Lh/a;

    invoke-virtual {v0}, Lh/a;->h()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lh/h0/f/f;->a:Lh/a;

    invoke-virtual {v1}, Lh/a;->k()Lh/t;

    move-result-object v1

    invoke-virtual {v1}, Lh/t;->o()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lh/e0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_2f
    iget-object p2, p0, Lh/h0/f/f;->b:Lh/h0/f/d;

    invoke-virtual {p2, p1}, Lh/h0/f/d;->b(Lh/e0;)V

    return-void
.end method

.method public a()Z
    .registers 2

    invoke-direct {p0}, Lh/h0/f/f;->c()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lh/h0/f/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public b()Lh/h0/f/f$a;
    .registers 8

    invoke-virtual {p0}, Lh/h0/f/f;->a()Z

    move-result v0

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    invoke-direct {p0}, Lh/h0/f/f;->c()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-direct {p0}, Lh/h0/f/f;->d()Ljava/net/Proxy;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lh/h0/f/f;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1c
    if-ge v2, v3, :cond_41

    new-instance v4, Lh/e0;

    iget-object v5, p0, Lh/h0/f/f;->a:Lh/a;

    iget-object v6, p0, Lh/h0/f/f;->g:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v5, v1, v6}, Lh/e0;-><init>(Lh/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v5, p0, Lh/h0/f/f;->b:Lh/h0/f/d;

    invoke-virtual {v5, v4}, Lh/h0/f/d;->c(Lh/e0;)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, p0, Lh/h0/f/f;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_3b
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lh/h0/f/f;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lh/h0/f/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_57
    new-instance v1, Lh/h0/f/f$a;

    invoke-direct {v1, v0}, Lh/h0/f/f$a;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_5d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

###### Class h.h0.f.f.a (h.h0.f.f$a)
.class public final Lh/h0/f/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/e0;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/e0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh/h0/f/f$a;->b:I

    iput-object p1, p0, Lh/h0/f/f$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/e0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lh/h0/f/f$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public b()Z
    .registers 3

    iget v0, p0, Lh/h0/f/f$a;->b:I

    iget-object v1, p0, Lh/h0/f/f$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public c()Lh/e0;
    .registers 4

    invoke-virtual {p0}, Lh/h0/f/f$a;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lh/h0/f/f$a;->a:Ljava/util/List;

    iget v1, p0, Lh/h0/f/f$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lh/h0/f/f$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/e0;

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
