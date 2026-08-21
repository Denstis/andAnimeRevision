###### Class animebestapp.com.utils.f (animebestapp.com.utils.f)
.class public final Lanimebestapp/com/utils/f;
.super Landroidx/recyclerview/widget/s;
.source ""


# instance fields
.field private f:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/utils/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_b

    if-eqz p1, :cond_b

    iput-object p1, p0, Lanimebestapp/com/utils/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/w;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_b
    return-void
.end method

.method protected b(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/m;
    .registers 3

    new-instance p1, Lanimebestapp/com/utils/f$a;

    iget-object v0, p0, Lanimebestapp/com/utils/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-direct {p1, p0, v0}, Lanimebestapp/com/utils/f$a;-><init>(Lanimebestapp/com/utils/f;Landroid/content/Context;)V

    return-object p1
.end method

###### Class animebestapp.com.utils.f.a (animebestapp.com.utils.f$a)
.class public final Lanimebestapp/com/utils/f$a;
.super Landroidx/recyclerview/widget/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/utils/f;->b(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Lanimebestapp/com/utils/f;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/m;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .registers 3

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lanimebestapp/com/utils/g;->a()F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public a(I)Landroid/graphics/PointF;
    .registers 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$z;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
