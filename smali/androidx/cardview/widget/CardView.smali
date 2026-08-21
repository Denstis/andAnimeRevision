###### Class androidx.cardview.widget.CardView (androidx.cardview.widget.CardView)
.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Landroidx/cardview/widget/e;


# instance fields
.field private final mCardViewDelegate:Landroidx/cardview/widget/d;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    new-instance v0, Landroidx/cardview/widget/b;

    invoke-direct {v0}, Landroidx/cardview/widget/b;-><init>()V

    :goto_16
    sput-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    goto :goto_29

    :cond_19
    const/16 v1, 0x11

    if-lt v0, v1, :cond_23

    new-instance v0, Landroidx/cardview/widget/a;

    invoke-direct {v0}, Landroidx/cardview/widget/a;-><init>()V

    goto :goto_16

    :cond_23
    new-instance v0, Landroidx/cardview/widget/c;

    invoke-direct {v0}, Landroidx/cardview/widget/c;-><init>()V

    goto :goto_16

    :goto_29
    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    invoke-interface {v0}, Landroidx/cardview/widget/e;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lb/d/a;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v0, Landroidx/cardview/widget/CardView$a;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardView$a;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    sget-object v0, Lb/d/e;->CardView:[I

    sget v1, Lb/d/d;->CardView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lb/d/e;->CardView_cardBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_31

    sget p3, Lb/d/e;->CardView_cardBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_2f
    move-object v4, p3

    goto :goto_67

    :cond_31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v1, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {p3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p3, 0x3

    new-array p3, p3, [F

    invoke-static {v1, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    aget p3, p3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v1

    if-lez p3, :cond_58

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lb/d/b;->cardview_light_background:I

    goto :goto_5e

    :cond_58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lb/d/b;->cardview_dark_background:I

    :goto_5e
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_2f

    :goto_67
    sget p3, Lb/d/e;->CardView_cardCornerRadius:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    sget p3, Lb/d/e;->CardView_cardElevation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    sget p3, Lb/d/e;->CardView_cardMaxElevation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    sget v1, Lb/d/e;->CardView_cardUseCompatPadding:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    sget v1, Lb/d/e;->CardView_cardPreventCornerOverlap:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    sget v1, Lb/d/e;->CardView_contentPadding:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lb/d/e;->CardView_contentPaddingLeft:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lb/d/e;->CardView_contentPaddingTop:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lb/d/e;->CardView_contentPaddingRight:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lb/d/e;->CardView_contentPaddingBottom:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    cmpl-float v1, v6, p3

    if-lez v1, :cond_bf

    move v7, v6

    goto :goto_c0

    :cond_bf
    move v7, p3

    :goto_c0
    sget p3, Lb/d/e;->CardView_android_minWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    sget p3, Lb/d/e;->CardView_android_minHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method static synthetic access$001(Landroidx/cardview/widget/CardView;IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Landroidx/cardview/widget/CardView;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Landroidx/cardview/widget/CardView;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 3

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->e(Landroidx/cardview/widget/d;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .registers 3

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .registers 2

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .registers 2

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .registers 2

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .registers 2

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .registers 3

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->d(Landroidx/cardview/widget/d;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .registers 3

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->b(Landroidx/cardview/widget/d;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .registers 8

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    instance-of v0, v0, Landroidx/cardview/widget/b;

    if-nez v0, :cond_50

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_13

    if-eq v0, v1, :cond_13

    goto :goto_2d

    :cond_13
    sget-object v3, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v4, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v3, v4}, Landroidx/cardview/widget/e;->h(Landroidx/cardview/widget/d;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_2d
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_36

    if-eq v0, v1, :cond_36

    goto :goto_50

    :cond_36
    sget-object v1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v2, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v1, v2}, Landroidx/cardview/widget/e;->g(Landroidx/cardview/widget/d;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_50
    :goto_50
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .registers 4

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .registers 4

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/e;->b(Landroidx/cardview/widget/d;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .registers 6

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object p2, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {p1, p2}, Landroidx/cardview/widget/e;->f(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .registers 4

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/e;->c(Landroidx/cardview/widget/d;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2

    iput p1, p0, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2

    iput p1, p0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 5

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_d

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {p1, v0}, Landroidx/cardview/widget/e;->i(Landroidx/cardview/widget/d;)V

    :cond_d
    return-void
.end method

.method public setRadius(F)V
    .registers 4

    sget-object v0, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/e;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/d;

    invoke-interface {p1, v0}, Landroidx/cardview/widget/e;->c(Landroidx/cardview/widget/d;)V

    :cond_d
    return-void
.end method

###### Class androidx.cardview.widget.CardView.a (androidx.cardview.widget.CardView$a)
.class Landroidx/cardview/widget/CardView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/cardview/widget/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cardview/widget/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Landroidx/cardview/widget/CardView;


# direct methods
.method constructor <init>(Landroidx/cardview/widget/CardView;)V
    .registers 2

    iput-object p1, p0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5

    iget-object v0, p0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    iget v1, v0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    if-le p1, v1, :cond_9

    invoke-static {v0, p1}, Landroidx/cardview/widget/CardView;->access$101(Landroidx/cardview/widget/CardView;I)V

    :cond_9
    iget-object p1, p0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    iget v0, p1, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    if-le p2, v0, :cond_12

    invoke-static {p1, p2}, Landroidx/cardview/widget/CardView;->access$201(Landroidx/cardview/widget/CardView;I)V

    :cond_12
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Landroidx/cardview/widget/CardView$a;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/cardview/widget/CardView$a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public setShadowPadding(IIII)V
    .registers 8

    iget-object v0, p0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    iget-object v0, v0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    iget-object v1, v0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->access$001(Landroidx/cardview/widget/CardView;IIII)V

    return-void
.end method
