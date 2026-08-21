###### Class animebestapp.com.ui.nav.h.c.a (animebestapp.com.ui.nav.h.c.a)
.class public final Lanimebestapp/com/ui/nav/h/c/a;
.super Lanimebestapp/com/ui/a/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/nav/h/c/d;
.implements Lanimebestapp/com/ui/a/f/d;
.implements Lanimebestapp/com/ui/a/f/b;
.implements Lanimebestapp/com/ui/a/f/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/h/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/b<",
        "Lanimebestapp/com/ui/nav/h/c/d;",
        "Lanimebestapp/com/ui/nav/h/c/b;",
        ">;",
        "Lanimebestapp/com/ui/nav/h/c/d;",
        "Lanimebestapp/com/ui/a/f/d;",
        "Lanimebestapp/com/ui/a/f/b;",
        "Lanimebestapp/com/ui/a/f/c;"
    }
.end annotation


# static fields
.field public static final h:Lanimebestapp/com/ui/nav/h/c/a$a;


# instance fields
.field private d:Lanimebestapp/com/ui/a/d;

.field private e:Landroid/view/GestureDetector;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/c/a$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/a/b;-><init>()V

    new-instance v0, Lanimebestapp/com/ui/a/d;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/a/d;-><init>(Lanimebestapp/com/ui/a/f/c;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/a;->d:Lanimebestapp/com/ui/a/d;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/c/a;)Lanimebestapp/com/ui/a/d;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/c/a;->d:Lanimebestapp/com/ui/a/d;

    return-object p0
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/nav/h/c/a;)Landroid/view/GestureDetector;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/c/a;->e:Landroid/view/GestureDetector;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mGestureDetector"

    invoke-static {p0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(ILanimebestapp/com/models/d;)V
    .registers 6

    instance-of p1, p2, Lanimebestapp/com/models/Anime;

    const-string v0, "content"

    if-eqz p1, :cond_22

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lanimebestapp/com/ui/info/InfoActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    :goto_16
    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/k/a/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_63

    :cond_22
    instance-of p1, p2, Lanimebestapp/com/models/News;

    if-eqz p1, :cond_63

    move-object p1, p2

    check-cast p1, Lanimebestapp/com/models/News;

    invoke-virtual {p1}, Lanimebestapp/com/models/News;->getCategory()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_30

    goto :goto_52

    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_39

    goto :goto_52

    :cond_39
    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lanimebestapp/com/ui/news/NewsDetailActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    goto :goto_16

    :cond_52
    :goto_52
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lanimebestapp/com/ui/news/NewsDetailActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    goto :goto_16

    :cond_63
    :goto_63
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lanimebestapp/com/models/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/a;->d:Lanimebestapp/com/ui/a/d;

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public d(Z)Z
    .registers 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/a;->f:Ljava/lang/Boolean;

    sget v0, Lanimebestapp/com/a;->rlContainer:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_39

    sget v0, Lanimebestapp/com/a;->rlContainer:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_34

    if-eqz p1, :cond_24

    const v2, 0x7f05001f

    goto :goto_27

    :cond_24
    const v2, 0x7f05001b

    :goto_27
    invoke-static {v1, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/a;->d:Lanimebestapp/com/ui/a/d;

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Z)V

    goto :goto_39

    :cond_34
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_39
    :goto_39
    const/4 p1, 0x1

    return p1
.end method

.method public f(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/a;->g:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/a;->g:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/a;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lb/k/a/d;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 p1, 0x0

    return-object p1

    :cond_21
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/a;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public f()V
    .registers 3

    sget v0, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public l()Lanimebestapp/com/ui/nav/h/c/b;
    .registers 4

    invoke-virtual {p0}, Lb/k/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_75

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_6f

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_7a

    goto :goto_6f

    :sswitch_18
    const-string v2, "serials"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v1, "17"

    goto :goto_6f

    :sswitch_23
    const-string v2, "reviews"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v1, "8"

    goto :goto_6f

    :sswitch_2e
    const-string v2, "kitai"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v1, "277"

    goto :goto_6f

    :sswitch_39
    const-string v2, "films"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v1, "9"

    goto :goto_6f

    :sswitch_44
    const-string v2, "news"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v1, "7"

    goto :goto_6f

    :sswitch_4f
    const-string v2, "ova"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v1, "10"

    goto :goto_6f

    :sswitch_5a
    const-string v2, "new"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v1, "6"

    goto :goto_6f

    :sswitch_65
    const-string v2, "anonse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v1, "84"

    :cond_6f
    :goto_6f
    new-instance v0, Lanimebestapp/com/ui/nav/h/c/b;

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/c/b;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_75
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    nop

    :sswitch_data_7a
    .sparse-switch
        -0x5437b1e2 -> :sswitch_65
        0x1a9a0 -> :sswitch_5a
        0x1af5a -> :sswitch_4f
        0x338ad3 -> :sswitch_44
        0x5cebb6f -> :sswitch_39
        0x6154d7e -> :sswitch_2e
        0x418ff41b -> :sswitch_23
        0x763dc0ff -> :sswitch_18
    .end sparse-switch
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/c/a;->l()Lanimebestapp/com/ui/nav/h/c/b;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/c/a;->q()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/b;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "LOGS"

    const-string v0, "Main onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b004a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lanimebestapp/com/ui/a/b;->onDestroyView()V

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/c/a;->p()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lc/b/a/c/b;->onResume()V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1d
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lanimebestapp/com/ui/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lb/k/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x2

    goto :goto_23

    :cond_22
    const/4 v0, 0x4

    :goto_23
    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance p2, Lanimebestapp/com/ui/nav/h/c/a$b;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/nav/h/c/a$b;-><init>(Lanimebestapp/com/ui/nav/h/c/a;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    const-string p2, "LOGS"

    const-string v0, "Main onViewCreated"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p2, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p2}, Lanimebestapp/com/ui/nav/h/c/a;->f(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "rvList"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lanimebestapp/com/ui/nav/h/c/a;->d:Lanimebestapp/com/ui/a/d;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Lanimebestapp/com/utils/e;

    sget v2, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v2}, Lanimebestapp/com/ui/nav/h/c/a;->f(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lanimebestapp/com/utils/e;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/a;->e:Landroid/view/GestureDetector;

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lanimebestapp/com/ui/nav/h/c/a$c;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/nav/h/c/a$c;-><init>(Lanimebestapp/com/ui/nav/h/c/a;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/a;->f:Ljava/lang/Boolean;

    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/a;->d(Z)Z

    :cond_8b
    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_ae

    iget-object p1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/b;

    sget p2, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p2}, Lanimebestapp/com/ui/nav/h/c/a;->f(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/nav/h/c/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_ae
    return-void
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

.method public q()Z
    .registers 2

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    return v0

    :cond_b
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

###### Class animebestapp.com.ui.nav.h.c.a.C0075a (animebestapp.com.ui.nav.h.c.a$a)
.class public final Lanimebestapp/com/ui/nav/h/c/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/h/c/a;
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

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/c/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/a;

    invoke-direct {v1}, Lanimebestapp/com/ui/nav/h/c/a;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lb/k/a/d;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lb/k/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1c
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

###### Class animebestapp.com.ui.nav.h.c.a.b (animebestapp.com.ui.nav.h.c.a$b)
.class public final Lanimebestapp/com/ui/nav/h/c/a$b;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lanimebestapp/com/ui/nav/h/c/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/a$b;->c:Lanimebestapp/com/ui/nav/h/c/a;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/a$b;->c:Lanimebestapp/com/ui/nav/h/c/a;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/c/a;->a(Lanimebestapp/com/ui/nav/h/c/a;)Lanimebestapp/com/ui/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    goto :goto_24

    :cond_e
    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/a$b;->c:Lanimebestapp/com/ui/nav/h/c/a;

    invoke-virtual {p1}, Lb/k/a/d;->getResources()Landroid/content/res/Resources;

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

###### Class animebestapp.com.ui.nav.h.c.a.c (animebestapp.com.ui.nav.h.c.a$c)
.class final Lanimebestapp/com/ui/nav/h/c/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/c/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/a$c;->b:Lanimebestapp/com/ui/nav/h/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/a$c;->b:Lanimebestapp/com/ui/nav/h/c/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/c/a;->b(Lanimebestapp/com/ui/nav/h/c/a;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
