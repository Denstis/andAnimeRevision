###### Class androidx.appcompat.widget.g0 (androidx.appcompat.widget.g0)
.class public Landroidx/appcompat/widget/g0;
.super Landroidx/appcompat/widget/e0;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/g0$a;
    }
.end annotation


# static fields
.field private static K:Ljava/lang/reflect/Method;


# instance fields
.field private J:Landroidx/appcompat/widget/f0;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/g0;->K:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1a

    :catch_13
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/e0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroidx/appcompat/widget/b0;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/g0$a;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/g0$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/g0$a;->setHoverListener(Landroidx/appcompat/widget/f0;)V

    return-object v0
.end method

.method public a(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->J:Landroidx/appcompat/widget/f0;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/f0;->a(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V

    :cond_7
    return-void
.end method

.method public a(Landroidx/appcompat/widget/f0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/g0;->J:Landroidx/appcompat/widget/f0;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/appcompat/widget/e0;->F:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_d
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->J:Landroidx/appcompat/widget/f0;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/f0;->b(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V

    :cond_7
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/appcompat/widget/e0;->F:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_d
    return-void
.end method

.method public c(Z)V
    .registers 6

    sget-object v0, Landroidx/appcompat/widget/g0;->K:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    :try_start_4
    iget-object v1, p0, Landroidx/appcompat/widget/e0;->F:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_1b

    :catch_14
    const-string p1, "MenuPopupWindow"

    const-string v0, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return-void
.end method

###### Class androidx.appcompat.widget.g0.a (androidx.appcompat.widget.g0$a)
.class public Landroidx/appcompat/widget/g0$a;
.super Landroidx/appcompat/widget/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final p:I

.field final q:I

.field private r:Landroidx/appcompat/widget/f0;

.field private s:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/b0;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/16 v1, 0x16

    const/16 v2, 0x11

    if-lt p2, v2, :cond_21

    const/4 p2, 0x1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p2, p1, :cond_21

    iput v0, p0, Landroidx/appcompat/widget/g0$a;->p:I

    iput v1, p0, Landroidx/appcompat/widget/g0$a;->q:I

    goto :goto_25

    :cond_21
    iput v1, p0, Landroidx/appcompat/widget/g0$a;->p:I

    iput v0, p0, Landroidx/appcompat/widget/g0$a;->q:I

    :goto_25
    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/widget/g0$a;->r:Landroidx/appcompat/widget/f0;

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    check-cast v0, Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_41

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_41

    sub-int/2addr v3, v1

    if-ltz v3, :cond_41

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_41

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroidx/appcompat/view/menu/k;

    move-result-object v2

    :cond_41
    iget-object v1, p0, Landroidx/appcompat/widget/g0$a;->s:Landroid/view/MenuItem;

    if-eq v1, v2, :cond_59

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->b()Landroidx/appcompat/view/menu/h;

    move-result-object v0

    if-eqz v1, :cond_50

    iget-object v3, p0, Landroidx/appcompat/widget/g0$a;->r:Landroidx/appcompat/widget/f0;

    invoke-interface {v3, v0, v1}, Landroidx/appcompat/widget/f0;->b(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V

    :cond_50
    iput-object v2, p0, Landroidx/appcompat/widget/g0$a;->s:Landroid/view/MenuItem;

    if-eqz v2, :cond_59

    iget-object v1, p0, Landroidx/appcompat/widget/g0$a;->r:Landroidx/appcompat/widget/f0;

    invoke-interface {v1, v0, v2}, Landroidx/appcompat/widget/f0;->a(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V

    :cond_59
    invoke-super {p0, p1}, Landroidx/appcompat/widget/b0;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    iget v2, p0, Landroidx/appcompat/widget/g0$a;->p:I

    if-ne p1, v2, :cond_29

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v2

    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_28
    return v1

    :cond_29
    if-eqz v0, :cond_42

    iget v0, p0, Landroidx/appcompat/widget/g0$a;->q:I

    if-ne p1, v0, :cond_42

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->b()Landroidx/appcompat/view/menu/h;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->close(Z)V

    return v1

    :cond_42
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setHoverListener(Landroidx/appcompat/widget/f0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/g0$a;->r:Landroidx/appcompat/widget/f0;

    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/b0;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
