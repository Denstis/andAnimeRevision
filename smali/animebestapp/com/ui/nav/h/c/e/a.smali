###### Class animebestapp.com.ui.nav.h.c.e.a (animebestapp.com.ui.nav.h.c.e.a)
.class public final Lanimebestapp/com/ui/nav/h/c/e/a;
.super Lanimebestapp/com/ui/a/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/nav/h/c/e/d;
.implements Lanimebestapp/com/ui/a/f/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/h/c/e/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/b<",
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        "Lanimebestapp/com/ui/nav/h/c/e/b;",
        ">;",
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        "Lanimebestapp/com/ui/a/f/d;"
    }
.end annotation


# static fields
.field public static final l:Lanimebestapp/com/ui/nav/h/c/e/a$a;


# instance fields
.field private d:Lanimebestapp/com/ui/a/e;

.field private e:Lanimebestapp/com/ui/nav/h/d/a;

.field private f:Ljava/lang/Boolean;

.field private g:Lanimebestapp/com/f/a;

.field private h:Z

.field private i:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final j:Ljava/lang/Runnable;

.field private k:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/c/e/a$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/ui/nav/h/c/e/a;->l:Lanimebestapp/com/ui/nav/h/c/e/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/a/b;-><init>()V

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/a$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/h/c/e/a$b;-><init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/c/e/a;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mLinearLayoutManager"

    invoke-static {p0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/c/e/a;Z)V
    .registers 2

    iput-boolean p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->h:Z

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/nav/h/c/e/a;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic c(Lanimebestapp/com/ui/nav/h/c/e/a;)Lanimebestapp/com/ui/nav/h/c/e/b;
    .registers 1

    iget-object p0, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p0, Lanimebestapp/com/ui/nav/h/c/e/b;

    return-object p0
.end method

.method public static final synthetic d(Lanimebestapp/com/ui/nav/h/c/e/a;)Z
    .registers 1

    iget-boolean p0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->h:Z

    return p0
.end method

.method public static final synthetic e(Lanimebestapp/com/ui/nav/h/c/e/a;)V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/c/e/a;->r()V

    return-void
.end method

.method private final q()V
    .registers 1

    return-void
.end method

.method private final r()V
    .registers 8

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "viewpager"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_17a

    check-cast v0, Lanimebestapp/com/ui/a/e;

    invoke-virtual {v0}, Lanimebestapp/com/ui/a/e;->d()V

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    new-instance v0, Lanimebestapp/com/ui/a/e;

    invoke-virtual {p0}, Lb/k/a/d;->getChildFragmentManager()Lb/k/a/i;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lanimebestapp/com/ui/a/e;-><init>(Lb/k/a/i;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-eqz v0, :cond_176

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v5, "last"

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v4

    const v5, 0x7f0e002b

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.all_anime)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_172

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v5, "news"

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v4

    const-string v5, "\u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    invoke-virtual {v0, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_16e

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v5, "kitai"

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v4

    const-string v5, "\u041a\u0438\u0442\u0430\u0439\u0441\u043a\u043e\u0435"

    invoke-virtual {v0, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_16a

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v5, "new"

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v4

    const v5, 0x7f0e008b

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.ongoing)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_166

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v5, "serials"

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v4

    const v5, 0x7f0e00a3

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.serials)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_162

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v5, "films"

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v4

    const v5, 0x7f0e0073

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.films)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_15e

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v5, "ova"

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v4

    const v5, 0x7f0e008d

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.ova)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_15a

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v5, "reviews"

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v4

    const-string v5, "\u0420\u0435\u0446\u0435\u043d\u0437\u0438\u0438"

    invoke-virtual {v0, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_156

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v5, "anonse"

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v4

    const v5, 0x7f0e002c

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.anons)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v1, :cond_152

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget v1, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_151

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->d(Z)Z

    :cond_151
    return-void

    :cond_152
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_156
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_15a
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_15e
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_162
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_166
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_16a
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_16e
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_172
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_176
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_17a
    new-instance v0, Lg/j;

    const-string v1, "null cannot be cast to non-null type animebestapp.com.ui.base.PagerAdapter"

    invoke-direct {v0, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final s()V
    .registers 7

    new-instance v0, Lanimebestapp/com/ui/a/e;

    invoke-virtual {p0}, Lb/k/a/d;->getChildFragmentManager()Lb/k/a/i;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/a/e;-><init>(Lb/k/a/i;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_14a

    sget-object v3, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v4, "last"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v3

    const v4, 0x7f0e002b

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.all_anime)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_146

    sget-object v3, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v4, "news"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v3

    const-string v4, "\u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_142

    sget-object v3, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v4, "kitai"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v3

    const-string v4, "\u041a\u0438\u0442\u0430\u0439\u0441\u043a\u043e\u0435"

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_13e

    sget-object v3, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v4, "new"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v3

    const v4, 0x7f0e008b

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.ongoing)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_13a

    sget-object v3, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v4, "serials"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v3

    const v4, 0x7f0e00a3

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.serials)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_136

    sget-object v3, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v4, "films"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v3

    const v4, 0x7f0e0073

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.films)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_132

    sget-object v3, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v4, "ova"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v3

    const v4, 0x7f0e008d

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.ova)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_12e

    sget-object v3, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v4, "anonse"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v3

    const v4, 0x7f0e002c

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.anons)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_12a

    sget-object v3, Lanimebestapp/com/ui/nav/h/c/a;->h:Lanimebestapp/com/ui/nav/h/c/a$a;

    const-string v4, "reviews"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/c/a;

    move-result-object v3

    const-string v4, "\u0420\u0435\u0446\u0435\u043d\u0437\u0438\u0438"

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "viewpager"

    invoke-static {v0, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v3, :cond_126

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget v1, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_125

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->d(Z)Z

    :cond_125
    return-void

    :cond_126
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_12a
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_12e
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_132
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_136
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_13a
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_13e
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_142
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_146
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_14a
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->g:Lanimebestapp/com/f/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lanimebestapp/com/f/a;->b()V

    return-void

    :cond_8
    const-string v0, "dialog"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
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

.method public a(Lanimebestapp/com/models/BannerInfo;)V
    .registers 4

    const-string v0, "bannerInfo"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->llBanner:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "llBanner"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v0, Lanimebestapp/com/a;->btnBanner:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "btnBanner"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/BannerInfo;->getBtn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lanimebestapp/com/a;->tvBannerTitle:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvBannerTitle"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/BannerInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lanimebestapp/com/a;->btnHideBanner:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/e/a$f;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/c/e/a$f;-><init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lanimebestapp/com/a;->btnBanner:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/e/a$g;

    invoke-direct {v1, p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/a$g;-><init>(Lanimebestapp/com/ui/nav/h/c/e/a;Lanimebestapp/com/models/BannerInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->g:Lanimebestapp/com/f/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lanimebestapp/com/f/a;->a()V

    return-void

    :cond_8
    const-string v0, "dialog"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/a;

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/e/a$h;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/c/e/a$h;-><init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V

    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lanimebestapp/com/ui/nav/h/d/a;-><init>(Lanimebestapp/com/ui/a/f/c;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->e:Lanimebestapp/com/ui/nav/h/d/a;

    sget v0, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rvRasp"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->e:Lanimebestapp/com/ui/nav/h/d/a;

    if-eqz v1, :cond_51

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_50

    sget p1, Lanimebestapp/com/a;->containerRasp:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    const-string v0, "containerRasp"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_50
    return-void

    :cond_51
    const-string p1, "adapterRasp"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Z)Z
    .registers 6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->f:Ljava/lang/Boolean;

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    sget v1, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_29

    if-eqz v2, :cond_25

    const v3, 0x7f0500d2

    goto :goto_2e

    :cond_25
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_29
    if-eqz v2, :cond_43

    const v3, 0x7f0500d1

    :goto_2e
    invoke-static {v2, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v1, :cond_3d

    invoke-virtual {v1, p1}, Lanimebestapp/com/ui/a/e;->a(Z)V

    goto :goto_47

    :cond_3d
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_43
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_47
    :goto_47
    const/4 p1, 0x1

    return p1
.end method

.method public f(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->k:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->k:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->k:Ljava/util/HashMap;

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

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/nav/h/c/e/b;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/c/e/b;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/c/e/a;->l()Lanimebestapp/com/ui/nav/h/c/e/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lb/k/a/d;->setHasOptionsMenu(Z)V

    new-instance p1, Lanimebestapp/com/f/a;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, "context!!"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lanimebestapp/com/f/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->g:Lanimebestapp/com/f/a;

    return-void

    :cond_1a
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lb/k/a/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0c0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b004d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "LayoutInflater.from(cont\u2026t_tabs, container, false)"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1d
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lc/b/a/c/b;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lanimebestapp/com/ui/a/b;->onDestroyView()V

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/c/e/a;->p()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0800f7

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/c/e/a;->r()V

    goto :goto_1d

    :cond_12
    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_22

    check-cast v0, Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/NavActivity;->A()V

    :goto_1d
    invoke-super {p0, p1}, Lb/k/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_22
    new-instance p1, Lg/j;

    const-string v0, "null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity"

    invoke-direct {p1, v0}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lc/b/a/c/b;->onPause()V

    sget v0, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_25

    check-cast v0, Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->btnRefresh:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_25
    new-instance v0, Lg/j;

    const-string v1, "null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity"

    invoke-direct {v0, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lc/b/a/c/b;->onResume()V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_1c

    check-cast v0, Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->btnRefresh:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/e/a$c;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/c/e/a$c;-><init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1c
    new-instance v0, Lg/j;

    const-string v1, "null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity"

    invoke-direct {v0, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lanimebestapp/com/ui/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/c/e/a;->q()V

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/c/e/a;->s()V

    new-instance p1, Lanimebestapp/com/utils/SpeedyLinearLayoutManager;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_86

    const-string v1, "context!!"

    invoke-static {p2, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v1}, Lanimebestapp/com/utils/SpeedyLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    sget p1, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "rvRasp"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_80

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    new-instance p1, Lanimebestapp/com/utils/f;

    invoke-direct {p1}, Lanimebestapp/com/utils/f;-><init>()V

    sget p2, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {p0, p2}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lanimebestapp/com/utils/f;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Lb/k/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "resources"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7f

    sget p1, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lanimebestapp/com/ui/nav/h/c/e/a$d;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/nav/h/c/e/a$d;-><init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    iget-object p1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/h/c/e/b;->g()V

    sget p1, Lanimebestapp/com/a;->btnRasp:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lanimebestapp/com/ui/nav/h/c/e/a$e;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/nav/h/c/e/a$e;-><init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7f
    return-void

    :cond_80
    const-string p1, "mLinearLayoutManager"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_86
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.a.C0078a (animebestapp.com.ui.nav.h.c.e.a$a)
.class public final Lanimebestapp/com/ui/nav/h/c/e/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/h/c/e/a;
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

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/c/e/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lanimebestapp/com/ui/nav/h/c/e/a;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/c/e/a;-><init>()V

    return-object v0
.end method

###### Class animebestapp.com.ui.nav.h.c.e.a.b (animebestapp.com.ui.nav.h.c.e.a$b)
.class final Lanimebestapp/com/ui/nav/h/c/e/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/c/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$b;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a$b;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    sget v1, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a$b;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    sget v1, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rvRasp"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_77

    :cond_22
    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a$b;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lanimebestapp/com/ui/nav/h/c/e/a;->a(Lanimebestapp/com/ui/nav/h/c/e/a;Z)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a$b;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->a(Lanimebestapp/com/ui/nav/h/c/e/a;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G()I

    move-result v0

    iget-object v3, p0, Lanimebestapp/com/ui/nav/h/c/e/a$b;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    sget v4, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v3, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    if-eqz v1, :cond_72

    const-string v3, "rvRasp.adapter!!"

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_54

    const/4 v0, 0x0

    goto :goto_5f

    :cond_54
    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a$b;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->a(Lanimebestapp/com/ui/nav/h/c/e/a;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G()I

    move-result v0

    add-int/2addr v0, v2

    :goto_5f
    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$b;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    sget v2, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {v1, v2}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a$b;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-static {v0, v3}, Lanimebestapp/com/ui/nav/h/c/e/a;->a(Lanimebestapp/com/ui/nav/h/c/e/a;Z)V

    return-void

    :cond_72
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0

    :cond_77
    :goto_77
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.a.c (animebestapp.com.ui.nav.h.c.e.a$c)
.class final Lanimebestapp/com/ui/nav/h/c/e/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/a;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/c/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$c;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$c;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/c/e/a;->e(Lanimebestapp/com/ui/nav/h/c/e/a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.a.d (animebestapp.com.ui.nav.h.c.e.a$d)
.class public final Lanimebestapp/com/ui/nav/h/c/e/a$d;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$d;->a:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 5

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_27

    const-string p1, "LOGS"

    const-string p2, "SCROLL_STATE_IDLE"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$d;->a:Lanimebestapp/com/ui/nav/h/c/e/a;

    sget p2, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lanimebestapp/com/ui/nav/h/c/e/a$d;->a:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-static {p2}, Lanimebestapp/com/ui/nav/h/c/e/a;->b(Lanimebestapp/com/ui/nav/h/c/e/a;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_42

    :cond_27
    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$d;->a:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/c/e/a;->d(Lanimebestapp/com/ui/nav/h/c/e/a;)Z

    move-result p1

    if-nez p1, :cond_42

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$d;->a:Lanimebestapp/com/ui/nav/h/c/e/a;

    sget p2, Lanimebestapp/com/a;->rvRasp:I

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lanimebestapp/com/ui/nav/h/c/e/a$d;->a:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-static {p2}, Lanimebestapp/com/ui/nav/h/c/e/a;->b(Lanimebestapp/com/ui/nav/h/c/e/a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_42
    :goto_42
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.a.e (animebestapp.com.ui.nav.h.c.e.a$e)
.class final Lanimebestapp/com/ui/nav/h/c/e/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/c/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$e;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$e;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    instance-of v0, p1, Lanimebestapp/com/ui/nav/NavActivity;

    if-nez v0, :cond_b

    const/4 p1, 0x0

    :cond_b
    check-cast p1, Lanimebestapp/com/ui/nav/NavActivity;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/NavActivity;->z()V

    :cond_12
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.a.f (animebestapp.com.ui.nav.h.c.e.a$f)
.class final Lanimebestapp/com/ui/nav/h/c/e/a$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/a;->a(Lanimebestapp/com/models/BannerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/c/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$f;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$f;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    sget v0, Lanimebestapp/com/a;->llBanner:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/h/c/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "llBanner"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$f;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/c/e/a;->c(Lanimebestapp/com/ui/nav/h/c/e/a;)Lanimebestapp/com/ui/nav/h/c/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/h/c/e/b;->f()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.a.g (animebestapp.com.ui.nav.h.c.e.a$g)
.class final Lanimebestapp/com/ui/nav/h/c/e/a$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/a;->a(Lanimebestapp/com/models/BannerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/c/e/a;

.field final synthetic c:Lanimebestapp/com/models/BannerInfo;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/a;Lanimebestapp/com/models/BannerInfo;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$g;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/h/c/e/a$g;->c:Lanimebestapp/com/models/BannerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a$g;->c:Lanimebestapp/com/models/BannerInfo;

    invoke-virtual {v0}, Lanimebestapp/com/models/BannerInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/a$g;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$g;->c:Lanimebestapp/com/models/BannerInfo;

    invoke-virtual {v1}, Lanimebestapp/com/models/BannerInfo;->getTitleShare()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/k/a/d;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.a.h (animebestapp.com.ui.nav.h.c.e.a$h)
.class public final Lanimebestapp/com/ui/nav/h/c/e/a$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/a/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/a;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/c/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/a$h;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILanimebestapp/com/models/d;)V
    .registers 3

    iget-object p2, p0, Lanimebestapp/com/ui/nav/h/c/e/a$h;->b:Lanimebestapp/com/ui/nav/h/c/e/a;

    invoke-static {p2}, Lanimebestapp/com/ui/nav/h/c/e/a;->c(Lanimebestapp/com/ui/nav/h/c/e/a;)Lanimebestapp/com/ui/nav/h/c/e/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lanimebestapp/com/ui/nav/h/c/e/b;->a(I)V

    return-void
.end method
