###### Class animebestapp.com.ui.nav.h.e.a (animebestapp.com.ui.nav.h.e.a)
.class public final Lanimebestapp/com/ui/nav/h/e/a;
.super Lanimebestapp/com/ui/a/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/a/f/d;
.implements Lanimebestapp/com/ui/a/f/b;
.implements Lanimebestapp/com/ui/a/f/c;
.implements Lanimebestapp/com/ui/nav/h/e/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/h/e/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/b<",
        "Lanimebestapp/com/ui/nav/h/e/d;",
        "Lanimebestapp/com/ui/nav/h/e/b;",
        ">;",
        "Lanimebestapp/com/ui/a/f/d;",
        "Lanimebestapp/com/ui/a/f/b;",
        "Lanimebestapp/com/ui/a/f/c;",
        "Lanimebestapp/com/ui/nav/h/e/d;"
    }
.end annotation


# static fields
.field public static final g:Lanimebestapp/com/ui/nav/h/e/a$a;


# instance fields
.field private d:Lanimebestapp/com/ui/a/d;

.field private final e:Lanimebestapp/com/ui/nav/h/e/a$f;

.field private f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/e/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/e/a$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/ui/nav/h/e/a;->g:Lanimebestapp/com/ui/nav/h/e/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/a/b;-><init>()V

    new-instance v0, Lanimebestapp/com/ui/nav/h/e/a$f;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/h/e/a$f;-><init>(Lanimebestapp/com/ui/nav/h/e/a;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/e/a;->e:Lanimebestapp/com/ui/nav/h/e/a$f;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/e/a;)Lanimebestapp/com/ui/a/d;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/e/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "adapter"

    invoke-static {p0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/nav/h/e/a;)Lanimebestapp/com/ui/nav/h/e/b;
    .registers 1

    iget-object p0, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p0, Lanimebestapp/com/ui/nav/h/e/b;

    return-object p0
.end method

.method public static final synthetic c(Lanimebestapp/com/ui/nav/h/e/a;)V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/e/a;->r()V

    return-void
.end method

.method private final r()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.PROMPT"

    const-string v2, "Voice searching..."

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xfa1

    invoke-virtual {p0, v0, v1}, Lb/k/a/d;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
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

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Ljava/util/List;)V

    return-void

    :cond_d
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Z)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-virtual {p0}, Lb/k/a/d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->a(Z)V

    goto :goto_18

    :cond_11
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_18
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/a;->f:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/e/a;->f:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/a;->f:Ljava/util/HashMap;

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

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/e/a;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/nav/h/e/b;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/e/b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/e/b;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/e/a;->l()Lanimebestapp/com/ui/nav/h/e/b;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lb/k/a/d;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xfa1

    if-ne p1, v0, :cond_85

    const/4 p1, -0x1

    if-ne p2, p1, :cond_85

    if-eqz p3, :cond_85

    const-string p1, "TAG"

    const-string p2, "onActivityResult"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "data.getStringArrayListE\u2026izerIntent.EXTRA_RESULTS)"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lg/m/j;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_85

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_81

    const-string v0, "activity!!"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d;->a()V

    iget-object p1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/nav/h/e/b;

    sget p2, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p2}, Lanimebestapp/com/ui/nav/h/e/a;->f(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rvList"

    invoke-static {p2, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v1

    if-eqz v1, :cond_77

    invoke-static {v1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {v1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const-string v0, "activity!!.etSearch"

    invoke-static {p3, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lanimebestapp/com/ui/nav/h/e/b;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    goto :goto_85

    :cond_77
    invoke-static {}, Lg/p/b/f;->a()V

    throw p3

    :cond_7b
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw p3

    :cond_81
    invoke-static {}, Lg/p/b/f;->a()V

    throw p3

    :cond_85
    :goto_85
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->btnSpeak:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "activity!!.btnSpeak"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/e/a;->q()Z

    move-result v0

    return v0

    :cond_22
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lb/k/a/d;->setHasOptionsMenu(Z)V

    new-instance p1, Lanimebestapp/com/ui/a/d;

    invoke-direct {p1, p0}, Lanimebestapp/com/ui/a/d;-><init>(Lanimebestapp/com/ui/a/f/c;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a;->d:Lanimebestapp/com/ui/a/d;

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a;->d:Lanimebestapp/com/ui/a/d;

    if-eqz p1, :cond_18

    sget-object v0, Lanimebestapp/com/ui/a/d$c;->b:Lanimebestapp/com/ui/a/d$c;

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/a/d;->a(Lanimebestapp/com/ui/a/d$c;)V

    return-void

    :cond_18
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

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

.method public onDestroyView()V
    .registers 5

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    const-string v2, "activity!!"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lanimebestapp/com/a;->btnSpeak:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v3, "activity!!.btnSpeak"

    invoke-static {v0, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/e/a;->e:Lanimebestapp/com/ui/nav/h/e/a$f;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-super {p0}, Lanimebestapp/com/ui/a/b;->onDestroyView()V

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/e/a;->p()V

    return-void

    :cond_3b
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_3f
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lc/b/a/c/b;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

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

    new-instance p2, Lanimebestapp/com/ui/nav/h/e/a$b;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/nav/h/e/a$b;-><init>(Lanimebestapp/com/ui/nav/h/e/a;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    sget p2, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p2}, Lanimebestapp/com/ui/nav/h/e/a;->f(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "rvList"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lanimebestapp/com/ui/nav/h/e/a;->d:Lanimebestapp/com/ui/a/d;

    const/4 v0, 0x0

    if-eqz p2, :cond_12f

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_12b

    const-string p2, "activity!!"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->btnSpeak:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const-string v1, "activity!!.btnSpeak"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_127

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/e/a;->e:Lanimebestapp/com/ui/nav/h/e/a$f;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_90

    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_91

    :cond_90
    move-object p1, v0

    :goto_91
    if-eqz p1, :cond_11f

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v2

    if-eqz v2, :cond_11b

    invoke-static {v2, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {p1, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_117

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_bf

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_bf
    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_113

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->btnClear:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v1, Lanimebestapp/com/ui/nav/h/e/a$c;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/e/a$c;-><init>(Lanimebestapp/com/ui/nav/h/e/a;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_10f

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->btnSpeak:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v1, Lanimebestapp/com/ui/nav/h/e/a$d;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/e/a$d;-><init>(Lanimebestapp/com/ui/nav/h/e/a;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_10b

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lanimebestapp/com/ui/nav/h/e/a$e;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/nav/h/e/a$e;-><init>(Lanimebestapp/com/ui/nav/h/e/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :cond_10b
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_10f
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_113
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_117
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_11b
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_11f
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_127
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_12b
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_12f
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

.method public q()Z
    .registers 3

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_1c

    check-cast v0, Lanimebestapp/com/ui/nav/NavActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/NavActivity;->d(Z)V

    invoke-virtual {p0}, Lb/k/a/d;->getFragmentManager()Lb/k/a/i;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lb/k/a/i;->e()V

    const/4 v0, 0x1

    return v0

    :cond_17
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0

    :cond_1c
    new-instance v0, Lg/j;

    const-string v1, "null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity"

    invoke-direct {v0, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class animebestapp.com.ui.nav.h.e.a.C0086a (animebestapp.com.ui.nav.h.e.a$a)
.class public final Lanimebestapp/com/ui/nav/h/e/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/h/e/a;
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

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/e/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lanimebestapp/com/ui/nav/h/e/a;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/e/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/e/a;-><init>()V

    return-object v0
.end method

###### Class animebestapp.com.ui.nav.h.e.a.b (animebestapp.com.ui.nav.h.e.a$b)
.class public final Lanimebestapp/com/ui/nav/h/e/a$b;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/e/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lanimebestapp/com/ui/nav/h/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/e/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$b;->c:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/a$b;->c:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/e/a;->a(Lanimebestapp/com/ui/nav/h/e/a;)Lanimebestapp/com/ui/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/a/d;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    goto :goto_24

    :cond_e
    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$b;->c:Lanimebestapp/com/ui/nav/h/e/a;

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

###### Class animebestapp.com.ui.nav.h.e.a.c (animebestapp.com.ui.nav.h.e.a$c)
.class final Lanimebestapp/com/ui/nav/h/e/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/e/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/e/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$c;->b:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$c;->b:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_1b

    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1b
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

###### Class animebestapp.com.ui.nav.h.e.a.d (animebestapp.com.ui.nav.h.e.a$d)
.class final Lanimebestapp/com/ui/nav/h/e/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/e/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/e/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$d;->b:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$d;->b:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/e/a;->c(Lanimebestapp/com/ui/nav/h/e/a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.e.a.e (animebestapp.com.ui.nav.h.e.a$e)
.class public final Lanimebestapp/com/ui/nav/h/e/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/e/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/e/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$e;->a:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string p3, "v"

    invoke-static {p1, p3}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_52

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$e;->a:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/e/a;->a(Lanimebestapp/com/ui/nav/h/e/a;)Lanimebestapp/com/ui/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d;->a()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$e;->a:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/e/a;->b(Lanimebestapp/com/ui/nav/h/e/a;)Lanimebestapp/com/ui/nav/h/e/b;

    move-result-object p1

    iget-object p2, p0, Lanimebestapp/com/ui/nav/h/e/a$e;->a:Lanimebestapp/com/ui/nav/h/e/a;

    sget p3, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p2, p3}, Lanimebestapp/com/ui/nav/h/e/a;->f(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string p3, "rvList"

    invoke-static {p2, p3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lanimebestapp/com/ui/nav/h/e/a$e;->a:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-virtual {p3}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p3

    if-eqz p3, :cond_4d

    const-string v0, "activity!!"

    invoke-static {p3, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const-string v0, "activity!!.etSearch"

    invoke-static {p3, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lanimebestapp/com/ui/nav/h/e/b;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_4d
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_52
    const/4 p1, 0x0

    return p1
.end method

###### Class animebestapp.com.ui.nav.h.e.a.f (animebestapp.com.ui.nav.h.e.a$f)
.class public final Lanimebestapp/com/ui/nav/h/e/a$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/e/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/e/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$f;->b:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    const-string p2, "query"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    const/16 p3, 0x8

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$f;->b:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_28

    sget p4, Lanimebestapp/com/a;->btnSpeak:I

    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_28

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_28
    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$f;->b:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_68

    sget p3, Lanimebestapp/com/a;->btnClear:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_68

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_68

    :cond_3e
    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$f;->b:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_53

    sget p4, Lanimebestapp/com/a;->btnSpeak:I

    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_53

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_53
    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/e/a$f;->b:Lanimebestapp/com/ui/nav/h/e/a;

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    if-eqz p1, :cond_68

    sget p2, Lanimebestapp/com/a;->btnClear:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_68

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_68
    :goto_68
    return-void
.end method
