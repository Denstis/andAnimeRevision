###### Class androidx.viewpager.widget.ViewPager (androidx.viewpager.widget.ViewPager)
.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$n;,
        Landroidx/viewpager/widget/ViewPager$g;,
        Landroidx/viewpager/widget/ViewPager$l;,
        Landroidx/viewpager/widget/ViewPager$h;,
        Landroidx/viewpager/widget/ViewPager$m;,
        Landroidx/viewpager/widget/ViewPager$e;,
        Landroidx/viewpager/widget/ViewPager$i;,
        Landroidx/viewpager/widget/ViewPager$k;,
        Landroidx/viewpager/widget/ViewPager$j;,
        Landroidx/viewpager/widget/ViewPager$f;
    }
.end annotation


# static fields
.field static final g0:[I

.field private static final h0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/ViewPager$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final i0:Landroid/view/animation/Interpolator;

.field private static final j0:Landroidx/viewpager/widget/ViewPager$n;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:I

.field private I:Landroid/view/VelocityTracker;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:Landroid/widget/EdgeEffect;

.field private P:Landroid/widget/EdgeEffect;

.field private Q:Z

.field private R:Z

.field private S:I

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$j;",
            ">;"
        }
    .end annotation
.end field

.field private U:Landroidx/viewpager/widget/ViewPager$j;

.field private V:Landroidx/viewpager/widget/ViewPager$j;

.field private W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$i;",
            ">;"
        }
    .end annotation
.end field

.field private a0:Landroidx/viewpager/widget/ViewPager$k;

.field private b:I

.field private b0:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/ViewPager$f;",
            ">;"
        }
    .end annotation
.end field

.field private c0:I

.field private final d:Landroidx/viewpager/widget/ViewPager$f;

.field private d0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/Rect;

.field private final e0:Ljava/lang/Runnable;

.field f:Landroidx/viewpager/widget/a;

.field private f0:I

.field g:I

.field private h:I

.field private i:Landroid/os/Parcelable;

.field private j:Ljava/lang/ClassLoader;

.field private k:Landroid/widget/Scroller;

.field private l:Z

.field private m:Landroidx/viewpager/widget/ViewPager$l;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->g0:[I

    new-instance v0, Landroidx/viewpager/widget/ViewPager$a;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$a;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->h0:Ljava/util/Comparator;

    new-instance v0, Landroidx/viewpager/widget/ViewPager$b;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$b;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->i0:Landroid/view/animation/Interpolator;

    new-instance v0, Landroidx/viewpager/widget/ViewPager$n;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$n;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->j0:Landroidx/viewpager/widget/ViewPager$n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    new-instance p1, Landroidx/viewpager/widget/ViewPager$f;

    invoke-direct {p1}, Landroidx/viewpager/widget/ViewPager$f;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroidx/viewpager/widget/ViewPager$f;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->j:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    const/4 v0, 0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->x:I

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    new-instance p1, Landroidx/viewpager/widget/ViewPager$c;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/ViewPager$c;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->f0:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    new-instance p1, Landroidx/viewpager/widget/ViewPager$f;

    invoke-direct {p1}, Landroidx/viewpager/widget/ViewPager$f;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroidx/viewpager/widget/ViewPager$f;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/os/Parcelable;

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->j:Ljava/lang/ClassLoader;

    const p2, -0x800001

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    const/4 p2, 0x1

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->x:I

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    iput-boolean p2, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    new-instance p1, Landroidx/viewpager/widget/ViewPager$c;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/ViewPager$c;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->f0:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->b()V

    return-void
.end method

.method private a(IFII)I
    .registers 6

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->L:I

    if-le p4, v0, :cond_16

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    if-le p4, v0, :cond_16

    if-lez p3, :cond_13

    goto :goto_24

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_16
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-lt p1, p3, :cond_1e

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_21

    :cond_1e
    const p3, 0x3f19999a    # 0.6f

    :goto_21
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    :goto_24
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4f

    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager$f;

    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager$f;

    iget p2, p2, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget p3, p3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_4f
    return p1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    if-nez p2, :cond_e

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_2a
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5b

    if-eq p2, p0, :cond_5b

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_2a

    :cond_5b
    return-object p1
.end method

.method private a(IIII)V
    .registers 6

    if-lez p2, :cond_4b

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_76

    :cond_22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    :goto_43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_76

    :cond_4b
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->b(I)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object p2

    if-eqz p2, :cond_5c

    iget p2, p2, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_5d

    :cond_5c
    const/4 p2, 0x0

    :goto_5d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_76

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    goto :goto_43

    :cond_76
    :goto_76
    return-void
.end method

.method private a(IZIZ)V
    .registers 10

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->b(I)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz p2, :cond_2a

    invoke-virtual {p0, v0, v1, p3}, Landroidx/viewpager/widget/ViewPager;->a(III)V

    if-eqz p4, :cond_38

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->d(I)V

    goto :goto_38

    :cond_2a
    if-eqz p4, :cond_2f

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->d(I)V

    :cond_2f
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->f(I)Z

    :cond_38
    :goto_38
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    if-ne v1, v2, :cond_24

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_24
    return-void
.end method

.method private a(Landroidx/viewpager/widget/ViewPager$f;ILandroidx/viewpager/widget/ViewPager$f;)V
    .registers 13

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_12

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz p3, :cond_9c

    iget v1, p3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget v3, p1, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ge v1, v3, :cond_5f

    const/4 v3, 0x0

    iget v4, p3, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget p3, p3, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    :goto_22
    add-int/lit8 v1, v1, 0x1

    iget p3, p1, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-gt v1, p3, :cond_9c

    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v3, p3, :cond_9c

    :goto_30
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager$f;

    iget v5, p3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-le v1, v5, :cond_49

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_49

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_49
    :goto_49
    iget v5, p3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ge v1, v5, :cond_58

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/a;->b(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_58
    iput v4, p3, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget p3, p3, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr p3, v2

    add-float/2addr v4, p3

    goto :goto_22

    :cond_5f
    if-le v1, v3, :cond_9c

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget p3, p3, Landroidx/viewpager/widget/ViewPager$f;->e:F

    add-int/lit8 v1, v1, -0x1

    :goto_6d
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-lt v1, v4, :cond_9c

    if-ltz v3, :cond_9c

    :goto_73
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$f;

    iget v5, v4, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ge v1, v5, :cond_84

    if-lez v3, :cond_84

    add-int/lit8 v3, v3, -0x1

    goto :goto_73

    :cond_84
    :goto_84
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-le v1, v5, :cond_93

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/a;->b(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_84

    :cond_93
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    iput p3, v4, Landroidx/viewpager/widget/ViewPager$f;->e:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_6d

    :cond_9c
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v1, p1, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget v3, p1, Landroidx/viewpager/widget/ViewPager$f;->b:I

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_ac

    move v3, v1

    goto :goto_af

    :cond_ac
    const v3, -0x800001

    :goto_af
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    iget v3, p1, Landroidx/viewpager/widget/ViewPager$f;->b:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v0, :cond_c0

    iget v3, p1, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget v6, p1, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v3, v6

    sub-float/2addr v3, v5

    goto :goto_c3

    :cond_c0
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    :goto_c3
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    add-int/lit8 v3, p2, -0x1

    :goto_c7
    if-ltz v3, :cond_f0

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager$f;

    :goto_d1
    iget v7, v6, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-le v4, v7, :cond_e1

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v4}, Landroidx/viewpager/widget/a;->b(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    move v4, v8

    goto :goto_d1

    :cond_e1
    iget v8, v6, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v8, v2

    sub-float/2addr v1, v8

    iput v1, v6, Landroidx/viewpager/widget/ViewPager$f;->e:F

    if-nez v7, :cond_eb

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    :cond_eb
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_c7

    :cond_f0
    iget v1, p1, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget v3, p1, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$f;->b:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_fc
    if-ge p2, p3, :cond_129

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$f;

    :goto_106
    iget v4, v3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ge p1, v4, :cond_116

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, p1}, Landroidx/viewpager/widget/a;->b(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v1, p1

    move p1, v6

    goto :goto_106

    :cond_116
    if-ne v4, v0, :cond_11e

    iget v4, v3, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v4, v1

    sub-float/2addr v4, v5

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    :cond_11e
    iput v1, v3, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget v3, v3, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_fc

    :cond_129
    return-void
.end method

.method private a(Z)V
    .registers 9

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_3d

    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_3d

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_35

    if-eq v4, v6, :cond_3d

    :cond_35
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v5, v3, :cond_3d

    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->f(I)Z

    :cond_3d
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->w:Z

    move v3, v0

    const/4 v0, 0x0

    :goto_41
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5b

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$f;

    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$f;->c:Z

    if-eqz v5, :cond_58

    iput-boolean v2, v4, Landroidx/viewpager/widget/ViewPager$f;->c:Z

    const/4 v3, 0x1

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_5b
    if-eqz v3, :cond_6a

    if-eqz p1, :cond_65

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lb/h/o/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_6a

    :cond_65
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private a(FF)Z
    .registers 6

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1e

    cmpg-float p1, p2, v1

    if-gez p1, :cond_1e

    :cond_1c
    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private b(IFI)V
    .registers 7

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->U:Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$j;->onPageScrolled(IFI)V

    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_10
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v2, :cond_1f

    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$j;->onPageScrolled(IFI)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->V:Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v0, :cond_29

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$j;->onPageScrolled(IFI)V

    :cond_29
    return-void
.end method

.method private b(Z)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_19

    if-eqz p1, :cond_d

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->b0:I

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method private b(F)Z
    .registers 11

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    sub-float/2addr v0, p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    mul-float v1, v1, v0

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    mul-float v2, v2, v0

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$f;

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$f;

    iget v6, v3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-eqz v6, :cond_39

    iget v1, v3, Landroidx/viewpager/widget/ViewPager$f;->e:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_3a

    :cond_39
    const/4 v3, 0x1

    :goto_3a
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v8}, Landroidx/viewpager/widget/a;->a()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_4b

    iget v2, v5, Landroidx/viewpager/widget/ViewPager$f;->e:F

    mul-float v2, v2, v0

    const/4 v5, 0x0

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x1

    :goto_4c
    cmpg-float v6, p1, v1

    if-gez v6, :cond_61

    if-eqz v3, :cond_5f

    sub-float p1, v1, p1

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_5f
    move p1, v1

    goto :goto_74

    :cond_61
    cmpl-float v1, p1, v2

    if-lez v1, :cond_74

    if-eqz v5, :cond_73

    sub-float/2addr p1, v2

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->P:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_73
    move p1, v2

    :cond_74
    :goto_74
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->f(I)Z

    return v4
.end method

.method private c(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Landroidx/viewpager/widget/ViewPager$e;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private d(I)V
    .registers 5

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->U:Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$j;->onPageSelected(I)V

    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_10
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v2, :cond_1f

    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$j;->onPageSelected(I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->V:Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v0, :cond_29

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$j;->onPageSelected(I)V

    :cond_29
    return-void
.end method

.method private e(I)V
    .registers 5

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->U:Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$j;->onPageScrollStateChanged(I)V

    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_10
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v2, :cond_1f

    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$j;->onPageScrollStateChanged(I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->V:Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v0, :cond_29

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$j;->onPageScrollStateChanged(I)V

    :cond_29
    return-void
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->z:Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_f
    return-void
.end method

.method private f(I)Z
    .registers 9

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_21

    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    if-eqz p1, :cond_10

    return v2

    :cond_10
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Landroidx/viewpager/widget/ViewPager;->a(IFI)V

    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    if-eqz p1, :cond_1b

    return v2

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->g()Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v6, v0, Landroidx/viewpager/widget/ViewPager$f;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Landroidx/viewpager/widget/ViewPager$f;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    invoke-virtual {p0, v6, p1, v0}, Landroidx/viewpager/widget/ViewPager;->a(IFI)V

    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    if-eqz p1, :cond_4a

    const/4 p1, 0x1

    return p1

    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g()Landroidx/viewpager/widget/ViewPager$f;
    .registers 13

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-lez v0, :cond_19

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_23
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_74

    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$f;

    if-nez v5, :cond_4e

    iget v11, v10, Landroidx/viewpager/widget/ViewPager$f;->b:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_4e

    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroidx/viewpager/widget/ViewPager$f;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    iput v8, v10, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iput v7, v10, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget v8, v10, Landroidx/viewpager/widget/ViewPager$f;->b:I

    invoke-virtual {v7, v8}, Landroidx/viewpager/widget/a;->b(I)F

    move-result v7

    iput v7, v10, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-int/lit8 v1, v1, -0x1

    :cond_4e
    iget v8, v10, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget v7, v10, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    if-nez v5, :cond_5c

    cmpl-float v5, v2, v8

    if-ltz v5, :cond_5b

    goto :goto_5c

    :cond_5b
    return-object v3

    :cond_5c
    :goto_5c
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_73

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_6a

    goto :goto_73

    :cond_6a
    iget v7, v10, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget v9, v10, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-int/lit8 v1, v1, 0x1

    move-object v3, v10

    const/4 v5, 0x0

    goto :goto_23

    :cond_73
    :goto_73
    return-object v10

    :cond_74
    return-object v3
.end method

.method private getClientWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$g;

    iget-boolean v1, v1, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-nez v1, :cond_1a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method private i()Z
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->f()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->P:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->P:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private j()V
    .registers 5

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c0:I

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d0:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d0:Ljava/util/ArrayList;

    goto :goto_13

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_26

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->d0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->d0:Ljava/util/ArrayList;

    sget-object v1, Landroidx/viewpager/widget/ViewPager;->j0:Landroidx/viewpager/widget/ViewPager$n;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2d
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    :cond_6
    return-void
.end method


# virtual methods
.method a(F)F
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method a(II)Landroidx/viewpager/widget/ViewPager$f;
    .registers 5

    new-instance v0, Landroidx/viewpager/widget/ViewPager$f;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$f;-><init>()V

    iput p1, v0, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager$f;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/a;->b(I)F

    move-result p1

    iput p1, v0, Landroidx/viewpager/widget/ViewPager$f;->d:F

    if-ltz p2, :cond_28

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_22

    goto :goto_28

    :cond_22
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2d

    :cond_28
    :goto_28
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2d
    return-object v0
.end method

.method a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;
    .registers 3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_13

    if-eqz v0, :cond_11

    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_d

    goto :goto_11

    :cond_d
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_11
    :goto_11
    const/4 p1, 0x0

    return-object p1

    :cond_13
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .registers 11

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->b:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->x:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    move v5, v1

    move v6, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_28
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_80

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$f;

    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v9, v7, Landroidx/viewpager/widget/ViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/a;->a(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_44

    goto :goto_7e

    :cond_44
    const/4 v9, -0x2

    if-ne v8, v9, :cond_72

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_56

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v2, p0}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;)V

    const/4 v2, 0x1

    :cond_56
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget v8, v7, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget-object v9, v7, Landroidx/viewpager/widget/ViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    iget v7, v7, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ne v5, v7, :cond_70

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    :cond_70
    :goto_70
    const/4 v5, 0x1

    goto :goto_7e

    :cond_72
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-eq v9, v8, :cond_7e

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v9, v5, :cond_7b

    move v6, v8

    :cond_7b
    iput v8, v7, Landroidx/viewpager/widget/ViewPager$f;->b:I

    goto :goto_70

    :cond_7e
    :goto_7e
    add-int/2addr v1, v3

    goto :goto_28

    :cond_80
    if-eqz v2, :cond_87

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;)V

    :cond_87
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    sget-object v1, Landroidx/viewpager/widget/ViewPager;->h0:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_b1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_95
    if-ge v1, v0, :cond_ab

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$g;

    iget-boolean v5, v2, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-nez v5, :cond_a8

    const/4 v5, 0x0

    iput v5, v2, Landroidx/viewpager/widget/ViewPager$g;->c:F

    :cond_a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    :cond_ab
    invoke-virtual {p0, v6, v4, v3}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_b1
    return-void
.end method

.method protected a(IFI)V
    .registers 16

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->S:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_6d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v6, :cond_6d

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$g;

    iget-boolean v10, v9, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-nez v10, :cond_2e

    goto :goto_6a

    :cond_2e
    iget v9, v9, Landroidx/viewpager/widget/ViewPager$g;->b:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_4f

    const/4 v10, 0x3

    if-eq v9, v10, :cond_49

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3c

    move v9, v4

    goto :goto_5e

    :cond_3c
    sub-int v9, v5, v7

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_5b

    :cond_49
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_5e

    :cond_4f
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_5b
    move v11, v9

    move v9, v4

    move v4, v11

    :goto_5e
    add-int/2addr v4, v0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    if-eqz v4, :cond_69

    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_69
    move v4, v9

    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_6d
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->b(IFI)V

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/viewpager/widget/ViewPager$k;

    if-eqz p1, :cond_a1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_7c
    if-ge v1, p2, :cond_a1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$g;

    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-eqz v0, :cond_8d

    goto :goto_9e

    :cond_8d
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/viewpager/widget/ViewPager$k;

    invoke-interface {v3, p3, v0}, Landroidx/viewpager/widget/ViewPager$k;->a(Landroid/view/View;F)V

    :goto_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_a1
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->R:Z

    return-void
.end method

.method a(III)V
    .registers 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_35

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_2c

    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    :goto_2c
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    :goto_39
    move v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_50

    if-nez v7, :cond_50

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    return-void

    :cond_50
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->a(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_8b

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_a5

    :cond_8b
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/a;->b(I)F

    move-result p2

    mul-float p1, p1, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_a5
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Lb/h/o/s;->C(Landroid/view/View;)V

    return-void
.end method

.method public a(IZ)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->w:Z

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    return-void
.end method

.method a(IZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/ViewPager;->a(IZZI)V

    return-void
.end method

.method a(IZZI)V
    .registers 9

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_6f

    :cond_c
    if-nez p3, :cond_1e

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne p3, p1, :cond_1e

    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1e

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1e
    const/4 p3, 0x1

    if-gez p1, :cond_23

    const/4 p1, 0x0

    goto :goto_32

    :cond_23
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    if-lt p1, v0, :cond_32

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->a()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_32
    :goto_32
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->x:I

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_3d

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_53

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_53

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$f;

    iput-boolean p3, v2, Landroidx/viewpager/widget/ViewPager$f;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_53
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-eq v0, p1, :cond_58

    goto :goto_59

    :cond_58
    const/4 p3, 0x0

    :goto_59
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    if-eqz v0, :cond_68

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-eqz p3, :cond_64

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->d(I)V

    :cond_64
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_6e

    :cond_68
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->c(I)V

    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/viewpager/widget/ViewPager;->a(IZIZ)V

    :goto_6e
    return-void

    :cond_6f
    :goto_6f
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public a(Landroidx/viewpager/widget/ViewPager$i;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->W:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->W:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->W:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroidx/viewpager/widget/ViewPager$j;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)Z
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_a

    goto :goto_69

    :cond_a
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_10
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1d

    if-ne v4, p0, :cond_18

    const/4 v4, 0x1

    goto :goto_1e

    :cond_18
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_10

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    if-nez v4, :cond_68

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_34
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4d

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_34

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_68
    move-object v3, v0

    :goto_69
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v0, :cond_b5

    if-eq v0, v3, :cond_b5

    if-ne p1, v5, :cond_9a

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_94

    if-lt v1, v2, :cond_94

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->c()Z

    move-result v0

    goto :goto_98

    :cond_94
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_98
    move v2, v0

    goto :goto_c8

    :cond_9a
    if-ne p1, v4, :cond_c8

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_94

    if-gt v1, v2, :cond_94

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->d()Z

    move-result v0

    goto :goto_98

    :cond_b5
    if-eq p1, v5, :cond_c4

    if-ne p1, v1, :cond_ba

    goto :goto_c4

    :cond_ba
    if-eq p1, v4, :cond_bf

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c8

    :cond_bf
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->d()Z

    move-result v2

    goto :goto_c8

    :cond_c4
    :goto_c4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->c()Z

    move-result v2

    :cond_c8
    :goto_c8
    if-eqz v2, :cond_d1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_d1
    return v2
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_18

    goto :goto_4f

    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->a(I)Z

    move-result p1

    goto :goto_50

    :cond_23
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->a(I)Z

    move-result p1

    goto :goto_50

    :cond_2f
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->d()Z

    move-result p1

    goto :goto_50

    :cond_3a
    const/16 p1, 0x42

    goto :goto_4a

    :cond_3d
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->c()Z

    move-result p1

    goto :goto_50

    :cond_48
    const/16 p1, 0x11

    :goto_4a
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(I)Z

    move-result p1

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 p1, 0x0

    :goto_50
    return p1
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .registers 18

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_52

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_16
    if-ltz v5, :cond_52

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_4f

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_4f

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_4f

    return v2

    :cond_4f
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    :cond_52
    if-eqz p2, :cond_5d

    move v1, p3

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    return v2
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

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v4, v5, :cond_2c

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2f
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_56

    :cond_39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_40

    return-void

    :cond_40
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_51

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_51

    return-void

    :cond_51
    if-eqz p1, :cond_56

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v2, v3, :cond_20

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_a
    move-object v0, p3

    check-cast v0, Landroidx/viewpager/widget/ViewPager$g;

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    invoke-static {p1}, Landroidx/viewpager/widget/ViewPager;->c(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    if-eqz v1, :cond_30

    if-eqz v0, :cond_29

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-nez v1, :cond_21

    goto :goto_29

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    :goto_29
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$g;->d:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_33

    :cond_30
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_33
    return-void
.end method

.method b(I)Landroidx/viewpager/widget/ViewPager$f;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$f;

    iget v2, v1, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ne v2, p1, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$f;

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v3, v1, Landroidx/viewpager/widget/ViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/a;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method b()V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroidx/viewpager/widget/ViewPager;->i0:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->C:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->P:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->L:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->M:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    new-instance v1, Landroidx/viewpager/widget/ViewPager$h;

    invoke-direct {v1, p0}, Landroidx/viewpager/widget/ViewPager$h;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, v1}, Lb/h/o/s;->a(Landroid/view/View;Lb/h/o/a;)V

    invoke-static {p0}, Lb/h/o/s;->i(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_6f

    invoke-static {p0, v0}, Lb/h/o/s;->f(Landroid/view/View;I)V

    :cond_6f
    new-instance v0, Landroidx/viewpager/widget/ViewPager$d;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$d;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, v0}, Lb/h/o/s;->a(Landroid/view/View;Lb/h/o/o;)V

    return-void
.end method

.method public b(Landroidx/viewpager/widget/ViewPager$i;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->W:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public b(Landroidx/viewpager/widget/ViewPager$j;)V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method c(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-eq v2, v1, :cond_f

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->b(I)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v2

    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-nez v1, :cond_18

    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    return-void

    :cond_18
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->w:Z

    if-eqz v1, :cond_20

    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    return-void

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_27

    return-void

    :cond_27
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;)V

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->x:I

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v6}, Landroidx/viewpager/widget/a;->a()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->b:I

    if-ne v6, v7, :cond_1f2

    const/4 v7, 0x0

    :goto_4a
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_66

    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/ViewPager$f;

    iget v9, v8, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-lt v9, v10, :cond_63

    if-ne v9, v10, :cond_66

    goto :goto_67

    :cond_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_66
    const/4 v8, 0x0

    :goto_67
    if-nez v8, :cond_71

    if-lez v6, :cond_71

    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {v0, v8, v7}, Landroidx/viewpager/widget/ViewPager;->a(II)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v8

    :cond_71
    const/4 v9, 0x0

    if-eqz v8, :cond_17f

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_81

    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager$f;

    goto :goto_82

    :cond_81
    const/4 v11, 0x0

    :goto_82
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8c

    const/4 v3, 0x0

    goto :goto_99

    :cond_8c
    iget v14, v8, Landroidx/viewpager/widget/ViewPager$f;->d:F

    sub-float v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float v3, v14, v15

    :goto_99
    iget v14, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    add-int/lit8 v14, v14, -0x1

    move v15, v10

    move v10, v7

    const/4 v7, 0x0

    :goto_a0
    if-ltz v14, :cond_f0

    cmpl-float v16, v7, v3

    if-ltz v16, :cond_c6

    if-ge v14, v4, :cond_c6

    if-nez v11, :cond_ab

    goto :goto_f0

    :cond_ab
    iget v5, v11, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ne v14, v5, :cond_ec

    iget-boolean v5, v11, Landroidx/viewpager/widget/ViewPager$f;->c:Z

    if-nez v5, :cond_ec

    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v11, v11, Landroidx/viewpager/widget/ViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {v5, v0, v14, v11}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v10, v10, -0x1

    if-ltz v15, :cond_ea

    goto :goto_e1

    :cond_c6
    if-eqz v11, :cond_d4

    iget v5, v11, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ne v14, v5, :cond_d4

    iget v5, v11, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v7, v5

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_ea

    goto :goto_e1

    :cond_d4
    add-int/lit8 v5, v15, 0x1

    invoke-virtual {v0, v14, v5}, Landroidx/viewpager/widget/ViewPager;->a(II)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v5

    iget v5, v5, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v7, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v15, :cond_ea

    :goto_e1
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$f;

    goto :goto_eb

    :cond_ea
    const/4 v5, 0x0

    :goto_eb
    move-object v11, v5

    :cond_ec
    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x0

    goto :goto_a0

    :cond_f0
    :goto_f0
    iget v3, v8, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-int/lit8 v4, v10, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_173

    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_109

    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$f;

    goto :goto_10a

    :cond_109
    const/4 v5, 0x0

    :goto_10a
    if-gtz v12, :cond_10e

    const/4 v7, 0x0

    goto :goto_116

    :cond_10e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v11, v12

    div-float/2addr v7, v11

    add-float/2addr v7, v13

    :goto_116
    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    :goto_118
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_173

    cmpl-float v12, v3, v7

    if-ltz v12, :cond_14c

    if-le v11, v1, :cond_14c

    if-nez v5, :cond_125

    goto :goto_173

    :cond_125
    iget v12, v5, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ne v11, v12, :cond_172

    iget-boolean v12, v5, Landroidx/viewpager/widget/ViewPager$f;->c:Z

    if-nez v12, :cond_172

    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v5}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_14a

    :goto_141
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$f;

    goto :goto_172

    :cond_14a
    const/4 v5, 0x0

    goto :goto_172

    :cond_14c
    if-eqz v5, :cond_160

    iget v12, v5, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ne v11, v12, :cond_160

    iget v5, v5, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_14a

    goto :goto_141

    :cond_160
    invoke-virtual {v0, v11, v4}, Landroidx/viewpager/widget/ViewPager;->a(II)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    iget v5, v5, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v3, v5

    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_14a

    goto :goto_141

    :cond_172
    :goto_172
    goto :goto_118

    :cond_173
    :goto_173
    invoke-direct {v0, v8, v10, v2}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;ILandroidx/viewpager/widget/ViewPager$f;)V

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    iget-object v3, v8, Landroidx/viewpager/widget/ViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    :cond_17f
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_189
    if-ge v2, v1, :cond_1b2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$g;

    iput v2, v4, Landroidx/viewpager/widget/ViewPager$g;->f:I

    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-nez v5, :cond_1af

    iget v5, v4, Landroidx/viewpager/widget/ViewPager$g;->c:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_1af

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v3

    if-eqz v3, :cond_1af

    iget v5, v3, Landroidx/viewpager/widget/ViewPager$f;->d:F

    iput v5, v4, Landroidx/viewpager/widget/ViewPager$g;->c:F

    iget v3, v3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iput v3, v4, Landroidx/viewpager/widget/ViewPager$g;->e:I

    :cond_1af
    add-int/lit8 v2, v2, 0x1

    goto :goto_189

    :cond_1b2
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1f1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c6

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v3

    goto :goto_1c7

    :cond_1c6
    const/4 v3, 0x0

    :goto_1c7
    if-eqz v3, :cond_1cf

    iget v1, v3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-eq v1, v2, :cond_1f1

    :cond_1cf
    const/4 v1, 0x0

    :goto_1d0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1f1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v3

    if-eqz v3, :cond_1ee

    iget v3, v3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v3, v4, :cond_1ee

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_1ee

    goto :goto_1f1

    :cond_1ee
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d0

    :cond_1f1
    :goto_1f1
    return-void

    :cond_1f2
    :try_start_1f2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1fe
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f2 .. :try_end_1fe} :catch_1ff

    goto :goto_207

    :catch_1ff
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_207
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_249

    :goto_248
    throw v2

    :goto_249
    goto :goto_248
.end method

.method c()Z
    .registers 3

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-lez v0, :cond_a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .registers 6

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_1b

    int-to-float p1, v0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    if-lez p1, :cond_26

    int-to-float p1, v0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$g;

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_3d

    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->f(I)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3d
    invoke-static {p0}, Lb/h/o/s;->C(Landroid/view/View;)V

    return-void

    :cond_41
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    return-void
.end method

.method d()Z
    .registers 4

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_15

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_15

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    return v2

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_36

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v4

    if-eqz v4, :cond_33

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v4, v5, :cond_33

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_36
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    if-le v0, v2, :cond_18

    goto :goto_24

    :cond_18
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->P:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_a9

    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_65
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->P:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->P:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->P:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a9
    :goto_a9
    if-eqz v1, :cond_ae

    invoke-static {p0}, Lb/h/o/s;->C(Landroid/view/View;)V

    :cond_ae
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method e()V
    .registers 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->c(I)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroidx/viewpager/widget/ViewPager$g;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$g;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidx/viewpager/widget/ViewPager$g;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager$g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/a;
    .registers 2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_9
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d0:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$g;

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$g;->f:I

    return p1
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->x:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_14
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    if-lez v1, :cond_ac

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_ac

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ac

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_ac

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$f;

    iget v7, v5, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$f;

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$f;->b:I

    :goto_45
    if-ge v9, v10, :cond_ac

    :goto_47
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-le v9, v11, :cond_58

    if-ge v6, v8, :cond_58

    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$f;

    goto :goto_47

    :cond_58
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$f;->b:I

    if-ne v9, v11, :cond_67

    iget v7, v5, Landroidx/viewpager/widget/ViewPager$f;->e:F

    iget v11, v5, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_73

    :cond_67
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/a;->b(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    :goto_73
    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_9b

    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->q:I

    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9f

    :cond_9b
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_9f
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_a7

    goto :goto_ac

    :cond_a7
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_45

    :cond_ac
    :goto_ac
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11c

    const/4 v9, 0x1

    if-ne v0, v9, :cond_13

    goto/16 :goto_11c

    :cond_13
    if-eqz v0, :cond_1f

    iget-boolean v1, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    if-eqz v1, :cond_1a

    return v9

    :cond_1a
    iget-boolean v1, v6, Landroidx/viewpager/widget/ViewPager;->z:Z

    if-eqz v1, :cond_1f

    return v8

    :cond_1f
    const/4 v1, 0x2

    if-eqz v0, :cond_ba

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_29

    goto/16 :goto_10a

    :cond_29
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_10a

    :cond_2e
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->H:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    goto/16 :goto_10a

    :cond_35
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->D:F

    sub-float v11, v10, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->G:F

    sub-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v0, v11, v15

    if-eqz v0, :cond_73

    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-direct {v6, v0, v11}, Landroidx/viewpager/widget/ViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_73

    const/4 v2, 0x0

    float-to-int v3, v11

    float-to-int v4, v10

    float-to-int v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_73

    iput v10, v6, Landroidx/viewpager/widget/ViewPager;->D:F

    iput v13, v6, Landroidx/viewpager/widget/ViewPager;->E:F

    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->z:Z

    return v8

    :cond_73
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->C:I

    int-to-float v0, v0

    cmpl-float v0, v12, v0

    if-lez v0, :cond_a3

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v12, v12, v0

    cmpl-float v0, v12, v14

    if-lez v0, :cond_a3

    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    invoke-direct {v6, v9}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    invoke-virtual {v6, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    cmpl-float v0, v11, v15

    if-lez v0, :cond_95

    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->F:F

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->C:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_9b

    :cond_95
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->F:F

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->C:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_9b
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->D:F

    iput v13, v6, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-direct {v6, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_ac

    :cond_a3
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->C:I

    int-to-float v0, v0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_ac

    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->z:Z

    :cond_ac
    :goto_ac
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    if-eqz v0, :cond_10a

    invoke-direct {v6, v10}, Landroidx/viewpager/widget/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-static/range {p0 .. p0}, Lb/h/o/s;->C(Landroid/view/View;)V

    goto :goto_10a

    :cond_ba
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->F:F

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->G:F

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->H:I

    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->z:Z

    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->l:Z

    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->f0:I

    if-ne v0, v1, :cond_105

    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->M:I

    if-le v0, v1, :cond_105

    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->w:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    invoke-direct {v6, v9}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    invoke-virtual {v6, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_10a

    :cond_105
    invoke-direct {v6, v8}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    :cond_10a
    :goto_10a
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_114

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_114
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    return v0

    :cond_11c
    :goto_11c
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->i()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .registers 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_23
    const/16 v12, 0x8

    if-ge v4, v1, :cond_b7

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_b3

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$g;

    iget-boolean v14, v12, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-eqz v14, :cond_b3

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$g;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_64

    const/4 v15, 0x3

    if-eq v14, v15, :cond_59

    const/4 v15, 0x5

    if-eq v14, v15, :cond_4c

    move v14, v5

    goto :goto_70

    :cond_4c
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_70

    :cond_59
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v5

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_70

    :cond_64
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_70
    const/16 v15, 0x10

    if-eq v12, v15, :cond_96

    const/16 v15, 0x30

    if-eq v12, v15, :cond_8b

    const/16 v15, 0x50

    if-eq v12, v15, :cond_7e

    move v12, v7

    goto :goto_a2

    :cond_7e
    sub-int v12, v3, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_a2

    :cond_8b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_a2

    :cond_96
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_a2
    add-int/2addr v14, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_b3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_23

    :cond_b7
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    const/4 v4, 0x0

    :goto_ba
    if-ge v4, v1, :cond_109

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_106

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/ViewPager$g;

    iget-boolean v9, v8, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-nez v9, :cond_106

    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v9

    if-eqz v9, :cond_106

    int-to-float v13, v2

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$f;->e:F

    mul-float v9, v9, v13

    float-to-int v9, v9

    add-int/2addr v9, v5

    iget-boolean v14, v8, Landroidx/viewpager/widget/ViewPager$g;->d:Z

    if-eqz v14, :cond_f9

    const/4 v14, 0x0

    iput-boolean v14, v8, Landroidx/viewpager/widget/ViewPager$g;->d:Z

    iget v8, v8, Landroidx/viewpager/widget/ViewPager$g;->c:F

    mul-float v13, v13, v8

    float-to-int v8, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v14, v3, v7

    sub-int/2addr v14, v10

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v6, v8, v13}, Landroid/view/View;->measure(II)V

    :cond_f9
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v6, v9, v7, v8, v13}, Landroid/view/View;->layout(IIII)V

    :cond_106
    add-int/lit8 v4, v4, 0x1

    goto :goto_ba

    :cond_109
    iput v7, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    sub-int/2addr v3, v10

    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->q:I

    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->S:I

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    if-eqz v1, :cond_11b

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZIZ)V

    goto :goto_11c

    :cond_11b
    const/4 v2, 0x0

    :goto_11c
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, p2

    move p2, p1

    const/4 p1, 0x0

    :goto_39
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge p1, v1, :cond_b4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v3, :cond_b1

    iget-boolean v7, v3, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-eqz v7, :cond_b1

    iget v7, v3, Landroidx/viewpager/widget/ViewPager$g;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_67

    const/16 v9, 0x50

    if-ne v7, v9, :cond_65

    goto :goto_67

    :cond_65
    const/4 v7, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v7, 0x1

    :goto_68
    const/4 v9, 0x3

    if-eq v8, v9, :cond_70

    const/4 v9, 0x5

    if-ne v8, v9, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    :cond_70
    :goto_70
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_77

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_7c

    :cond_77
    if-eqz v4, :cond_7c

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_7e

    :cond_7c
    :goto_7c
    const/high16 v9, -0x80000000

    :goto_7e
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_8b

    if-eq v10, v11, :cond_87

    goto :goto_88

    :cond_87
    move v10, p2

    :goto_88
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_8c

    :cond_8b
    move v10, p2

    :goto_8c
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_95

    if-eq v3, v11, :cond_93

    goto :goto_97

    :cond_93
    move v3, v2

    goto :goto_97

    :cond_95
    move v3, v2

    move v5, v9

    :goto_97
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_aa

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_b1

    :cond_aa
    if-eqz v4, :cond_b1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p2, v3

    :cond_b1
    :goto_b1
    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    :cond_b4
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_c8
    if-ge v0, p1, :cond_f2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_ef

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v2, :cond_e0

    iget-boolean v4, v2, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-nez v4, :cond_ef

    :cond_e0
    int-to-float v4, p2

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$g;->c:F

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_ef
    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    :cond_f2
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_f

    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_12

    :cond_f
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_12
    if-eq v0, v3, :cond_33

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v6

    if-eqz v6, :cond_31

    iget v6, v6, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v6, v7, :cond_31

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    return v4

    :cond_31
    add-int/2addr v0, v1

    goto :goto_12

    :cond_33
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$m;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroidx/viewpager/widget/ViewPager$m;

    invoke-virtual {p1}, Lb/j/a/a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_24

    iget-object v1, p1, Landroidx/viewpager/widget/ViewPager$m;->c:Landroid/os/Parcelable;

    iget-object v2, p1, Landroidx/viewpager/widget/ViewPager$m;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/a;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$m;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    goto :goto_30

    :cond_24
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$m;->b:I

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager$m;->c:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/os/Parcelable;

    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager$m;->d:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->j:Ljava/lang/ClassLoader;

    :goto_30
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/viewpager/widget/ViewPager$m;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/ViewPager$m;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    iput v0, v1, Landroidx/viewpager/widget/ViewPager$m;->b:I

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->c()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/viewpager/widget/ViewPager$m;->c:Landroid/os/Parcelable;

    :cond_17
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_a

    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    invoke-direct {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/ViewPager;->a(IIII)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->N:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_155

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_155

    :cond_20
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_2a
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_12f

    if-eq v0, v1, :cond_e2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_73

    const/4 v3, 0x3

    if-eq v0, v3, :cond_68

    const/4 v3, 0x5

    if-eq v0, v3, :cond_58

    const/4 v3, 0x6

    if-eq v0, v3, :cond_47

    goto/16 :goto_14f

    :cond_47
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    goto/16 :goto_14f

    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    goto/16 :goto_14d

    :cond_68
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    if-eqz p1, :cond_14f

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-direct {p0, p1, v1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZIZ)V

    goto/16 :goto_12a

    :cond_73
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    if-nez v0, :cond_ce

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_82

    goto/16 :goto_12a

    :cond_82
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->C:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_ce

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ce

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->F:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b7

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->C:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_bb

    :cond_b7
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->C:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_bb
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_ce

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_ce
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    if-eqz v0, :cond_14f

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->b(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_14f

    :cond_e2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    if-eqz v0, :cond_14f

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->w:Z

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->g()Landroidx/viewpager/widget/ViewPager$f;

    move-result-object v4

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    iget v6, v4, Landroidx/viewpager/widget/ViewPager$f;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, v4, Landroidx/viewpager/widget/ViewPager$f;->e:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroidx/viewpager/widget/ViewPager$f;->d:F

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->F:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v6, v3, v0, p1}, Landroidx/viewpager/widget/ViewPager;->a(IFII)I

    move-result p1

    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->a(IZZI)V

    :goto_12a
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->i()Z

    move-result v2

    goto :goto_14f

    :cond_12f
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->w:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->F:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->D:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->E:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    :goto_14d
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->H:I

    :cond_14f
    :goto_14f
    if-eqz v2, :cond_154

    invoke-static {p0}, Lb/h/o/s;->C(Landroid/view/View;)V

    :cond_154
    return v1

    :cond_155
    :goto_155
    return v2
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_b
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/a;)V
    .registers 9

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/a;->b(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    :goto_f
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$f;

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget v5, v3, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager$f;->a:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()V

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3d
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->b:I

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v3, :cond_8b

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroidx/viewpager/widget/ViewPager$l;

    if-nez v3, :cond_52

    new-instance v3, Landroidx/viewpager/widget/ViewPager$l;

    invoke-direct {v3, p0}, Landroidx/viewpager/widget/ViewPager$l;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v3, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroidx/viewpager/widget/ViewPager$l;

    :cond_52
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroidx/viewpager/widget/ViewPager$l;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/a;->b(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->w:Z

    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v5}, Landroidx/viewpager/widget/a;->a()I

    move-result v5

    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-ltz v5, :cond_82

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/os/Parcelable;

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->j:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Landroidx/viewpager/widget/a;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    invoke-virtual {p0, v3, v2, v4}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    const/4 v3, -0x1

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/os/Parcelable;

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->j:Ljava/lang/ClassLoader;

    goto :goto_8b

    :cond_82
    if-nez v3, :cond_88

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    goto :goto_8b

    :cond_88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_8b
    :goto_8b
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->W:Ljava/util/List;

    if-eqz v1, :cond_ab

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->W:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_9b
    if-ge v2, v1, :cond_ab

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->W:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$i;

    invoke-interface {v3, p0, v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/a;Landroidx/viewpager/widget/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    :cond_ab
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->w:Z

    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_22
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->x:I

    if-eq p1, v0, :cond_2b

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->x:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    :cond_2b
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->U:Landroidx/viewpager/widget/ViewPager$j;

    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->a(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method setScrollState(I)V
    .registers 3

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f0:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->f0:I

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/viewpager/widget/ViewPager$k;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->b(Z)V

    :cond_13
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->e(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

###### Class androidx.viewpager.widget.ViewPager.a (androidx.viewpager.widget.ViewPager$a)
.class final Landroidx/viewpager/widget/ViewPager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/viewpager/widget/ViewPager$f;",
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
.method public a(Landroidx/viewpager/widget/ViewPager$f;Landroidx/viewpager/widget/ViewPager$f;)I
    .registers 3

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$f;->b:I

    iget p2, p2, Landroidx/viewpager/widget/ViewPager$f;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroidx/viewpager/widget/ViewPager$f;

    check-cast p2, Landroidx/viewpager/widget/ViewPager$f;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$a;->a(Landroidx/viewpager/widget/ViewPager$f;Landroidx/viewpager/widget/ViewPager$f;)I

    move-result p1

    return p1
.end method

###### Class androidx.viewpager.widget.ViewPager.b (androidx.viewpager.widget.ViewPager$b)
.class final Landroidx/viewpager/widget/ViewPager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    return v1
.end method

###### Class androidx.viewpager.widget.ViewPager.c (androidx.viewpager.widget.ViewPager$c)
.class Landroidx/viewpager/widget/ViewPager$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$c;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$c;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$c;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->e()V

    return-void
.end method

###### Class androidx.viewpager.widget.ViewPager.d (androidx.viewpager.widget.ViewPager$d)
.class Landroidx/viewpager/widget/ViewPager$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/ViewPager;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field final synthetic b:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$d;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lb/h/o/a0;)Lb/h/o/a0;
    .registers 8

    invoke-static {p1, p2}, Lb/h/o/s;->b(Landroid/view/View;Lb/h/o/a0;)Lb/h/o/a0;

    move-result-object p1

    invoke-virtual {p1}, Lb/h/o/a0;->g()Z

    move-result p2

    if-eqz p2, :cond_b

    return-object p1

    :cond_b
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager$d;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lb/h/o/a0;->c()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lb/h/o/a0;->e()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lb/h/o/a0;->d()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lb/h/o/a0;->b()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager$d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_2c
    if-ge v0, v1, :cond_6b

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager$d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lb/h/o/s;->a(Landroid/view/View;Lb/h/o/a0;)Lb/h/o/a0;

    move-result-object v2

    invoke-virtual {v2}, Lb/h/o/a0;->c()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lb/h/o/a0;->e()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lb/h/o/a0;->d()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lb/h/o/a0;->b()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_6b
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Lb/h/o/a0;->a(IIII)Lb/h/o/a0;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.viewpager.widget.ViewPager.e (androidx.viewpager.widget.ViewPager$e)
.class public interface abstract annotation Landroidx/viewpager/widget/ViewPager$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "e"
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

###### Class androidx.viewpager.widget.ViewPager.f (androidx.viewpager.widget.ViewPager$f)
.class Landroidx/viewpager/widget/ViewPager$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:Z

.field d:F

.field e:F


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.viewpager.widget.ViewPager.g (androidx.viewpager.widget.ViewPager$g)
.class public Landroidx/viewpager/widget/ViewPager$g;
.super Landroid/view/ViewGroup$LayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field c:F

.field d:Z

.field e:I

.field f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager$g;->c:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager$g;->c:F

    sget-object v0, Landroidx/viewpager/widget/ViewPager;->g0:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager$g;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

###### Class androidx.viewpager.widget.ViewPager.h (androidx.viewpager.widget.ViewPager$h)
.class Landroidx/viewpager/widget/ViewPager$h;
.super Lb/h/o/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Lb/h/o/a;-><init>()V

    return-void
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()I

    move-result v0

    if-le v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lb/h/o/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$h;->a()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_36

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_36
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/h/o/b0/c;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lb/h/o/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/h/o/b0/c;)V

    const-class p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->a(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$h;->a()Z

    move-result p1

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->k(Z)V

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_21

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->a(I)V

    :cond_21
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Lb/h/o/b0/c;->a(I)V

    :cond_2f
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lb/h/o/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_8

    return p3

    :cond_8
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_25

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_12

    return v0

    :cond_12
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->g:I

    sub-int/2addr p2, p3

    :goto_20
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return p3

    :cond_24
    return v0

    :cond_25
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$h;->a:Landroidx/viewpager/widget/ViewPager;

    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->g:I

    add-int/2addr p2, p3

    goto :goto_20

    :cond_33
    return v0
.end method

###### Class androidx.viewpager.widget.ViewPager.i (androidx.viewpager.widget.ViewPager$i)
.class public interface abstract Landroidx/viewpager/widget/ViewPager$i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation


# virtual methods
.method public abstract onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/a;Landroidx/viewpager/widget/a;)V
.end method

###### Class androidx.viewpager.widget.ViewPager.j (androidx.viewpager.widget.ViewPager$j)
.class public interface abstract Landroidx/viewpager/widget/ViewPager$j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "j"
.end annotation


# virtual methods
.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(IFI)V
.end method

.method public abstract onPageSelected(I)V
.end method

###### Class androidx.viewpager.widget.ViewPager.k (androidx.viewpager.widget.ViewPager$k)
.class public interface abstract Landroidx/viewpager/widget/ViewPager$k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "k"
.end annotation


# virtual methods
.method public abstract a(Landroid/view/View;F)V
.end method

###### Class androidx.viewpager.widget.ViewPager.l (androidx.viewpager.widget.ViewPager$l)
.class Landroidx/viewpager/widget/ViewPager$l;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$l;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$l;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->a()V

    return-void
.end method

.method public onInvalidated()V
    .registers 2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$l;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->a()V

    return-void
.end method

###### Class androidx.viewpager.widget.ViewPager.m (androidx.viewpager.widget.ViewPager$m)
.class public Landroidx/viewpager/widget/ViewPager$m;
.super Lb/j/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/viewpager/widget/ViewPager$m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:I

.field c:Landroid/os/Parcelable;

.field d:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/viewpager/widget/ViewPager$m$a;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$m$a;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager$m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lb/j/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    if-nez p2, :cond_b

    const-class p2, Landroidx/viewpager/widget/ViewPager$m;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager$m;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$m;->c:Landroid/os/Parcelable;

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager$m;->d:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/j/a/a;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentPager.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/viewpager/widget/ViewPager$m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lb/j/a/a;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager$m;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$m;->c:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class androidx.viewpager.widget.ViewPager.m.a (androidx.viewpager.widget.ViewPager$m$a)
.class final Landroidx/viewpager/widget/ViewPager$m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/viewpager/widget/ViewPager$m;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/viewpager/widget/ViewPager$m;
    .registers 4

    new-instance v0, Landroidx/viewpager/widget/ViewPager$m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager$m;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager/widget/ViewPager$m;
    .registers 4

    new-instance v0, Landroidx/viewpager/widget/ViewPager$m;

    invoke-direct {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager$m;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager$m$a;->createFromParcel(Landroid/os/Parcel;)Landroidx/viewpager/widget/ViewPager$m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$m$a;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager/widget/ViewPager$m;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/viewpager/widget/ViewPager$m;
    .registers 2

    new-array p1, p1, [Landroidx/viewpager/widget/ViewPager$m;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager$m$a;->newArray(I)[Landroidx/viewpager/widget/ViewPager$m;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.viewpager.widget.ViewPager.n (androidx.viewpager.widget.ViewPager$n)
.class Landroidx/viewpager/widget/ViewPager$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
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
.method public a(Landroid/view/View;Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$g;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager$g;

    iget-boolean v0, p1, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    iget-boolean v1, p2, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    if-eq v0, v1, :cond_18

    if-eqz v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, -0x1

    :goto_17
    return p1

    :cond_18
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$g;->e:I

    iget p2, p2, Landroidx/viewpager/widget/ViewPager$g;->e:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$n;->a(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
