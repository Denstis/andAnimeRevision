###### Class com.bumptech.glide.load.o.b (com.bumptech.glide.load.o.b)
.class public Lcom/bumptech/glide/load/o/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/o/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/o/b$d;,
        Lcom/bumptech/glide/load/o/b$a;,
        Lcom/bumptech/glide/load/o/b$c;,
        Lcom/bumptech/glide/load/o/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/o/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/o/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/o/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/o/b$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/o/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/o/b;->a:Lcom/bumptech/glide/load/o/b$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/o/n$a;
    .registers 5

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/o/b;->a([BIILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/o/n$a;

    move-result-object p1

    return-object p1
.end method

.method public a([BIILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/o/n$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/o/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Lcom/bumptech/glide/load/o/n$a;

    new-instance p3, Lc/a/a/s/b;

    invoke-direct {p3, p1}, Lc/a/a/s/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/o/b$c;

    iget-object v0, p0, Lcom/bumptech/glide/load/o/b;->a:Lcom/bumptech/glide/load/o/b$b;

    invoke-direct {p4, p1, v0}, Lcom/bumptech/glide/load/o/b$c;-><init>([BLcom/bumptech/glide/load/o/b$b;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/o/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/m/d;)V

    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/o/b;->a([B)Z

    move-result p1

    return p1
.end method

.method public a([B)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

###### Class com.bumptech.glide.load.o.b.a (com.bumptech.glide.load.o.b$a)
.class public Lcom/bumptech/glide/load/o/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/o/o<",
        "[B",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/o/r;)Lcom/bumptech/glide/load/o/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/o/r;",
            ")",
            "Lcom/bumptech/glide/load/o/n<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/o/b;

    new-instance v0, Lcom/bumptech/glide/load/o/b$a$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/o/b$a$a;-><init>(Lcom/bumptech/glide/load/o/b$a;)V

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/o/b;-><init>(Lcom/bumptech/glide/load/o/b$b;)V

    return-object p1
.end method

###### Class com.bumptech.glide.load.o.b.a.C0145a (com.bumptech.glide.load.o.b$a$a)
.class Lcom/bumptech/glide/load/o/b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/o/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/o/b$a;->a(Lcom/bumptech/glide/load/o/r;)Lcom/bumptech/glide/load/o/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/o/b$b<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/o/b$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public bridge synthetic a([B)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/o/b$a$a;->a([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Ljava/nio/ByteBuffer;
    .registers 2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

###### Class com.bumptech.glide.load.o.b.InterfaceC0146b (com.bumptech.glide.load.o.b$b)
.class public interface abstract Lcom/bumptech/glide/load/o/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation
.end method

.method public abstract a([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TData;"
        }
    .end annotation
.end method

###### Class com.bumptech.glide.load.o.b.c (com.bumptech.glide.load.o.b$c)
.class Lcom/bumptech/glide/load/o/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/m/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final b:[B

.field private final c:Lcom/bumptech/glide/load/o/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/o/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([BLcom/bumptech/glide/load/o/b$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/load/o/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/o/b$c;->b:[B

    iput-object p2, p0, Lcom/bumptech/glide/load/o/b$c;->c:Lcom/bumptech/glide/load/o/b$b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/o/b$c;->c:Lcom/bumptech/glide/load/o/b$b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/o/b$b;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/a/a/h;Lcom/bumptech/glide/load/m/d$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/h;",
            "Lcom/bumptech/glide/load/m/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/bumptech/glide/load/o/b$c;->c:Lcom/bumptech/glide/load/o/b$b;

    iget-object v0, p0, Lcom/bumptech/glide/load/o/b$c;->b:[B

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/o/b$b;->a([B)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/m/d$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/a;->b:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public cancel()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.load.o.b.d (com.bumptech.glide.load.o.b$d)
.class public Lcom/bumptech/glide/load/o/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/o/o<",
        "[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/o/r;)Lcom/bumptech/glide/load/o/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/o/r;",
            ")",
            "Lcom/bumptech/glide/load/o/n<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/o/b;

    new-instance v0, Lcom/bumptech/glide/load/o/b$d$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/o/b$d$a;-><init>(Lcom/bumptech/glide/load/o/b$d;)V

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/o/b;-><init>(Lcom/bumptech/glide/load/o/b$b;)V

    return-object p1
.end method

###### Class com.bumptech.glide.load.o.b.d.a (com.bumptech.glide.load.o.b$d$a)
.class Lcom/bumptech/glide/load/o/b$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/o/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/o/b$d;->a(Lcom/bumptech/glide/load/o/r;)Lcom/bumptech/glide/load/o/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/o/b$b<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/o/b$d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic a([B)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/o/b$d$a;->a([B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
