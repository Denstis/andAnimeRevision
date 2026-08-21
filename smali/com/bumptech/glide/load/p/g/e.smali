###### Class com.bumptech.glide.load.p.g.e (com.bumptech.glide.load.p.g.e)
.class public Lcom/bumptech/glide/load/p/g/e;
.super Lcom/bumptech/glide/load/p/e/b;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/p/e/b<",
        "Lcom/bumptech/glide/load/p/g/c;",
        ">;",
        "Lcom/bumptech/glide/load/n/r;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/p/g/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/p/e/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/e/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/p/g/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/g/c;->stop()V

    iget-object v0, p0, Lcom/bumptech/glide/load/p/e/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/p/g/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/g/c;->g()V

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/e/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/p/g/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/g/c;->f()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/bumptech/glide/load/p/g/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/p/g/c;

    return-object v0
.end method

.method public initialize()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/e/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/p/g/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/g/c;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
