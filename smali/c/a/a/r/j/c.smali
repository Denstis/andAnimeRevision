###### Class c.a.a.r.j.c (c.a.a.r.j.c)
.class public Lc/a/a/r/j/c;
.super Lc/a/a/r/j/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/r/j/d<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lc/a/a/r/j/d;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lc/a/a/r/j/c;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected e(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
