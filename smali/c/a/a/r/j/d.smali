###### Class c.a.a.r.j.d (c.a.a.r.j.d)
.class public abstract Lc/a/a/r/j/d;
.super Lc/a/a/r/j/i;
.source ""

# interfaces
.implements Lc/a/a/r/k/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lc/a/a/r/j/i<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lc/a/a/r/k/b$a;"
    }
.end annotation


# instance fields
.field private i:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lc/a/a/r/j/i;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lc/a/a/r/j/d;->i:Landroid/graphics/drawable/Animatable;

    iget-object p1, p0, Lc/a/a/r/j/d;->i:Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_11

    :cond_e
    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/a/r/j/d;->i:Landroid/graphics/drawable/Animatable;

    :goto_11
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lc/a/a/r/j/d;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lc/a/a/r/j/d;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Lc/a/a/r/j/a;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/a/a/r/j/d;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lc/a/a/r/j/d;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Lc/a/a/r/k/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lc/a/a/r/k/b<",
            "-TZ;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_d

    invoke-interface {p2, p1, p0}, Lc/a/a/r/k/b;->a(Ljava/lang/Object;Lc/a/a/r/k/b$a;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lc/a/a/r/j/d;->b(Ljava/lang/Object;)V

    goto :goto_10

    :cond_d
    :goto_d
    invoke-direct {p0, p1}, Lc/a/a/r/j/d;->c(Ljava/lang/Object;)V

    :goto_10
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Lc/a/a/r/j/i;->b(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/a/a/r/j/d;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lc/a/a/r/j/d;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Lc/a/a/r/j/i;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lc/a/a/r/j/d;->i:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/a/a/r/j/d;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lc/a/a/r/j/d;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    iget-object v0, p0, Lc/a/a/r/j/d;->i:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_7
    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Lc/a/a/r/j/d;->i:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_7
    return-void
.end method
