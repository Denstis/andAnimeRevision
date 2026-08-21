###### Class com.bumptech.glide.load.p.c.r (com.bumptech.glide.load.p.c.r)
.class public final Lcom/bumptech/glide/load/p/c/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/v;
.implements Lcom/bumptech/glide/load/n/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/v<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lcom/bumptech/glide/load/n/r;"
    }
.end annotation


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/bumptech/glide/load/n/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/n/v;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/n/v<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/bumptech/glide/load/p/c/r;->b:Landroid/content/res/Resources;

    invoke-static {p2}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/bumptech/glide/load/n/v;

    iput-object p2, p0, Lcom/bumptech/glide/load/p/c/r;->c:Lcom/bumptech/glide/load/n/v;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/v;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/n/v<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/n/v<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/p/c/r;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/p/c/r;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/n/v;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/r;->c:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->a()V

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/r;->c:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->b()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public get()Landroid/graphics/drawable/BitmapDrawable;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/p/c/r;->b:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bumptech/glide/load/p/c/r;->c:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v2}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/c/r;->get()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/r;->c:Lcom/bumptech/glide/load/n/v;

    instance-of v1, v0, Lcom/bumptech/glide/load/n/r;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/bumptech/glide/load/n/r;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/r;->initialize()V

    :cond_b
    return-void
.end method
