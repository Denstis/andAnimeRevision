###### Class animebestapp.com.utils.e (animebestapp.com.utils.e)
.class public final Lanimebestapp/com/utils/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# instance fields
.field private final b:I

.field private final c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const-string v0, "mRecyclerView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/utils/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p1, 0xa

    iput p1, p0, Lanimebestapp/com/utils/e;->b:I

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x5

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    iget-object v0, p0, Lanimebestapp/com/utils/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lanimebestapp/com/utils/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    goto :goto_35

    :cond_1e
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lanimebestapp/com/utils/e;->b:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_35

    iget-object v0, p0, Lanimebestapp/com/utils/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lanimebestapp/com/utils/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    goto :goto_1a

    :cond_35
    :goto_35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
