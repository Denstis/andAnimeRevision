###### Class androidx.appcompat.widget.q (androidx.appcompat.widget.q)
.class public Landroidx/appcompat/widget/q;
.super Landroid/widget/RadioButton;
.source ""

# interfaces
.implements Landroidx/core/widget/j;


# instance fields
.field private final b:Landroidx/appcompat/widget/i;

.field private final c:Landroidx/appcompat/widget/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lb/a/a;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-static {p1}, Landroidx/appcompat/widget/n0;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/i;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/i;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/i;

    iget-object p1, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/i;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/i;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/v;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/v;

    iget-object p1, p0, Landroidx/appcompat/widget/q;->c:Landroidx/appcompat/widget/v;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .registers 3

    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/i;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/i;->a(I)I

    move-result v0

    :cond_c
    return v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/i;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public setButtonDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/k/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/i;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/widget/i;->d()V

    :cond_a
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->a(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/q;->b:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method
