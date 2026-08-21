###### Class androidx.appcompat.view.menu.w (androidx.appcompat.view.menu.w)
.class Landroidx/appcompat/view/menu/w;
.super Landroidx/appcompat/view/menu/s;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Lb/h/i/a/c;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/s;-><init>(Landroid/content/Context;Lb/h/i/a/a;)V

    return-void
.end method


# virtual methods
.method public c()Lb/h/i/a/c;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->a:Ljava/lang/Object;

    check-cast v0, Lb/h/i/a/c;

    return-object v0
.end method

.method public clearHeader()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w;->c()Lb/h/i/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V

    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w;->c()Lb/h/i/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/c;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w;->c()Lb/h/i/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w;->c()Lb/h/i/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w;->c()Lb/h/i/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w;->c()Lb/h/i/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w;->c()Lb/h/i/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w;->c()Lb/h/i/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w;->c()Lb/h/i/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
