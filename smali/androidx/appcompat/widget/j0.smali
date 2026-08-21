###### Class androidx.appcompat.widget.j0 (androidx.appcompat.widget.j0)
.class public Landroidx/appcompat/widget/j0;
.super Landroid/widget/HorizontalScrollView;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/j0$c;,
        Landroidx/appcompat/widget/j0$b;,
        Landroidx/appcompat/widget/j0$d;
    }
.end annotation


# instance fields
.field b:Ljava/lang/Runnable;

.field private c:Landroidx/appcompat/widget/j0$c;

.field d:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private e:Landroid/widget/Spinner;

.field private f:Z

.field g:I

.field h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method private a()Landroid/widget/Spinner;
    .registers 5

    new-instance v0, Landroidx/appcompat/widget/u;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lb/a/a;->actionDropDownStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v0
.end method

.method private b()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private c()V
    .registers 5

    invoke-direct {p0}, Landroidx/appcompat/widget/j0;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    if-nez v0, :cond_11

    invoke-direct {p0}, Landroidx/appcompat/widget/j0;->a()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_34

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    new-instance v1, Landroidx/appcompat/widget/j0$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/j0$b;-><init>(Landroidx/appcompat/widget/j0;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_34
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_3e

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/j0;->b:Ljava/lang/Runnable;

    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    iget v1, p0, Landroidx/appcompat/widget/j0;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private d()Z
    .registers 6

    invoke-direct {p0}, Landroidx/appcompat/widget/j0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/j0;->setTabSelected(I)V

    return v1
.end method


# virtual methods
.method a(Landroidx/appcompat/app/a$c;Z)Landroidx/appcompat/widget/j0$d;
    .registers 5

    new-instance v0, Landroidx/appcompat/widget/j0$d;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/appcompat/widget/j0$d;-><init>(Landroidx/appcompat/widget/j0;Landroid/content/Context;Landroidx/appcompat/app/a$c;Z)V

    if-eqz p2, :cond_1b

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Landroidx/appcompat/widget/j0;->i:I

    invoke-direct {p1, p2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    :cond_1b
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object p1, p0, Landroidx/appcompat/widget/j0;->c:Landroidx/appcompat/widget/j0$c;

    if-nez p1, :cond_2a

    new-instance p1, Landroidx/appcompat/widget/j0$c;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/j0$c;-><init>(Landroidx/appcompat/widget/j0;)V

    iput-object p1, p0, Landroidx/appcompat/widget/j0;->c:Landroidx/appcompat/widget/j0$c;

    :cond_2a
    iget-object p1, p0, Landroidx/appcompat/widget/j0;->c:Landroidx/appcompat/widget/j0$c;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2f
    return-object v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_d
    new-instance v0, Landroidx/appcompat/widget/j0$a;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/j0$a;-><init>(Landroidx/appcompat/widget/j0;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/j0;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Landroidx/appcompat/widget/j0;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/a/n/a;->a(Landroid/content/Context;)Lb/a/n/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/n/a;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/j0;->setContentHeight(I)V

    invoke-virtual {p1}, Lb/a/n/a;->d()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/j0;->h:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    check-cast p2, Landroidx/appcompat/widget/j0$d;

    invoke-virtual {p2}, Landroidx/appcompat/widget/j0$d;->a()Landroidx/appcompat/app/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/a$c;->e()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    iget-object v4, p0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v0, :cond_3f

    if-eq p2, v2, :cond_1e

    const/high16 v5, -0x80000000

    if-ne p2, v5, :cond_3f

    :cond_1e
    const/4 p2, 0x2

    if-le v4, p2, :cond_2f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3ecccccd    # 0.4f

    mul-float p2, p2, v4

    float-to-int p2, p2

    iput p2, p0, Landroidx/appcompat/widget/j0;->g:I

    goto :goto_36

    :cond_2f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    div-int/2addr v4, p2

    iput v4, p0, Landroidx/appcompat/widget/j0;->g:I

    :goto_36
    iget p2, p0, Landroidx/appcompat/widget/j0;->g:I

    iget v4, p0, Landroidx/appcompat/widget/j0;->h:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_40

    :cond_3f
    const/4 p2, -0x1

    :goto_40
    iput p2, p0, Landroidx/appcompat/widget/j0;->g:I

    iget p2, p0, Landroidx/appcompat/widget/j0;->i:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v3, :cond_4f

    iget-boolean v2, p0, Landroidx/appcompat/widget/j0;->f:Z

    if-eqz v2, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    if-eqz v0, :cond_67

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_67

    invoke-direct {p0}, Landroidx/appcompat/widget/j0;->c()V

    goto :goto_6a

    :cond_67
    invoke-direct {p0}, Landroidx/appcompat/widget/j0;->d()Z

    :goto_6a
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_7e

    if-eq v0, p1, :cond_7e

    iget p1, p0, Landroidx/appcompat/widget/j0;->j:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/j0;->setTabSelected(I)V

    :cond_7e
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/j0;->f:Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/j0;->i:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .registers 7

    iput p1, p0, Landroidx/appcompat/widget/j0;->j:I

    iget-object v0, p0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1f

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/j0;->a(I)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->e:Landroid/widget/Spinner;

    if-eqz v0, :cond_2b

    if-ltz p1, :cond_2b

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2b
    return-void
.end method

###### Class androidx.appcompat.widget.j0.a (androidx.appcompat.widget.j0$a)
.class Landroidx/appcompat/widget/j0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/j0;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/j0$a;->c:Landroidx/appcompat/widget/j0;

    iput-object p2, p0, Landroidx/appcompat/widget/j0$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/j0$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/j0$a;->c:Landroidx/appcompat/widget/j0;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/j0$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/j0$a;->c:Landroidx/appcompat/widget/j0;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Landroidx/appcompat/widget/j0$a;->c:Landroidx/appcompat/widget/j0;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/j0;->b:Ljava/lang/Runnable;

    return-void
.end method

###### Class androidx.appcompat.widget.j0.b (androidx.appcompat.widget.j0$b)
.class Landroidx/appcompat/widget/j0$b;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/j0$b;->b:Landroidx/appcompat/widget/j0;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/j0$b;->b:Landroidx/appcompat/widget/j0;

    iget-object v0, v0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/j0$b;->b:Landroidx/appcompat/widget/j0;

    iget-object v0, v0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/j0$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/j0$d;->a()Landroidx/appcompat/app/a$c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_10

    iget-object p2, p0, Landroidx/appcompat/widget/j0$b;->b:Landroidx/appcompat/widget/j0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/j0$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a$c;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/j0;->a(Landroidx/appcompat/app/a$c;Z)Landroidx/appcompat/widget/j0$d;

    move-result-object p2

    goto :goto_1c

    :cond_10
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/widget/j0$d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/j0$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a$c;

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/j0$d;->a(Landroidx/appcompat/app/a$c;)V

    :goto_1c
    return-object p2
.end method

###### Class androidx.appcompat.widget.j0.c (androidx.appcompat.widget.j0$c)
.class Landroidx/appcompat/widget/j0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/j0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/j0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/j0$c;->b:Landroidx/appcompat/widget/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/j0$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j0$d;->a()Landroidx/appcompat/app/a$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->e()V

    iget-object v0, p0, Landroidx/appcompat/widget/j0$c;->b:Landroidx/appcompat/widget/j0;

    iget-object v0, v0, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_29

    iget-object v3, p0, Landroidx/appcompat/widget/j0$c;->b:Landroidx/appcompat/widget/j0;

    iget-object v3, v3, Landroidx/appcompat/widget/j0;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_29
    return-void
.end method

###### Class androidx.appcompat.widget.j0.d (androidx.appcompat.widget.j0$d)
.class Landroidx/appcompat/widget/j0$d;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final b:[I

.field private c:Landroidx/appcompat/app/a$c;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field final synthetic g:Landroidx/appcompat/widget/j0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/j0;Landroid/content/Context;Landroidx/appcompat/app/a$c;Z)V
    .registers 8

    iput-object p1, p0, Landroidx/appcompat/widget/j0$d;->g:Landroidx/appcompat/widget/j0;

    sget p1, Lb/a/a;->actionBarTabStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, p1, v1

    iput-object p1, p0, Landroidx/appcompat/widget/j0$d;->b:[I

    iput-object p3, p0, Landroidx/appcompat/widget/j0$d;->c:Landroidx/appcompat/app/a$c;

    iget-object p1, p0, Landroidx/appcompat/widget/j0$d;->b:[I

    sget p3, Lb/a/a;->actionBarTabStyle:I

    invoke-static {p2, v0, p1, p3, v1}, Landroidx/appcompat/widget/q0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/q0;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/q0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    invoke-virtual {p1}, Landroidx/appcompat/widget/q0;->a()V

    if-eqz p4, :cond_35

    const p1, 0x800013

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_35
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0$d;->b()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/app/a$c;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/j0$d;->c:Landroidx/appcompat/app/a$c;

    return-object v0
.end method

.method public a(Landroidx/appcompat/app/a$c;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/j0$d;->c:Landroidx/appcompat/app/a$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/j0$d;->b()V

    return-void
.end method

.method public b()V
    .registers 11

    iget-object v0, p0, Landroidx/appcompat/widget/j0$d;->c:Landroidx/appcompat/app/a$c;

    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->b()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1b

    if-eqz v0, :cond_18

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1b
    iput-object v1, p0, Landroidx/appcompat/widget/j0$d;->f:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/widget/j0$d;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_24
    iget-object v0, p0, Landroidx/appcompat/widget/j0$d;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_d3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/j0$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d3

    :cond_32
    iget-object v1, p0, Landroidx/appcompat/widget/j0$d;->f:Landroid/view/View;

    if-eqz v1, :cond_3b

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroidx/appcompat/widget/j0$d;->f:Landroid/view/View;

    :cond_3b
    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->d()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, -0x2

    if-eqz v1, :cond_70

    iget-object v8, p0, Landroidx/appcompat/widget/j0$d;->e:Landroid/widget/ImageView;

    if-nez v8, :cond_65

    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object v8, p0, Landroidx/appcompat/widget/j0$d;->e:Landroid/widget/ImageView;

    :cond_65
    iget-object v8, p0, Landroidx/appcompat/widget/j0$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroidx/appcompat/widget/j0$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7c

    :cond_70
    iget-object v1, p0, Landroidx/appcompat/widget/j0$d;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_7c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroidx/appcompat/widget/j0$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7c
    :goto_7c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b2

    iget-object v2, p0, Landroidx/appcompat/widget/j0$d;->d:Landroid/widget/TextView;

    if-nez v2, :cond_a7

    new-instance v2, Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lb/a/a;->actionBarTabTextStyle:I

    invoke-direct {v2, v8, v3, v9}, Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/j0$d;->d:Landroid/widget/TextView;

    :cond_a7
    iget-object v2, p0, Landroidx/appcompat/widget/j0$d;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroidx/appcompat/widget/j0$d;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_be

    :cond_b2
    iget-object v4, p0, Landroidx/appcompat/widget/j0$d;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_be

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Landroidx/appcompat/widget/j0$d;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_be
    :goto_be
    iget-object v2, p0, Landroidx/appcompat/widget/j0$d;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_c9

    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->a()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c9
    if-eqz v1, :cond_cc

    goto :goto_d0

    :cond_cc
    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->a()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_d0
    invoke-static {p0, v3}, Landroidx/appcompat/widget/s0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_d3
    :goto_d3
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroidx/appcompat/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroidx/appcompat/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Landroidx/appcompat/widget/j0$d;->g:Landroidx/appcompat/widget/j0;

    iget p1, p1, Landroidx/appcompat/widget/j0;->g:I

    if-lez p1, :cond_1c

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/widget/j0$d;->g:Landroidx/appcompat/widget/j0;

    iget v0, v0, Landroidx/appcompat/widget/j0;->g:I

    if-le p1, v0, :cond_1c

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1c
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :cond_14
    return-void
.end method
