###### Class androidx.appcompat.view.menu.r (androidx.appcompat.view.menu.r)
.class public final Landroidx/appcompat/view/menu/r;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Lb/h/i/a/a;)Landroid/view/Menu;
    .registers 3

    new-instance v0, Landroidx/appcompat/view/menu/s;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/s;-><init>(Landroid/content/Context;Lb/h/i/a/a;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lb/h/i/a/b;)Landroid/view/MenuItem;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    new-instance v0, Landroidx/appcompat/view/menu/m;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/m;-><init>(Landroid/content/Context;Lb/h/i/a/b;)V

    return-object v0

    :cond_c
    new-instance v0, Landroidx/appcompat/view/menu/l;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Lb/h/i/a/b;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lb/h/i/a/c;)Landroid/view/SubMenu;
    .registers 3

    new-instance v0, Landroidx/appcompat/view/menu/w;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/w;-><init>(Landroid/content/Context;Lb/h/i/a/c;)V

    return-object v0
.end method
