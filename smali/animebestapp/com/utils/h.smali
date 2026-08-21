###### Class animebestapp.com.utils.h (animebestapp.com.utils.h)
.class public final Lanimebestapp/com/utils/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lanimebestapp/com/utils/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/utils/h;

    invoke-direct {v0}, Lanimebestapp/com/utils/h;-><init>()V

    sput-object v0, Lanimebestapp/com/utils/h;->a:Lanimebestapp/com/utils/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)Le/a/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "II)",
            "Le/a/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "rv"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/utils/h$a;

    invoke-direct {v0, p1, p3, p2}, Lanimebestapp/com/utils/h$a;-><init>(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-static {v0}, Le/a/h;->a(Le/a/j;)Le/a/h;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026riber.onNext(1)\n        }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

###### Class animebestapp.com.utils.h.a (animebestapp.com.utils.h$a)
.class final Lanimebestapp/com/utils/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/utils/h;->a(Landroidx/recyclerview/widget/RecyclerView;II)Le/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    iput-object p1, p0, Lanimebestapp/com/utils/h$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lanimebestapp/com/utils/h$a;->b:I

    iput p3, p0, Lanimebestapp/com/utils/h$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/a/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/utils/h$a$b;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/utils/h$a$b;-><init>(Lanimebestapp/com/utils/h$a;Le/a/i;)V

    iget-object v1, p0, Lanimebestapp/com/utils/h$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    new-instance v1, Lanimebestapp/com/utils/h$a$a;

    invoke-direct {v1, p0, v0}, Lanimebestapp/com/utils/h$a$a;-><init>(Lanimebestapp/com/utils/h$a;Lanimebestapp/com/utils/h$a$b;)V

    invoke-interface {p1, v1}, Le/a/i;->a(Le/a/v/b;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/d;->a(Ljava/lang/Object;)V

    return-void
.end method

###### Class animebestapp.com.utils.h.a.C0091a (animebestapp.com.utils.h$a$a)
.class public final Lanimebestapp/com/utils/h$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/utils/h$a;->a(Le/a/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lanimebestapp/com/utils/h$a;

.field final synthetic d:Lanimebestapp/com/utils/h$a$b;


# direct methods
.method constructor <init>(Lanimebestapp/com/utils/h$a;Lanimebestapp/com/utils/h$a$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/utils/h$a$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/utils/h$a$a;->c:Lanimebestapp/com/utils/h$a;

    iput-object p2, p0, Lanimebestapp/com/utils/h$a$a;->d:Lanimebestapp/com/utils/h$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/utils/h$a$a;->b:Z

    return v0
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lanimebestapp/com/utils/h$a$a;->b:Z

    iget-object v0, p0, Lanimebestapp/com/utils/h$a$a;->c:Lanimebestapp/com/utils/h$a;

    iget-object v0, v0, Lanimebestapp/com/utils/h$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lanimebestapp/com/utils/h$a$a;->d:Lanimebestapp/com/utils/h$a$b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    return-void
.end method

###### Class animebestapp.com.utils.h.a.b (animebestapp.com.utils.h$a$b)
.class public final Lanimebestapp/com/utils/h$a$b;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/utils/h$a;->a(Le/a/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/utils/h$a;

.field final synthetic b:Le/a/i;


# direct methods
.method constructor <init>(Lanimebestapp/com/utils/h$a;Le/a/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/utils/h$a$b;->a:Lanimebestapp/com/utils/h$a;

    iput-object p2, p0, Lanimebestapp/com/utils/h$a$b;->b:Le/a/i;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 8

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lanimebestapp/com/utils/h$a$b;->b:Le/a/i;

    const-string p3, "subscriber"

    invoke-static {p2, p3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Le/a/i;->a()Z

    move-result p2

    if-nez p2, :cond_7c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    if-eqz p1, :cond_74

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->I()I

    move-result p1

    iget-object p2, p0, Lanimebestapp/com/utils/h$a$b;->a:Lanimebestapp/com/utils/h$a;

    iget-object p2, p2, Lanimebestapp/com/utils/h$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_70

    const-string v0, "rv.adapter!!"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    iget-object v2, p0, Lanimebestapp/com/utils/h$a$b;->a:Lanimebestapp/com/utils/h$a;

    iget v3, v2, Lanimebestapp/com/utils/h$a;->b:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    if-le v1, p2, :cond_3e

    goto :goto_7c

    :cond_3e
    if-lt p1, p2, :cond_7c

    iget-object p1, p0, Lanimebestapp/com/utils/h$a$b;->b:Le/a/i;

    iget-object p2, v2, Lanimebestapp/com/utils/h$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p2

    if-eqz p2, :cond_6c

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result p2

    iget-object p3, p0, Lanimebestapp/com/utils/h$a$b;->a:Lanimebestapp/com/utils/h$a;

    iget v0, p3, Lanimebestapp/com/utils/h$a;->c:I

    sub-int/2addr p2, v0

    iget p3, p3, Lanimebestapp/com/utils/h$a;->b:I

    div-int/2addr p2, p3

    int-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v0

    double-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/d;->a(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_6c
    invoke-static {}, Lg/p/b/f;->a()V

    throw p3

    :cond_70
    invoke-static {}, Lg/p/b/f;->a()V

    throw p3

    :cond_74
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    :goto_7c
    return-void
.end method
