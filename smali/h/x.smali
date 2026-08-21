###### Class h.x (h.x)
.class public Lh/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lh/e$a;
.implements Lh/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/x$b;
    }
.end annotation


# static fields
.field static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/y;",
            ">;"
        }
    .end annotation
.end field

.field static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field final b:Lh/n;

.field final c:Ljava/net/Proxy;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/y;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/k;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/u;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/u;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lh/p$c;

.field final i:Ljava/net/ProxySelector;

.field final j:Lh/m;

.field final k:Lh/c;

.field final l:Lh/h0/e/d;

.field final m:Ljavax/net/SocketFactory;

.field final n:Ljavax/net/ssl/SSLSocketFactory;

.field final o:Lh/h0/k/c;

.field final p:Ljavax/net/ssl/HostnameVerifier;

.field final q:Lh/g;

.field final r:Lh/b;

.field final s:Lh/b;

.field final t:Lh/j;

.field final u:Lh/o;

.field final v:Z

.field final w:Z

.field final x:Z

.field final y:I

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Lh/y;

    sget-object v2, Lh/y;->f:Lh/y;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lh/y;->d:Lh/y;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lh/h0/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lh/x;->C:Ljava/util/List;

    new-array v0, v0, [Lh/k;

    sget-object v1, Lh/k;->f:Lh/k;

    aput-object v1, v0, v3

    sget-object v1, Lh/k;->h:Lh/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Lh/h0/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lh/x;->D:Ljava/util/List;

    new-instance v0, Lh/x$a;

    invoke-direct {v0}, Lh/x$a;-><init>()V

    sput-object v0, Lh/h0/a;->a:Lh/h0/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lh/x$b;

    invoke-direct {v0}, Lh/x$b;-><init>()V

    invoke-direct {p0, v0}, Lh/x;-><init>(Lh/x$b;)V

    return-void
.end method

.method constructor <init>(Lh/x$b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lh/x$b;->a:Lh/n;

    iput-object v0, p0, Lh/x;->b:Lh/n;

    iget-object v0, p1, Lh/x$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lh/x;->c:Ljava/net/Proxy;

    iget-object v0, p1, Lh/x$b;->c:Ljava/util/List;

    iput-object v0, p0, Lh/x;->d:Ljava/util/List;

    iget-object v0, p1, Lh/x$b;->d:Ljava/util/List;

    iput-object v0, p0, Lh/x;->e:Ljava/util/List;

    iget-object v0, p1, Lh/x$b;->e:Ljava/util/List;

    invoke-static {v0}, Lh/h0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lh/x;->f:Ljava/util/List;

    iget-object v0, p1, Lh/x$b;->f:Ljava/util/List;

    invoke-static {v0}, Lh/h0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lh/x;->g:Ljava/util/List;

    iget-object v0, p1, Lh/x$b;->g:Lh/p$c;

    iput-object v0, p0, Lh/x;->h:Lh/p$c;

    iget-object v0, p1, Lh/x$b;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Lh/x;->i:Ljava/net/ProxySelector;

    iget-object v0, p1, Lh/x$b;->i:Lh/m;

    iput-object v0, p0, Lh/x;->j:Lh/m;

    iget-object v0, p1, Lh/x$b;->j:Lh/c;

    iput-object v0, p0, Lh/x;->k:Lh/c;

    iget-object v0, p1, Lh/x$b;->k:Lh/h0/e/d;

    iput-object v0, p0, Lh/x;->l:Lh/h0/e/d;

    iget-object v0, p1, Lh/x$b;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lh/x;->m:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lh/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh/k;

    if-nez v2, :cond_57

    invoke-virtual {v3}, Lh/k;->b()Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_57
    const/4 v2, 0x1

    goto :goto_43

    :cond_59
    iget-object v0, p1, Lh/x$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_6f

    if-nez v2, :cond_60

    goto :goto_6f

    :cond_60
    invoke-direct {p0}, Lh/x;->B()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/x;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lh/x;->n:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lh/h0/k/c;->a(Ljavax/net/ssl/X509TrustManager;)Lh/h0/k/c;

    move-result-object v0

    goto :goto_75

    :cond_6f
    :goto_6f
    iget-object v0, p1, Lh/x$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lh/x;->n:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lh/x$b;->n:Lh/h0/k/c;

    :goto_75
    iput-object v0, p0, Lh/x;->o:Lh/h0/k/c;

    iget-object v0, p1, Lh/x$b;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lh/x;->p:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lh/x$b;->p:Lh/g;

    iget-object v1, p0, Lh/x;->o:Lh/h0/k/c;

    invoke-virtual {v0, v1}, Lh/g;->a(Lh/h0/k/c;)Lh/g;

    move-result-object v0

    iput-object v0, p0, Lh/x;->q:Lh/g;

    iget-object v0, p1, Lh/x$b;->q:Lh/b;

    iput-object v0, p0, Lh/x;->r:Lh/b;

    iget-object v0, p1, Lh/x$b;->r:Lh/b;

    iput-object v0, p0, Lh/x;->s:Lh/b;

    iget-object v0, p1, Lh/x$b;->s:Lh/j;

    iput-object v0, p0, Lh/x;->t:Lh/j;

    iget-object v0, p1, Lh/x$b;->t:Lh/o;

    iput-object v0, p0, Lh/x;->u:Lh/o;

    iget-boolean v0, p1, Lh/x$b;->u:Z

    iput-boolean v0, p0, Lh/x;->v:Z

    iget-boolean v0, p1, Lh/x$b;->v:Z

    iput-boolean v0, p0, Lh/x;->w:Z

    iget-boolean v0, p1, Lh/x$b;->w:Z

    iput-boolean v0, p0, Lh/x;->x:Z

    iget v0, p1, Lh/x$b;->x:I

    iput v0, p0, Lh/x;->y:I

    iget v0, p1, Lh/x$b;->y:I

    iput v0, p0, Lh/x;->z:I

    iget v0, p1, Lh/x$b;->z:I

    iput v0, p0, Lh/x;->A:I

    iget p1, p1, Lh/x$b;->A:I

    iput p1, p0, Lh/x;->B:I

    iget-object p1, p0, Lh/x;->f:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dc

    iget-object p1, p0, Lh/x;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c3

    return-void

    :cond_c3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/x;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dc
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/x;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_f6

    :goto_f5
    throw p1

    :goto_f6
    goto :goto_f5
.end method

.method private B()Ljavax/net/ssl/X509TrustManager;
    .registers 5

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_20

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v0

    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Lh/h0/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 5

    :try_start_0
    invoke-static {}, Lh/h0/j/f;->c()Lh/h0/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lh/h0/j/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_16
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p1

    const-string v0, "No System TLS"

    invoke-static {v0, p1}, Lh/h0/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public A()I
    .registers 2

    iget v0, p0, Lh/x;->A:I

    return v0
.end method

.method public a()Lh/b;
    .registers 2

    iget-object v0, p0, Lh/x;->s:Lh/b;

    return-object v0
.end method

.method public a(Lh/a0;)Lh/e;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lh/z;->a(Lh/x;Lh/a0;Z)Lh/z;

    move-result-object p1

    return-object p1
.end method

.method public b()Lh/g;
    .registers 2

    iget-object v0, p0, Lh/x;->q:Lh/g;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lh/x;->y:I

    return v0
.end method

.method public d()Lh/j;
    .registers 2

    iget-object v0, p0, Lh/x;->t:Lh/j;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/x;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Lh/m;
    .registers 2

    iget-object v0, p0, Lh/x;->j:Lh/m;

    return-object v0
.end method

.method public g()Lh/n;
    .registers 2

    iget-object v0, p0, Lh/x;->b:Lh/n;

    return-object v0
.end method

.method public h()Lh/o;
    .registers 2

    iget-object v0, p0, Lh/x;->u:Lh/o;

    return-object v0
.end method

.method public i()Lh/p$c;
    .registers 2

    iget-object v0, p0, Lh/x;->h:Lh/p$c;

    return-object v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lh/x;->w:Z

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lh/x;->v:Z

    return v0
.end method

.method public n()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lh/x;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/x;->f:Ljava/util/List;

    return-object v0
.end method

.method p()Lh/h0/e/d;
    .registers 2

    iget-object v0, p0, Lh/x;->k:Lh/c;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lh/c;->b:Lh/h0/e/d;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lh/x;->l:Lh/h0/e/d;

    :goto_9
    return-object v0
.end method

.method public q()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/x;->g:Ljava/util/List;

    return-object v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lh/x;->B:I

    return v0
.end method

.method public s()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/x;->d:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lh/x;->c:Ljava/net/Proxy;

    return-object v0
.end method

.method public u()Lh/b;
    .registers 2

    iget-object v0, p0, Lh/x;->r:Lh/b;

    return-object v0
.end method

.method public v()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lh/x;->i:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public w()I
    .registers 2

    iget v0, p0, Lh/x;->z:I

    return v0
.end method

.method public x()Z
    .registers 2

    iget-boolean v0, p0, Lh/x;->x:Z

    return v0
.end method

.method public y()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lh/x;->m:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public z()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lh/x;->n:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

###### Class h.x.a (h.x$a)
.class final Lh/x$a;
.super Lh/h0/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lh/h0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/c0$a;)I
    .registers 2

    iget p1, p1, Lh/c0$a;->c:I

    return p1
.end method

.method public a(Lh/j;Lh/a;Lh/h0/f/g;Lh/e0;)Lh/h0/f/c;
    .registers 5

    invoke-virtual {p1, p2, p3, p4}, Lh/j;->a(Lh/a;Lh/h0/f/g;Lh/e0;)Lh/h0/f/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lh/j;)Lh/h0/f/d;
    .registers 2

    iget-object p1, p1, Lh/j;->e:Lh/h0/f/d;

    return-object p1
.end method

.method public a(Lh/j;Lh/a;Lh/h0/f/g;)Ljava/net/Socket;
    .registers 4

    invoke-virtual {p1, p2, p3}, Lh/j;->a(Lh/a;Lh/h0/f/g;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public a(Lh/k;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lh/k;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public a(Lh/s$a;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Lh/s$a;->a(Ljava/lang/String;)Lh/s$a;

    return-void
.end method

.method public a(Lh/s$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lh/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/s$a;

    return-void
.end method

.method public a(Lh/a;Lh/a;)Z
    .registers 3

    invoke-virtual {p1, p2}, Lh/a;->a(Lh/a;)Z

    move-result p1

    return p1
.end method

.method public a(Lh/j;Lh/h0/f/c;)Z
    .registers 3

    invoke-virtual {p1, p2}, Lh/j;->a(Lh/h0/f/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lh/j;Lh/h0/f/c;)V
    .registers 3

    invoke-virtual {p1, p2}, Lh/j;->b(Lh/h0/f/c;)V

    return-void
.end method

###### Class h.x.b (h.x$b)
.class public final Lh/x$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:I

.field a:Lh/n;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/y;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/u;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/u;",
            ">;"
        }
    .end annotation
.end field

.field g:Lh/p$c;

.field h:Ljava/net/ProxySelector;

.field i:Lh/m;

.field j:Lh/c;

.field k:Lh/h0/e/d;

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;

.field n:Lh/h0/k/c;

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Lh/g;

.field q:Lh/b;

.field r:Lh/b;

.field s:Lh/j;

.field t:Lh/o;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/x$b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/x$b;->f:Ljava/util/List;

    new-instance v0, Lh/n;

    invoke-direct {v0}, Lh/n;-><init>()V

    iput-object v0, p0, Lh/x$b;->a:Lh/n;

    sget-object v0, Lh/x;->C:Ljava/util/List;

    iput-object v0, p0, Lh/x$b;->c:Ljava/util/List;

    sget-object v0, Lh/x;->D:Ljava/util/List;

    iput-object v0, p0, Lh/x$b;->d:Ljava/util/List;

    sget-object v0, Lh/p;->a:Lh/p;

    invoke-static {v0}, Lh/p;->a(Lh/p;)Lh/p$c;

    move-result-object v0

    iput-object v0, p0, Lh/x$b;->g:Lh/p$c;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lh/x$b;->h:Ljava/net/ProxySelector;

    sget-object v0, Lh/m;->a:Lh/m;

    iput-object v0, p0, Lh/x$b;->i:Lh/m;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lh/x$b;->l:Ljavax/net/SocketFactory;

    sget-object v0, Lh/h0/k/d;->a:Lh/h0/k/d;

    iput-object v0, p0, Lh/x$b;->o:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lh/g;->c:Lh/g;

    iput-object v0, p0, Lh/x$b;->p:Lh/g;

    sget-object v0, Lh/b;->a:Lh/b;

    iput-object v0, p0, Lh/x$b;->q:Lh/b;

    iput-object v0, p0, Lh/x$b;->r:Lh/b;

    new-instance v0, Lh/j;

    invoke-direct {v0}, Lh/j;-><init>()V

    iput-object v0, p0, Lh/x$b;->s:Lh/j;

    sget-object v0, Lh/o;->a:Lh/o;

    iput-object v0, p0, Lh/x$b;->t:Lh/o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/x$b;->u:Z

    iput-boolean v0, p0, Lh/x$b;->v:Z

    iput-boolean v0, p0, Lh/x$b;->w:Z

    const/16 v0, 0x2710

    iput v0, p0, Lh/x$b;->x:I

    iput v0, p0, Lh/x$b;->y:I

    iput v0, p0, Lh/x$b;->z:I

    const/4 v0, 0x0

    iput v0, p0, Lh/x$b;->A:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lh/x$b;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lh/h0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lh/x$b;->x:I

    return-object p0
.end method

.method public a(Lh/u;)Lh/x$b;
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lh/x$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/List;)Lh/x$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/k;",
            ">;)",
            "Lh/x$b;"
        }
    .end annotation

    invoke-static {p1}, Lh/h0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh/x$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lh/x$b;
    .registers 2

    iput-boolean p1, p0, Lh/x$b;->w:Z

    return-object p0
.end method

.method public a()Lh/x;
    .registers 2

    new-instance v0, Lh/x;

    invoke-direct {v0, p0}, Lh/x;-><init>(Lh/x$b;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lh/x$b;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lh/h0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lh/x$b;->y:I

    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lh/x$b;
    .registers 5

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lh/h0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lh/x$b;->z:I

    return-object p0
.end method
