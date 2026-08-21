###### Class androidx.appcompat.widget.e (androidx.appcompat.widget.e)
.class Landroidx/appcompat/widget/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroidx/appcompat/widget/j;

.field private c:I

.field private d:Landroidx/appcompat/widget/o0;

.field private e:Landroidx/appcompat/widget/o0;

.field private f:Landroidx/appcompat/widget/o0;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/e;->c:I

    iput-object p1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-static {}, Landroidx/appcompat/widget/j;->a()Landroidx/appcompat/widget/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/e;->b:Landroidx/appcompat/widget/j;

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/e;->f:Landroidx/appcompat/widget/o0;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/o0;

    invoke-direct {v0}, Landroidx/appcompat/widget/o0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/e;->f:Landroidx/appcompat/widget/o0;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/e;->f:Landroidx/appcompat/widget/o0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/o0;->a()V

    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-static {v1}, Lb/h/o/s;->c(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    iput-boolean v2, v0, Landroidx/appcompat/widget/o0;->d:Z

    iput-object v1, v0, Landroidx/appcompat/widget/o0;->a:Landroid/content/res/ColorStateList;

    :cond_1d
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-static {v1}, Lb/h/o/s;->d(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_29

    iput-boolean v2, v0, Landroidx/appcompat/widget/o0;->c:Z

    iput-object v1, v0, Landroidx/appcompat/widget/o0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_29
    iget-boolean v1, v0, Landroidx/appcompat/widget/o0;->d:Z

    if-nez v1, :cond_34

    iget-boolean v1, v0, Landroidx/appcompat/widget/o0;->c:Z

    if-eqz v1, :cond_32

    goto :goto_34

    :cond_32
    const/4 p1, 0x0

    return p1

    :cond_34
    :goto_34
    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;[I)V

    return v2
.end method

.method private d()Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_f

    iget-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/o0;

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    :cond_f
    if-ne v0, v3, :cond_12

    return v1

    :cond_12
    return v2
.end method


# virtual methods
.method a()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Landroidx/appcompat/widget/e;->d()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/e;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    iget-object v1, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/o0;

    if-eqz v1, :cond_23

    iget-object v2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;[I)V

    goto :goto_30

    :cond_23
    iget-object v1, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/o0;

    if-eqz v1, :cond_30

    iget-object v2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;[I)V

    :cond_30
    :goto_30
    return-void
.end method

.method a(I)V
    .registers 4

    iput p1, p0, Landroidx/appcompat/widget/e;->c:I

    iget-object v0, p0, Landroidx/appcompat/widget/e;->b:Landroidx/appcompat/widget/j;

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .registers 3

    if-eqz p1, :cond_15

    iget-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/o0;

    if-nez v0, :cond_d

    new-instance v0, Landroidx/appcompat/widget/o0;

    invoke-direct {v0}, Landroidx/appcompat/widget/o0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/o0;

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/o0;

    iput-object p1, v0, Landroidx/appcompat/widget/o0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/o0;->d:Z

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/e;->d:Landroidx/appcompat/widget/o0;

    :goto_18
    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/o0;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/o0;

    invoke-direct {v0}, Landroidx/appcompat/widget/o0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/o0;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/o0;

    iput-object p1, v0, Landroidx/appcompat/widget/o0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/o0;->c:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()V

    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/widget/e;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()V

    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lb/a/j;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/q0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/q0;

    move-result-object p1

    :try_start_d
    sget p2, Lb/a/j;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_31

    sget p2, Lb/a/j;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/q0;->g(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/e;->c:I

    iget-object p2, p0, Landroidx/appcompat/widget/e;->b:Landroidx/appcompat/widget/j;

    iget-object v1, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/e;->c:I

    invoke-virtual {p2, v1, v2}, Landroidx/appcompat/widget/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_31

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/e;->a(Landroid/content/res/ColorStateList;)V

    :cond_31
    sget p2, Lb/a/j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result p2

    if-eqz p2, :cond_44

    iget-object p2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    sget v1, Lb/a/j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p2, v1}, Lb/h/o/s;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_44
    sget p2, Lb/a/j;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result p2

    if-eqz p2, :cond_5c

    iget-object p2, p0, Landroidx/appcompat/widget/e;->a:Landroid/view/View;

    sget v1, Lb/a/j;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/q0;->d(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/widget/a0;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-static {p2, v0}, Lb/h/o/s;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5c
    .catchall {:try_start_d .. :try_end_5c} :catchall_60

    :cond_5c
    invoke-virtual {p1}, Landroidx/appcompat/widget/q0;->a()V

    return-void

    :catchall_60
    move-exception p2

    invoke-virtual {p1}, Landroidx/appcompat/widget/q0;->a()V

    throw p2
.end method

.method b()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/o0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/o0;->a:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/o0;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/o0;

    invoke-direct {v0}, Landroidx/appcompat/widget/o0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/o0;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/o0;

    iput-object p1, v0, Landroidx/appcompat/widget/o0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/o0;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/e;->a()V

    return-void
.end method

.method c()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/e;->e:Landroidx/appcompat/widget/o0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/o0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method
