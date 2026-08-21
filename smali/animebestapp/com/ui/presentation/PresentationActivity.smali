###### Class animebestapp.com.ui.presentation.PresentationActivity (animebestapp.com.ui.presentation.PresentationActivity)
.class public final Lanimebestapp/com/ui/presentation/PresentationActivity;
.super Lanimebestapp/com/ui/a/a;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/presentation/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/a<",
        "Lanimebestapp/com/ui/presentation/d;",
        "Lanimebestapp/com/ui/presentation/b;",
        ">;",
        "Lanimebestapp/com/ui/presentation/d;"
    }
.end annotation


# instance fields
.field private t:Landroid/view/View;

.field private u:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/presentation/PresentationActivity;)Lanimebestapp/com/ui/presentation/b;
    .registers 1

    iget-object p0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p0, Lanimebestapp/com/ui/presentation/b;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->t:Landroid/view/View;

    if-eqz v0, :cond_19

    sget v1, Lanimebestapp/com/a;->inPass:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "three.inPass"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_19
    const-string p1, "three"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->t:Landroid/view/View;

    if-eqz v0, :cond_19

    sget v1, Lanimebestapp/com/a;->inLogin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "three.inLogin"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_19
    const-string p1, "three"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c(I)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->t:Landroid/view/View;

    if-eqz v0, :cond_19

    sget v1, Lanimebestapp/com/a;->inEmail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "three.inEmail"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_19
    const-string p1, "three"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->u:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->u:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/presentation/b;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/presentation/b;

    invoke-direct {v0}, Lanimebestapp/com/ui/presentation/b;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/presentation/PresentationActivity;->l()Lanimebestapp/com/ui/presentation/b;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0023

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/a;->setContentView(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lanimebestapp/com/a;->pager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    const v2, 0x7f0b0086

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lanimebestapp/com/a;->pager:I

    invoke-virtual {p0, v2}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    const v3, 0x7f0b0084

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lanimebestapp/com/a;->pager:I

    invoke-virtual {p0, v3}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    const v4, 0x7f0b0085

    invoke-virtual {v2, v4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->pager:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    const v5, 0x7f0b0087

    invoke-virtual {v3, v5, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v3, "LayoutInflater.from(this\u2026t.view_reg, pager, false)"

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->t:Landroid/view/View;

    new-instance v1, Lanimebestapp/com/ui/presentation/a;

    invoke-direct {v1}, Lanimebestapp/com/ui/presentation/a;-><init>()V

    const-string v3, "one"

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lanimebestapp/com/ui/presentation/a;->c(Landroid/view/View;)I

    const-string p1, "two"

    invoke-static {v0, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lanimebestapp/com/ui/presentation/a;->c(Landroid/view/View;)I

    const-string p1, "night"

    invoke-static {v2, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lanimebestapp/com/ui/presentation/a;->c(Landroid/view/View;)I

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->t:Landroid/view/View;

    const/4 v0, 0x0

    const-string v2, "three"

    if-eqz p1, :cond_138

    invoke-virtual {v1, p1}, Lanimebestapp/com/ui/presentation/a;->c(Landroid/view/View;)I

    sget p1, Lanimebestapp/com/a;->pager:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "pager"

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    sget p1, Lanimebestapp/com/a;->indicator:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lme/relex/circleindicator/CircleIndicator;

    sget v3, Lanimebestapp/com/a;->pager:I

    invoke-virtual {p0, v3}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v3}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    sget p1, Lanimebestapp/com/a;->btnPrev:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v3, Lanimebestapp/com/ui/presentation/PresentationActivity$a;

    invoke-direct {v3, p0}, Lanimebestapp/com/ui/presentation/PresentationActivity$a;-><init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnNext:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v3, Lanimebestapp/com/ui/presentation/PresentationActivity$b;

    invoke-direct {v3, p0, v1}, Lanimebestapp/com/ui/presentation/PresentationActivity$b;-><init>(Lanimebestapp/com/ui/presentation/PresentationActivity;Lanimebestapp/com/ui/presentation/a;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/presentation/PresentationActivity$c;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/presentation/PresentationActivity$c;-><init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->t:Landroid/view/View;

    if-eqz p1, :cond_134

    sget v1, Lanimebestapp/com/a;->btnEnter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/presentation/PresentationActivity$d;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/presentation/PresentationActivity$d;-><init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->t:Landroid/view/View;

    if-eqz p1, :cond_130

    sget v1, Lanimebestapp/com/a;->etPass:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v1, Lanimebestapp/com/ui/presentation/PresentationActivity$e;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/presentation/PresentationActivity$e;-><init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->t:Landroid/view/View;

    if-eqz p1, :cond_12c

    sget v1, Lanimebestapp/com/a;->etLogin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v1, Lanimebestapp/com/ui/presentation/PresentationActivity$f;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/presentation/PresentationActivity$f;-><init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity;->t:Landroid/view/View;

    if-eqz p1, :cond_128

    sget v0, Lanimebestapp/com/a;->etEmail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lanimebestapp/com/ui/presentation/PresentationActivity$g;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/presentation/PresentationActivity$g;-><init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_128
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_12c
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_130
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_134
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_138
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0
.end method

###### Class animebestapp.com.ui.presentation.PresentationActivity.a (animebestapp.com.ui.presentation.PresentationActivity$a)
.class final Lanimebestapp/com/ui/presentation/PresentationActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/PresentationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/presentation/PresentationActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$a;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$a;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v1, Lanimebestapp/com/a;->pager:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$a;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v2, Lanimebestapp/com/a;->pager:I

    invoke-virtual {v1, v2}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    const-string v2, "pager"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$a;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v1, Lanimebestapp/com/a;->pager:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3e
    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$a;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v0, Lanimebestapp/com/a;->btnNext:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const-string v0, "btnNext"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$a;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v0, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "btnSkip"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.PresentationActivity.b (animebestapp.com.ui.presentation.PresentationActivity$b)
.class final Lanimebestapp/com/ui/presentation/PresentationActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/PresentationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/presentation/PresentationActivity;

.field final synthetic c:Lanimebestapp/com/ui/presentation/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/presentation/PresentationActivity;Lanimebestapp/com/ui/presentation/a;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    iput-object p2, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->c:Lanimebestapp/com/ui/presentation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v0, Lanimebestapp/com/a;->pager:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v1, Lanimebestapp/com/a;->pager:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "pager"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v0, Lanimebestapp/com/a;->pager:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_48

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v3, Lanimebestapp/com/a;->btnPrev:I

    invoke-virtual {p1, v3}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const-string v3, "btnPrev"

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_48
    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v3, Lanimebestapp/com/a;->pager:I

    invoke-virtual {p1, v3}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->c:Lanimebestapp/com/ui/presentation/a;

    invoke-virtual {v1}, Lanimebestapp/com/ui/presentation/a;->a()I

    move-result v1

    const-string v2, "btnSkip"

    const-string v3, "btnNext"

    if-ne p1, v1, :cond_85

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v1, Lanimebestapp/com/a;->btnNext:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v1, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a4

    :cond_85
    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v1, Lanimebestapp/com/a;->btnNext:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$b;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v0, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    :goto_a4
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.PresentationActivity.c (animebestapp.com.ui.presentation.PresentationActivity$c)
.class final Lanimebestapp/com/ui/presentation/PresentationActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/PresentationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/presentation/PresentationActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$c;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$c;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$c;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.PresentationActivity.d (animebestapp.com.ui.presentation.PresentationActivity$d)
.class final Lanimebestapp/com/ui/presentation/PresentationActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/PresentationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/presentation/PresentationActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$d;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$d;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->a(Lanimebestapp/com/ui/presentation/PresentationActivity;)Lanimebestapp/com/ui/presentation/b;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$d;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v1, Lanimebestapp/com/a;->etLogin:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "etLogin"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$d;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v2, Lanimebestapp/com/a;->etPass:I

    invoke-virtual {v1, v2}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "etPass"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$d;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget v3, Lanimebestapp/com/a;->etEmail:I

    invoke-virtual {v2, v3}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "etEmail"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lanimebestapp/com/ui/presentation/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.PresentationActivity.e (animebestapp.com.ui.presentation.PresentationActivity$e)
.class public final Lanimebestapp/com/ui/presentation/PresentationActivity$e;
.super Lanimebestapp/com/utils/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/PresentationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/presentation/PresentationActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$e;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    invoke-direct {p0}, Lanimebestapp/com/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$e;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget p2, Lanimebestapp/com/a;->inPass:I

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "inPass"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.PresentationActivity.f (animebestapp.com.ui.presentation.PresentationActivity$f)
.class public final Lanimebestapp/com/ui/presentation/PresentationActivity$f;
.super Lanimebestapp/com/utils/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/PresentationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/presentation/PresentationActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$f;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    invoke-direct {p0}, Lanimebestapp/com/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$f;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget p2, Lanimebestapp/com/a;->inLogin:I

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "inLogin"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.PresentationActivity.g (animebestapp.com.ui.presentation.PresentationActivity$g)
.class public final Lanimebestapp/com/ui/presentation/PresentationActivity$g;
.super Lanimebestapp/com/utils/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/PresentationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/presentation/PresentationActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/presentation/PresentationActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$g;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    invoke-direct {p0}, Lanimebestapp/com/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/PresentationActivity$g;->b:Lanimebestapp/com/ui/presentation/PresentationActivity;

    sget p2, Lanimebestapp/com/a;->inEmail:I

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/presentation/PresentationActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "inEmail"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
