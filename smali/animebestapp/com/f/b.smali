###### Class animebestapp.com.f.b (animebestapp.com.f.b)
.class public final Lanimebestapp/com/f/b;
.super Landroidx/recyclerview/widget/n;
.source ""


# instance fields
.field private f:Landroidx/recyclerview/widget/r;

.field private g:Landroidx/recyclerview/widget/r;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/n;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;Landroidx/recyclerview/widget/r;)I
    .registers 3

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/r;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/r;->f()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private final a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)Landroid/view/View;
    .registers 14

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->H()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->j()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    const/4 v3, 0x0

    if-nez v2, :cond_55

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    goto :goto_55

    :cond_21
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/r;->a(Landroid/view/View;)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/r;->b(Landroid/view/View;)I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x3ff199999999999aL    # 1.1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    cmpl-double v9, v5, v7

    if-ltz v9, :cond_44

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/r;->a(Landroid/view/View;)I

    move-result p2

    if-lez p2, :cond_44

    move-object v3, v2

    goto :goto_55

    :cond_44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->H()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->j()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_50

    goto :goto_55

    :cond_50
    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->c(I)Landroid/view/View;

    move-result-object v3

    :cond_55
    :goto_55
    return-object v3

    :cond_56
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/n;->c(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private final d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/f/b;->g:Landroidx/recyclerview/widget/r;

    if-nez v0, :cond_a

    invoke-static {p1}, Landroidx/recyclerview/widget/r;->a(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object p1

    iput-object p1, p0, Lanimebestapp/com/f/b;->g:Landroidx/recyclerview/widget/r;

    :cond_a
    iget-object p1, p0, Lanimebestapp/com/f/b;->g:Landroidx/recyclerview/widget/r;

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/f/b;->f:Landroidx/recyclerview/widget/r;

    if-nez v0, :cond_a

    invoke-static {p1}, Landroidx/recyclerview/widget/r;->b(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object p1

    iput-object p1, p0, Lanimebestapp/com/f/b;->f:Landroidx/recyclerview/widget/r;

    :cond_a
    iget-object p1, p0, Lanimebestapp/com/f/b;->f:Landroidx/recyclerview/widget/r;

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;)[I
    .registers 7

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    invoke-direct {p0, p1}, Lanimebestapp/com/f/b;->d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lanimebestapp/com/f/b;->a(Landroid/view/View;Landroidx/recyclerview/widget/r;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_21

    :cond_1f
    aput v2, v0, v2

    :goto_21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_33

    invoke-direct {p0, p1}, Lanimebestapp/com/f/b;->e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lanimebestapp/com/f/b;->a(Landroid/view/View;Landroidx/recyclerview/widget/r;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_35

    :cond_33
    aput v2, v0, v3

    :goto_35
    return-object v0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;
    .registers 3

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lanimebestapp/com/f/b;->d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v0

    goto :goto_18

    :cond_14
    invoke-direct {p0, p1}, Lanimebestapp/com/f/b;->e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/r;

    move-result-object v0

    :goto_18
    invoke-direct {p0, p1, v0}, Lanimebestapp/com/f/b;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/r;)Landroid/view/View;

    move-result-object p1

    goto :goto_21

    :cond_1d
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/n;->c(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;

    move-result-object p1

    :goto_21
    return-object p1
.end method
