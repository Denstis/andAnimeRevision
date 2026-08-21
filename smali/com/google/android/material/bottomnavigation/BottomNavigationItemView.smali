###### Class com.google.android.material.bottomnavigation.BottomNavigationItemView (com.google.android.material.bottomnavigation.BottomNavigationItemView)
.class public Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/q$a;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private final defaultMargin:I

.field private icon:Landroid/widget/ImageView;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private isShifting:Z

.field private itemData:Landroidx/appcompat/view/menu/k;

.field private itemPosition:I

.field private labelVisibilityMode:I

.field private final largeLabel:Landroid/widget/TextView;

.field private scaleDownFactor:F

.field private scaleUpFactor:F

.field private shiftAmount:F

.field private final smallLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/R$layout;->design_bottom_navigation_item:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/google/android/material/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    sget p1, Lcom/google/android/material/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    sget p1, Lcom/google/android/material/R$id;->icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    sget p1, Lcom/google/android/material/R$id;->smallLabel:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    sget p1, Lcom/google/android/material/R$id;->largeLabel:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lb/h/o/s;->f(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lb/h/o/s;->f(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .registers 5

    sub-float v0, p1, p2

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    return-void
.end method

.method private setViewLayoutParams(Landroid/view/View;II)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setViewValues(Landroid/view/View;FFI)V
    .registers 5

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getItemData()Landroidx/appcompat/view/menu/k;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    return-object v0
.end method

.method public getItemPosition()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/k;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setEnabled(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3d

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3d
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/appcompat/widget/s0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 p1, 0x0

    goto :goto_4e

    :cond_4c
    const/16 p1, 0x8

    :goto_4e
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_1d
    return-object p1
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    const/4 v1, -0x1

    const/16 v3, 0x11

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/16 v6, 0x31

    const/4 v7, 0x4

    const/high16 v8, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_a3

    if-eqz v0, :cond_86

    const/4 v1, 0x1

    if-eq v0, v1, :cond_57

    if-eq v0, v2, :cond_43

    goto/16 :goto_b1

    :cond_43
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b1

    :cond_57
    if-eqz p1, :cond_72

    :goto_59
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleUpFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_b1

    :cond_72
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->scaleDownFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_b1

    :cond_86
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    if-eqz p1, :cond_95

    :goto_8c
    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_9d

    :cond_95
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v4, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    :goto_9d
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b1

    :cond_a3
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->defaultMargin:I

    if-eqz p1, :cond_95

    goto :goto_8c

    :cond_ae
    if-eqz p1, :cond_72

    goto :goto_59

    :goto_b1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Lb/h/o/p;->a(Landroid/content/Context;I)Lb/h/o/p;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    invoke-static {p0, p1}, Lb/h/o/s;->a(Landroid/view/View;Lb/h/o/p;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_d
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method

.method public setItemBackground(I)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-static {p0, p1}, Lb/h/o/s;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemPosition:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    if-eq v0, p1, :cond_18

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->labelVisibilityMode:I

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    :cond_18
    return-void
.end method

.method public setShifting(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    if-eq v0, p1, :cond_18

    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isShifting:Z

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    :cond_18
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTextAppearanceActive(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/i;->d(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/i;->d(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_c
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->itemData:Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_18
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1b
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
