###### Class com.google.android.material.internal.NavigationSubMenu (com.google.android.material.internal.NavigationSubMenu)
.class public Lcom/google/android/material/internal/NavigationSubMenu;
.super Landroidx/appcompat/view/menu/v;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/NavigationMenu;Landroidx/appcompat/view/menu/k;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/v;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/k;)V

    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    return-void
.end method
