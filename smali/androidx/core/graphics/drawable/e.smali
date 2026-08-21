###### Class androidx.core.graphics.drawable.e (androidx.core.graphics.drawable.e)
.class Landroidx/core/graphics/drawable/e;
.super Landroidx/core/graphics/drawable/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/e$a;
    }
.end annotation


# static fields
.field private static i:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/core/graphics/drawable/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroidx/core/graphics/drawable/e;->d()V

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/d$a;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/d;-><init>(Landroidx/core/graphics/drawable/d$a;Landroid/content/res/Resources;)V

    invoke-direct {p0}, Landroidx/core/graphics/drawable/e;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    sget-object v0, Landroidx/core/graphics/drawable/e;->i:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1a

    :try_start_4
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "isProjected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/drawable/e;->i:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    const-string v1, "WrappedDrawableApi21"

    const-string v2, "Failed to retrieve Drawable#isProjected() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method protected b()Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_19

    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_19

    instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_19

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1a

    :cond_19
    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method c()Landroidx/core/graphics/drawable/d$a;
    .registers 4

    new-instance v0, Landroidx/core/graphics/drawable/e$a;

    iget-object v1, p0, Landroidx/core/graphics/drawable/d;->e:Landroidx/core/graphics/drawable/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/drawable/e$a;-><init>(Landroidx/core/graphics/drawable/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public setState([I)Z
    .registers 2

    invoke-super {p0, p1}, Landroidx/core/graphics/drawable/d;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public setTint(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/e;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Landroidx/core/graphics/drawable/d;->setTint(I)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_f
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/e;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Landroidx/core/graphics/drawable/d;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_f
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/e;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Landroidx/core/graphics/drawable/d;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Landroidx/core/graphics/drawable/d;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_f
    return-void
.end method

###### Class androidx.core.graphics.drawable.e.a (androidx.core.graphics.drawable.e$a)
.class Landroidx/core/graphics/drawable/e$a;
.super Landroidx/core/graphics/drawable/d$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/graphics/drawable/d$a;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/d$a;-><init>(Landroidx/core/graphics/drawable/d$a;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Landroidx/core/graphics/drawable/e;

    invoke-direct {v0, p0, p1}, Landroidx/core/graphics/drawable/e;-><init>(Landroidx/core/graphics/drawable/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
