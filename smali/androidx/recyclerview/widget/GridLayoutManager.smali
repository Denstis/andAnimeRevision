###### Class androidx.recyclerview.widget.GridLayoutManager (androidx.recyclerview.widget.GridLayoutManager)
.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$b;,
        Landroidx/recyclerview/widget/GridLayoutManager$a;,
        Landroidx/recyclerview/widget/GridLayoutManager$c;
    }
.end annotation


# instance fields
.field H:Z

.field I:I

.field J:[I

.field K:[Landroid/view/View;

.field final L:Landroid/util/SparseIntArray;

.field final M:Landroid/util/SparseIntArray;

.field N:Landroidx/recyclerview/widget/GridLayoutManager$c;

.field final O:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:Z

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->l(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$o$d;

    move-result-object p1

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$o$d;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->l(I)V

    return-void
.end method

.method private M()V
    .registers 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$p;->a()I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->e()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    return-void
.end method

.method private N()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private O()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[Landroid/view/View;

    if-eqz v0, :cond_9

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-eq v0, v1, :cond_f

    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[Landroid/view/View;

    :cond_f
    return-void
.end method

.method private P()V
    .registers 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->r()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->p()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->o()I

    move-result v1

    goto :goto_22

    :cond_15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->h()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->n()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->q()I

    move-result v1

    :goto_22
    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->m(I)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I
    .registers 4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I

    move-result p1

    return p1

    :cond_f
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$v;->a(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2e
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I

    move-result p1

    return p1
.end method

.method private a(FI)V
    .registers 4

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->m(I)V

    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$p;

    if-eqz p4, :cond_d

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$p;)Z

    move-result p4

    goto :goto_11

    :cond_d
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$p;)Z

    move-result p4

    :goto_11
    if-eqz p4, :cond_16

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_16
    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->g(II)I

    move-result v1

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_43

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/r;->g()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->i()I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IIIIZ)I

    move-result v0

    goto :goto_5c

    :cond_43
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/r;->g()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->s()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_5c
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;IIZ)V
    .registers 9

    const/4 p4, 0x0

    const/4 v0, -0x1

    if-eqz p5, :cond_9

    const/4 v0, 0x1

    move v0, p3

    const/4 p3, 0x0

    const/4 p5, 0x1

    goto :goto_c

    :cond_9
    add-int/lit8 p3, p3, -0x1

    const/4 p5, -0x1

    :goto_c
    if-eq p3, v0, :cond_29

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[Landroid/view/View;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->l(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v1

    iput v1, v2, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    iput p4, v2, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    iget v1, v2, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    add-int/2addr p4, v1

    add-int/2addr p3, p5

    goto :goto_c

    :cond_29
    return-void
.end method

.method static a([III)[I
    .registers 8

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_e

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_12

    :cond_e
    add-int/lit8 p0, p1, 0x1

    new-array p0, p0, [I

    :cond_12
    const/4 v1, 0x0

    aput v1, p0, v1

    div-int v2, p2, p1

    rem-int/2addr p2, p1

    const/4 v3, 0x0

    :goto_19
    if-gt v0, p1, :cond_2d

    add-int/2addr v1, p2

    if-lez v1, :cond_26

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_26

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_27

    :cond_26
    move v4, v2

    :goto_27
    add-int/2addr v3, v4

    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2d
    return-object p0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I
    .registers 5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(II)I

    move-result p1

    return p1

    :cond_f
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_19

    return p2

    :cond_19
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$v;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_37

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_37
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(II)I

    move-result p1

    return p1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .registers 9

    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    const/4 p4, 0x1

    goto :goto_6

    :cond_5
    const/4 p4, 0x0

    :goto_6
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v1

    if-eqz p4, :cond_1f

    :goto_e
    if-lez v1, :cond_35

    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    if-lez p4, :cond_35

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v1

    goto :goto_e

    :cond_1f
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->a()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    :goto_26
    if-ge v0, p4, :cond_33

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v3

    if-le v3, v1, :cond_33

    move v0, v2

    move v1, v3

    goto :goto_26

    :cond_33
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    :cond_35
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I
    .registers 5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(I)I

    move-result p1

    return p1

    :cond_d
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_17

    return p2

    :cond_17
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$v;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_35

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_35
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(I)I

    move-result p1

    return p1
.end method

.method private m(I)V
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->a([III)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    return-void
.end method


# virtual methods
.method public D()Z
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)I
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->P()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->O()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)I

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)I
    .registers 5

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    return p1

    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->a()I

    move-result v0

    if-ge v0, v1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)Landroid/view/View;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$o;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_e

    return-object v4

    :cond_e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    add-int/2addr v5, v6

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_20

    return-object v4

    :cond_20
    move/from16 v7, p2

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->j(I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2b

    const/4 v7, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v7, 0x0

    :goto_2c
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z

    if-eq v7, v10, :cond_32

    const/4 v7, 0x1

    goto :goto_33

    :cond_32
    const/4 v7, 0x0

    :goto_33
    const/4 v10, -0x1

    if-eqz v7, :cond_3e

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->e()I

    move-result v7

    sub-int/2addr v7, v9

    const/4 v11, -0x1

    const/4 v12, -0x1

    goto :goto_45

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->e()I

    move-result v7

    move v11, v7

    const/4 v7, 0x0

    const/4 v12, 0x1

    :goto_45
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    if-ne v13, v9, :cond_51

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K()Z

    move-result v13

    if-eqz v13, :cond_51

    const/4 v13, 0x1

    goto :goto_52

    :cond_51
    const/4 v13, 0x0

    :goto_52
    invoke-direct {v0, v1, v2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v14

    move-object v10, v4

    const/4 v8, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    :goto_5d
    if-eq v7, v11, :cond_147

    invoke-direct {v0, v1, v2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v9

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->d(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6b

    goto/16 :goto_147

    :cond_6b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_85

    if-eq v9, v14, :cond_85

    if-eqz v4, :cond_77

    goto/16 :goto_147

    :cond_77
    move-object/from16 v18, v3

    move/from16 v19, v8

    move-object/from16 v21, v10

    move/from16 v20, v11

    move/from16 v8, v16

    move/from16 v10, v17

    goto/16 :goto_133

    :cond_85
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget v2, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    move-object/from16 v18, v3

    iget v3, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_9d

    if-ne v2, v6, :cond_9d

    if-ne v3, v5, :cond_9d

    return-object v1

    :cond_9d
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_a5

    if-eqz v4, :cond_ad

    :cond_a5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_b9

    if-nez v10, :cond_b9

    :cond_ad
    move/from16 v19, v8

    move-object/from16 v21, v10

    :goto_b1
    move/from16 v20, v11

    move/from16 v8, v16

    move/from16 v10, v17

    :goto_b7
    const/4 v11, 0x1

    goto :goto_103

    :cond_b9
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v10

    sub-int v10, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_da

    if-le v10, v15, :cond_d0

    :goto_cd
    move/from16 v19, v8

    goto :goto_b1

    :cond_d0
    if-ne v10, v15, :cond_fa

    if-le v2, v8, :cond_d6

    const/4 v10, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v10, 0x0

    :goto_d7
    if-ne v13, v10, :cond_fa

    goto :goto_cd

    :cond_da
    if-nez v4, :cond_fa

    move/from16 v19, v8

    move/from16 v20, v11

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0, v1, v8, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;ZZ)Z

    move-result v22

    move/from16 v8, v16

    if-eqz v22, :cond_100

    if-le v10, v8, :cond_ef

    move/from16 v10, v17

    goto :goto_103

    :cond_ef
    if-ne v10, v8, :cond_100

    move/from16 v10, v17

    if-le v2, v10, :cond_f6

    goto :goto_f7

    :cond_f6
    const/4 v11, 0x0

    :goto_f7
    if-ne v13, v11, :cond_102

    goto :goto_b7

    :cond_fa
    move/from16 v19, v8

    move/from16 v20, v11

    move/from16 v8, v16

    :cond_100
    move/from16 v10, v17

    :cond_102
    const/4 v11, 0x0

    :goto_103
    if-eqz v11, :cond_133

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_120

    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move v15, v3

    move/from16 v16, v8

    move/from16 v17, v10

    move-object/from16 v10, v21

    move v8, v4

    move-object v4, v1

    goto :goto_13b

    :cond_120
    iget v8, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move-object v10, v1

    move/from16 v16, v3

    move/from16 v17, v8

    move/from16 v8, v19

    goto :goto_13b

    :cond_133
    :goto_133
    move/from16 v16, v8

    move/from16 v17, v10

    move/from16 v8, v19

    move-object/from16 v10, v21

    :goto_13b
    add-int/2addr v7, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v11, v20

    const/4 v9, 0x1

    goto/16 :goto_5d

    :cond_147
    :goto_147
    move-object/from16 v21, v10

    if-eqz v4, :cond_14c

    goto :goto_14e

    :cond_14c
    move-object/from16 v4, v21

    :goto_14e
    return-object v4
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;III)Landroid/view/View;
    .registers 13

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/r;->f()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/r;->b()I

    move-result v1

    if-le p4, p3, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, -0x1

    :goto_14
    const/4 v3, 0x0

    move-object v4, v3

    :goto_16
    if-eq p3, p4, :cond_52

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->d(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->l(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_50

    if-ge v6, p5, :cond_50

    invoke-direct {p0, p1, p2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v6

    if-eqz v6, :cond_2b

    goto :goto_50

    :cond_2b
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$p;->c()Z

    move-result v6

    if-eqz v6, :cond_3b

    if-nez v4, :cond_50

    move-object v4, v5

    goto :goto_50

    :cond_3b
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/r;->d(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4d

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/r;->a(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_4c

    goto :goto_4d

    :cond_4c
    return-object v5

    :cond_4d
    :goto_4d
    if-nez v3, :cond_50

    move-object v3, v5

    :cond_50
    :goto_50
    add-int/2addr p3, v2

    goto :goto_16

    :cond_52
    if-eqz v3, :cond_55

    goto :goto_56

    :cond_55
    move-object v3, v4

    :goto_56
    return-object v3
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$p;
    .registers 4

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$p;
    .registers 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .registers 8

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    if-nez v0, :cond_7

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/graphics/Rect;II)V

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->o()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->p()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->q()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->n()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->l()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(III)I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    array-length v1, p3

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->m()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(III)I

    move-result p2

    goto :goto_57

    :cond_3b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->m()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(III)I

    move-result p2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->l()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(III)I

    move-result p1

    :goto_57
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->c(II)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/GridLayoutManager$c;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$o$c;)V
    .registers 9

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_5
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-ge v0, v3, :cond_2d

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$a0;)Z

    move-result v3

    if-eqz v3, :cond_2d

    if-lez v2, :cond_2d

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$o$c;->a(II)V

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2d
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;Landroid/view/View;Lb/h/o/b0/c;)V
    .registers 12

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    if-nez v1, :cond_c

    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;Lb/h/o/b0/c;)V

    return-void

    :cond_c
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_38

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->e()I

    move-result p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I

    move-result v2

    const/4 v4, 0x1

    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-le v3, v1, :cond_33

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I

    move-result v0

    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-ne v0, v3, :cond_33

    const/4 v5, 0x1

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :goto_34
    const/4 v6, 0x0

    move v1, p2

    move v3, p1

    goto :goto_52

    :cond_38
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->e()I

    move-result v3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I

    move-result v4

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-le p2, v1, :cond_4f

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I

    move-result p2

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-ne p2, v0, :cond_4f

    const/4 v5, 0x1

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    const/4 v6, 0x0

    move v1, p1

    :goto_52
    invoke-static/range {v1 .. v6}, Lb/h/o/b0/c$c;->a(IIIIZZ)Lb/h/o/b0/c$c;

    move-result-object p1

    invoke-virtual {p4, p1}, Lb/h/o/b0/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->P()V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->a()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    :cond_15
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->O()V

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
    .registers 23

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/r;->e()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x1

    if-eq v9, v10, :cond_17

    const/4 v13, 0x1

    goto :goto_18

    :cond_17
    const/4 v13, 0x0

    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->e()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    iget v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    aget v0, v0, v3

    move v14, v0

    goto :goto_27

    :cond_26
    const/4 v14, 0x0

    :goto_27
    if-eqz v13, :cond_2c

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->P()V

    :cond_2c
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    if-ne v0, v11, :cond_32

    const/4 v15, 0x1

    goto :goto_33

    :cond_32
    const/4 v15, 0x0

    :goto_33
    iget v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-nez v15, :cond_44

    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-direct {v6, v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v0

    iget v3, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-direct {v6, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_44
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_46
    iget v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-ge v5, v3, :cond_9f

    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$a0;)Z

    move-result v3

    if-eqz v3, :cond_9f

    if-lez v0, :cond_9f

    iget v3, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-direct {v6, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result v10

    iget v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-gt v10, v12, :cond_71

    sub-int/2addr v0, v10

    if-gez v0, :cond_60

    goto :goto_9f

    :cond_60
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$v;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_67

    goto :goto_9f

    :cond_67
    add-int/2addr v4, v10

    iget-object v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[Landroid/view/View;

    aput-object v3, v10, v5

    add-int/lit8 v5, v5, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_46

    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9f
    :goto_9f
    if-nez v5, :cond_a4

    iput-boolean v11, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    return-void

    :cond_a4
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move v12, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b3
    if-ge v0, v12, :cond_101

    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[Landroid/view/View;

    aget-object v2, v2, v0

    iget-object v3, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v3, :cond_c9

    if-eqz v15, :cond_c4

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroid/view/View;)V

    const/4 v3, 0x0

    goto :goto_d3

    :cond_c4
    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroid/view/View;I)V

    goto :goto_d3

    :cond_c9
    const/4 v3, 0x0

    if-eqz v15, :cond_d0

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;)V

    goto :goto_d3

    :cond_d0
    invoke-virtual {v6, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;I)V

    :goto_d3
    iget-object v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {v6, v2, v9, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/r;->b(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_e4

    move v1, v3

    :cond_e4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$b;

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/r;->c(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v10

    if-lez v3, :cond_fe

    move v10, v2

    :cond_fe
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    :cond_101
    if-eqz v13, :cond_11f

    invoke-direct {v6, v10, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->a(FI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_108
    if-ge v0, v12, :cond_11f

    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[Landroid/view/View;

    aget-object v2, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v6, v2, v3, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/r;->b(Landroid/view/View;)I

    move-result v2

    if-le v2, v1, :cond_11c

    move v1, v2

    :cond_11c
    add-int/lit8 v0, v0, 0x1

    goto :goto_108

    :cond_11f
    const/4 v0, 0x0

    :goto_120
    if-ge v0, v12, :cond_182

    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[Landroid/view/View;

    aget-object v2, v2, v0

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/r;->b(Landroid/view/View;)I

    move-result v3

    if-eq v3, v1, :cond_17c

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$p;->b:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v9

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v9

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v9

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v4

    iget v4, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    iget v10, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    invoke-virtual {v6, v4, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->g(II)I

    move-result v4

    iget v10, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    if-ne v10, v11, :cond_168

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v13, 0x0

    invoke-static {v4, v10, v9, v3, v13}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IIIIZ)I

    move-result v3

    sub-int v4, v1, v5

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_178

    :cond_168
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v13, 0x0

    sub-int v9, v1, v9

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v4, v10, v5, v3, v13}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IIIIZ)I

    move-result v4

    move v3, v9

    :goto_178
    invoke-direct {v6, v2, v3, v4, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_17f

    :cond_17c
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v13, 0x0

    :goto_17f
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    :cond_182
    const/4 v13, 0x0

    iput v1, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v2, -0x1

    if-ne v0, v11, :cond_19d

    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v2, :cond_195

    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    sub-int v1, v0, v1

    move v3, v0

    move v2, v1

    goto :goto_19a

    :cond_195
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    add-int/2addr v1, v0

    move v2, v0

    move v3, v1

    :goto_19a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1b2

    :cond_19d
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v2, :cond_1ad

    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    goto :goto_1b2

    :cond_1ad
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b2
    if-ge v13, v12, :cond_237

    iget-object v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[Landroid/view/View;

    aget-object v7, v4, v13

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    if-ne v4, v11, :cond_1f5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K()Z

    move-result v0

    if-eqz v0, :cond_1e2

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->o()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    iget v5, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    sub-int/2addr v4, v5

    aget v1, v1, v4

    add-int/2addr v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/r;->c(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v15, v0

    move v10, v1

    goto :goto_209

    :cond_1e2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->o()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    aget v1, v1, v4

    add-int/2addr v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/r;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_207

    :cond_1f5
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->q()I

    move-result v2

    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/r;

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/r;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    :goto_207
    move v10, v0

    move v15, v1

    :goto_209
    move v14, v2

    move/from16 v16, v3

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v10

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;IIII)V

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$p;->c()Z

    move-result v0

    if-nez v0, :cond_223

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$p;->b()Z

    move-result v0

    if-eqz v0, :cond_225

    :cond_223
    iput-boolean v11, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    :cond_225
    iget-boolean v0, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v8, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    add-int/lit8 v13, v13, 0x1

    move v0, v10

    move v2, v14

    move v1, v15

    move/from16 v3, v16

    goto/16 :goto_1b2

    :cond_237
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;III)V
    .registers 5

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;)Z
    .registers 2

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager$b;

    return p1
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)I
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->P()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->O()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)I

    move-result p1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)I
    .registers 5

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    if-nez v0, :cond_7

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    return p1

    :cond_7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public b(Z)V
    .registers 3

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Z)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Landroidx/recyclerview/widget/RecyclerView$p;
    .registers 4

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_c

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V

    return-object v0

    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V

    return-object v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .registers 4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->M()V

    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$a0;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->N()V

    return-void
.end method

.method g(II)I
    .registers 6

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:Z

    return-void
.end method

.method public l(I)V
    .registers 5

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:Z

    if-lt p1, v0, :cond_15

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:I

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->z()V

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class androidx.recyclerview.widget.GridLayoutManager.a (androidx.recyclerview.widget.GridLayoutManager$a)
.class public final Landroidx/recyclerview/widget/GridLayoutManager$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public c(II)I
    .registers 3

    rem-int/2addr p1, p2

    return p1
.end method

###### Class androidx.recyclerview.widget.GridLayoutManager.b (androidx.recyclerview.widget.GridLayoutManager$b)
.class public Landroidx/recyclerview/widget/GridLayoutManager$b;
.super Landroidx/recyclerview/widget/RecyclerView$p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field e:I

.field f:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    return-void
.end method


# virtual methods
.method public e()I
    .registers 2

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I

    return v0
.end method

###### Class androidx.recyclerview.widget.GridLayoutManager.c (androidx.recyclerview.widget.GridLayoutManager$c)
.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/util/SparseIntArray;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Z

    return-void
.end method


# virtual methods
.method a(I)I
    .registers 6

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-gt v1, v0, :cond_1f

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_1b

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_9

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_9

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_32

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_32

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    return p1

    :cond_32
    const/4 p1, -0x1

    return p1
.end method

.method a(II)I
    .registers 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public abstract b(I)I
.end method

.method public b(II)I
    .registers 9

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, p1, :cond_1d

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(I)I

    move-result v5

    add-int/2addr v3, v5

    if-ne v3, p2, :cond_15

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_1a

    :cond_15
    if-le v3, p2, :cond_1a

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    add-int/2addr v3, v0

    if-le v3, p2, :cond_22

    add-int/lit8 v4, v4, 0x1

    :cond_22
    return v4
.end method

.method public c(II)I
    .registers 8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_8

    return v1

    :cond_8
    iget-boolean v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_26

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v2

    if-ltz v2, :cond_26

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_36

    :cond_26
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_28
    if-ge v2, p1, :cond_39

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v3, p2, :cond_33

    const/4 v3, 0x0

    goto :goto_36

    :cond_33
    if-le v3, p2, :cond_36

    move v3, v4

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_39
    add-int/2addr v0, v3

    if-gt v0, p2, :cond_3d

    return v3

    :cond_3d
    return v1
.end method
