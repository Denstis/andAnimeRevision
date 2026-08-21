###### Class com.bumptech.glide.load.p.g.b (com.bumptech.glide.load.p.g.b)
.class public final Lcom/bumptech/glide/load/p/g/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/n/a$a;


# instance fields
.field private final a:Lcom/bumptech/glide/load/n/a0/e;

.field private final b:Lcom/bumptech/glide/load/n/a0/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/n/a0/e;Lcom/bumptech/glide/load/n/a0/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/p/g/b;->a:Lcom/bumptech/glide/load/n/a0/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/p/g/b;->b:Lcom/bumptech/glide/load/n/a0/b;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/b;->a:Lcom/bumptech/glide/load/n/a0/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/n/a0/e;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/b;->a:Lcom/bumptech/glide/load/n/a0/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/n/a0/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a([B)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/b;->b:Lcom/bumptech/glide/load/n/a0/b;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/n/a0/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a([I)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/b;->b:Lcom/bumptech/glide/load/n/a0/b;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/n/a0/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)[I
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/b;->b:Lcom/bumptech/glide/load/n/a0/b;

    if-nez v0, :cond_7

    new-array p1, p1, [I

    return-object p1

    :cond_7
    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/n/a0/b;->b(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public b(I)[B
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/b;->b:Lcom/bumptech/glide/load/n/a0/b;

    if-nez v0, :cond_7

    new-array p1, p1, [B

    return-object p1

    :cond_7
    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/n/a0/b;->b(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
