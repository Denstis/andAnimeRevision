###### Class androidx.recyclerview.widget.s (androidx.recyclerview.widget.s)
.class public Landroidx/recyclerview/widget/s;
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

.method private a(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;Landroidx/recyclerview/widget/r;)I
    .registers 5

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/r;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/r;->b(Landroid/view/View;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->f()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {p3}, Landroidx/recyclerview/widget/r;->f()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/r;->g()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    goto :goto_23

    :cond_1d
    invoke-virtual {p3}, Landroidx/recyclerview/widget/r;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :goto_23
    sub-int/2addr v0, p1

    return v0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)Landroid/view/View;
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

.method private b(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)Landroid/view/View;
    .registers 9

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->e()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_1d

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$o;->d(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/r;->d(Landroid/view/View;)I

    move-result v5

    if-ge v5, v2, :cond_1a

    move-object v1, v4

    move v2, v5

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1d
    return-object v1
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/s;->e:Landroidx/recyclerview/widget/r;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/r;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_e

    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/r;->a(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/s;->e:Landroidx/recyclerview/widget/r;

    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/s;->e:Landroidx/recyclerview/widget/r;

    return-object p1
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/s;->d:Landroidx/recyclerview/widget/r;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/r;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_e

    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/r;->b(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/s;->d:Landroidx/recyclerview/widget/r;

    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/s;->d:Landroidx/recyclerview/widget/r;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$o;II)I
    .registers 9

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->j()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v2

    :goto_13
    invoke-direct {p0, p1, v2}, Landroidx/recyclerview/widget/s;->b(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)Landroid/view/View;

    move-result-object v2

    goto :goto_23

    :cond_18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v2

    goto :goto_13

    :cond_23
    :goto_23
    if-nez v2, :cond_26

    return v1

    :cond_26
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->l(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_2d

    return v1

    :cond_2d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3b

    if-lez p2, :cond_39

    :goto_37
    const/4 p2, 0x1

    goto :goto_3e

    :cond_39
    const/4 p2, 0x0

    goto :goto_3e

    :cond_3b
    if-lez p3, :cond_39

    goto :goto_37

    :goto_3e
    instance-of p3, p1, Landroidx/recyclerview/widget/RecyclerView$z$b;

    if-eqz p3, :cond_59

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$z$b;

    sub-int/2addr v0, v4

    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$z$b;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_59

    iget p3, p1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-ltz p3, :cond_58

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_59

    :cond_58
    const/4 v3, 0x1

    :cond_59
    if-eqz v3, :cond_60

    if-eqz p2, :cond_64

    add-int/lit8 v2, v2, -0x1

    goto :goto_64

    :cond_60
    if-eqz p2, :cond_64

    add-int/lit8 v2, v2, 0x1

    :cond_64
    :goto_64
    return v2
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;)[I
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/s;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;Landroidx/recyclerview/widget/r;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_17

    :cond_15
    aput v2, v0, v2

    :goto_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/s;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;Landroidx/recyclerview/widget/r;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_2b

    :cond_29
    aput v2, v0, v3

    :goto_2b
    return-object v0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;
    .registers 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v0

    :goto_a
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/s;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v0

    goto :goto_a

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method
