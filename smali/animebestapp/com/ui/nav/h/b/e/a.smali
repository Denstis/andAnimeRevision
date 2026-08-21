###### Class animebestapp.com.ui.nav.h.b.e.a (animebestapp.com.ui.nav.h.b.e.a)
.class public final Lanimebestapp/com/ui/nav/h/b/e/a;
.super Lanimebestapp/com/ui/a/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/nav/h/b/e/c;
.implements Lanimebestapp/com/ui/a/f/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/h/b/e/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/b<",
        "Lanimebestapp/com/ui/nav/h/b/e/c;",
        "Lanimebestapp/com/ui/nav/h/b/e/b;",
        ">;",
        "Lanimebestapp/com/ui/nav/h/b/e/c;",
        "Lanimebestapp/com/ui/a/f/d;"
    }
.end annotation


# static fields
.field public static final g:Lanimebestapp/com/ui/nav/h/b/e/a$a;


# instance fields
.field private d:Lanimebestapp/com/ui/a/e;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/e/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/b/e/a$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/ui/nav/h/b/e/a;->g:Lanimebestapp/com/ui/nav/h/b/e/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/b/e/a;)V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/b/e/a;->q()V

    return-void
.end method

.method private final q()V
    .registers 7

    new-instance v0, Lanimebestapp/com/ui/a/e;

    invoke-virtual {p0}, Lb/k/a/d;->getChildFragmentManager()Lb/k/a/i;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/a/e;-><init>(Lb/k/a/i;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->d:Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->d:Lanimebestapp/com/ui/a/e;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_10a

    sget-object v3, Lanimebestapp/com/ui/nav/h/b/a;->h:Lanimebestapp/com/ui/nav/h/b/a$a;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/b/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/b/a;

    move-result-object v3

    const v4, 0x7f0e0081

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.look)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_106

    sget-object v3, Lanimebestapp/com/ui/nav/h/b/a;->h:Lanimebestapp/com/ui/nav/h/b/a$a;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/b/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/b/a;

    move-result-object v3

    const v4, 0x7f0e00af

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.viewed)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_102

    sget-object v3, Lanimebestapp/com/ui/nav/h/b/a;->h:Lanimebestapp/com/ui/nav/h/b/a$a;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/b/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/b/a;

    move-result-object v3

    const/high16 v4, 0x7f0e0000

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.abandoned)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_fe

    sget-object v3, Lanimebestapp/com/ui/nav/h/b/a;->h:Lanimebestapp/com/ui/nav/h/b/a$a;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/b/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/b/a;

    move-result-object v3

    const v4, 0x7f0e00a5

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.snoozed)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_fa

    sget-object v3, Lanimebestapp/com/ui/nav/h/b/a;->h:Lanimebestapp/com/ui/nav/h/b/a$a;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/b/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/b/a;

    move-result-object v3

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.scheduled)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_f6

    sget-object v3, Lanimebestapp/com/ui/nav/h/b/a;->h:Lanimebestapp/com/ui/nav/h/b/a$a;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/b/a$a;->a(Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/b/a;

    move-result-object v3

    const v4, 0x7f0e0096

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.reviewing)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/b/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "viewpager"

    invoke-static {v0, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v3, :cond_f2

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/b/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget v1, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/nav/h/b/e/a;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/b/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_f1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/b/e/a;->d(Z)Z

    :cond_f1
    return-void

    :cond_f2
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_f6
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_fa
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_fe
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_102
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_106
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_10a
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public d(Z)Z
    .registers 6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->e:Ljava/lang/Boolean;

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/b/e/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    sget v1, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/nav/h/b/e/a;->f(I)Landroid/view/View;

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

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->d:Lanimebestapp/com/ui/a/e;

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

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->f:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->f:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->f:Ljava/util/HashMap;

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

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/nav/h/b/e/b;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/e/b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/b/e/b;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/b/e/a;->l()Lanimebestapp/com/ui/nav/h/b/e/b;

    move-result-object v0

    return-object v0
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

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lanimebestapp/com/ui/a/b;->onDestroyView()V

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/b/e/a;->p()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lc/b/a/c/b;->onPause()V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_18

    check-cast v0, Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->btnRefresh:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_18
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

    new-instance v1, Lanimebestapp/com/ui/nav/h/b/e/a$b;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/b/e/a$b;-><init>(Lanimebestapp/com/ui/nav/h/b/e/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1c
    new-instance v0, Lg/j;

    const-string v1, "null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity"

    invoke-direct {v0, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lanimebestapp/com/ui/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/b/e/a;->q()V

    return-void
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/e/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.e.a.C0074a (animebestapp.com.ui.nav.h.b.e.a$a)
.class public final Lanimebestapp/com/ui/nav/h/b/e/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/h/b/e/a;
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

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/b/e/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lanimebestapp/com/ui/nav/h/b/e/a;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/e/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/b/e/a;-><init>()V

    return-object v0
.end method

###### Class animebestapp.com.ui.nav.h.b.e.a.b (animebestapp.com.ui.nav.h.b.e.a$b)
.class final Lanimebestapp/com/ui/nav/h/b/e/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/e/a;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/b/e/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/b/e/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/e/a$b;->b:Lanimebestapp/com/ui/nav/h/b/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/e/a$b;->b:Lanimebestapp/com/ui/nav/h/b/e/a;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/h/b/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    const-string v0, "viewpager"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    if-eqz p1, :cond_3a

    check-cast p1, Lanimebestapp/com/ui/a/e;

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/e;->d()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/e/a$b;->b:Lanimebestapp/com/ui/nav/h/b/e/a;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/h/b/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/e/a$b;->b:Lanimebestapp/com/ui/nav/h/b/e/a;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/h/b/e/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/e/a$b;->b:Lanimebestapp/com/ui/nav/h/b/e/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/b/e/a;->a(Lanimebestapp/com/ui/nav/h/b/e/a;)V

    return-void

    :cond_3a
    new-instance p1, Lg/j;

    const-string v0, "null cannot be cast to non-null type animebestapp.com.ui.base.PagerAdapter"

    invoke-direct {p1, v0}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method
