###### Class androidx.recyclerview.widget.w (androidx.recyclerview.widget.w)
.class public abstract Landroidx/recyclerview/widget/w;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source ""


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/Scroller;

.field private final c:Landroidx/recyclerview/widget/RecyclerView$t;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/w$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/w$a;-><init>(Landroidx/recyclerview/widget/w;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/w;->c:Landroidx/recyclerview/widget/RecyclerView$t;

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/w;->c:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$o;II)Z
    .registers 6

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$z$b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w;->a(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/RecyclerView$z;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/w;->a(Landroidx/recyclerview/widget/RecyclerView$o;II)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_15

    return v1

    :cond_15
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->c(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroidx/recyclerview/widget/RecyclerView$z;)V

    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/w;->c:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$o;II)I
.end method

.method protected a(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/RecyclerView$z;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/w;->b(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/m;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/w;->c(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/w;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_21

    aget v2, v0, v3

    if-eqz v2, :cond_2a

    :cond_21
    iget-object v2, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    aget v1, v0, v1

    aget v0, v0, v3

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_2a
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroidx/recyclerview/widget/w;->b()V

    :cond_a
    iput-object p1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_28

    invoke-direct {p0}, Landroidx/recyclerview/widget/w;->c()V

    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/w;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/w;->a()V

    :cond_28
    return-void
.end method

.method public a(II)Z
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v2

    if-nez v2, :cond_13

    return v1

    :cond_13
    iget-object v2, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_25

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_2c

    :cond_25
    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/w;->b(Landroidx/recyclerview/widget/RecyclerView$o;II)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;)[I
.end method

.method protected b(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/m;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$z$b;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance p1, Landroidx/recyclerview/widget/w$b;

    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/w$b;-><init>(Landroidx/recyclerview/widget/w;Landroid/content/Context;)V

    return-object p1
.end method

.method public b(II)[I
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Landroidx/recyclerview/widget/w;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p1, p0, Landroidx/recyclerview/widget/w;->b:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    const/4 p2, 0x0

    aput p1, v0, p2

    iget-object p1, p0, Landroidx/recyclerview/widget/w;->b:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    const/4 p2, 0x1

    aput p1, v0, p2

    return-object v0
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;
.end method

###### Class androidx.recyclerview.widget.w.a (androidx.recyclerview.widget.w$a)
.class Landroidx/recyclerview/widget/w$a;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroidx/recyclerview/widget/w;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/w;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/w$a;->b:Landroidx/recyclerview/widget/w;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/w$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_11

    iget-boolean p1, p0, Landroidx/recyclerview/widget/w$a;->a:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/w$a;->a:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/w$a;->b:Landroidx/recyclerview/widget/w;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/w;->a()V

    :cond_11
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    if-nez p2, :cond_4

    if-eqz p3, :cond_7

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/w$a;->a:Z

    :cond_7
    return-void
.end method

###### Class androidx.recyclerview.widget.w.b (androidx.recyclerview.widget.w$b)
.class Landroidx/recyclerview/widget/w$b;
.super Landroidx/recyclerview/widget/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/w;->b(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/recyclerview/widget/w;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/w;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroidx/recyclerview/widget/w$b;->o:Landroidx/recyclerview/widget/w;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/m;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .registers 3

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$z$a;)V
    .registers 6

    iget-object p2, p0, Landroidx/recyclerview/widget/w$b;->o:Landroidx/recyclerview/widget/w;

    iget-object v0, p2, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/w;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/m;->d(I)I

    move-result v0

    if-lez v0, :cond_2c

    iget-object v1, p0, Landroidx/recyclerview/widget/m;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_2c
    return-void
.end method
