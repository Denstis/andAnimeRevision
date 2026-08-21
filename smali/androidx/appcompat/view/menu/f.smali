###### Class androidx.appcompat.view.menu.f (androidx.appcompat.view.menu.f)
.class public Landroidx/appcompat/view/menu/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/p;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/f$a;
    }
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field c:Landroid/view/LayoutInflater;

.field d:Landroidx/appcompat/view/menu/h;

.field e:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field f:I

.field g:I

.field h:I

.field private i:Landroidx/appcompat/view/menu/p$a;

.field j:Landroidx/appcompat/view/menu/f$a;

.field private k:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/f;->h:I

    iput p2, p0, Landroidx/appcompat/view/menu/f;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/appcompat/view/menu/f;-><init>(II)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->b:Landroid/content/Context;

    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/f$a;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/view/menu/f$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/f$a;-><init>(Landroidx/appcompat/view/menu/f;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/f$a;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/f$a;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/q;
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_28

    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->c:Landroid/view/LayoutInflater;

    sget v1, Lb/a/g;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/f$a;

    if-nez p1, :cond_1c

    new-instance p1, Landroidx/appcompat/view/menu/f$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/f$a;-><init>(Landroidx/appcompat/view/menu/f;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/f$a;

    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/f$a;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_28
    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_d
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_c
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/k;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/k;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/view/menu/f;->k:I

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/h;)V
    .registers 5

    iget v0, p0, Landroidx/appcompat/view/menu/f;->g:I

    if-eqz v0, :cond_14

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/f;->b:Landroid/content/Context;

    :goto_b
    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->c:Landroid/view/LayoutInflater;

    goto :goto_1f

    :cond_14
    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_1f

    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->b:Landroid/content/Context;

    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->c:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1f

    goto :goto_b

    :cond_1f
    :goto_1f
    iput-object p2, p0, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/h;

    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/f$a;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f$a;->notifyDataSetChanged()V

    :cond_28
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->i:Landroidx/appcompat/view/menu/p$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/p$a;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    :cond_7
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/h;

    iget-object p2, p0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/f$a;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/f$a;->getItem(I)Landroidx/appcompat/view/menu/k;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/p;I)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/f;->b(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/v;)Z
    .registers 4

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    new-instance v0, Landroidx/appcompat/view/menu/i;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/i;-><init>(Landroidx/appcompat/view/menu/h;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/i;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/f;->i:Landroidx/appcompat/view/menu/p$a;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/p$a;->a(Landroidx/appcompat/view/menu/h;)Z

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/p$a;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->i:Landroidx/appcompat/view/menu/p$a;

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 2

    iget-object p1, p0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/f$a;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f$a;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

###### Class androidx.appcompat.view.menu.f.a (androidx.appcompat.view.menu.f$a)
.class Landroidx/appcompat/view/menu/f$a;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private b:I

.field final synthetic c:Landroidx/appcompat/view/menu/f;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/f;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/f$a;->c:Landroidx/appcompat/view/menu/f;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/view/menu/f$a;->b:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f$a;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/f$a;->c:Landroidx/appcompat/view/menu/f;

    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getExpandedItem()Landroidx/appcompat/view/menu/k;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v1, p0, Landroidx/appcompat/view/menu/f$a;->c:Landroidx/appcompat/view/menu/f;

    iget-object v1, v1, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/k;

    if-ne v4, v0, :cond_24

    iput v3, p0, Landroidx/appcompat/view/menu/f$a;->b:I

    return-void

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/f$a;->b:I

    return-void
.end method

.method public getCount()I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/f$a;->c:Landroidx/appcompat/view/menu/f;

    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/f$a;->c:Landroidx/appcompat/view/menu/f;

    iget v1, v1, Landroidx/appcompat/view/menu/f;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/view/menu/f$a;->b:I

    if-gez v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItem(I)Landroidx/appcompat/view/menu/k;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/f$a;->c:Landroidx/appcompat/view/menu/f;

    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/f$a;->c:Landroidx/appcompat/view/menu/f;

    iget v1, v1, Landroidx/appcompat/view/menu/f;->f:I

    add-int/2addr p1, v1

    iget v1, p0, Landroidx/appcompat/view/menu/f$a;->b:I

    if-ltz v1, :cond_15

    if-lt p1, v1, :cond_15

    add-int/lit8 p1, p1, 0x1

    :cond_15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/k;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f$a;->getItem(I)Landroidx/appcompat/view/menu/k;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_d

    iget-object p2, p0, Landroidx/appcompat/view/menu/f$a;->c:Landroidx/appcompat/view/menu/f;

    iget-object v1, p2, Landroidx/appcompat/view/menu/f;->c:Landroid/view/LayoutInflater;

    iget p2, p2, Landroidx/appcompat/view/menu/f;->h:I

    invoke-virtual {v1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_d
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/view/menu/q$a;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f$a;->getItem(I)Landroidx/appcompat/view/menu/k;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Landroidx/appcompat/view/menu/q$a;->initialize(Landroidx/appcompat/view/menu/k;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f$a;->a()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
