###### Class com.bumptech.glide.load.p.e.b (com.bumptech.glide.load.p.e.b)
.class public abstract Lcom/bumptech/glide/load/p/e/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/v;
.implements Lcom/bumptech/glide/load/n/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/v<",
        "TT;>;",
        "Lcom/bumptech/glide/load/n/r;"
    }
.end annotation


# instance fields
.field protected final b:Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/bumptech/glide/load/p/e/b;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final get()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/p/e/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bumptech/glide/load/p/e/b;->b:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/e/b;->get()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/e/b;->b:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_10

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto :goto_1b

    :cond_10
    instance-of v1, v0, Lcom/bumptech/glide/load/p/g/c;

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/bumptech/glide/load/p/g/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/g/c;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_c

    :cond_1b
    :goto_1b
    return-void
.end method
