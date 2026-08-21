###### Class androidx.recyclerview.widget.n (androidx.recyclerview.widget.n)
.class public Landroidx/recyclerview/widget/n;
.super Landroidx/recyclerview/widget/w;
.source ""


# instance fields
.field private d:Landroidx/recyclerview/widget/r;

.field private e:Landroidx/recyclerview/widget/r;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/w;-><init>()V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)F
    .registers 13

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->e()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_9

    return v1

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move-object v4, v3

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    :goto_16
    if-ge v2, v0, :cond_2f

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->d(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->l(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_24

    goto :goto_2c

    :cond_24
    if-ge v8, v5, :cond_28

    move-object v3, v7

    move v5, v8

    :cond_28
    if-le v8, v6, :cond_2c

    move-object v4, v7

    move v6, v8

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2f
    if-eqz v3, :cond_59

    if-nez v4, :cond_34

    goto :goto_59

    :cond_34
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/r;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/r;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/r;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/r;->a(Landroid/view/View;)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_50

    return v1

    :cond_50
    int-to-float p1, p2

    mul-float p1, p1, v1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    int-to-float p2, v6

    div-float/2addr p1, p2

    return p1

    :cond_59
    :goto_59
    return v1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;II)I
    .registers 7

    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/w;->b(II)[I

    move-result-object p3

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)F

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x0

    cmpg-float p4, p1, p4

    if-gtz p4, :cond_f

    return p2

    :cond_f
    aget p4, p3, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    const/4 v0, 0x1

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p4, v1, :cond_21

    aget p2, p3, p2

    goto :goto_23

    :cond_21
    aget p2, p3, v0

    :goto_23
    int-to-float p2, p2

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)Landroid/view/View;
    .registers 11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->e()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->f()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p2}, Landroidx/recyclerview/widget/r;->f()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/r;->g()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_20

    :cond_1a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/r;->a()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_20
    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v0, :cond_41

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->d(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/r;->d(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/r;->b(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_3e

    move-object v1, v5

    move v3, v6

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_41
    return-object v1
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/n;->e:Landroidx/recyclerview/widget/r;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/r;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_e

    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/r;->a(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/n;->e:Landroidx/recyclerview/widget/r;

    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/n;->e:Landroidx/recyclerview/widget/r;

    return-object p1
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/r;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/r;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_e

    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/r;->b(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/r;

    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/n;->d:Landroidx/recyclerview/widget/r;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$o;II)I
    .registers 12

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$z$b;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->j()I

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/n;->c(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_14

    return v1

    :cond_14
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->l(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_1b

    return v1

    :cond_1b
    move-object v3, p1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$z$b;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$z$b;->a(I)Landroid/graphics/PointF;

    move-result-object v3

    if-nez v3, :cond_27

    return v1

    :cond_27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_3f

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v5

    invoke-direct {p0, p1, v5, p2, v7}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;II)I

    move-result p2

    iget v5, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_40

    neg-int p2, p2

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    :cond_40
    :goto_40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v5

    invoke-direct {p0, p1, v5, v7, p3}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;II)I

    move-result p3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_57

    neg-int p3, p3

    goto :goto_57

    :cond_56
    const/4 p3, 0x0

    :cond_57
    :goto_57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z

    move-result p1

    if-eqz p1, :cond_5e

    move p2, p3

    :cond_5e
    if-nez p2, :cond_61

    return v1

    :cond_61
    add-int/2addr v2, p2

    if-gez v2, :cond_65

    const/4 v2, 0x0

    :cond_65
    if-lt v2, v0, :cond_68

    move v2, v4

    :cond_68
    return v2
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;
    .registers 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v0

    :goto_a
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n;->d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v0

    goto :goto_a

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method
