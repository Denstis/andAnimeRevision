###### Class com.bumptech.glide.load.p.c.v (com.bumptech.glide.load.p.c.v)
.class public Lcom/bumptech/glide/load/p/c/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/p/c/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/p/c/l;

.field private final b:Lcom/bumptech/glide/load/n/a0/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/p/c/l;Lcom/bumptech/glide/load/n/a0/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/p/c/v;->a:Lcom/bumptech/glide/load/p/c/l;

    iput-object p2, p0, Lcom/bumptech/glide/load/p/c/v;->b:Lcom/bumptech/glide/load/n/a0/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/n/v;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/n/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/p/c/s;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/bumptech/glide/load/p/c/s;

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    new-instance v0, Lcom/bumptech/glide/load/p/c/s;

    iget-object v1, p0, Lcom/bumptech/glide/load/p/c/v;->b:Lcom/bumptech/glide/load/n/a0/b;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/p/c/s;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/n/a0/b;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    :goto_12
    invoke-static {p1}, Lc/a/a/t/d;->b(Ljava/io/InputStream;)Lc/a/a/t/d;

    move-result-object v1

    new-instance v3, Lc/a/a/t/h;

    invoke-direct {v3, v1}, Lc/a/a/t/h;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Lcom/bumptech/glide/load/p/c/v$a;

    invoke-direct {v7, p1, v1}, Lcom/bumptech/glide/load/p/c/v$a;-><init>(Lcom/bumptech/glide/load/p/c/s;Lc/a/a/t/d;)V

    :try_start_20
    iget-object v2, p0, Lcom/bumptech/glide/load/p/c/v;->a:Lcom/bumptech/glide/load/p/c/l;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/load/p/c/l;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/p/c/l$b;)Lcom/bumptech/glide/load/n/v;

    move-result-object p2
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_32

    invoke-virtual {v1}, Lc/a/a/t/d;->k()V

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/bumptech/glide/load/p/c/s;->k()V

    :cond_31
    return-object p2

    :catchall_32
    move-exception p2

    invoke-virtual {v1}, Lc/a/a/t/d;->k()V

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/bumptech/glide/load/p/c/s;->k()V

    :cond_3b
    throw p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/n/v;
    .registers 5

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/p/c/v;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/n/v;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/InputStream;Lcom/bumptech/glide/load/i;)Z
    .registers 3

    iget-object p2, p0, Lcom/bumptech/glide/load/p/c/v;->a:Lcom/bumptech/glide/load/p/c/l;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/p/c/l;->a(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .registers 3

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/p/c/v;->a(Ljava/io/InputStream;Lcom/bumptech/glide/load/i;)Z

    move-result p1

    return p1
.end method

###### Class com.bumptech.glide.load.p.c.v.a (com.bumptech.glide.load.p.c.v$a)
.class Lcom/bumptech/glide/load/p/c/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/p/c/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/p/c/s;

.field private final b:Lc/a/a/t/d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/p/c/s;Lc/a/a/t/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/p/c/v$a;->a:Lcom/bumptech/glide/load/p/c/s;

    iput-object p2, p0, Lcom/bumptech/glide/load/p/c/v$a;->b:Lc/a/a/t/d;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/v$a;->a:Lcom/bumptech/glide/load/p/c/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/c/s;->j()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/n/a0/e;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/v$a;->b:Lc/a/a/t/d;

    invoke-virtual {v0}, Lc/a/a/t/d;->j()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p2, :cond_d

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/n/a0/e;->a(Landroid/graphics/Bitmap;)V

    :cond_d
    throw v0

    :cond_e
    return-void
.end method
