###### Class animebestapp.com.ui.a.a (animebestapp.com.ui.a.a)
.class public abstract Lanimebestapp/com/ui/a/a;
.super Lc/b/a/c/a;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/a/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lanimebestapp/com/ui/a/f/a;",
        "P:",
        "Lanimebestapp/com/ui/a/c<",
        "TV;>;>",
        "Lc/b/a/c/a<",
        "TV;TP;>;",
        "Lanimebestapp/com/ui/a/f/a;"
    }
.end annotation


# instance fields
.field private s:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc/b/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 4

    invoke-super {p0, p2}, Landroidx/appcompat/app/d;->setContentView(I)V

    sget p2, Lanimebestapp/com/a;->vsContent:I

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    const-string v0, "vsContent"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    sget p1, Lanimebestapp/com/a;->vsContent:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->constraint:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/a/a;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const v0, 0x106000b

    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const-string v0, "Snackbar.make(constraint\u2026, android.R.color.white))"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object v0

    const-string v1, "snack.getView()"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3e

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    :cond_3e
    new-instance p1, Lg/j;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/a/a;->s:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/a/a;->s:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/a/a;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/a/a;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public onBackPressed()V
    .registers 5

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/k/a/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/k/a/d;

    const-string v3, "fragment"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/k/a/d;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_11

    instance-of v3, v2, Lanimebestapp/com/ui/a/f/b;

    if-eqz v3, :cond_11

    check-cast v2, Lanimebestapp/com/ui/a/f/b;

    invoke-interface {v2}, Lanimebestapp/com/ui/a/f/b;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_11

    return-void

    :cond_35
    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/k/a/i;->b()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_47

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_4a

    :cond_47
    invoke-super {p0}, Lb/k/a/e;->onBackPressed()V

    :goto_4a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lc/b/a/c/a;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/a/c;

    invoke-static {}, Lanimebestapp/com/c/a/b;->a()Lanimebestapp/com/c/a/a$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lanimebestapp/com/c/a/a$a;->a(Landroid/app/Activity;)Lanimebestapp/com/c/a/a$a;

    sget-object v1, Lanimebestapp/com/App;->Companion:Lanimebestapp/com/App$a;

    invoke-virtual {v1}, Lanimebestapp/com/App$a;->b()Lanimebestapp/com/c/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lanimebestapp/com/c/a/a$a;->a(Lanimebestapp/com/c/b/a;)Lanimebestapp/com/c/a/a$a;

    invoke-interface {v0}, Lanimebestapp/com/c/a/a$a;->a()Lanimebestapp/com/c/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/a/c;->a(Lanimebestapp/com/c/a/a;)V

    return-void
.end method

.method public setContentView(I)V
    .registers 3

    const v0, 0x7f0b0027

    invoke-virtual {p0, p1, v0}, Lanimebestapp/com/ui/a/a;->a(II)V

    return-void
.end method
