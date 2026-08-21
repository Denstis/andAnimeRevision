###### Class com.bumptech.glide.load.p.g.f (com.bumptech.glide.load.p.g.f)
.class public Lcom/bumptech/glide/load/p/g/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/l<",
        "Lcom/bumptech/glide/load/p/g/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/l;

    iput-object p1, p0, Lcom/bumptech/glide/load/p/g/f;->b:Lcom/bumptech/glide/load/l;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/n/v;II)Lcom/bumptech/glide/load/n/v;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/n/v<",
            "Lcom/bumptech/glide/load/p/g/c;",
            ">;II)",
            "Lcom/bumptech/glide/load/n/v<",
            "Lcom/bumptech/glide/load/p/g/c;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/p/g/c;

    invoke-static {p1}, Lc/a/a/c;->b(Landroid/content/Context;)Lc/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/c;->c()Lcom/bumptech/glide/load/n/a0/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/g/c;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/p/c/d;

    invoke-direct {v3, v2, v1}, Lcom/bumptech/glide/load/p/c/d;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/n/a0/e;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/p/g/f;->b:Lcom/bumptech/glide/load/l;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/bumptech/glide/load/l;->a(Landroid/content/Context;Lcom/bumptech/glide/load/n/v;II)Lcom/bumptech/glide/load/n/v;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_26

    invoke-interface {v3}, Lcom/bumptech/glide/load/n/v;->a()V

    :cond_26
    invoke-interface {p1}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/bumptech/glide/load/p/g/f;->b:Lcom/bumptech/glide/load/l;

    invoke-virtual {v0, p3, p1}, Lcom/bumptech/glide/load/p/g/c;->a(Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public a(Ljava/security/MessageDigest;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/f;->b:Lcom/bumptech/glide/load/l;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/bumptech/glide/load/p/g/f;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/bumptech/glide/load/p/g/f;

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/f;->b:Lcom/bumptech/glide/load/l;

    iget-object p1, p1, Lcom/bumptech/glide/load/p/g/f;->b:Lcom/bumptech/glide/load/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/f;->b:Lcom/bumptech/glide/load/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
