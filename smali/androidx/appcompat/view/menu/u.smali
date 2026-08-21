###### Class androidx.appcompat.view.menu.u (androidx.appcompat.view.menu.u)
.class final Landroidx/appcompat/view/menu/u;
.super Landroidx/appcompat/view/menu/n;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/p;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final w:I


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroidx/appcompat/view/menu/h;

.field private final e:Landroidx/appcompat/view/menu/g;

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field final j:Landroidx/appcompat/widget/g0;

.field final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private m:Landroid/widget/PopupWindow$OnDismissListener;

.field private n:Landroid/view/View;

.field o:Landroid/view/View;

.field private p:Landroidx/appcompat/view/menu/p$a;

.field q:Landroid/view/ViewTreeObserver;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lb/a/g;->abc_popup_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/u;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroid/view/View;IIZ)V
    .registers 10

    invoke-direct {p0}, Landroidx/appcompat/view/menu/n;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/u$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/u$a;-><init>(Landroidx/appcompat/view/menu/u;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroidx/appcompat/view/menu/u$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/u$b;-><init>(Landroidx/appcompat/view/menu/u;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u;->l:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/u;->u:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/u;->c:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/u;->d:Landroidx/appcompat/view/menu/h;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/u;->f:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    new-instance v0, Landroidx/appcompat/view/menu/g;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/u;->f:Z

    sget v2, Landroidx/appcompat/view/menu/u;->w:I

    invoke-direct {v0, p2, p6, v1, v2}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/h;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/u;->e:Landroidx/appcompat/view/menu/g;

    iput p4, p0, Landroidx/appcompat/view/menu/u;->h:I

    iput p5, p0, Landroidx/appcompat/view/menu/u;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p5, p5, 0x2

    sget p6, Lb/a/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/view/menu/u;->g:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/u;->n:Landroid/view/View;

    new-instance p3, Landroidx/appcompat/widget/g0;

    iget-object p4, p0, Landroidx/appcompat/view/menu/u;->c:Landroid/content/Context;

    iget p5, p0, Landroidx/appcompat/view/menu/u;->h:I

    iget p6, p0, Landroidx/appcompat/view/menu/u;->i:I

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p5, p6}, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/p;Landroid/content/Context;)V

    return-void
.end method

.method private e()Z
    .registers 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/u;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/u;->r:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c5

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->n:Landroid/view/View;

    if-nez v0, :cond_13

    goto/16 :goto_c5

    :cond_13
    iput-object v0, p0, Landroidx/appcompat/view/menu/u;->o:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/e0;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/e0;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/e0;->a(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->o:Landroid/view/View;

    iget-object v3, p0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Landroidx/appcompat/view/menu/u;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3c
    iget-object v3, p0, Landroidx/appcompat/view/menu/u;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/e0;->a(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    iget v3, p0, Landroidx/appcompat/view/menu/u;->u:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/e0;->c(I)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/u;->s:Z

    const/4 v3, 0x0

    if-nez v0, :cond_60

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->e:Landroidx/appcompat/view/menu/g;

    iget-object v4, p0, Landroidx/appcompat/view/menu/u;->c:Landroid/content/Context;

    iget v5, p0, Landroidx/appcompat/view/menu/u;->g:I

    invoke-static {v0, v3, v4, v5}, Landroidx/appcompat/view/menu/n;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/u;->t:I

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/u;->s:Z

    :cond_60
    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    iget v4, p0, Landroidx/appcompat/view/menu/u;->t:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/e0;->b(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/e0;->e(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/n;->d()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/e0;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->show()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->b()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/u;->v:Z

    if-eqz v4, :cond_b8

    iget-object v4, p0, Landroidx/appcompat/view/menu/u;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_b8

    iget-object v4, p0, Landroidx/appcompat/view/menu/u;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lb/a/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_b2

    iget-object v6, p0, Landroidx/appcompat/view/menu/u;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/h;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b2
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_b8
    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/e0;->a(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->show()V

    return v1

    :cond_c5
    :goto_c5
    return v2
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/view/menu/u;->u:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/u;->n:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/u;->m:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->a(Z)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/u;->r:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public b()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->b()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->d(I)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/u;->v:Z

    return-void
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->h(I)V

    return-void
.end method

.method public dismiss()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/u;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->dismiss()V

    :cond_b
    return-void
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->d:Landroidx/appcompat/view/menu/h;

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/u;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->p:Landroidx/appcompat/view/menu/p$a;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/p$a;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    :cond_f
    return-void
.end method

.method public onDismiss()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/u;->r:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->close()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    :cond_24
    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->o:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/u;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->m:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_32
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_f

    const/16 p1, 0x52

    if-ne p2, p1, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/u;->dismiss()V

    return p3

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/v;)Z
    .registers 11

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    new-instance v0, Landroidx/appcompat/view/menu/o;

    iget-object v3, p0, Landroidx/appcompat/view/menu/u;->c:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/view/menu/u;->o:Landroid/view/View;

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/u;->f:Z

    iget v7, p0, Landroidx/appcompat/view/menu/u;->h:I

    iget v8, p0, Landroidx/appcompat/view/menu/u;->i:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroid/view/View;ZII)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/u;->p:Landroidx/appcompat/view/menu/p$a;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/o;->a(Landroidx/appcompat/view/menu/p$a;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/n;->b(Landroidx/appcompat/view/menu/h;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/o;->a(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/u;->m:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/o;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/appcompat/view/menu/u;->m:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroidx/appcompat/view/menu/u;->d:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/h;->close(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v2}, Landroidx/appcompat/widget/e0;->f()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v3}, Landroidx/appcompat/widget/e0;->g()I

    move-result v3

    iget v4, p0, Landroidx/appcompat/view/menu/u;->u:I

    iget-object v5, p0, Landroidx/appcompat/view/menu/u;->n:Landroid/view/View;

    invoke-static {v5}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_55

    iget-object v4, p0, Landroidx/appcompat/view/menu/u;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    :cond_55
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/o;->a(II)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroidx/appcompat/view/menu/u;->p:Landroidx/appcompat/view/menu/p$a;

    if-eqz v0, :cond_62

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/p$a;->a(Landroidx/appcompat/view/menu/h;)Z

    :cond_62
    const/4 p1, 0x1

    return p1

    :cond_64
    return v1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/p$a;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/u;->p:Landroidx/appcompat/view/menu/p$a;

    return-void
.end method

.method public show()V
    .registers 3

    invoke-direct {p0}, Landroidx/appcompat/view/menu/u;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMenuView(Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/u;->s:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/u;->e:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

###### Class androidx.appcompat.view.menu.u.a (androidx.appcompat.view.menu.u$a)
.class Landroidx/appcompat/view/menu/u$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/view/menu/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/u;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/u$a;->b:Landroidx/appcompat/view/menu/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/u$a;->b:Landroidx/appcompat/view/menu/u;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/u;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroidx/appcompat/view/menu/u$a;->b:Landroidx/appcompat/view/menu/u;

    iget-object v0, v0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->j()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Landroidx/appcompat/view/menu/u$a;->b:Landroidx/appcompat/view/menu/u;

    iget-object v0, v0, Landroidx/appcompat/view/menu/u;->o:Landroid/view/View;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_27

    :cond_1f
    iget-object v0, p0, Landroidx/appcompat/view/menu/u$a;->b:Landroidx/appcompat/view/menu/u;

    iget-object v0, v0, Landroidx/appcompat/view/menu/u;->j:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->show()V

    goto :goto_2c

    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/appcompat/view/menu/u$a;->b:Landroidx/appcompat/view/menu/u;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/u;->dismiss()V

    :cond_2c
    :goto_2c
    return-void
.end method

###### Class androidx.appcompat.view.menu.u.b (androidx.appcompat.view.menu.u$b)
.class Landroidx/appcompat/view/menu/u$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/view/menu/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/u;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/u$b;->b:Landroidx/appcompat/view/menu/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/u$b;->b:Landroidx/appcompat/view/menu/u;

    iget-object v0, v0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/appcompat/view/menu/u$b;->b:Landroidx/appcompat/view/menu/u;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    :cond_14
    iget-object v0, p0, Landroidx/appcompat/view/menu/u$b;->b:Landroidx/appcompat/view/menu/u;

    iget-object v1, v0, Landroidx/appcompat/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Landroidx/appcompat/view/menu/u;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1d
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
