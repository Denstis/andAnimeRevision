###### Class androidx.appcompat.app.k (androidx.appcompat.app.k)
.class Landroidx/appcompat/app/k;
.super Landroidx/appcompat/app/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/k$d;,
        Landroidx/appcompat/app/k$c;,
        Landroidx/appcompat/app/k$e;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/z;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroidx/appcompat/widget/Toolbar$f;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .registers 6

    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/k;->f:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/app/k$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/k$a;-><init>(Landroidx/appcompat/app/k;)V

    iput-object v0, p0, Landroidx/appcompat/app/k;->g:Ljava/lang/Runnable;

    new-instance v0, Landroidx/appcompat/app/k$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/k$b;-><init>(Landroidx/appcompat/app/k;)V

    iput-object v0, p0, Landroidx/appcompat/app/k;->h:Landroidx/appcompat/widget/Toolbar$f;

    new-instance v0, Landroidx/appcompat/widget/r0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/r0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    new-instance v0, Landroidx/appcompat/app/k$e;

    invoke-direct {v0, p0, p3}, Landroidx/appcompat/app/k$e;-><init>(Landroidx/appcompat/app/k;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    iget-object p3, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    iget-object v0, p0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    invoke-interface {p3, v0}, Landroidx/appcompat/widget/z;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-object p3, p0, Landroidx/appcompat/app/k;->h:Landroidx/appcompat/widget/Toolbar$f;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    iget-object p1, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/z;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private n()Landroid/view/Menu;
    .registers 4

    iget-boolean v0, p0, Landroidx/appcompat/app/k;->d:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    new-instance v1, Landroidx/appcompat/app/k$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/k$c;-><init>(Landroidx/appcompat/app/k;)V

    new-instance v2, Landroidx/appcompat/app/k$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/k$d;-><init>(Landroidx/appcompat/app/k;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/z;->a(Landroidx/appcompat/view/menu/p$a;Landroidx/appcompat/view/menu/h$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/k;->d:Z

    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->i()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->l()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    and-int/2addr p1, p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/z;->a(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-direct {p0}, Landroidx/appcompat/app/k;->n()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_f

    :cond_e
    const/4 v2, -0x1

    :goto_f
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_24
    return v1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->k()Z

    :cond_a
    return v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    iget-boolean v0, p0, Landroidx/appcompat/app/k;->e:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/k;->e:Z

    iget-object v0, p0, Landroidx/appcompat/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Landroidx/appcompat/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/a$b;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public c(Z)V
    .registers 2

    return-void
.end method

.method public d(Z)V
    .registers 3

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/k;->a(II)V

    return-void
.end method

.method public e(Z)V
    .registers 3

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/k;->a(II)V

    return-void
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->e()Z

    move-result v0

    return v0
.end method

.method public f(Z)V
    .registers 2

    return-void
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->l()I

    move-result v0

    return v0
.end method

.method public h()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->k()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/k;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->k()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/k;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lb/h/o/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method j()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->k()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/k;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->f()Z

    move-result v0

    return v0
.end method

.method public l()Landroid/view/Window$Callback;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method m()V
    .registers 6

    invoke-direct {p0}, Landroidx/appcompat/app/k;->n()Landroid/view/Menu;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/h;

    goto :goto_e

    :cond_d
    move-object v1, v2

    :goto_e
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    :cond_13
    :try_start_13
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v3, p0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_27
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_30

    :cond_2a
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    :cond_2f
    return-void

    :catchall_30
    move-exception v0

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    :cond_36
    throw v0
.end method

###### Class androidx.appcompat.app.k.a (androidx.appcompat.app.k$a)
.class Landroidx/appcompat/app/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/app/k;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/k;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/k$a;->b:Landroidx/appcompat/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/k$a;->b:Landroidx/appcompat/app/k;

    invoke-virtual {v0}, Landroidx/appcompat/app/k;->m()V

    return-void
.end method

###### Class androidx.appcompat.app.k.b (androidx.appcompat.app.k$b)
.class Landroidx/appcompat/app/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/k;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/k;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/k$b;->a:Landroidx/appcompat/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/k$b;->a:Landroidx/appcompat/app/k;

    iget-object v0, v0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

###### Class androidx.appcompat.app.k.c (androidx.appcompat.app.k$c)
.class final Landroidx/appcompat/app/k$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Landroidx/appcompat/app/k;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/k;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/k$c;->c:Landroidx/appcompat/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/h;)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/k$c;->c:Landroidx/appcompat/app/k;

    iget-object v0, v0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    if-eqz v0, :cond_d

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 4

    iget-boolean p2, p0, Landroidx/appcompat/app/k$c;->b:Z

    if-eqz p2, :cond_5

    return-void

    :cond_5
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/appcompat/app/k$c;->b:Z

    iget-object p2, p0, Landroidx/appcompat/app/k$c;->c:Landroidx/appcompat/app/k;

    iget-object p2, p2, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p2}, Landroidx/appcompat/widget/z;->g()V

    iget-object p2, p0, Landroidx/appcompat/app/k$c;->c:Landroidx/appcompat/app/k;

    iget-object p2, p2, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    if-eqz p2, :cond_1a

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1a
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/k$c;->b:Z

    return-void
.end method

###### Class androidx.appcompat.app.k.d (androidx.appcompat.app.k$d)
.class final Landroidx/appcompat/app/k$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/app/k;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/k;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/k$d;->b:Landroidx/appcompat/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/app/k$d;->b:Landroidx/appcompat/app/k;

    iget-object v1, v0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    if-eqz v1, :cond_2b

    iget-object v0, v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->a()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/appcompat/app/k$d;->b:Landroidx/appcompat/app/k;

    iget-object v0, v0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_2b

    :cond_18
    iget-object v0, p0, Landroidx/appcompat/app/k$d;->b:Landroidx/appcompat/app/k;

    iget-object v0, v0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroidx/appcompat/app/k$d;->b:Landroidx/appcompat/app/k;

    iget-object v0, v0, Landroidx/appcompat/app/k;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_2b
    :goto_2b
    return-void
.end method

###### Class androidx.appcompat.app.k.e (androidx.appcompat.app.k$e)
.class Landroidx/appcompat/app/k$e;
.super Lb/a/n/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic c:Landroidx/appcompat/app/k;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/k;Landroid/view/Window$Callback;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/app/k$e;->c:Landroidx/appcompat/app/k;

    invoke-direct {p0, p2}, Lb/a/n/i;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_10

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/app/k$e;->c:Landroidx/appcompat/app/k;

    iget-object v0, v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_10
    invoke-super {p0, p1}, Lb/a/n/i;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lb/a/n/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p2, p0, Landroidx/appcompat/app/k$e;->c:Landroidx/appcompat/app/k;

    iget-boolean p3, p2, Landroidx/appcompat/app/k;->b:Z

    if-nez p3, :cond_16

    iget-object p2, p2, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/widget/z;

    invoke-interface {p2}, Landroidx/appcompat/widget/z;->b()V

    iget-object p2, p0, Landroidx/appcompat/app/k$e;->c:Landroidx/appcompat/app/k;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroidx/appcompat/app/k;->b:Z

    :cond_16
    return p1
.end method
