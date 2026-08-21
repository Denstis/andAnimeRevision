###### Class androidx.core.widget.c (androidx.core.widget.c)
.class public final Landroidx/core/widget/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z


# direct methods
.method public static a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_b
    sget-boolean v0, Landroidx/core/widget/c;->b:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :try_start_12
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/c;->a:Ljava/lang/reflect/Field;

    sget-object v2, Landroidx/core/widget/c;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    move-exception v2

    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    sput-boolean v0, Landroidx/core/widget/c;->b:Z

    :cond_2a
    sget-object v0, Landroidx/core/widget/c;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    :try_start_2f
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception p0

    const-string v0, "Failed to get button drawable via reflection"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v2, Landroidx/core/widget/c;->a:Ljava/lang/reflect/Field;

    :cond_3e
    return-object v2
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_13

    :cond_a
    instance-of v0, p0, Landroidx/core/widget/j;

    if-eqz v0, :cond_13

    check-cast p0, Landroidx/core/widget/j;

    invoke-interface {p0, p1}, Landroidx/core/widget/j;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_13

    :cond_a
    instance-of v0, p0, Landroidx/core/widget/j;

    if-eqz v0, :cond_13

    check-cast p0, Landroidx/core/widget/j;

    invoke-interface {p0, p1}, Landroidx/core/widget/j;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_13
    :goto_13
    return-void
.end method
