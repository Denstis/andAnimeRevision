###### Class animebestapp.com.ui.nav.h.a.c (animebestapp.com.ui.nav.h.a.c)
.class public final Lanimebestapp/com/ui/nav/h/a/c;
.super Lanimebestapp/com/ui/a/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/nav/h/a/g;
.implements Lanimebestapp/com/ui/a/f/d;
.implements Lanimebestapp/com/ui/a/f/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/h/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/b<",
        "Lanimebestapp/com/ui/nav/h/a/g;",
        "Lanimebestapp/com/ui/nav/h/a/d;",
        ">;",
        "Lanimebestapp/com/ui/nav/h/a/g;",
        "Lanimebestapp/com/ui/a/f/d;",
        "Lanimebestapp/com/ui/a/f/c;"
    }
.end annotation


# static fields
.field public static final h:Lanimebestapp/com/ui/nav/h/a/c$a;


# instance fields
.field private d:Ljava/lang/Boolean;

.field private e:Lanimebestapp/com/ui/a/d;

.field private f:Lanimebestapp/com/ui/nav/h/a/b;

.field private g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/a/c$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/ui/nav/h/a/c;->h:Lanimebestapp/com/ui/nav/h/a/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/a/c;)Lanimebestapp/com/ui/a/d;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/a/c;->e:Lanimebestapp/com/ui/a/d;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "adapter"

    invoke-static {p0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/nav/h/a/c;)Lanimebestapp/com/ui/nav/h/a/b;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/a/c;->f:Lanimebestapp/com/ui/nav/h/a/b;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "dialog"

    invoke-static {p0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic c(Lanimebestapp/com/ui/nav/h/a/c;)Lanimebestapp/com/ui/nav/h/a/d;
    .registers 1

    iget-object p0, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p0, Lanimebestapp/com/ui/nav/h/a/d;

    return-object p0
.end method


# virtual methods
.method public a(ILanimebestapp/com/models/d;)V
    .registers 5

    if-eqz p2, :cond_22

    check-cast p2, Lanimebestapp/com/models/Anime;

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lanimebestapp/com/ui/info/InfoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/k/a/d;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_22
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type animebestapp.com.models.Anime"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->e:Lanimebestapp/com/ui/a/d;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Ljava/util/List;)V

    return-void

    :cond_d
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lb/k/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    const/4 v2, 0x2

    goto :goto_25

    :cond_24
    const/4 v2, 0x4

    :goto_25
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lanimebestapp/com/ui/nav/h/a/c$b;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/a/c$b;-><init>(Lanimebestapp/com/ui/nav/h/a/c;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    sget v1, Lanimebestapp/com/a;->rvCategory:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/nav/h/a/c;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "rvCategory"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    sget v0, Lanimebestapp/com/a;->rvCategory:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/a/c;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/a/c;->e:Lanimebestapp/com/ui/a/d;

    const-string v2, "adapter"

    const/4 v3, 0x0

    if-eqz v1, :cond_97

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->e:Lanimebestapp/com/ui/a/d;

    if-eqz v0, :cond_93

    sget-object v1, Lanimebestapp/com/ui/a/d$c;->b:Lanimebestapp/com/ui/a/d$c;

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/a/d;->a(Lanimebestapp/com/ui/a/d$c;)V

    new-instance v0, Lanimebestapp/com/ui/nav/h/a/c$c;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_8f

    const-string v1, "context!!"

    invoke-static {v8, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lanimebestapp/com/ui/nav/h/a/c$c;-><init>(Lanimebestapp/com/ui/nav/h/a/c;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->f:Lanimebestapp/com/ui/nav/h/a/b;

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/a/c;->d:Ljava/lang/Boolean;

    if-eqz p1, :cond_81

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/a/c;->d(Z)Z

    :cond_81
    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/a/c;->f:Lanimebestapp/com/ui/nav/h/a/b;

    if-eqz p1, :cond_89

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/h/a/b;->b()V

    return-void

    :cond_89
    const-string p1, "dialog"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v3

    :cond_8f
    invoke-static {}, Lg/p/b/f;->a()V

    throw v3

    :cond_93
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v3

    :cond_97
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v3
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    const-string v0, "title"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1c
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Z)Z
    .registers 6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->d:Ljava/lang/Boolean;

    sget v0, Lanimebestapp/com/a;->rvCategory:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/a/c;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_59

    sget v0, Lanimebestapp/com/a;->rvCategory:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/a/c;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    if-eqz p1, :cond_25

    const v3, 0x7f05001f

    goto :goto_28

    :cond_25
    const v3, 0x7f05001b

    :goto_28
    invoke-static {v1, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->e:Lanimebestapp/com/ui/a/d;

    if-eqz v0, :cond_4f

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Z)V

    sget v0, Lanimebestapp/com/a;->rvCategory:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/a/c;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->f:Lanimebestapp/com/ui/nav/h/a/b;

    if-eqz v0, :cond_49

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/nav/h/a/b;->a(Z)V

    goto :goto_59

    :cond_49
    const-string p1, "dialog"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_4f
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_55
    invoke-static {}, Lg/p/b/f;->a()V

    throw v2

    :cond_59
    :goto_59
    const/4 p1, 0x1

    return p1
.end method

.method public f(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->g:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->g:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->g:Ljava/util/HashMap;

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

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/a/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/nav/h/a/d;
    .registers 4

    new-instance v0, Lanimebestapp/com/ui/nav/h/a/d;

    invoke-virtual {p0}, Lb/k/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arguments!!.getString(KEY)"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/a/d;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_17
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/a/c;->l()Lanimebestapp/com/ui/nav/h/a/d;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lb/k/a/d;->setHasOptionsMenu(Z)V

    new-instance p1, Lanimebestapp/com/ui/a/d;

    invoke-direct {p1, p0}, Lanimebestapp/com/ui/a/d;-><init>(Lanimebestapp/com/ui/a/f/c;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/c;->e:Lanimebestapp/com/ui/a/d;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lb/k/a/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0046

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lanimebestapp/com/ui/a/b;->onDestroyView()V

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/a/c;->p()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->f:Lanimebestapp/com/ui/nav/h/a/b;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/a/b;->b()V

    invoke-super {p0, p1}, Lb/k/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_c
    const-string p1, "dialog"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lc/b/a/c/b;->onResume()V

    iget-object v0, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast v0, Lanimebestapp/com/ui/nav/h/a/d;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/a/d;->g()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lanimebestapp/com/ui/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/nav/h/a/d;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/h/a/d;->f()V

    return-void
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.a.c.a (animebestapp.com.ui.nav.h.a.c$a)
.class public final Lanimebestapp/com/ui/nav/h/a/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/h/a/c;
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

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/a/c;
    .registers 7

    const-string v0, "category"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lanimebestapp/com/ui/nav/h/a/c;

    invoke-direct {v1}, Lanimebestapp/com/ui/nav/h/a/c;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lb/k/a/d;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lb/k/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lb/k/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_28

    const-string v0, "key"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_28
    invoke-static {}, Lg/p/b/f;->a()V

    throw v3

    :cond_2c
    invoke-static {}, Lg/p/b/f;->a()V

    throw v3
.end method

###### Class animebestapp.com.ui.nav.h.a.c.b (animebestapp.com.ui.nav.h.a.c$b)
.class public final Lanimebestapp/com/ui/nav/h/a/c$b;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/c;->a(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lanimebestapp/com/ui/nav/h/a/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/a/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/c$b;->c:Lanimebestapp/com/ui/nav/h/a/c;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c$b;->c:Lanimebestapp/com/ui/nav/h/a/c;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/a/c;->a(Lanimebestapp/com/ui/nav/h/a/c;)Lanimebestapp/com/ui/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    goto :goto_24

    :cond_e
    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/a/c$b;->c:Lanimebestapp/com/ui/nav/h/a/c;

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

###### Class animebestapp.com.ui.nav.h.a.c.C0068c (animebestapp.com.ui.nav.h.a.c$c)
.class public final Lanimebestapp/com/ui/nav/h/a/c$c;
.super Lanimebestapp/com/ui/nav/h/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/c;->a(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lanimebestapp/com/ui/nav/h/a/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/a/c;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/c$c;->d:Lanimebestapp/com/ui/nav/h/a/c;

    invoke-direct {p0, p4, p5, p6}, Lanimebestapp/com/ui/nav/h/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lg/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c$c;->d:Lanimebestapp/com/ui/nav/h/a/c;

    invoke-virtual {v0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_5c

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lg/f;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c$c;->d:Lanimebestapp/com/ui/nav/h/a/c;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/a/c;->a(Lanimebestapp/com/ui/nav/h/a/c;)Lanimebestapp/com/ui/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/a/d;->a()V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c$c;->d:Lanimebestapp/com/ui/nav/h/a/c;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/a/c;->b(Lanimebestapp/com/ui/nav/h/a/c;)Lanimebestapp/com/ui/nav/h/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/a/b;->a()V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/c$c;->d:Lanimebestapp/com/ui/nav/h/a/c;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/a/c;->c(Lanimebestapp/com/ui/nav/h/a/c;)Lanimebestapp/com/ui/nav/h/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lg/f;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/a/c$c;->d:Lanimebestapp/com/ui/nav/h/a/c;

    sget v2, Lanimebestapp/com/a;->rvCategory:I

    invoke-virtual {v1, v2}, Lanimebestapp/com/ui/nav/h/a/c;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "rvCategory"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lanimebestapp/com/ui/nav/h/a/d;->a(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_5c
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method
