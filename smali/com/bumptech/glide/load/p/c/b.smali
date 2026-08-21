###### Class com.bumptech.glide.load.p.c.b (com.bumptech.glide.load.p.c.b)
.class public Lcom/bumptech/glide/load/p/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/n/a0/e;

.field private final b:Lcom/bumptech/glide/load/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/n/a0/e;Lcom/bumptech/glide/load/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/a0/e;",
            "Lcom/bumptech/glide/load/k<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/p/c/b;->a:Lcom/bumptech/glide/load/n/a0/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/p/c/b;->b:Lcom/bumptech/glide/load/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/b;->b:Lcom/bumptech/glide/load/k;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/k;->a(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/n/v;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/i;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/b;->b:Lcom/bumptech/glide/load/k;

    new-instance v1, Lcom/bumptech/glide/load/p/c/d;

    invoke-interface {p1}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/bumptech/glide/load/p/c/b;->a:Lcom/bumptech/glide/load/n/a0/e;

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/p/c/d;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/n/a0/e;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z
    .registers 4

    check-cast p1, Lcom/bumptech/glide/load/n/v;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/p/c/b;->a(Lcom/bumptech/glide/load/n/v;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z

    move-result p1

    return p1
.end method
