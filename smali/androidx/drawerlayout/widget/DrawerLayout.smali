###### Class androidx.drawerlayout.widget.DrawerLayout (androidx.drawerlayout.widget.DrawerLayout)
.class public Landroidx/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/drawerlayout/widget/DrawerLayout$c;,
        Landroidx/drawerlayout/widget/DrawerLayout$b;,
        Landroidx/drawerlayout/widget/DrawerLayout$e;,
        Landroidx/drawerlayout/widget/DrawerLayout$g;,
        Landroidx/drawerlayout/widget/DrawerLayout$f;,
        Landroidx/drawerlayout/widget/DrawerLayout$d;
    }
.end annotation


# static fields
.field private static final L:[I

.field static final M:[I

.field static final N:Z

.field private static final O:Z


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/Object;

.field private D:Z

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/graphics/drawable/Drawable;

.field private final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/graphics/Matrix;

.field private final b:Landroidx/drawerlayout/widget/DrawerLayout$c;

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private final h:Lb/j/b/c;

.field private final i:Lb/j/b/c;

.field private final j:Landroidx/drawerlayout/widget/DrawerLayout$g;

.field private final k:Landroidx/drawerlayout/widget/DrawerLayout$g;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Landroidx/drawerlayout/widget/DrawerLayout$d;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/drawerlayout/widget/DrawerLayout$d;",
            ">;"
        }
    .end annotation
.end field

.field private v:F

.field private w:F

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->L:[I

    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->M:[I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    sput-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->O:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroidx/drawerlayout/widget/DrawerLayout$c;

    invoke-direct {p2}, Landroidx/drawerlayout/widget/DrawerLayout$c;-><init>()V

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:Landroidx/drawerlayout/widget/DrawerLayout$c;

    const/high16 p2, -0x67000000

    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->e:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroid/graphics/Paint;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:Z

    const/4 p3, 0x3

    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v2, v2, v1

    new-instance v3, Landroidx/drawerlayout/widget/DrawerLayout$g;

    invoke-direct {v3, p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout$g;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$g;

    new-instance p3, Landroidx/drawerlayout/widget/DrawerLayout$g;

    const/4 v3, 0x5

    invoke-direct {p3, p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout$g;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:Landroidx/drawerlayout/widget/DrawerLayout$g;

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$g;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3, p3}, Lb/j/b/c;->a(Landroid/view/ViewGroup;FLb/j/b/c$c;)Lb/j/b/c;

    move-result-object p3

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {p3, p2}, Lb/j/b/c;->d(I)V

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {p3, v2}, Lb/j/b/c;->a(F)V

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$g;

    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {p3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$g;->a(Lb/j/b/c;)V

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:Landroidx/drawerlayout/widget/DrawerLayout$g;

    invoke-static {p0, v3, p3}, Lb/j/b/c;->a(Landroid/view/ViewGroup;FLb/j/b/c$c;)Lb/j/b/c;

    move-result-object p3

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    const/4 v3, 0x2

    invoke-virtual {p3, v3}, Lb/j/b/c;->d(I)V

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {p3, v2}, Lb/j/b/c;->a(F)V

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:Landroidx/drawerlayout/widget/DrawerLayout$g;

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {p3, v2}, Landroidx/drawerlayout/widget/DrawerLayout$g;->a(Lb/j/b/c;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    invoke-static {p0, p2}, Lb/h/o/s;->f(Landroid/view/View;I)V

    new-instance p2, Landroidx/drawerlayout/widget/DrawerLayout$b;

    invoke-direct {p2, p0}, Landroidx/drawerlayout/widget/DrawerLayout$b;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-static {p0, p2}, Lb/h/o/s;->a(Landroid/view/View;Lb/h/o/a;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    invoke-static {p0}, Lb/h/o/s;->h(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_cd

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p3, v2, :cond_cb

    new-instance p3, Landroidx/drawerlayout/widget/DrawerLayout$a;

    invoke-direct {p3, p0}, Landroidx/drawerlayout/widget/DrawerLayout$a;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 p3, 0x500

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    sget-object p3, Landroidx/drawerlayout/widget/DrawerLayout;->L:[I

    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_bc
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_c6

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_cd

    :catchall_c6
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_cb
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    :cond_cd
    :goto_cd
    const/high16 p1, 0x41200000    # 10.0f

    mul-float v1, v1, p1

    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Ljava/util/ArrayList;

    return-void
.end method

.method private a(FFLandroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/Rect;

    :cond_b
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4

    if-eqz p1, :cond_e

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)Z

    const/4 p1, 0x1

    return p1

    :cond_e
    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_36

    :cond_16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_36
    return p2
.end method

.method private b(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->K:Landroid/graphics/Matrix;

    if-nez v0, :cond_30

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->K:Landroid/graphics/Matrix;

    :cond_30
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->K:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->K:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_3a
    return-object p1
.end method

.method private c(Landroid/view/View;Z)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_20

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_13

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_13
    if-eqz p2, :cond_19

    if-ne v2, p1, :cond_19

    :cond_17
    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x4

    :goto_1a
    invoke-static {v2, v3}, Lb/h/o/s;->f(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_20
    return-void
.end method

.method private e()Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget-boolean v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Z

    if-eqz v3, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return v1
.end method

.method private f()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p0}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_10

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_10
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1a
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static g(I)Ljava/lang/String;
    .registers 3

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    const-string p0, "LEFT"

    return-object p0

    :cond_8
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const-string p0, "RIGHT"

    return-object p0

    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p0}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_10

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_10
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1a
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private i()V
    .registers 2

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->O:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static l(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method static m(Landroid/view/View;)Z
    .registers 3

    invoke-static {p0}, Lb/h/o/s;->i(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    invoke-static {p0}, Lb/h/o/s;->i(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method a()V
    .registers 10

    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    if-nez v0, :cond_28

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_22

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_22
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    :cond_28
    return-void
.end method

.method public a(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(IZ)V

    return-void
.end method

.method public a(II)V
    .registers 6

    invoke-static {p0}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Lb/h/o/c;->a(II)I

    move-result v0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_22

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1f

    const v2, 0x800003

    if-eq p2, v2, :cond_1c

    const v2, 0x800005

    if-eq p2, v2, :cond_19

    goto :goto_24

    :cond_19
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    goto :goto_24

    :cond_1c
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    goto :goto_24

    :cond_1f
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    goto :goto_24

    :cond_22
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    :goto_24
    if-eqz p1, :cond_30

    if-ne v0, v1, :cond_2b

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    goto :goto_2d

    :cond_2b
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    :goto_2d
    invoke-virtual {p2}, Lb/j/b/c;->a()V

    :cond_30
    const/4 p2, 0x1

    if-eq p1, p2, :cond_41

    const/4 p2, 0x2

    if-eq p1, p2, :cond_37

    goto :goto_4a

    :cond_37
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)V

    goto :goto_4a

    :cond_41
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method a(IILandroid/view/View;)V
    .registers 7

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {p1}, Lb/j/b/c;->e()I

    move-result p1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {v0}, Lb/j/b/c;->e()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1a

    if-ne v0, v2, :cond_13

    goto :goto_1a

    :cond_13
    if-eq p1, v1, :cond_1b

    if-ne v0, v1, :cond_18

    goto :goto_1b

    :cond_18
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    :cond_1b
    :goto_1b
    if-eqz p3, :cond_39

    if-nez p2, :cond_39

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_30

    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    goto :goto_39

    :cond_30
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_39

    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;)V

    :cond_39
    :goto_39
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->l:I

    if-eq v1, p1, :cond_58

    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->l:I

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    if-eqz p1, :cond_58

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_48
    if-ltz p1, :cond_58

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-interface {p2, v1}, Landroidx/drawerlayout/widget/DrawerLayout$d;->a(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_48

    :cond_58
    return-void
.end method

.method public a(IZ)V
    .registers 5

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    return-void

    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No drawer view found with gravity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    return-void
.end method

.method a(Landroid/view/View;F)V
    .registers 5

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-interface {v1, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout$d;->a(Landroid/view/View;F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .registers 7

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    iput v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    goto :goto_47

    :cond_17
    const/4 v1, 0x4

    if-eqz p2, :cond_3c

    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    or-int/2addr p2, v1

    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_2e

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_34

    :cond_2e
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    :goto_34
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Lb/j/b/c;->b(Landroid/view/View;II)Z

    goto :goto_47

    :cond_3c
    invoke-virtual {p0, p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;F)V

    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    invoke-virtual {p0, p2, v2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(IILandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_4b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroidx/drawerlayout/widget/DrawerLayout$d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .registers 3

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Z

    if-nez p2, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    return-void
.end method

.method a(Z)V
    .registers 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_4b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_48

    if-eqz p1, :cond_20

    iget-boolean v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Z

    if-nez v6, :cond_20

    goto :goto_48

    :cond_20
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p0, v4, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    neg-int v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v4, v6, v8}, Lb/j/b/c;->b(Landroid/view/View;II)Z

    move-result v4

    goto :goto_45

    :cond_37
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v4, v7, v8}, Lb/j/b/c;->b(Landroid/view/View;II)Z

    move-result v4

    :goto_45
    or-int/2addr v3, v4

    iput-boolean v1, v5, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Z

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_4b
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$g;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$g;->b()V

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:Landroidx/drawerlayout/widget/DrawerLayout$g;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$g;->b()V

    if-eqz v3, :cond_5a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5a
    return-void
.end method

.method a(Landroid/view/View;I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result p1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v2, v0, :cond_2f

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v3, 0x1

    goto :goto_2c

    :cond_27
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2f
    if-nez v3, :cond_4d

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_37
    if-ge v1, v0, :cond_4d

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4d
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_12

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_12

    :cond_10
    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p2, 0x4

    :goto_13
    invoke-static {p1, p2}, Lb/h/o/s;->f(Landroid/view/View;I)V

    sget-boolean p2, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    if-nez p2, :cond_1f

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:Landroidx/drawerlayout/widget/DrawerLayout$c;

    invoke-static {p1, p2}, Lb/h/o/s;->a(Landroid/view/View;Lb/h/o/a;)V

    :cond_1f
    return-void
.end method

.method b(I)Landroid/view/View;
    .registers 6

    invoke-static {p0}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lb/h/o/c;->a(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_21

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_1e

    return-object v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    return-void
.end method

.method public b(IZ)V
    .registers 5

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    return-void

    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No drawer view found with gravity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method b(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3c

    const/4 v1, 0x0

    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_18
    if-ltz v0, :cond_28

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-interface {v2, p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;->b(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_28
    invoke-direct {p0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3c

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_3c
    return-void
.end method

.method b(Landroid/view/View;F)V
    .registers 5

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    mul-float v1, v1, p2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    neg-int v1, v1

    :goto_19
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;F)V

    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .registers 6

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1b

    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    const/4 p2, 0x1

    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    goto :goto_53

    :cond_1b
    const/4 v1, 0x0

    if-eqz p2, :cond_48

    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_35

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2, p1, v1, v0}, Lb/j/b/c;->b(Landroid/view/View;II)Z

    goto :goto_53

    :cond_35
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Lb/j/b/c;->b(Landroid/view/View;II)Z

    goto :goto_53

    :cond_48
    invoke-virtual {p0, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;F)V

    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    invoke-virtual {p0, p2, v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(IILandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_57
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Landroidx/drawerlayout/widget/DrawerLayout$d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)I
    .registers 5

    invoke-static {p0}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_42

    const/4 v2, 0x5

    if-eq p1, v2, :cond_33

    const v2, 0x800003

    if-eq p1, v2, :cond_24

    const v2, 0x800005

    if-eq p1, v2, :cond_15

    goto :goto_51

    :cond_15
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    if-eq p1, v1, :cond_1a

    return p1

    :cond_1a
    if-nez v0, :cond_1f

    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    goto :goto_21

    :cond_1f
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    :goto_21
    if-eq p1, v1, :cond_51

    return p1

    :cond_24
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    if-eq p1, v1, :cond_29

    return p1

    :cond_29
    if-nez v0, :cond_2e

    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    goto :goto_30

    :cond_2e
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    :goto_30
    if-eq p1, v1, :cond_51

    return p1

    :cond_33
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    if-eq p1, v1, :cond_38

    return p1

    :cond_38
    if-nez v0, :cond_3d

    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    goto :goto_3f

    :cond_3d
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    :goto_3f
    if-eq p1, v1, :cond_51

    return p1

    :cond_42
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    if-eq p1, v1, :cond_47

    return p1

    :cond_47
    if-nez v0, :cond_4c

    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    goto :goto_4e

    :cond_4c
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    :goto_4e
    if-eq p1, v1, :cond_51

    return p1

    :cond_51
    :goto_51
    const/4 p1, 0x0

    return p1
.end method

.method c()Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method c(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_35

    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_17
    if-ltz v0, :cond_27

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-interface {v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_27
    invoke-direct {p0, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_35

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_35
    return-void
.end method

.method c(Landroid/view/View;F)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;F)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public computeScroll()V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:F

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/j/b/c;->a(Z)Z

    move-result v0

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {v2, v1}, Lb/j/b/c;->a(Z)Z

    move-result v1

    if-nez v0, :cond_2e

    if-eqz v1, :cond_31

    :cond_2e
    invoke-static {p0}, Lb/h/o/s;->C(Landroid/view/View;)V

    :cond_31
    return-void
.end method

.method public d(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->c(I)I

    move-result p1

    return p1

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p0}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lb/h/o/c;->a(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:Ljava/lang/CharSequence;

    return-object p1

    :cond_e
    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Ljava/lang/CharSequence;

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_47

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    goto :goto_47

    :cond_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_28
    if-ltz v0, :cond_45

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->a(FFLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_42

    :cond_3b
    invoke-direct {p0, p1, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_42

    return v3

    :cond_42
    :goto_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_45
    const/4 p1, 0x0

    return p1

    :cond_47
    :goto_47
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 19

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_61

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v11, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_1f
    if-ge v5, v9, :cond_58

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eq v12, v2, :cond_55

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_55

    invoke-static {v12}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_55

    invoke-virtual {p0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_55

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v13, v3, :cond_40

    goto :goto_55

    :cond_40
    invoke-virtual {p0, v12, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_4e

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v12, v10, :cond_55

    move v10, v12

    goto :goto_55

    :cond_4e
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v12, v11, :cond_55

    move v11, v12

    :cond_55
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p1, v10, v8, v11, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v8, v10

    goto :goto_62

    :cond_61
    move v11, v5

    :goto_62
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->f:F

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-lez v6, :cond_99

    if-eqz v4, :cond_99

    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->e:I

    const/high16 v4, -0x1000000

    and-int/2addr v4, v2

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    shl-int/lit8 v3, v3, 0x18

    const v4, 0xffffff

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    const/4 v3, 0x0

    int-to-float v4, v11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_123

    :cond_99
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_de

    invoke-virtual {p0, v2, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_de

    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, v0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {v8}, Lb/j/b/c;->c()I

    move-result v8

    int-to-float v10, v7

    int-to-float v8, v8

    div-float/2addr v10, v8

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v3, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    :goto_da
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_123

    :cond_de
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_123

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_123

    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    iget-object v10, v0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {v10}, Lb/j/b/c;->c()I

    move-result v10

    int-to-float v8, v8

    int-to-float v10, v10

    div-float/2addr v8, v10

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    sub-int v3, v7, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v6, v3, v8, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->z:Landroid/graphics/drawable/Drawable;

    goto :goto_da

    :cond_123
    :goto_123
    return v9
.end method

.method e(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    invoke-static {p0}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lb/h/o/c;->a(II)I

    move-result p1

    return p1
.end method

.method public e(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method f(Landroid/view/View;)F
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    return p1
.end method

.method public f(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(IZ)V

    return-void
.end method

.method g(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$e;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    if-eqz v0, :cond_c

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$e;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$e;)V

    goto :goto_1d

    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$e;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1d

    :cond_18
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1d
    return-object v0
.end method

.method public getDrawerElevation()F
    .registers 2

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->O:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:F

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method i(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    invoke-static {p1}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Lb/h/o/c;->a(II)I

    move-result p1

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    return v1

    :cond_16
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1b

    return v1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public j(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-lez v0, :cond_2e

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {v1, p1}, Lb/j/b/c;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {v2, p1}, Lb/j/b/c;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_38

    if-eq v0, v2, :cond_31

    const/4 p1, 0x2

    const/4 v4, 0x3

    if-eq v0, p1, :cond_1e

    if-eq v0, v4, :cond_31

    goto :goto_36

    :cond_1e
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {p1, v4}, Lb/j/b/c;->a(I)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$g;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$g;->b()V

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:Landroidx/drawerlayout/widget/DrawerLayout$g;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$g;->b()V

    goto :goto_36

    :cond_31
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    :cond_36
    :goto_36
    const/4 p1, 0x0

    goto :goto_60

    :cond_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:F

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:F

    iget v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5d

    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v4, v0, p1}, Lb/j/b/c;->b(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5d

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5d

    const/4 p1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x0

    :goto_5e
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    :goto_60
    if-nez v1, :cond_70

    if-nez p1, :cond_70

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->e()Z

    move-result p1

    if-nez p1, :cond_70

    iget-boolean p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v2, 0x0

    :cond_70
    :goto_70
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->d()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_12

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->b()V

    :cond_12
    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1

    :cond_18
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    sub-int v2, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v3, :cond_cc

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1c

    goto/16 :goto_c7

    :cond_1c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {v0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3d

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v7, v11

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_c7

    :cond_3d
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v0, v6, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_59

    neg-int v10, v8

    int-to-float v11, v8

    iget v12, v7, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    mul-float v12, v12, v11

    float-to-int v12, v12

    add-int/2addr v10, v12

    add-int v12, v8, v10

    int-to-float v12, v12

    div-float/2addr v12, v11

    goto :goto_66

    :cond_59
    int-to-float v10, v8

    iget v11, v7, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    mul-float v11, v11, v10

    float-to-int v11, v11

    sub-int v11, v2, v11

    sub-int v12, v2, v11

    int-to-float v12, v12

    div-float/2addr v12, v10

    move v10, v11

    :goto_66
    iget v11, v7, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    cmpl-float v11, v12, v11

    if-eqz v11, :cond_6e

    const/4 v11, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v11, 0x0

    :goto_6f
    iget v13, v7, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    and-int/lit8 v13, v13, 0x70

    const/16 v14, 0x10

    if-eq v13, v14, :cond_93

    const/16 v14, 0x50

    if-eq v13, v14, :cond_83

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v10

    add-int/2addr v9, v13

    :goto_7f
    invoke-virtual {v6, v10, v13, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_af

    :cond_83
    sub-int v9, p5, p3

    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v13, v9, v13

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    add-int/2addr v8, v10

    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v9, v14

    goto :goto_7f

    :cond_93
    sub-int v13, p5, p3

    sub-int v14, v13, v9

    div-int/lit8 v14, v14, 0x2

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v14, v15, :cond_9f

    move v14, v15

    goto :goto_aa

    :cond_9f
    add-int v15, v14, v9

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v4, v13, v1

    if-le v15, v4, :cond_aa

    sub-int/2addr v13, v1

    sub-int v14, v13, v9

    :cond_aa
    :goto_aa
    add-int/2addr v8, v10

    add-int/2addr v9, v14

    invoke-virtual {v6, v10, v14, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_af
    if-eqz v11, :cond_b4

    invoke-virtual {v0, v6, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;F)V

    :cond_b4
    iget v1, v7, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_bd

    const/4 v4, 0x0

    goto :goto_be

    :cond_bd
    const/4 v4, 0x4

    :goto_be
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_c7

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c7
    :goto_c7
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    goto/16 :goto_c

    :cond_cc
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->n:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1a

    if-eq v2, v6, :cond_30

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1c2

    const/high16 v7, -0x80000000

    if-ne v1, v7, :cond_25

    goto :goto_29

    :cond_25
    if-nez v1, :cond_29

    const/16 v3, 0x12c

    :cond_29
    :goto_29
    if-ne v2, v7, :cond_2c

    goto :goto_30

    :cond_2c
    if-nez v2, :cond_30

    const/16 v4, 0x12c

    :cond_30
    :goto_30
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v1, :cond_40

    invoke-static/range {p0 .. p0}, Lb/h/o/s;->h(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    invoke-static/range {p0 .. p0}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4c
    if-ge v9, v8, :cond_1c1

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5c

    goto/16 :goto_10b

    :cond_5c
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/drawerlayout/widget/DrawerLayout$e;

    const/4 v14, 0x3

    if-eqz v1, :cond_ea

    iget v15, v13, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    invoke-static {v15, v7}, Lb/h/o/c;->a(II)I

    move-result v15

    invoke-static {v12}, Lb/h/o/s;->h(Landroid/view/View;)Z

    move-result v16

    const/16 v6, 0x15

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v16, :cond_a5

    if-lt v2, v6, :cond_ea

    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    if-ne v15, v14, :cond_8e

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v14

    invoke-virtual {v2, v6, v15, v5, v14}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    goto :goto_a1

    :cond_8e
    const/4 v6, 0x5

    if-ne v15, v6, :cond_a1

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    invoke-virtual {v2, v5, v6, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    :cond_a1
    :goto_a1
    invoke-virtual {v12, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    goto :goto_ea

    :cond_a5
    if-lt v2, v6, :cond_ea

    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    const/4 v6, 0x3

    if-ne v15, v6, :cond_bf

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    invoke-virtual {v2, v6, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    goto :goto_d2

    :cond_bf
    const/4 v6, 0x5

    if-ne v15, v6, :cond_d2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    invoke-virtual {v2, v5, v6, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    :cond_d2
    :goto_d2
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    iput v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    iput v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    iput v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_ea
    :goto_ea
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_111

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v3, v2

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v14, v4, v14

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v13

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    :goto_10b
    move/from16 v15, p1

    move/from16 v13, p2

    goto/16 :goto_193

    :cond_111
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_198

    sget-boolean v2, Landroidx/drawerlayout/widget/DrawerLayout;->O:Z

    if-eqz v2, :cond_12a

    invoke-static {v12}, Lb/h/o/s;->g(Landroid/view/View;)F

    move-result v2

    iget v14, v0, Landroidx/drawerlayout/widget/DrawerLayout;->c:F

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_12a

    invoke-static {v12, v14}, Lb/h/o/s;->a(Landroid/view/View;F)V

    :cond_12a
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v14, 0x3

    if-ne v2, v14, :cond_135

    const/4 v14, 0x1

    goto :goto_136

    :cond_135
    const/4 v14, 0x0

    :goto_136
    if-eqz v14, :cond_13a

    if-nez v10, :cond_13f

    :cond_13a
    if-nez v14, :cond_16e

    if-nez v11, :cond_13f

    goto :goto_16e

    :cond_13f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child drawer has absolute gravity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DrawerLayout"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "drawer view along that edge"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16e
    :goto_16e
    if-eqz v14, :cond_172

    const/4 v10, 0x1

    goto :goto_173

    :cond_172
    const/4 v11, 0x1

    :goto_173
    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->d:I

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v15, p1

    invoke-static {v15, v2, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v5

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v13, p2

    invoke-static {v13, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    :goto_193
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4c

    :cond_198
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c1
    return-void

    :cond_1c2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1cb

    :goto_1ca
    throw v1

    :goto_1cb
    goto :goto_1ca
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$f;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$f;

    invoke-virtual {p1}, Lb/j/a/a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$f;->b:I

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)V

    :cond_1e
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$f;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    invoke-virtual {p0, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    :cond_26
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:I

    if-eq v0, v1, :cond_2e

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    :cond_2e
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$f;->e:I

    if-eq v0, v1, :cond_38

    const v2, 0x800003

    invoke-virtual {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    :cond_38
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$f;->f:I

    if-eq p1, v1, :cond_42

    const v0, 0x800005

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    :cond_42
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->i()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$f;

    invoke-direct {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout$f;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_36

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    :goto_23
    iget v7, v4, Landroidx/drawerlayout/widget/DrawerLayout$e;->d:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    :goto_2a
    if-nez v5, :cond_32

    if-eqz v6, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_32
    :goto_32
    iget v0, v4, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$f;->b:I

    :cond_36
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$f;->c:I

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:I

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$f;->e:I

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$f;->f:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {v0, p1}, Lb/j/b/c;->a(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Lb/j/b/c;

    invoke-virtual {v0, p1}, Lb/j/b/c;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    if-eq v0, v2, :cond_1e

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1a

    goto :goto_6e

    :cond_1a
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    goto :goto_6c

    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v3, v4, v5}, Lb/j/b/c;->b(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5b

    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Lb/j/b/c;

    invoke-virtual {v3}, Lb/j/b/c;->d()I

    move-result v3

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    mul-int v3, v3, v3

    int-to-float p1, v3

    cmpg-float p1, v0, p1

    if-gez p1, :cond_5b

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5c

    :cond_5b
    const/4 v1, 0x1

    :cond_5c
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    goto :goto_6e

    :cond_60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:F

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:F

    :goto_6c
    iput-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    :goto_6e
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    :cond_9
    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setDrawerElevation(F)V
    .registers 4

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:F

    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1b

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:F

    invoke-static {v0, v1}, Lb/h/o/s;->a(Landroid/view/View;F)V

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_1b
    return-void
.end method

.method public setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$d;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Landroidx/drawerlayout/widget/DrawerLayout$d;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroidx/drawerlayout/widget/DrawerLayout$d;)V

    :cond_7
    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroidx/drawerlayout/widget/DrawerLayout$d;)V

    :cond_c
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Landroidx/drawerlayout/widget/DrawerLayout$d;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

###### Class androidx.drawerlayout.widget.DrawerLayout.a (androidx.drawerlayout.widget.DrawerLayout$a)
.class Landroidx/drawerlayout/widget/DrawerLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Ljava/lang/Object;Z)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.drawerlayout.widget.DrawerLayout.b (androidx.drawerlayout.widget.DrawerLayout$b)
.class Landroidx/drawerlayout/widget/DrawerLayout$b;
.super Lb/h/o/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field final synthetic b:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .registers 2

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Lb/h/o/a;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->a:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Lb/h/o/b0/c;Landroid/view/ViewGroup;)V
    .registers 7

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p1, v2}, Lb/h/o/b0/c;->a(Landroid/view/View;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method private a(Lb/h/o/b0/c;Lb/h/o/b0/c;)V
    .registers 4

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lb/h/o/b0/c;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Lb/h/o/b0/c;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->d(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->t()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->n(Z)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->e(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->g(Z)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->d(Z)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->h(Z)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->o()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->i(Z)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->a(Z)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->l(Z)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->p()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/h/o/b0/c;->j(Z)V

    invoke-virtual {p2}, Lb/h/o/b0/c;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lb/h/o/b0/c;->a(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->d()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_25

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$b;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_25

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    const/4 p1, 0x1

    return p1

    :cond_27
    invoke-super {p0, p1, p2}, Lb/h/o/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lb/h/o/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/h/o/b0/c;)V
    .registers 6

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1, p2}, Lb/h/o/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/h/o/b0/c;)V

    goto :goto_2a

    :cond_8
    invoke-static {p2}, Lb/h/o/b0/c;->a(Lb/h/o/b0/c;)Lb/h/o/b0/c;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lb/h/o/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/h/o/b0/c;)V

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->c(Landroid/view/View;)V

    invoke-static {p1}, Lb/h/o/s;->p(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1f

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Lb/h/o/b0/c;->b(Landroid/view/View;)V

    :cond_1f
    invoke-direct {p0, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout$b;->a(Lb/h/o/b0/c;Lb/h/o/b0/c;)V

    invoke-virtual {v0}, Lb/h/o/b0/c;->u()V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout$b;->a(Lb/h/o/b0/c;Landroid/view/ViewGroup;)V

    :goto_2a
    const-class p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->h(Z)V

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->i(Z)V

    sget-object p1, Lb/h/o/b0/c$a;->b:Lb/h/o/b0/c$a;

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->b(Lb/h/o/b0/c$a;)Z

    sget-object p1, Lb/h/o/b0/c$a;->c:Lb/h/o/b0/c$a;

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->b(Lb/h/o/b0/c$a;)Z

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    if-nez v0, :cond_d

    invoke-static {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    invoke-super {p0, p1, p2, p3}, Lb/h/o/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

###### Class androidx.drawerlayout.widget.DrawerLayout.c (androidx.drawerlayout.widget.DrawerLayout$c)
.class final Landroidx/drawerlayout/widget/DrawerLayout$c;
.super Lb/h/o/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/h/o/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/h/o/b0/c;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lb/h/o/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/h/o/b0/c;)V

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->b(Landroid/view/View;)V

    :cond_d
    return-void
.end method

###### Class androidx.drawerlayout.widget.DrawerLayout.d (androidx.drawerlayout.widget.DrawerLayout$d)
.class public interface abstract Landroidx/drawerlayout/widget/DrawerLayout$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;F)V
.end method

.method public abstract b(Landroid/view/View;)V
.end method

###### Class androidx.drawerlayout.widget.DrawerLayout.e (androidx.drawerlayout.widget.DrawerLayout$e)
.class public Landroidx/drawerlayout/widget/DrawerLayout$e;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field b:F

.field c:Z

.field d:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    sget-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->M:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    return-void
.end method

.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout$e;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    return-void
.end method

###### Class androidx.drawerlayout.widget.DrawerLayout.f (androidx.drawerlayout.widget.DrawerLayout$f)
.class public Landroidx/drawerlayout/widget/DrawerLayout$f;
.super Lb/j/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "f"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/drawerlayout/widget/DrawerLayout$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$f$a;

    invoke-direct {v0}, Landroidx/drawerlayout/widget/DrawerLayout$f$a;-><init>()V

    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout$f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/j/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    const/4 p2, 0x0

    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/j/a/a;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->b:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lb/j/a/a;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$f;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class androidx.drawerlayout.widget.DrawerLayout.f.a (androidx.drawerlayout.widget.DrawerLayout$f$a)
.class final Landroidx/drawerlayout/widget/DrawerLayout$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/drawerlayout/widget/DrawerLayout$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/drawerlayout/widget/DrawerLayout$f;
    .registers 4

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$f;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/drawerlayout/widget/DrawerLayout$f;
    .registers 4

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    invoke-direct {v0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout$f;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$f$a;->createFromParcel(Landroid/os/Parcel;)Landroidx/drawerlayout/widget/DrawerLayout$f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout$f$a;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/drawerlayout/widget/DrawerLayout$f;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/drawerlayout/widget/DrawerLayout$f;
    .registers 2

    new-array p1, p1, [Landroidx/drawerlayout/widget/DrawerLayout$f;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$f$a;->newArray(I)[Landroidx/drawerlayout/widget/DrawerLayout$f;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.drawerlayout.widget.DrawerLayout.g (androidx.drawerlayout.widget.DrawerLayout$g)
.class Landroidx/drawerlayout/widget/DrawerLayout$g;
.super Lb/j/b/c$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private final a:I

.field private b:Lb/j/b/c;

.field private final c:Ljava/lang/Runnable;

.field final synthetic d:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .registers 3

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Lb/j/b/c$c;-><init>()V

    new-instance p1, Landroidx/drawerlayout/widget/DrawerLayout$g$a;

    invoke-direct {p1, p0}, Landroidx/drawerlayout/widget/DrawerLayout$g$a;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$g;)V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->c:Ljava/lang/Runnable;

    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->a:I

    return-void
.end method

.method private c()V
    .registers 3

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const/4 v1, 0x5

    :cond_6
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;)V

    :cond_13
    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->b:Lb/j/b/c;

    invoke-virtual {v0}, Lb/j/b/c;->c()I

    move-result v0

    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_21

    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v5, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    :cond_1f
    add-int/2addr v3, v0

    goto :goto_2f

    :cond_21
    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v4

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_2f
    if-eqz v4, :cond_67

    if-eqz v1, :cond_39

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v3, :cond_41

    :cond_39
    if-nez v1, :cond_67

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v3, :cond_67

    :cond_41
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->b:Lb/j/b/c;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5}, Lb/j/b/c;->b(Landroid/view/View;II)Z

    iput-boolean v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Z

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$g;->c()V

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a()V

    :cond_67
    return-void
.end method

.method public a(Lb/j/b/c;)V
    .registers 2

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->b:Lb/j/b/c;

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p3, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    const/4 p3, 0x0

    :goto_f
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_18
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, p3, p1

    goto :goto_f
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method public onEdgeDragStarted(II)V
    .registers 4

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x3

    goto :goto_b

    :cond_8
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x5

    :goto_b
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->b:Lb/j/b/c;

    invoke-virtual {v0, p1, p2}, Lb/j/b/c;->a(Landroid/view/View;I)V

    :cond_1e
    return-void
.end method

.method public onEdgeLock(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onEdgeTouched(II)V
    .registers 5

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->c:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$e;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Z

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$g;->c()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 5

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->a:I

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->b:Lb/j/b/c;

    invoke-virtual {v2}, Lb/j/b/c;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(IILandroid/view/View;)V

    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 p5, 0x3

    invoke-virtual {p4, p1, p5}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p4

    if-eqz p4, :cond_10

    add-int/2addr p2, p3

    int-to-float p2, p2

    goto :goto_18

    :cond_10
    iget-object p4, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-float p2, p4

    :goto_18
    int-to-float p3, p3

    div-float/2addr p2, p3

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p3, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;F)V

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_26

    const/4 p2, 0x4

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 9

    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p3, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)F

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_25

    cmpl-float p2, p2, v3

    if-nez p2, :cond_23

    cmpl-float p2, p3, v2

    if-lez p2, :cond_23

    goto :goto_25

    :cond_23
    neg-int p2, v0

    goto :goto_3b

    :cond_25
    :goto_25
    const/4 p2, 0x0

    goto :goto_3b

    :cond_27
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    cmpg-float v4, p2, v3

    if-ltz v4, :cond_39

    cmpl-float p2, p2, v3

    if-nez p2, :cond_3a

    cmpl-float p2, p3, v2

    if-lez p2, :cond_3a

    :cond_39
    sub-int/2addr v1, v0

    :cond_3a
    move p2, v1

    :goto_3b
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->b:Lb/j/b/c;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Lb/j/b/c;->d(II)Z

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 4

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->a:I

    invoke-virtual {p2, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$g;->d:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

###### Class androidx.drawerlayout.widget.DrawerLayout.g.a (androidx.drawerlayout.widget.DrawerLayout$g$a)
.class Landroidx/drawerlayout/widget/DrawerLayout$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/drawerlayout/widget/DrawerLayout$g;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout$g;)V
    .registers 2

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$g$a;->b:Landroidx/drawerlayout/widget/DrawerLayout$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$g$a;->b:Landroidx/drawerlayout/widget/DrawerLayout$g;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout$g;->a()V

    return-void
.end method
