###### Class androidx.appcompat.view.menu.m (androidx.appcompat.view.menu.m)
.class Landroidx/appcompat/view/menu/m;
.super Landroidx/appcompat/view/menu/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/m$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lb/h/i/a/b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Lb/h/i/a/b;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Landroidx/appcompat/view/menu/l$a;
    .registers 4

    new-instance v0, Landroidx/appcompat/view/menu/m$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/m$a;-><init>(Landroidx/appcompat/view/menu/m;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

###### Class androidx.appcompat.view.menu.m.a (androidx.appcompat.view.menu.m$a)
.class Landroidx/appcompat/view/menu/m$a;
.super Landroidx/appcompat/view/menu/l$a;
.source ""

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field d:Lb/h/o/b$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/m;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/l$a;-><init>(Landroidx/appcompat/view/menu/l;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/l$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/h/o/b$b;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/view/menu/m$a;->d:Lb/h/o/b$b;

    iget-object v0, p0, Landroidx/appcompat/view/menu/l$a;->b:Landroid/view/ActionProvider;

    if-eqz p1, :cond_8

    move-object p1, p0

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m$a;->d:Lb/h/o/b$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lb/h/o/b$b;->onActionProviderVisibilityChanged(Z)V

    :cond_7
    return-void
.end method
