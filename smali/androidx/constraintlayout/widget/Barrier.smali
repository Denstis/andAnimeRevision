###### Class androidx.constraintlayout.widget.Barrier (androidx.constraintlayout.widget.Barrier)
.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/a;
.source ""


# instance fields
.field private h:I

.field private i:I

.field private j:Lb/f/a/j/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/a;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .registers 8

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/a;->a(Landroid/util/AttributeSet;)V

    new-instance v0, Lb/f/a/j/b;

    invoke-direct {v0}, Lb/f/a/j/b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lb/f/a/j/b;

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/g;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_3f

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroidx/constraintlayout/widget/g;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v3, v4, :cond_2e

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    goto :goto_3c

    :cond_2e
    sget v4, Landroidx/constraintlayout/widget/g;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v3, v4, :cond_3c

    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lb/f/a/j/b;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Lb/f/a/j/b;->c(Z)V

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_3f
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lb/f/a/j/b;

    iput-object p1, p0, Landroidx/constraintlayout/widget/a;->e:Lb/f/a/j/j;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/a;->a()V

    return-void
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    return v0
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lb/f/a/j/b;

    invoke-virtual {v0, p1}, Lb/f/a/j/b;->c(Z)V

    return-void
.end method

.method public setType(I)V
    .registers 7

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    if-ge p1, v4, :cond_1a

    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    if-ne p1, v1, :cond_15

    :goto_12
    iput v2, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    goto :goto_3d

    :cond_15
    if-ne p1, v0, :cond_3d

    :goto_17
    iput v3, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    goto :goto_3d

    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne v3, p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    if-eqz p1, :cond_35

    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    if-ne p1, v1, :cond_32

    goto :goto_17

    :cond_32
    if-ne p1, v0, :cond_3d

    goto :goto_12

    :cond_35
    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    if-ne p1, v1, :cond_3a

    goto :goto_12

    :cond_3a
    if-ne p1, v0, :cond_3d

    goto :goto_17

    :cond_3d
    :goto_3d
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->j:Lb/f/a/j/b;

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    invoke-virtual {p1, v0}, Lb/f/a/j/b;->t(I)V

    return-void
.end method
