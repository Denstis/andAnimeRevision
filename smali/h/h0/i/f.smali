###### Class h.h0.i.f (h.h0.i.f)
.class public final Lh/h0/i/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/h0/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/i/f$a;
    }
.end annotation


# static fields
.field private static final e:Li/f;

.field private static final f:Li/f;

.field private static final g:Li/f;

.field private static final h:Li/f;

.field private static final i:Li/f;

.field private static final j:Li/f;

.field private static final k:Li/f;

.field private static final l:Li/f;

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lh/u$a;

.field final b:Lh/h0/f/g;

.field private final c:Lh/h0/i/g;

.field private d:Lh/h0/i/i;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "connection"

    invoke-static {v0}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->e:Li/f;

    const-string v0, "host"

    invoke-static {v0}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->f:Li/f;

    const-string v0, "keep-alive"

    invoke-static {v0}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->g:Li/f;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->h:Li/f;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->i:Li/f;

    const-string v0, "te"

    invoke-static {v0}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->j:Li/f;

    const-string v0, "encoding"

    invoke-static {v0}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->k:Li/f;

    const-string v0, "upgrade"

    invoke-static {v0}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->l:Li/f;

    const/16 v0, 0xc

    new-array v0, v0, [Li/f;

    sget-object v1, Lh/h0/i/f;->e:Li/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lh/h0/i/f;->f:Li/f;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lh/h0/i/f;->g:Li/f;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lh/h0/i/f;->h:Li/f;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lh/h0/i/f;->j:Li/f;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lh/h0/i/f;->i:Li/f;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lh/h0/i/f;->k:Li/f;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lh/h0/i/f;->l:Li/f;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lh/h0/i/c;->f:Li/f;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lh/h0/i/c;->g:Li/f;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lh/h0/i/c;->h:Li/f;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    sget-object v1, Lh/h0/i/c;->i:Li/f;

    const/16 v11, 0xb

    aput-object v1, v0, v11

    invoke-static {v0}, Lh/h0/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->m:Ljava/util/List;

    new-array v0, v10, [Li/f;

    sget-object v1, Lh/h0/i/f;->e:Li/f;

    aput-object v1, v0, v2

    sget-object v1, Lh/h0/i/f;->f:Li/f;

    aput-object v1, v0, v3

    sget-object v1, Lh/h0/i/f;->g:Li/f;

    aput-object v1, v0, v4

    sget-object v1, Lh/h0/i/f;->h:Li/f;

    aput-object v1, v0, v5

    sget-object v1, Lh/h0/i/f;->j:Li/f;

    aput-object v1, v0, v6

    sget-object v1, Lh/h0/i/f;->i:Li/f;

    aput-object v1, v0, v7

    sget-object v1, Lh/h0/i/f;->k:Li/f;

    aput-object v1, v0, v8

    sget-object v1, Lh/h0/i/f;->l:Li/f;

    aput-object v1, v0, v9

    invoke-static {v0}, Lh/h0/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lh/h0/i/f;->n:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lh/x;Lh/u$a;Lh/h0/f/g;Lh/h0/i/g;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/h0/i/f;->a:Lh/u$a;

    iput-object p3, p0, Lh/h0/i/f;->b:Lh/h0/f/g;

    iput-object p4, p0, Lh/h0/i/f;->c:Lh/h0/i/g;

    return-void
.end method

.method public static a(Ljava/util/List;)Lh/c0$a;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)",
            "Lh/c0$a;"
        }
    .end annotation

    new-instance v0, Lh/s$a;

    invoke-direct {v0}, Lh/s$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, v2

    :goto_d
    if-ge v3, v1, :cond_61

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh/h0/i/c;

    if-nez v5, :cond_27

    if-eqz v0, :cond_5e

    iget v5, v0, Lh/h0/g/k;->b:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_5e

    new-instance v0, Lh/s$a;

    invoke-direct {v0}, Lh/s$a;-><init>()V

    move-object v4, v0

    move-object v0, v2

    goto :goto_5e

    :cond_27
    iget-object v6, v5, Lh/h0/i/c;->a:Li/f;

    iget-object v5, v5, Lh/h0/i/c;->b:Li/f;

    invoke-virtual {v5}, Li/f;->h()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lh/h0/i/c;->e:Li/f;

    invoke-virtual {v6, v7}, Li/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh/h0/g/k;->a(Ljava/lang/String;)Lh/h0/g/k;

    move-result-object v0

    goto :goto_5e

    :cond_4d
    sget-object v7, Lh/h0/i/f;->n:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5e

    sget-object v7, Lh/h0/a;->a:Lh/h0/a;

    invoke-virtual {v6}, Li/f;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6, v5}, Lh/h0/a;->a(Lh/s$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_61
    if-eqz v0, :cond_7f

    new-instance p0, Lh/c0$a;

    invoke-direct {p0}, Lh/c0$a;-><init>()V

    sget-object v1, Lh/y;->f:Lh/y;

    invoke-virtual {p0, v1}, Lh/c0$a;->a(Lh/y;)Lh/c0$a;

    iget v1, v0, Lh/h0/g/k;->b:I

    invoke-virtual {p0, v1}, Lh/c0$a;->a(I)Lh/c0$a;

    iget-object v0, v0, Lh/h0/g/k;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lh/c0$a;->a(Ljava/lang/String;)Lh/c0$a;

    invoke-virtual {v4}, Lh/s$a;->a()Lh/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/c0$a;->a(Lh/s;)Lh/c0$a;

    return-object p0

    :cond_7f
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_88

    :goto_87
    throw p0

    :goto_88
    goto :goto_87
.end method

.method public static b(Lh/a0;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a0;",
            ")",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lh/a0;->c()Lh/s;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lh/s;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lh/h0/i/c;

    sget-object v3, Lh/h0/i/c;->f:Li/f;

    invoke-virtual {p0}, Lh/a0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lh/h0/i/c;

    sget-object v3, Lh/h0/i/c;->g:Li/f;

    invoke-virtual {p0}, Lh/a0;->g()Lh/t;

    move-result-object v4

    invoke-static {v4}, Lh/h0/g/i;->a(Lh/t;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lh/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_41

    new-instance v3, Lh/h0/i/c;

    sget-object v4, Lh/h0/i/c;->i:Li/f;

    invoke-direct {v3, v4, v2}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    new-instance v2, Lh/h0/i/c;

    sget-object v3, Lh/h0/i/c;->h:Li/f;

    invoke-virtual {p0}, Lh/a0;->g()Lh/t;

    move-result-object p0

    invoke-virtual {p0}, Lh/t;->n()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {v0}, Lh/s;->b()I

    move-result v2

    :goto_58
    if-ge p0, v2, :cond_7f

    invoke-virtual {v0, p0}, Lh/s;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object v3

    sget-object v4, Lh/h0/i/f;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    new-instance v4, Lh/h0/i/c;

    invoke-virtual {v0, p0}, Lh/s;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lh/h0/i/c;-><init>(Li/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 p0, p0, 0x1

    goto :goto_58

    :cond_7f
    return-object v1
.end method


# virtual methods
.method public a(Z)Lh/c0$a;
    .registers 4

    iget-object v0, p0, Lh/h0/i/f;->d:Lh/h0/i/i;

    invoke-virtual {v0}, Lh/h0/i/i;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lh/h0/i/f;->a(Ljava/util/List;)Lh/c0$a;

    move-result-object v0

    if-eqz p1, :cond_18

    sget-object p1, Lh/h0/a;->a:Lh/h0/a;

    invoke-virtual {p1, v0}, Lh/h0/a;->a(Lh/c0$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_18

    const/4 p1, 0x0

    return-object p1

    :cond_18
    return-object v0
.end method

.method public a(Lh/c0;)Lh/d0;
    .registers 6

    iget-object v0, p0, Lh/h0/i/f;->b:Lh/h0/f/g;

    iget-object v1, v0, Lh/h0/f/g;->f:Lh/p;

    iget-object v0, v0, Lh/h0/f/g;->e:Lh/e;

    invoke-virtual {v1, v0}, Lh/p;->e(Lh/e;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lh/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lh/h0/g/e;->a(Lh/c0;)J

    move-result-wide v1

    new-instance p1, Lh/h0/i/f$a;

    iget-object v3, p0, Lh/h0/i/f;->d:Lh/h0/i/i;

    invoke-virtual {v3}, Lh/h0/i/i;->e()Li/s;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lh/h0/i/f$a;-><init>(Lh/h0/i/f;Li/s;)V

    new-instance v3, Lh/h0/g/h;

    invoke-static {p1}, Li/l;->a(Li/s;)Li/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lh/h0/g/h;-><init>(Ljava/lang/String;JLi/e;)V

    return-object v3
.end method

.method public a(Lh/a0;J)Li/r;
    .registers 4

    iget-object p1, p0, Lh/h0/i/f;->d:Lh/h0/i/i;

    invoke-virtual {p1}, Lh/h0/i/i;->d()Li/r;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lh/h0/i/f;->d:Lh/h0/i/i;

    invoke-virtual {v0}, Lh/h0/i/i;->d()Li/r;

    move-result-object v0

    invoke-interface {v0}, Li/r;->close()V

    return-void
.end method

.method public a(Lh/a0;)V
    .registers 5

    iget-object v0, p0, Lh/h0/i/f;->d:Lh/h0/i/i;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lh/a0;->a()Lh/b0;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {p1}, Lh/h0/i/f;->b(Lh/a0;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lh/h0/i/f;->c:Lh/h0/i/g;

    invoke-virtual {v1, p1, v0}, Lh/h0/i/g;->a(Ljava/util/List;Z)Lh/h0/i/i;

    move-result-object p1

    iput-object p1, p0, Lh/h0/i/f;->d:Lh/h0/i/i;

    iget-object p1, p0, Lh/h0/i/f;->d:Lh/h0/i/i;

    invoke-virtual {p1}, Lh/h0/i/i;->h()Li/t;

    move-result-object p1

    iget-object v0, p0, Lh/h0/i/f;->a:Lh/u$a;

    invoke-interface {v0}, Lh/u$a;->a()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Li/t;->a(JLjava/util/concurrent/TimeUnit;)Li/t;

    iget-object p1, p0, Lh/h0/i/f;->d:Lh/h0/i/i;

    invoke-virtual {p1}, Lh/h0/i/i;->l()Li/t;

    move-result-object p1

    iget-object v0, p0, Lh/h0/i/f;->a:Lh/u$a;

    invoke-interface {v0}, Lh/u$a;->b()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Li/t;->a(JLjava/util/concurrent/TimeUnit;)Li/t;

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lh/h0/i/f;->c:Lh/h0/i/g;

    invoke-virtual {v0}, Lh/h0/i/g;->flush()V

    return-void
.end method

.method public cancel()V
    .registers 3

    iget-object v0, p0, Lh/h0/i/f;->d:Lh/h0/i/i;

    if-eqz v0, :cond_9

    sget-object v1, Lh/h0/i/b;->h:Lh/h0/i/b;

    invoke-virtual {v0, v1}, Lh/h0/i/i;->b(Lh/h0/i/b;)V

    :cond_9
    return-void
.end method

###### Class h.h0.i.f.a (h.h0.i.f$a)
.class Lh/h0/i/f$a;
.super Li/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field c:Z

.field d:J

.field final synthetic e:Lh/h0/i/f;


# direct methods
.method constructor <init>(Lh/h0/i/f;Li/s;)V
    .registers 3

    iput-object p1, p0, Lh/h0/i/f$a;->e:Lh/h0/i/f;

    invoke-direct {p0, p2}, Li/h;-><init>(Li/s;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh/h0/i/f$a;->c:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lh/h0/i/f$a;->d:J

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .registers 9

    iget-boolean v0, p0, Lh/h0/i/f$a;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/h0/i/f$a;->c:Z

    iget-object v3, p0, Lh/h0/i/f$a;->e:Lh/h0/i/f;

    iget-object v1, v3, Lh/h0/i/f;->b:Lh/h0/f/g;

    const/4 v2, 0x0

    iget-wide v4, p0, Lh/h0/i/f$a;->d:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lh/h0/f/g;->a(ZLh/h0/g/c;JLjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Li/h;->i()Li/s;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Li/s;->a(Li/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    iget-wide v0, p0, Lh/h0/i/f$a;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lh/h0/i/f$a;->d:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    invoke-direct {p0, p1}, Lh/h0/i/f$a;->a(Ljava/io/IOException;)V

    throw p1
.end method

.method public close()V
    .registers 2

    invoke-super {p0}, Li/h;->close()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh/h0/i/f$a;->a(Ljava/io/IOException;)V

    return-void
.end method
