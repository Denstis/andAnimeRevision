###### Class h.k (h.k)
.class public final Lh/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/k$a;
    }
.end annotation


# static fields
.field private static final e:[Lh/h;

.field public static final f:Lh/k;

.field public static final g:Lh/k;

.field public static final h:Lh/k;


# instance fields
.field final a:Z

.field final b:Z

.field final c:[Ljava/lang/String;

.field final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v0, 0xd

    new-array v0, v0, [Lh/h;

    sget-object v1, Lh/h;->s:Lh/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lh/h;->u:Lh/h;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lh/h;->t:Lh/h;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lh/h;->v:Lh/h;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lh/h;->x:Lh/h;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lh/h;->w:Lh/h;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lh/h;->q:Lh/h;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Lh/h;->r:Lh/h;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lh/h;->j:Lh/h;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    sget-object v1, Lh/h;->k:Lh/h;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sget-object v1, Lh/h;->e:Lh/h;

    const/16 v7, 0xa

    aput-object v1, v0, v7

    sget-object v1, Lh/h;->h:Lh/h;

    const/16 v7, 0xb

    aput-object v1, v0, v7

    sget-object v1, Lh/h;->d:Lh/h;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    sput-object v0, Lh/k;->e:[Lh/h;

    new-instance v0, Lh/k$a;

    invoke-direct {v0, v3}, Lh/k$a;-><init>(Z)V

    sget-object v1, Lh/k;->e:[Lh/h;

    invoke-virtual {v0, v1}, Lh/k$a;->a([Lh/h;)Lh/k$a;

    new-array v1, v6, [Lh/f0;

    sget-object v6, Lh/f0;->c:Lh/f0;

    aput-object v6, v1, v2

    sget-object v6, Lh/f0;->d:Lh/f0;

    aput-object v6, v1, v3

    sget-object v6, Lh/f0;->e:Lh/f0;

    aput-object v6, v1, v4

    sget-object v4, Lh/f0;->f:Lh/f0;

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Lh/k$a;->a([Lh/f0;)Lh/k$a;

    invoke-virtual {v0, v3}, Lh/k$a;->a(Z)Lh/k$a;

    invoke-virtual {v0}, Lh/k$a;->a()Lh/k;

    move-result-object v0

    sput-object v0, Lh/k;->f:Lh/k;

    new-instance v0, Lh/k$a;

    sget-object v1, Lh/k;->f:Lh/k;

    invoke-direct {v0, v1}, Lh/k$a;-><init>(Lh/k;)V

    new-array v1, v3, [Lh/f0;

    sget-object v4, Lh/f0;->f:Lh/f0;

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lh/k$a;->a([Lh/f0;)Lh/k$a;

    invoke-virtual {v0, v3}, Lh/k$a;->a(Z)Lh/k$a;

    invoke-virtual {v0}, Lh/k$a;->a()Lh/k;

    move-result-object v0

    sput-object v0, Lh/k;->g:Lh/k;

    new-instance v0, Lh/k$a;

    invoke-direct {v0, v2}, Lh/k$a;-><init>(Z)V

    invoke-virtual {v0}, Lh/k$a;->a()Lh/k;

    move-result-object v0

    sput-object v0, Lh/k;->h:Lh/k;

    return-void
.end method

.method constructor <init>(Lh/k$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lh/k$a;->a:Z

    iput-boolean v0, p0, Lh/k;->a:Z

    iget-object v0, p1, Lh/k$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lh/k;->c:[Ljava/lang/String;

    iget-object v0, p1, Lh/k$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lh/k;->d:[Ljava/lang/String;

    iget-boolean p1, p1, Lh/k$a;->d:Z

    iput-boolean p1, p0, Lh/k;->b:Z

    return-void
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lh/k;
    .registers 7

    iget-object v0, p0, Lh/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lh/h;->b:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh/k;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lh/h0/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_15
    iget-object v1, p0, Lh/k;->d:[Ljava/lang/String;

    if-eqz v1, :cond_26

    sget-object v1, Lh/h0/c;->o:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh/k;->d:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lh/h0/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lh/h;->b:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Lh/h0/c;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_41

    const/4 p2, -0x1

    if-eq v2, p2, :cond_41

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lh/h0/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_41
    new-instance p1, Lh/k$a;

    invoke-direct {p1, p0}, Lh/k$a;-><init>(Lh/k;)V

    invoke-virtual {p1, v0}, Lh/k$a;->a([Ljava/lang/String;)Lh/k$a;

    invoke-virtual {p1, v1}, Lh/k$a;->b([Ljava/lang/String;)Lh/k$a;

    invoke-virtual {p1}, Lh/k$a;->a()Lh/k;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lh/h;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lh/k;->b(Ljavax/net/ssl/SSLSocket;Z)Lh/k;

    move-result-object p2

    iget-object v0, p2, Lh/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lh/k;->c:[Ljava/lang/String;

    if-eqz p2, :cond_12

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 6

    iget-boolean v0, p0, Lh/k;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lh/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v2, Lh/h0/c;->o:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lh/h0/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget-object v0, p0, Lh/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v2, Lh/h;->b:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lh/h0/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_28

    return v1

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lh/k;->a:Z

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lh/k;->b:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/f0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lh/f0;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lh/k;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    check-cast p1, Lh/k;

    iget-boolean v2, p0, Lh/k;->a:Z

    iget-boolean v3, p1, Lh/k;->a:Z

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    if-eqz v2, :cond_32

    iget-object v2, p0, Lh/k;->c:[Ljava/lang/String;

    iget-object v3, p1, Lh/k;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    :cond_20
    iget-object v2, p0, Lh/k;->d:[Ljava/lang/String;

    iget-object v3, p1, Lh/k;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    iget-boolean v2, p0, Lh/k;->b:Z

    iget-boolean p1, p1, Lh/k;->b:Z

    if-eq v2, p1, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lh/k;->a:Z

    if-eqz v0, :cond_1e

    const/16 v0, 0x20f

    iget-object v1, p0, Lh/k;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lh/k;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lh/k;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_20

    :cond_1e
    const/16 v0, 0x11

    :goto_20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lh/k;->a:Z

    if-nez v0, :cond_7

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_7
    iget-object v0, p0, Lh/k;->c:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lh/k;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    iget-object v2, p0, Lh/k;->d:[Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lh/k;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lh/k;->b:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class h.k.a (h.k$a)
.class public final Lh/k$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:Z


# direct methods
.method public constructor <init>(Lh/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lh/k;->a:Z

    iput-boolean v0, p0, Lh/k$a;->a:Z

    iget-object v0, p1, Lh/k;->c:[Ljava/lang/String;

    iput-object v0, p0, Lh/k$a;->b:[Ljava/lang/String;

    iget-object v0, p1, Lh/k;->d:[Ljava/lang/String;

    iput-object v0, p0, Lh/k$a;->c:[Ljava/lang/String;

    iget-boolean p1, p1, Lh/k;->b:Z

    iput-boolean p1, p0, Lh/k$a;->d:Z

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lh/k$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lh/k$a;
    .registers 3

    iget-boolean v0, p0, Lh/k$a;->a:Z

    if-eqz v0, :cond_7

    iput-boolean p1, p0, Lh/k$a;->d:Z

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs a([Lh/f0;)Lh/k$a;
    .registers 5

    iget-boolean v0, p0, Lh/k$a;->a:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    aget-object v2, p1, v1

    iget-object v2, v2, Lh/f0;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v0}, Lh/k$a;->b([Ljava/lang/String;)Lh/k$a;

    return-object p0

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :goto_20
    throw p1

    :goto_21
    goto :goto_20
.end method

.method public varargs a([Lh/h;)Lh/k$a;
    .registers 5

    iget-boolean v0, p0, Lh/k$a;->a:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    aget-object v2, p1, v1

    iget-object v2, v2, Lh/h;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v0}, Lh/k$a;->a([Ljava/lang/String;)Lh/k$a;

    return-object p0

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :goto_20
    throw p1

    :goto_21
    goto :goto_20
.end method

.method public varargs a([Ljava/lang/String;)Lh/k$a;
    .registers 3

    iget-boolean v0, p0, Lh/k$a;->a:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    if-eqz v0, :cond_10

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lh/k$a;->b:[Ljava/lang/String;

    return-object p0

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lh/k;
    .registers 2

    new-instance v0, Lh/k;

    invoke-direct {v0, p0}, Lh/k;-><init>(Lh/k$a;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Lh/k$a;
    .registers 3

    iget-boolean v0, p0, Lh/k$a;->a:Z

    if-eqz v0, :cond_18

    array-length v0, p1

    if-eqz v0, :cond_10

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lh/k$a;->c:[Ljava/lang/String;

    return-object p0

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
