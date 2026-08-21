###### Class h.p (h.p)
.class public abstract Lh/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/p$c;
    }
.end annotation


# static fields
.field public static final a:Lh/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh/p$a;

    invoke-direct {v0}, Lh/p$a;-><init>()V

    sput-object v0, Lh/p;->a:Lh/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lh/p;)Lh/p$c;
    .registers 2

    new-instance v0, Lh/p$b;

    invoke-direct {v0, p0}, Lh/p$b;-><init>(Lh/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Lh/e;)V
    .registers 2

    return-void
.end method

.method public a(Lh/e;J)V
    .registers 4

    return-void
.end method

.method public a(Lh/e;Lh/a0;)V
    .registers 3

    return-void
.end method

.method public a(Lh/e;Lh/c0;)V
    .registers 3

    return-void
.end method

.method public a(Lh/e;Lh/i;)V
    .registers 3

    return-void
.end method

.method public a(Lh/e;Lh/r;)V
    .registers 3

    return-void
.end method

.method public a(Lh/e;Ljava/io/IOException;)V
    .registers 3

    return-void
.end method

.method public a(Lh/e;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public a(Lh/e;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/e;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Lh/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .registers 4

    return-void
.end method

.method public a(Lh/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lh/y;)V
    .registers 5

    return-void
.end method

.method public a(Lh/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lh/y;Ljava/io/IOException;)V
    .registers 6

    return-void
.end method

.method public b(Lh/e;)V
    .registers 2

    return-void
.end method

.method public b(Lh/e;J)V
    .registers 4

    return-void
.end method

.method public b(Lh/e;Lh/i;)V
    .registers 3

    return-void
.end method

.method public c(Lh/e;)V
    .registers 2

    return-void
.end method

.method public d(Lh/e;)V
    .registers 2

    return-void
.end method

.method public e(Lh/e;)V
    .registers 2

    return-void
.end method

.method public f(Lh/e;)V
    .registers 2

    return-void
.end method

.method public g(Lh/e;)V
    .registers 2

    return-void
.end method

###### Class h.p.a (h.p$a)
.class final Lh/p$a;
.super Lh/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lh/p;-><init>()V

    return-void
.end method

###### Class h.p.b (h.p$b)
.class final Lh/p$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/p;->a(Lh/p;)Lh/p$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh/p;


# direct methods
.method constructor <init>(Lh/p;)V
    .registers 2

    iput-object p1, p0, Lh/p$b;->a:Lh/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/e;)Lh/p;
    .registers 2

    iget-object p1, p0, Lh/p$b;->a:Lh/p;

    return-object p1
.end method

###### Class h.p.c (h.p$c)
.class public interface abstract Lh/p$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Lh/e;)Lh/p;
.end method
