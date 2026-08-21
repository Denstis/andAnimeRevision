###### Class animebestapp.com.ui.top.TopAnimeActivity (animebestapp.com.ui.top.TopAnimeActivity)
.class public final Lanimebestapp/com/ui/top/TopAnimeActivity;
.super Lanimebestapp/com/ui/a/a;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/top/c;
.implements Lanimebestapp/com/ui/a/f/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/top/TopAnimeActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/a<",
        "Lanimebestapp/com/ui/top/c;",
        "Lanimebestapp/com/ui/top/a;",
        ">;",
        "Lanimebestapp/com/ui/top/c;",
        "Lanimebestapp/com/ui/a/f/c;"
    }
.end annotation


# instance fields
.field private final t:Lanimebestapp/com/ui/a/d;

.field private u:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/top/TopAnimeActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/top/TopAnimeActivity$a;-><init>(Lg/p/b/d;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/a/a;-><init>()V

    new-instance v0, Lanimebestapp/com/ui/a/d;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/a/d;-><init>(Lanimebestapp/com/ui/a/f/c;)V

    iput-object v0, p0, Lanimebestapp/com/ui/top/TopAnimeActivity;->t:Lanimebestapp/com/ui/a/d;

    return-void
.end method


# virtual methods
.method public a(ILanimebestapp/com/models/d;)V
    .registers 4

    if-eqz p2, :cond_1e

    check-cast p2, Lanimebestapp/com/models/Anime;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lanimebestapp/com/ui/info/InfoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1e
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type animebestapp.com.models.Anime"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/ui/a/d;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/a/d;-><init>(Lanimebestapp/com/ui/a/f/c;)V

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/a/d;->a(I)V

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Ljava/util/List;)V

    sget-object p1, Lanimebestapp/com/ui/a/d$c;->b:Lanimebestapp/com/ui/a/d$c;

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Lanimebestapp/com/ui/a/d$c;)V

    sget p1, Lanimebestapp/com/a;->rvTopAnime:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/top/TopAnimeActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rvTopAnime"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    sget p1, Lanimebestapp/com/a;->rvTopAnime:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/top/TopAnimeActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/top/TopAnimeActivity;->t:Lanimebestapp/com/ui/a/d;

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Ljava/util/List;)V

    iget-object p1, p0, Lanimebestapp/com/ui/top/TopAnimeActivity;->t:Lanimebestapp/com/ui/a/d;

    sget-object v0, Lanimebestapp/com/ui/a/d$c;->b:Lanimebestapp/com/ui/a/d$c;

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/a/d;->a(Lanimebestapp/com/ui/a/d$c;)V

    return-void
.end method

.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/top/TopAnimeActivity;->u:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/top/TopAnimeActivity;->u:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/top/TopAnimeActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/top/TopAnimeActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/top/a;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/top/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/top/a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/top/TopAnimeActivity;->l()Lanimebestapp/com/ui/top/a;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b004f

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/a;->setContentView(I)V

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/top/TopAnimeActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_85

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->d(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_81

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->e(Z)V

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/top/TopAnimeActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lanimebestapp/com/ui/top/TopAnimeActivity$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/top/TopAnimeActivity$b;-><init>(Lanimebestapp/com/ui/top/TopAnimeActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "resources"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4d

    const/4 v0, 0x2

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x4

    :goto_4e
    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lanimebestapp/com/ui/top/TopAnimeActivity$c;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/top/TopAnimeActivity$c;-><init>(Lanimebestapp/com/ui/top/TopAnimeActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    sget v0, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/top/TopAnimeActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rvList"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/top/TopAnimeActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/top/TopAnimeActivity;->t:Lanimebestapp/com/ui/a/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/top/a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/top/a;->e()V

    return-void

    :cond_81
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_85
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0
.end method

.method public final y()Lanimebestapp/com/ui/a/d;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/top/TopAnimeActivity;->t:Lanimebestapp/com/ui/a/d;

    return-object v0
.end method

###### Class animebestapp.com.ui.top.TopAnimeActivity.a (animebestapp.com.ui.top.TopAnimeActivity$a)
.class public final Lanimebestapp/com/ui/top/TopAnimeActivity$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/top/TopAnimeActivity;
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

    invoke-direct {p0}, Lanimebestapp/com/ui/top/TopAnimeActivity$a;-><init>()V

    return-void
.end method

###### Class animebestapp.com.ui.top.TopAnimeActivity.b (animebestapp.com.ui.top.TopAnimeActivity$b)
.class final Lanimebestapp/com/ui/top/TopAnimeActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/top/TopAnimeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/top/TopAnimeActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/top/TopAnimeActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/top/TopAnimeActivity$b;->b:Lanimebestapp/com/ui/top/TopAnimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/top/TopAnimeActivity$b;->b:Lanimebestapp/com/ui/top/TopAnimeActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

###### Class animebestapp.com.ui.top.TopAnimeActivity.c (animebestapp.com.ui.top.TopAnimeActivity$c)
.class public final Lanimebestapp/com/ui/top/TopAnimeActivity$c;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/top/TopAnimeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lanimebestapp/com/ui/top/TopAnimeActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/top/TopAnimeActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/top/TopAnimeActivity$c;->c:Lanimebestapp/com/ui/top/TopAnimeActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/top/TopAnimeActivity$c;->c:Lanimebestapp/com/ui/top/TopAnimeActivity;

    invoke-virtual {v0}, Lanimebestapp/com/ui/top/TopAnimeActivity;->y()Lanimebestapp/com/ui/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    goto :goto_24

    :cond_e
    iget-object p1, p0, Lanimebestapp/com/ui/top/TopAnimeActivity$c;->c:Lanimebestapp/com/ui/top/TopAnimeActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "resources"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v0, :cond_23

    const/4 v0, 0x2

    goto :goto_24

    :cond_23
    const/4 v0, 0x4

    :goto_24
    return v0
.end method
