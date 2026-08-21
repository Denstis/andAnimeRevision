###### Class animebestapp.com.utils.SpeedyLinearLayoutManager (animebestapp.com.utils.SpeedyLinearLayoutManager)
.class public final Lanimebestapp/com/utils/SpeedyLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/utils/SpeedyLinearLayoutManager$a;
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final H:F = 100.0f


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/utils/SpeedyLinearLayoutManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/utils/SpeedyLinearLayoutManager$a;-><init>(Lg/p/b/d;)V

    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lanimebestapp/com/utils/SpeedyLinearLayoutManager;->H:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic M()F
    .registers 1

    sget v0, Lanimebestapp/com/utils/SpeedyLinearLayoutManager;->H:F

    return v0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .registers 5

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lanimebestapp/com/utils/SpeedyLinearLayoutManager$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lanimebestapp/com/utils/SpeedyLinearLayoutManager$b;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$z;->c(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

###### Class animebestapp.com.utils.SpeedyLinearLayoutManager.a (animebestapp.com.utils.SpeedyLinearLayoutManager$a)
.class public final Lanimebestapp/com/utils/SpeedyLinearLayoutManager$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/utils/SpeedyLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/p/b/d;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/utils/SpeedyLinearLayoutManager$a;-><init>()V

    return-void
.end method

###### Class animebestapp.com.utils.SpeedyLinearLayoutManager.b (animebestapp.com.utils.SpeedyLinearLayoutManager$b)
.class public final Lanimebestapp/com/utils/SpeedyLinearLayoutManager$b;
.super Landroidx/recyclerview/widget/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/utils/SpeedyLinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/m;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .registers 3

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lanimebestapp/com/utils/SpeedyLinearLayoutManager;->M()F

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
