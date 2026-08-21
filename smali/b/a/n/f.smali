###### Class b.a.n.f (b.a.n.f)
.class public Lb/a/n/f;
.super Landroid/view/ActionMode;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/n/f$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lb/a/n/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/n/b;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lb/a/n/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/a/n/f;->b:Lb/a/n/b;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0}, Lb/a/n/b;->a()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0}, Lb/a/n/b;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 3

    iget-object v0, p0, Lb/a/n/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v1}, Lb/a/n/b;->c()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lb/h/i/a/a;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/r;->a(Landroid/content/Context;Lb/h/i/a/a;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0}, Lb/a/n/b;->d()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0}, Lb/a/n/b;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0}, Lb/a/n/b;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0}, Lb/a/n/b;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .registers 2

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0}, Lb/a/n/b;->h()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .registers 2

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0}, Lb/a/n/b;->i()V

    return-void
.end method

.method public isTitleOptional()Z
    .registers 2

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0}, Lb/a/n/b;->j()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0, p1}, Lb/a/n/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0, p1}, Lb/a/n/b;->a(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0, p1}, Lb/a/n/b;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0, p1}, Lb/a/n/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0, p1}, Lb/a/n/b;->b(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0, p1}, Lb/a/n/b;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .registers 3

    iget-object v0, p0, Lb/a/n/f;->b:Lb/a/n/b;

    invoke-virtual {v0, p1}, Lb/a/n/b;->a(Z)V

    return-void
.end method

###### Class b.a.n.f.a (b.a.n.f$a)
.class public Lb/a/n/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/n/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/n/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/ActionMode$Callback;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/n/f;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/n/f$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lb/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/a/n/f$a;->c:Ljava/util/ArrayList;

    new-instance p1, Lb/e/g;

    invoke-direct {p1}, Lb/e/g;-><init>()V

    iput-object p1, p0, Lb/a/n/f$a;->d:Lb/e/g;

    return-void
.end method

.method private a(Landroid/view/Menu;)Landroid/view/Menu;
    .registers 4

    iget-object v0, p0, Lb/a/n/f$a;->d:Lb/e/g;

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_18

    iget-object v0, p0, Lb/a/n/f$a;->b:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Lb/h/i/a/a;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/r;->a(Landroid/content/Context;Lb/h/i/a/a;)Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lb/a/n/f$a;->d:Lb/e/g;

    invoke-virtual {v1, p1, v0}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v0
.end method


# virtual methods
.method public a(Lb/a/n/b;)V
    .registers 3

    iget-object v0, p0, Lb/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lb/a/n/f$a;->b(Lb/a/n/b;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public a(Lb/a/n/b;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lb/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lb/a/n/f$a;->b(Lb/a/n/b;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-direct {p0, p2}, Lb/a/n/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Lb/a/n/b;Landroid/view/MenuItem;)Z
    .registers 5

    iget-object v0, p0, Lb/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lb/a/n/f$a;->b(Lb/a/n/b;)Landroid/view/ActionMode;

    move-result-object p1

    iget-object v1, p0, Lb/a/n/f$a;->b:Landroid/content/Context;

    check-cast p2, Lb/h/i/a/b;

    invoke-static {v1, p2}, Landroidx/appcompat/view/menu/r;->a(Landroid/content/Context;Lb/h/i/a/b;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/a/n/b;)Landroid/view/ActionMode;
    .registers 6

    iget-object v0, p0, Lb/a/n/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lb/a/n/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/n/f;

    if-eqz v2, :cond_18

    iget-object v3, v2, Lb/a/n/f;->b:Lb/a/n/b;

    if-ne v3, p1, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    new-instance v0, Lb/a/n/f;

    iget-object v1, p0, Lb/a/n/f$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lb/a/n/f;-><init>(Landroid/content/Context;Lb/a/n/b;)V

    iget-object p1, p0, Lb/a/n/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b(Lb/a/n/b;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lb/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lb/a/n/f$a;->b(Lb/a/n/b;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-direct {p0, p2}, Lb/a/n/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
