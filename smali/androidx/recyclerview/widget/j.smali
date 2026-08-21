###### Class androidx.recyclerview.widget.j (androidx.recyclerview.widget.j)
.class final Landroidx/recyclerview/widget/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/j$b;,
        Landroidx/recyclerview/widget/j$c;
    }
.end annotation


# static fields
.field static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/recyclerview/widget/j;",
            ">;"
        }
    .end annotation
.end field

.field static g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/j$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/j$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/j;->f:Ljava/lang/ThreadLocal;

    new-instance v0, Landroidx/recyclerview/widget/j$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/j$a;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/j;->g:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/j;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$d0;
    .registers 7

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$v;

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {v0, p2, v1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$v;->a(IZJ)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p2

    if-eqz p2, :cond_29

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$d0;->isBound()Z

    move-result p3

    if-eqz p3, :cond_26

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$d0;->isInvalid()Z

    move-result p3

    if-nez p3, :cond_26

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$v;->b(Landroid/view/View;)V

    goto :goto_29

    :cond_26
    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$v;->a(Landroidx/recyclerview/widget/RecyclerView$d0;Z)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2d

    :cond_29
    :goto_29
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-object p2

    :catchall_2d
    move-exception p2

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw p2
.end method

.method private a()V
    .registers 12

    iget-object v0, p0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v2, v0, :cond_26

    iget-object v4, p0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/j$b;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    iget v4, v4, Landroidx/recyclerview/widget/j$b;->d:I

    add-int/2addr v3, v4

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_26
    iget-object v2, p0, Landroidx/recyclerview/widget/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2d
    if-ge v2, v0, :cond_92

    iget-object v4, p0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_8f

    :cond_3e
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    iget v6, v5, Landroidx/recyclerview/widget/j$b;->a:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Landroidx/recyclerview/widget/j$b;->b:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v3

    const/4 v3, 0x0

    :goto_4f
    iget v8, v5, Landroidx/recyclerview/widget/j$b;->d:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v3, v8, :cond_8e

    iget-object v8, p0, Landroidx/recyclerview/widget/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_68

    new-instance v8, Landroidx/recyclerview/widget/j$c;

    invoke-direct {v8}, Landroidx/recyclerview/widget/j$c;-><init>()V

    iget-object v9, p0, Landroidx/recyclerview/widget/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_68
    iget-object v8, p0, Landroidx/recyclerview/widget/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/j$c;

    :goto_70
    iget-object v9, v5, Landroidx/recyclerview/widget/j$b;->c:[I

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    if-gt v9, v6, :cond_7a

    const/4 v10, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v10, 0x0

    :goto_7b
    iput-boolean v10, v8, Landroidx/recyclerview/widget/j$c;->a:Z

    iput v6, v8, Landroidx/recyclerview/widget/j$c;->b:I

    iput v9, v8, Landroidx/recyclerview/widget/j$c;->c:I

    iput-object v4, v8, Landroidx/recyclerview/widget/j$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v5, Landroidx/recyclerview/widget/j$b;->c:[I

    aget v9, v9, v3

    iput v9, v8, Landroidx/recyclerview/widget/j$c;->e:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_4f

    :cond_8e
    move v3, v7

    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_92
    iget-object v0, p0, Landroidx/recyclerview/widget/j;->e:Ljava/util/ArrayList;

    sget-object v1, Landroidx/recyclerview/widget/j;->g:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;J)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f;->b()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/j$b;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v1, v0, Landroidx/recyclerview/widget/j$b;->d:I

    if-eqz v1, :cond_42

    :try_start_1c
    const-string v1, "RV Nested Prefetch"

    invoke-static {v1}, Lb/h/k/b;->a(Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$a0;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$a0;->a(Landroidx/recyclerview/widget/RecyclerView$g;)V

    const/4 v1, 0x0

    :goto_29
    iget v2, v0, Landroidx/recyclerview/widget/j$b;->d:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_39

    iget-object v2, v0, Landroidx/recyclerview/widget/j$b;->c:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$d0;
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_3d

    add-int/lit8 v1, v1, 0x2

    goto :goto_29

    :cond_39
    invoke-static {}, Lb/h/k/b;->a()V

    goto :goto_42

    :catchall_3d
    move-exception p1

    invoke-static {}, Lb/h/k/b;->a()V

    throw p1

    :cond_42
    :goto_42
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/j$c;J)V
    .registers 7

    iget-boolean v0, p1, Landroidx/recyclerview/widget/j$c;->a:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_b

    :cond_a
    move-wide v0, p2

    :goto_b
    iget-object v2, p1, Landroidx/recyclerview/widget/j$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget p1, p1, Landroidx/recyclerview/widget/j$c;->e:I

    invoke-direct {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->isBound()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView;J)V

    :cond_30
    return-void
.end method

.method static a(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_23

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/f;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/f;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object v3

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$d0;->mPosition:I

    if-ne v4, p1, :cond_20

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$d0;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method private b(J)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Landroidx/recyclerview/widget/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/j$c;

    iget-object v2, v1, Landroidx/recyclerview/widget/j$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_16

    goto :goto_1f

    :cond_16
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/j$c;J)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j$c;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method a(J)V
    .registers 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/j;->a()V

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/j;->b(J)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 9

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p0, Landroidx/recyclerview/widget/j;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/j;->c:J

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/j$b;->b(II)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 9

    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Lb/h/k/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_4f

    if-eqz v2, :cond_15

    :goto_f
    iput-wide v0, p0, Landroidx/recyclerview/widget/j;->c:J

    invoke-static {}, Lb/h/k/b;->a()V

    return-void

    :cond_15
    :try_start_15
    iget-object v2, p0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1d
    if-ge v3, v2, :cond_38

    iget-object v6, p0, Landroidx/recyclerview/widget/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_35

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_38
    cmp-long v2, v4, v0

    if-nez v2, :cond_3d

    goto :goto_f

    :cond_3d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/recyclerview/widget/j;->d:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/j;->a(J)V
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_4f

    iput-wide v0, p0, Landroidx/recyclerview/widget/j;->c:J

    invoke-static {}, Lb/h/k/b;->a()V

    return-void

    :catchall_4f
    move-exception v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/j;->c:J

    invoke-static {}, Lb/h/k/b;->a()V

    goto :goto_57

    :goto_56
    throw v2

    :goto_57
    goto :goto_56
.end method

###### Class androidx.recyclerview.widget.j.a (androidx.recyclerview.widget.j$a)
.class final Landroidx/recyclerview/widget/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/j$c;",
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
.method public a(Landroidx/recyclerview/widget/j$c;Landroidx/recyclerview/widget/j$c;)I
    .registers 8

    iget-object v0, p1, Landroidx/recyclerview/widget/j$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v3, p2, Landroidx/recyclerview/widget/j$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    const/4 v4, -0x1

    if-eq v0, v3, :cond_1a

    iget-object p1, p1, Landroidx/recyclerview/widget/j$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, -0x1

    :goto_19
    return v2

    :cond_1a
    iget-boolean v0, p1, Landroidx/recyclerview/widget/j$c;->a:Z

    iget-boolean v3, p2, Landroidx/recyclerview/widget/j$c;->a:Z

    if-eq v0, v3, :cond_24

    if-eqz v0, :cond_23

    const/4 v2, -0x1

    :cond_23
    return v2

    :cond_24
    iget v0, p2, Landroidx/recyclerview/widget/j$c;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/j$c;->b:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2c

    return v0

    :cond_2c
    iget p1, p1, Landroidx/recyclerview/widget/j$c;->c:I

    iget p2, p2, Landroidx/recyclerview/widget/j$c;->c:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_34

    return p1

    :cond_34
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroidx/recyclerview/widget/j$c;

    check-cast p2, Landroidx/recyclerview/widget/j$c;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/j$a;->a(Landroidx/recyclerview/widget/j$c;Landroidx/recyclerview/widget/j$c;)I

    move-result p1

    return p1
.end method

###### Class androidx.recyclerview.widget.j.b (androidx.recyclerview.widget.j$b)
.class Landroidx/recyclerview/widget/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/j$b;->d:I

    return-void
.end method

.method public a(II)V
    .registers 8

    if-ltz p1, :cond_3f

    if-ltz p2, :cond_37

    iget v0, p0, Landroidx/recyclerview/widget/j$b;->d:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    if-nez v1, :cond_18

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_28

    :cond_18
    array-length v2, v1

    if-lt v0, v2, :cond_28

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    :goto_28
    iget-object v1, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    iget p1, p0, Landroidx/recyclerview/widget/j$b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/j$b;->d:I

    return-void

    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/j$b;->d:I

    iget-object v0, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    if-eqz v0, :cond_b

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_b
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->w()Z

    move-result v1

    if-eqz v1, :cond_4b

    if-eqz p2, :cond_2d

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/a;->c()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(ILandroidx/recyclerview/widget/RecyclerView$o$c;)V

    goto :goto_3c

    :cond_2d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_3c

    iget v1, p0, Landroidx/recyclerview/widget/j$b;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/j$b;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IILandroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$o$c;)V

    :cond_3c
    :goto_3c
    iget v1, p0, Landroidx/recyclerview/widget/j$b;->d:I

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$o;->m:I

    if-le v1, v2, :cond_4b

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->m:I

    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$o;->n:Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->j()V

    :cond_4b
    return-void
.end method

.method a(I)Z
    .registers 6

    iget-object v0, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget v0, p0, Landroidx/recyclerview/widget/j$b;->d:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_17

    iget-object v3, p0, Landroidx/recyclerview/widget/j$b;->c:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_17
    return v1
.end method

.method b(II)V
    .registers 3

    iput p1, p0, Landroidx/recyclerview/widget/j$b;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/j$b;->b:I

    return-void
.end method

###### Class androidx.recyclerview.widget.j.c (androidx.recyclerview.widget.j$c)
.class Landroidx/recyclerview/widget/j$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/j$c;->a:Z

    iput v0, p0, Landroidx/recyclerview/widget/j$c;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/j$c;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/j$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput v0, p0, Landroidx/recyclerview/widget/j$c;->e:I

    return-void
.end method
