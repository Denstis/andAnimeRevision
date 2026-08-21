###### Class me.relex.circleindicator.CircleIndicator (me.relex.circleindicator.CircleIndicator)
.class public Lme/relex/circleindicator/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/circleindicator/CircleIndicator$c;
    }
.end annotation


# instance fields
.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/animation/Animator;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:Landroid/animation/Animator;

.field private n:I

.field private final o:Landroidx/viewpager/widget/ViewPager$j;

.field private p:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    sget v1, Lme/relex/circleindicator/a;->scale_with_alpha:I

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    sget v1, Lme/relex/circleindicator/b;->white_radius:I

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    new-instance v0, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$j;

    new-instance v0, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    sget v1, Lme/relex/circleindicator/a;->scale_with_alpha:I

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    sget v1, Lme/relex/circleindicator/b;->white_radius:I

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    new-instance v0, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$j;

    new-instance v0, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    sget v0, Lme/relex/circleindicator/a;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    sget v0, Lme/relex/circleindicator/b;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    new-instance p3, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p3, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p3, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$j;

    new-instance p3, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p3, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p3, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    sget p4, Lme/relex/circleindicator/a;->scale_with_alpha:I

    iput p4, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    const/4 p4, 0x0

    iput p4, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    sget p4, Lme/relex/circleindicator/b;->white_radius:I

    iput p4, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    iput p4, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    new-instance p3, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p3, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p3, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$j;

    new-instance p3, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p3, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p3, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lme/relex/circleindicator/CircleIndicator;I)I
    .registers 2

    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    return p1
.end method

.method static synthetic a(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    iget-object p0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private a()V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    if-gtz v0, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v0, :cond_2e

    if-ne v1, v3, :cond_24

    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    iget-object v5, p0, Lme/relex/circleindicator/CircleIndicator;->l:Landroid/animation/Animator;

    goto :goto_28

    :cond_24
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    iget-object v5, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroid/animation/Animator;

    :goto_28
    invoke-direct {p0, v2, v4, v5}, Lme/relex/circleindicator/CircleIndicator;->a(IILandroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2e
    return-void
.end method

.method private a(IILandroid/animation/Animator;)V
    .registers 6

    invoke-virtual {p3}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p3}, Landroid/animation/Animator;->end()V

    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    :cond_c
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget p2, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    invoke-virtual {p0, v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p1, :cond_2e

    iget p1, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_34

    :cond_2e
    iget p1, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_34
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    const/high16 v1, 0x40a00000    # 5.0f

    if-gez v0, :cond_a

    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->a(F)I

    move-result v0

    :cond_a
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    if-gez v0, :cond_14

    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->a(F)I

    move-result v0

    :cond_14
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    if-gez v0, :cond_1e

    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->a(F)I

    move-result v0

    :cond_1e
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    if-nez v0, :cond_26

    sget v0, Lme/relex/circleindicator/a;->scale_with_alpha:I

    :cond_26
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->j:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->c(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->l:Landroid/animation/Animator;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->l:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->k:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroid/animation/Animator;

    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->m:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget p1, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    if-nez p1, :cond_52

    sget p1, Lme/relex/circleindicator/b;->white_radius:I

    :cond_52
    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    iget p1, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    if-nez p1, :cond_5a

    iget p1, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    :cond_5a
    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    sget-object v0, Lme/relex/circleindicator/c;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lme/relex/circleindicator/c;->CircleIndicator_ci_width:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    sget p2, Lme/relex/circleindicator/c;->CircleIndicator_ci_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    sget p2, Lme/relex/circleindicator/c;->CircleIndicator_ci_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    sget p2, Lme/relex/circleindicator/c;->CircleIndicator_ci_animator:I

    sget v1, Lme/relex/circleindicator/a;->scale_with_alpha:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    sget p2, Lme/relex/circleindicator/c;->CircleIndicator_ci_animator_reverse:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    sget p2, Lme/relex/circleindicator/c;->CircleIndicator_ci_drawable:I

    sget v2, Lme/relex/circleindicator/b;->white_radius:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    sget p2, Lme/relex/circleindicator/c;->CircleIndicator_ci_drawable_unselected:I

    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    sget p2, Lme/relex/circleindicator/c;->CircleIndicator_ci_orientation:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_53

    const/4 v1, 0x1

    :cond_53
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget p2, Lme/relex/circleindicator/c;->CircleIndicator_ci_gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_5f

    goto :goto_61

    :cond_5f
    const/16 p2, 0x11

    :goto_61
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/animation/Animator;
    .registers 4

    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    if-nez v0, :cond_14

    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    new-instance v0, Lme/relex/circleindicator/CircleIndicator$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/relex/circleindicator/CircleIndicator$c;-><init>(Lme/relex/circleindicator/CircleIndicator;Lme/relex/circleindicator/CircleIndicator$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_18

    :cond_14
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    :goto_18
    return-object p1
.end method

.method static synthetic b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lme/relex/circleindicator/CircleIndicator;->k:Landroid/animation/Animator;

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/animation/Animator;
    .registers 3

    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lme/relex/circleindicator/CircleIndicator;->j:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic d(Lme/relex/circleindicator/CircleIndicator;)I
    .registers 1

    iget p0, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    return p0
.end method

.method static synthetic e(Lme/relex/circleindicator/CircleIndicator;)I
    .registers 1

    iget p0, p0, Lme/relex/circleindicator/CircleIndicator;->i:I

    return p0
.end method

.method static synthetic f(Lme/relex/circleindicator/CircleIndicator;)I
    .registers 1

    iget p0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    return p0
.end method

.method static synthetic g(Lme/relex/circleindicator/CircleIndicator;)V
    .registers 1

    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->a()V

    return-void
.end method


# virtual methods
.method public a(F)I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .registers 2

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$j;)V

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$j;)V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "can not find Viewpager , setViewPager first"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 3

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    if-eqz p1, :cond_2b

    const/4 p1, -0x1

    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:I

    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->a()V

    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$j;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$j;)V

    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$j;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$j;)V

    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$j;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$j;->onPageSelected(I)V

    :cond_2b
    return-void
.end method

###### Class me.relex.circleindicator.CircleIndicator.a (me.relex.circleindicator.CircleIndicator$a)
.class Lme/relex/circleindicator/CircleIndicator$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/relex/circleindicator/CircleIndicator;


# direct methods
.method constructor <init>(Lme/relex/circleindicator/CircleIndicator;)V
    .registers 2

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    if-gtz v0, :cond_1e

    goto/16 :goto_b1

    :cond_1e
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3c
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_5a
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->d(Lme/relex/circleindicator/CircleIndicator;)I

    move-result v0

    if-ltz v0, :cond_89

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->d(Lme/relex/circleindicator/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->e(Lme/relex/circleindicator/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->b(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_89
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_ac

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->f(Lme/relex/circleindicator/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->c(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_ac
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0, p1}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;I)I

    :cond_b1
    :goto_b1
    return-void
.end method

###### Class me.relex.circleindicator.CircleIndicator.b (me.relex.circleindicator.CircleIndicator$b)
.class Lme/relex/circleindicator/CircleIndicator$b;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/relex/circleindicator/CircleIndicator;


# direct methods
.method constructor <init>(Lme/relex/circleindicator/CircleIndicator;)V
    .registers 2

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_23

    return-void

    :cond_23
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator;->d(Lme/relex/circleindicator/CircleIndicator;)I

    move-result v1

    if-ge v1, v0, :cond_36

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    goto :goto_39

    :cond_36
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    const/4 v1, -0x1

    :goto_39
    invoke-static {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->a(Lme/relex/circleindicator/CircleIndicator;I)I

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator;->g(Lme/relex/circleindicator/CircleIndicator;)V

    return-void
.end method

###### Class me.relex.circleindicator.CircleIndicator.c (me.relex.circleindicator.CircleIndicator$c)
.class Lme/relex/circleindicator/CircleIndicator$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# direct methods
.method private constructor <init>(Lme/relex/circleindicator/CircleIndicator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/relex/circleindicator/CircleIndicator;Lme/relex/circleindicator/CircleIndicator$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator$c;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
