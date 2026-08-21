###### Class com.google.android.material.bottomnavigation.BottomNavigationMenu (com.google.android.material.bottomnavigation.BottomNavigationMenu)
.class public final Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;
.super Landroidx/appcompat/view/menu/h;
.source ""


# static fields
.field public static final MAX_ITEM_COUNT:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1e

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/h;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    instance-of p2, p1, Landroidx/appcompat/view/menu/k;

    if-eqz p2, :cond_1a

    move-object p2, p1

    check-cast p2, Landroidx/appcompat/view/menu/k;

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/k;->c(Z)V

    :cond_1a
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    return-object p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "BottomNavigationView does not support submenus"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
