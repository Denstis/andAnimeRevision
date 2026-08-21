###### Class b.a.n.e (b.a.n.e)
.class public Lb/a/n/e;
.super Lb/a/n/b;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/h$a;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroidx/appcompat/widget/ActionBarContextView;

.field private f:Lb/a/n/b$a;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroidx/appcompat/view/menu/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lb/a/n/b$a;Z)V
    .registers 5

    invoke-direct {p0}, Lb/a/n/b;-><init>()V

    iput-object p1, p0, Lb/a/n/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p3, p0, Lb/a/n/e;->f:Lb/a/n/b$a;

    new-instance p1, Landroidx/appcompat/view/menu/h;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/h;

    move-result-object p1

    iput-object p1, p0, Lb/a/n/e;->i:Landroidx/appcompat/view/menu/h;

    iget-object p1, p0, Lb/a/n/e;->i:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, Lb/a/n/e;->h:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/n/e;->h:Z

    iget-object v0, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lb/a/n/e;->f:Lb/a/n/b$a;

    invoke-interface {v0, p0}, Lb/a/n/b$a;->a(Lb/a/n/b;)V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lb/a/n/e;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/n/e;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_d

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lb/a/n/e;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-super {p0, p1}, Lb/a/n/b;->a(Z)V

    iget-object v0, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lb/a/n/e;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lb/a/n/e;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/n/e;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lb/a/n/e;->i:Landroidx/appcompat/view/menu/h;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Lb/a/n/g;

    iget-object v1, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/n/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lb/a/n/e;->f:Lb/a/n/b$a;

    iget-object v1, p0, Lb/a/n/e;->i:Landroidx/appcompat/view/menu/h;

    invoke-interface {v0, p0, v1}, Lb/a/n/b$a;->b(Lb/a/n/b;Landroid/view/Menu;)Z

    return-void
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->b()Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Lb/a/n/e;->f:Lb/a/n/b$a;

    invoke-interface {p1, p0, p2}, Lb/a/n/b$a;->a(Lb/a/n/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    invoke-virtual {p0}, Lb/a/n/e;->i()V

    iget-object p1, p0, Lb/a/n/e;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->d()Z

    return-void
.end method
