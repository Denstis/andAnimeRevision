###### Class animebestapp.com.ui.nav.h.b.a (animebestapp.com.ui.nav.h.b.a)
.class public final Lanimebestapp/com/ui/nav/h/b/a;
.super Lanimebestapp/com/ui/a/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/a/f/d;
.implements Lanimebestapp/com/ui/a/f/b;
.implements Lanimebestapp/com/ui/a/f/c;
.implements Lanimebestapp/com/ui/nav/h/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/h/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/b<",
        "Lanimebestapp/com/ui/nav/h/b/d;",
        "Lanimebestapp/com/ui/nav/h/b/b;",
        ">;",
        "Lanimebestapp/com/ui/a/f/d;",
        "Lanimebestapp/com/ui/a/f/b;",
        "Lanimebestapp/com/ui/a/f/c;",
        "Lanimebestapp/com/ui/nav/h/b/d;"
    }
.end annotation


# static fields
.field public static final h:Lanimebestapp/com/ui/nav/h/b/a$a;


# instance fields
.field private d:Lanimebestapp/com/ui/a/d;

.field private e:Ljava/lang/Boolean;

.field private f:Lanimebestapp/com/f/a;

.field private g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/b/a$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/ui/nav/h/b/a;->h:Lanimebestapp/com/ui/nav/h/b/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/b/a;)Lanimebestapp/com/ui/a/d;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/b/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "adapter"

    invoke-static {p0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->f:Lanimebestapp/com/f/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lanimebestapp/com/f/a;->b()V

    return-void

    :cond_8
    const-string v0, "dialog"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(ILanimebestapp/com/models/d;)V
    .registers 3

    if-eqz p2, :cond_c

    check-cast p2, Lanimebestapp/com/models/Anime;

    iget-object p1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/b;

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/models/Anime;)V

    return-void

    :cond_c
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type animebestapp.com.models.Anime"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lanimebestapp/com/models/Anime;)V
    .registers 5

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lanimebestapp/com/ui/info/InfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/k/a/d;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->f:Lanimebestapp/com/f/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lanimebestapp/com/f/a;->a()V

    return-void

    :cond_8
    const-string v0, "dialog"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public d(Z)Z
    .registers 6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lb/k/a/d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3d

    sget v0, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    if-eqz p1, :cond_21

    const v3, 0x7f05001f

    goto :goto_24

    :cond_21
    const v3, 0x7f05001b

    :goto_24
    invoke-static {v1, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz v0, :cond_33

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Z)V

    goto :goto_3d

    :cond_33
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_39
    invoke-static {}, Lg/p/b/f;->a()V

    throw v2

    :cond_3d
    :goto_3d
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->g:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->g:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->g:Ljava/util/HashMap;

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

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/b/a;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public f(Ljava/util/List;)V
    .registers 7
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

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->d:Lanimebestapp/com/ui/a/d;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Lanimebestapp/com/ui/a/d;->a()V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz v0, :cond_7b

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Ljava/util/List;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz p1, :cond_77

    sget-object v0, Lanimebestapp/com/ui/a/d$c;->b:Lanimebestapp/com/ui/a/d$c;

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/a/d;->a(Lanimebestapp/com/ui/a/d$c;)V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lb/k/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "resources"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    const/4 v3, 0x2

    goto :goto_3a

    :cond_39
    const/4 v3, 0x4

    :goto_3a
    invoke-direct {p1, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/a$c;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/h/b/a$c;-><init>(Lanimebestapp/com/ui/nav/h/b/a;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    sget v0, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "rvList"

    invoke-static {v0, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz v0, :cond_73

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/a;->e:Ljava/lang/Boolean;

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/a;->d(Z)Z

    :cond_72
    return-void

    :cond_73
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_77
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_7b
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_7f
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public j()V
    .registers 4

    new-instance v0, Lanimebestapp/com/ui/nav/b;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_19

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lanimebestapp/com/ui/nav/h/b/a$b;

    invoke-direct {v2, p0}, Lanimebestapp/com/ui/nav/h/b/a$b;-><init>(Lanimebestapp/com/ui/nav/h/b/a;)V

    invoke-direct {v0, v1, v2}, Lanimebestapp/com/ui/nav/b;-><init>(Landroid/content/Context;Lg/p/a/a;)V

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/b;->b()V

    return-void

    :cond_19
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public l()Lanimebestapp/com/ui/nav/h/b/b;
    .registers 4

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/b;

    invoke-virtual {p0}, Lb/k/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arguments!!.getString(\"type\")"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/b/b;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_17
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/b/a;->l()Lanimebestapp/com/ui/nav/h/b/b;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/b;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lanimebestapp/com/ui/a/d;

    invoke-direct {p1, p0}, Lanimebestapp/com/ui/a/d;-><init>(Lanimebestapp/com/ui/a/f/c;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/a;->d:Lanimebestapp/com/ui/a/d;

    new-instance p1, Lanimebestapp/com/f/a;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "context!!"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lanimebestapp/com/f/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/a;->f:Lanimebestapp/com/f/a;

    return-void

    :cond_1d
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
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

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/b/a;->p()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lc/b/a/c/b;->onResume()V

    iget-object v0, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast v0, Lanimebestapp/com/ui/nav/h/b/b;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/b/b;->e()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lanimebestapp/com/ui/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/a;->e:Ljava/lang/Boolean;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/a;->d(Z)Z

    :cond_13
    return-void
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.a.C0070a (animebestapp.com.ui.nav.h.b.a$a)
.class public final Lanimebestapp/com/ui/nav/h/b/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/h/b/a;
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

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/b/a;
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lanimebestapp/com/ui/nav/h/b/a;

    invoke-direct {v1}, Lanimebestapp/com/ui/nav/h/b/a;-><init>()V

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

###### Class animebestapp.com.ui.nav.h.b.a.b (animebestapp.com.ui.nav.h.b.a$b)
.class final Lanimebestapp/com/ui/nav/h/b/a$b;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/a<",
        "Lg/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/b/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/a$b;->b:Lanimebestapp/com/ui/nav/h/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/b/a$b;->a()V

    sget-object v0, Lg/l;->a:Lg/l;

    return-object v0
.end method

.method public final a()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a$b;->b:Lanimebestapp/com/ui/nav/h/b/a;

    invoke-virtual {v0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    instance-of v1, v0, Lanimebestapp/com/ui/nav/NavActivity;

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    check-cast v0, Lanimebestapp/com/ui/nav/NavActivity;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/NavActivity;->j()V

    :cond_12
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.a.c (animebestapp.com.ui.nav.h.b.a$c)
.class public final Lanimebestapp/com/ui/nav/h/b/a$c;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/a;->f(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lanimebestapp/com/ui/nav/h/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/b/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/a$c;->c:Lanimebestapp/com/ui/nav/h/b/a;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/a$c;->c:Lanimebestapp/com/ui/nav/h/b/a;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/b/a;->a(Lanimebestapp/com/ui/nav/h/b/a;)Lanimebestapp/com/ui/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    goto :goto_24

    :cond_e
    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/a$c;->c:Lanimebestapp/com/ui/nav/h/b/a;

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
