###### Class androidx.appcompat.app.n (androidx.appcompat.app.n)
.class public Landroidx/appcompat/app/n;
.super Landroidx/appcompat/app/a;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/n$d;
    }
.end annotation


# static fields
.field private static final B:Landroid/view/animation/Interpolator;

.field private static final C:Landroid/view/animation/Interpolator;


# instance fields
.field final A:Lb/h/o/z;

.field a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field d:Landroidx/appcompat/widget/ActionBarContainer;

.field e:Landroidx/appcompat/widget/z;

.field f:Landroidx/appcompat/widget/ActionBarContextView;

.field g:Landroid/view/View;

.field h:Landroidx/appcompat/widget/j0;

.field private i:Z

.field j:Landroidx/appcompat/app/n$d;

.field k:Lb/a/n/b;

.field l:Lb/a/n/b$a;

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:I

.field q:Z

.field r:Z

.field s:Z

.field private t:Z

.field private u:Z

.field v:Lb/a/n/h;

.field private w:Z

.field x:Z

.field final y:Lb/h/o/x;

.field final z:Lb/h/o/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/n;->B:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/n;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/n;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/n;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->q:Z

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->u:Z

    new-instance v0, Landroidx/appcompat/app/n$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/n$a;-><init>(Landroidx/appcompat/app/n;)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->y:Lb/h/o/x;

    new-instance v0, Landroidx/appcompat/app/n$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/n$b;-><init>(Landroidx/appcompat/app/n;)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->z:Lb/h/o/x;

    new-instance v0, Landroidx/appcompat/app/n$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/n$c;-><init>(Landroidx/appcompat/app/n;)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->A:Lb/h/o/z;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/n;->b(Landroid/view/View;)V

    if-nez p2, :cond_42

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/n;->g:Landroid/view/View;

    :cond_42
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 3

    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/n;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/n;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->q:Z

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->u:Z

    new-instance v0, Landroidx/appcompat/app/n$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/n$a;-><init>(Landroidx/appcompat/app/n;)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->y:Lb/h/o/x;

    new-instance v0, Landroidx/appcompat/app/n$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/n$b;-><init>(Landroidx/appcompat/app/n;)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->z:Lb/h/o/x;

    new-instance v0, Landroidx/appcompat/app/n$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/n$c;-><init>(Landroidx/appcompat/app/n;)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->A:Lb/h/o/z;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/n;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)Landroidx/appcompat/widget/z;
    .registers 5

    instance-of v0, p1, Landroidx/appcompat/widget/z;

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/appcompat/widget/z;

    return-object p1

    :cond_7
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_12

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/z;

    move-result-object p1

    return-object p1

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2b

    :cond_29
    const-string p1, "null"

    :goto_2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(ZZZ)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_a

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    return v0

    :cond_a
    :goto_a
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/view/View;)V
    .registers 7

    sget v0, Lb/a/f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    :cond_11
    sget v0, Lb/a/f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/n;->a(Landroid/view/View;)Landroidx/appcompat/widget/z;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    sget v0, Lb/a/f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Lb/a/f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    if-eqz p1, :cond_98

    iget-object v0, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz v0, :cond_98

    invoke-interface {p1}, Landroidx/appcompat/widget/z;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;

    iget-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {p1}, Landroidx/appcompat/widget/z;->l()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_51

    const/4 p1, 0x1

    goto :goto_52

    :cond_51
    const/4 p1, 0x0

    :goto_52
    if-eqz p1, :cond_56

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->i:Z

    :cond_56
    iget-object v2, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lb/a/n/a;->a(Landroid/content/Context;)Lb/a/n/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/n/a;->a()Z

    move-result v3

    if-nez v3, :cond_67

    if-eqz p1, :cond_65

    goto :goto_67

    :cond_65
    const/4 p1, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 p1, 0x1

    :goto_68
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/n;->k(Z)V

    invoke-virtual {v2}, Lb/a/n/a;->f()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/n;->l(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lb/a/j;->ActionBar:[I

    sget v4, Lb/a/a;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Lb/a/j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/n;->j(Z)V

    :cond_88
    sget v0, Lb/a/j;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_94

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/n;->a(F)V

    :cond_94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_98
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/appcompat/app/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private l(Z)V
    .registers 6

    iput-boolean p1, p0, Landroidx/appcompat/app/n;->o:Z

    iget-boolean p1, p0, Landroidx/appcompat/app/n;->o:Z

    const/4 v0, 0x0

    if-nez p1, :cond_14

    iget-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/z;->a(Landroidx/appcompat/widget/j0;)V

    iget-object p1, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/n;->h:Landroidx/appcompat/widget/j0;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/j0;)V

    goto :goto_20

    :cond_14
    iget-object p1, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/j0;)V

    iget-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    iget-object v0, p0, Landroidx/appcompat/app/n;->h:Landroidx/appcompat/widget/j0;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/z;->a(Landroidx/appcompat/widget/j0;)V

    :goto_20
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->m()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    iget-object v0, p0, Landroidx/appcompat/app/n;->h:Landroidx/appcompat/widget/j0;

    if-eqz v0, :cond_42

    if-eqz p1, :cond_3d

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_42

    invoke-static {v0}, Lb/h/o/s;->D(Landroid/view/View;)V

    goto :goto_42

    :cond_3d
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_42
    :goto_42
    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    iget-boolean v3, p0, Landroidx/appcompat/app/n;->o:Z

    if-nez v3, :cond_4c

    if-eqz p1, :cond_4c

    const/4 v3, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/z;->b(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Landroidx/appcompat/app/n;->o:Z

    if-nez v3, :cond_59

    if-eqz p1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private m(Z)V
    .registers 5

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->r:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/n;->s:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/n;->t:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/n;->a(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->u:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->u:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/n;->i(Z)V

    goto :goto_21

    :cond_17
    iget-boolean v0, p0, Landroidx/appcompat/app/n;->u:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->u:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/n;->h(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method private n()V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->t:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->t:Z

    iget-object v1, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_e
    invoke-direct {p0, v0}, Landroidx/appcompat/app/n;->m(Z)V

    :cond_11
    return-void
.end method

.method private o()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Lb/h/o/s;->z(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private p()V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->t:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->t:Z

    iget-object v1, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/n;->m(Z)V

    :cond_12
    return-void
.end method


# virtual methods
.method public a(Lb/a/n/b$a;)Lb/a/n/b;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/n;->j:Landroidx/appcompat/app/n$d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/appcompat/app/n$d;->a()V

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    new-instance v0, Landroidx/appcompat/app/n$d;

    iget-object v1, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/n$d;-><init>(Landroidx/appcompat/app/n;Landroid/content/Context;Lb/a/n/b$a;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/n$d;->k()Z

    move-result p1

    if-eqz p1, :cond_39

    iput-object v0, p0, Landroidx/appcompat/app/n;->j:Landroidx/appcompat/app/n$d;

    invoke-virtual {v0}, Landroidx/appcompat/app/n$d;->i()V

    iget-object p1, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Lb/a/n/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/n;->g(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->s:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->s:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/app/n;->m(Z)V

    :cond_b
    return-void
.end method

.method public a(F)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, Lb/h/o/s;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(II)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->l()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/n;->i:Z

    :cond_d
    iget-object v1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    and-int/2addr p1, p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/z;->a(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    iget-object p1, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;

    invoke-static {p1}, Lb/a/n/a;->a(Landroid/content/Context;)Lb/a/n/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/n/a;->f()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/n;->l(Z)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/app/n;->q:Z

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/app/n;->j:Landroidx/appcompat/app/n$d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/app/n$d;->c()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_29

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_14

    :cond_13
    const/4 v2, -0x1

    :goto_14
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_29
    return v1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->m:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/n;->m:Z

    iget-object v0, p0, Landroidx/appcompat/app/n;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Landroidx/appcompat/app/n;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/a$b;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->s:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/n;->s:Z

    invoke-direct {p0, v0}, Landroidx/appcompat/app/n;->m(Z)V

    :cond_a
    return-void
.end method

.method public c(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->i:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/n;->d(Z)V

    :cond_7
    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n;->v:Lb/a/n/h;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lb/a/n/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/n;->v:Lb/a/n/h;

    :cond_a
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
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/n;->a(II)V

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
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/n;->a(II)V

    return-void
.end method

.method public f(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/app/n;->w:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Landroidx/appcompat/app/n;->v:Lb/a/n/h;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lb/a/n/h;->a()V

    :cond_b
    return-void
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->l()I

    move-result v0

    return v0
.end method

.method public g(Z)V
    .registers 10

    if-eqz p1, :cond_6

    invoke-direct {p0}, Landroidx/appcompat/app/n;->p()V

    goto :goto_9

    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/app/n;->n()V

    :goto_9
    invoke-direct {p0}, Landroidx/appcompat/app/n;->o()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3e

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_26

    iget-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {p1, v1, v4, v5}, Landroidx/appcompat/widget/z;->a(IJ)Lb/h/o/w;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Lb/h/o/w;

    move-result-object v0

    goto :goto_32

    :cond_26
    iget-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {p1, v3, v6, v7}, Landroidx/appcompat/widget/z;->a(IJ)Lb/h/o/w;

    move-result-object v0

    iget-object p1, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Lb/h/o/w;

    move-result-object p1

    :goto_32
    new-instance v1, Lb/a/n/h;

    invoke-direct {v1}, Lb/a/n/h;-><init>()V

    invoke-virtual {v1, p1, v0}, Lb/a/n/h;->a(Lb/h/o/w;Lb/h/o/w;)Lb/a/n/h;

    invoke-virtual {v1}, Lb/a/n/h;->c()V

    goto :goto_55

    :cond_3e
    if-eqz p1, :cond_4b

    iget-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {p1, v1}, Landroidx/appcompat/widget/z;->c(I)V

    iget-object p1, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_55

    :cond_4b
    iget-object p1, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/z;->c(I)V

    iget-object p1, p0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_55
    return-void
.end method

.method public h()Landroid/content/Context;
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/n;->b:Landroid/content/Context;

    if-nez v0, :cond_27

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lb/a/a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_23

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/n;->b:Landroid/content/Context;

    goto :goto_27

    :cond_23
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/n;->b:Landroid/content/Context;

    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/appcompat/app/n;->b:Landroid/content/Context;

    return-object v0
.end method

.method public h(Z)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/app/n;->v:Lb/a/n/h;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lb/a/n/h;->a()V

    :cond_7
    iget v0, p0, Landroidx/appcompat/app/n;->p:I

    if-nez v0, :cond_74

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->w:Z

    if-nez v0, :cond_11

    if-eqz p1, :cond_74

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lb/a/n/h;

    invoke-direct {v0}, Lb/a/n/h;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_3c

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_7c

    iget-object v3, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    :cond_3c
    iget-object p1, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lb/h/o/s;->a(Landroid/view/View;)Lb/h/o/w;

    move-result-object p1

    invoke-virtual {p1, v2}, Lb/h/o/w;->b(F)Lb/h/o/w;

    iget-object v1, p0, Landroidx/appcompat/app/n;->A:Lb/h/o/z;

    invoke-virtual {p1, v1}, Lb/h/o/w;->a(Lb/h/o/z;)Lb/h/o/w;

    invoke-virtual {v0, p1}, Lb/a/n/h;->a(Lb/h/o/w;)Lb/a/n/h;

    iget-boolean p1, p0, Landroidx/appcompat/app/n;->q:Z

    if-eqz p1, :cond_5f

    iget-object p1, p0, Landroidx/appcompat/app/n;->g:Landroid/view/View;

    if-eqz p1, :cond_5f

    invoke-static {p1}, Lb/h/o/s;->a(Landroid/view/View;)Lb/h/o/w;

    move-result-object p1

    invoke-virtual {p1, v2}, Lb/h/o/w;->b(F)Lb/h/o/w;

    invoke-virtual {v0, p1}, Lb/a/n/h;->a(Lb/h/o/w;)Lb/a/n/h;

    :cond_5f
    sget-object p1, Landroidx/appcompat/app/n;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Lb/a/n/h;->a(Landroid/view/animation/Interpolator;)Lb/a/n/h;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lb/a/n/h;->a(J)Lb/a/n/h;

    iget-object p1, p0, Landroidx/appcompat/app/n;->y:Lb/h/o/x;

    invoke-virtual {v0, p1}, Lb/a/n/h;->a(Lb/h/o/x;)Lb/a/n/h;

    iput-object v0, p0, Landroidx/appcompat/app/n;->v:Lb/a/n/h;

    invoke-virtual {v0}, Lb/a/n/h;->c()V

    goto :goto_7a

    :cond_74
    iget-object p1, p0, Landroidx/appcompat/app/n;->y:Lb/h/o/x;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/h/o/x;->b(Landroid/view/View;)V

    :goto_7a
    return-void

    nop

    :array_7c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public i(Z)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/app/n;->v:Lb/a/n/h;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lb/a/n/h;->a()V

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroidx/appcompat/app/n;->p:I

    const/4 v1, 0x0

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Landroidx/appcompat/app/n;->w:Z

    if-nez v0, :cond_18

    if-eqz p1, :cond_7e

    :cond_18
    iget-object v0, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_37

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_a4

    iget-object v2, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_37
    iget-object p1, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    new-instance p1, Lb/a/n/h;

    invoke-direct {p1}, Lb/a/n/h;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Lb/h/o/s;->a(Landroid/view/View;)Lb/h/o/w;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb/h/o/w;->b(F)Lb/h/o/w;

    iget-object v3, p0, Landroidx/appcompat/app/n;->A:Lb/h/o/z;

    invoke-virtual {v2, v3}, Lb/h/o/w;->a(Lb/h/o/z;)Lb/h/o/w;

    invoke-virtual {p1, v2}, Lb/a/n/h;->a(Lb/h/o/w;)Lb/a/n/h;

    iget-boolean v2, p0, Landroidx/appcompat/app/n;->q:Z

    if-eqz v2, :cond_69

    iget-object v2, p0, Landroidx/appcompat/app/n;->g:Landroid/view/View;

    if-eqz v2, :cond_69

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/n;->g:Landroid/view/View;

    invoke-static {v0}, Lb/h/o/s;->a(Landroid/view/View;)Lb/h/o/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/h/o/w;->b(F)Lb/h/o/w;

    invoke-virtual {p1, v0}, Lb/a/n/h;->a(Lb/h/o/w;)Lb/a/n/h;

    :cond_69
    sget-object v0, Landroidx/appcompat/app/n;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lb/a/n/h;->a(Landroid/view/animation/Interpolator;)Lb/a/n/h;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Lb/a/n/h;->a(J)Lb/a/n/h;

    iget-object v0, p0, Landroidx/appcompat/app/n;->z:Lb/h/o/x;

    invoke-virtual {p1, v0}, Lb/a/n/h;->a(Lb/h/o/x;)Lb/a/n/h;

    iput-object p1, p0, Landroidx/appcompat/app/n;->v:Lb/a/n/h;

    invoke-virtual {p1}, Lb/a/n/h;->c()V

    goto :goto_9b

    :cond_7e
    iget-object p1, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-boolean p1, p0, Landroidx/appcompat/app/n;->q:Z

    if-eqz p1, :cond_95

    iget-object p1, p0, Landroidx/appcompat/app/n;->g:Landroid/view/View;

    if-eqz p1, :cond_95

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_95
    iget-object p1, p0, Landroidx/appcompat/app/n;->z:Lb/h/o/x;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/h/o/x;->b(Landroid/view/View;)V

    :goto_9b
    iget-object p1, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_a2

    invoke-static {p1}, Lb/h/o/s;->D(Landroid/view/View;)V

    :cond_a2
    return-void

    nop

    :array_a4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public j(Z)V
    .registers 3

    if-eqz p1, :cond_13

    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    iput-boolean p1, p0, Landroidx/appcompat/app/n;->x:Z

    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public k(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z;->a(Z)V

    return-void
.end method

.method l()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n;->l:Lb/a/n/b$a;

    if-eqz v0, :cond_e

    iget-object v1, p0, Landroidx/appcompat/app/n;->k:Lb/a/n/b;

    invoke-interface {v0, v1}, Lb/a/n/b$a;->a(Lb/a/n/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/n;->k:Lb/a/n/b;

    iput-object v0, p0, Landroidx/appcompat/app/n;->l:Lb/a/n/b$a;

    :cond_e
    return-void
.end method

.method public m()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {v0}, Landroidx/appcompat/widget/z;->j()I

    move-result v0

    return v0
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/app/n;->p:I

    return-void
.end method

###### Class androidx.appcompat.app.n.a (androidx.appcompat.app.n$a)
.class Landroidx/appcompat/app/n$a;
.super Lb/h/o/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/n;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/n;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    invoke-direct {p0}, Lb/h/o/y;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-boolean v0, p1, Landroidx/appcompat/app/n;->q:Z

    if-eqz v0, :cond_15

    iget-object p1, p1, Landroidx/appcompat/app/n;->g:Landroid/view/View;

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-object p1, p1, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_15
    iget-object p1, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-object p1, p1, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-object p1, p1, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/n;->v:Lb/a/n/h;

    invoke-virtual {p1}, Landroidx/appcompat/app/n;->l()V

    iget-object p1, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-object p1, p1, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_37

    invoke-static {p1}, Lb/h/o/s;->D(Landroid/view/View;)V

    :cond_37
    return-void
.end method

###### Class androidx.appcompat.app.n.b (androidx.appcompat.app.n$b)
.class Landroidx/appcompat/app/n$b;
.super Lb/h/o/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/n;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/n;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/n$b;->a:Landroidx/appcompat/app/n;

    invoke-direct {p0}, Lb/h/o/y;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/app/n$b;->a:Landroidx/appcompat/app/n;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/n;->v:Lb/a/n/h;

    iget-object p1, p1, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

###### Class androidx.appcompat.app.n.c (androidx.appcompat.app.n$c)
.class Landroidx/appcompat/app/n$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/o/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/n;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/n;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/n$c;->a:Landroidx/appcompat/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Landroidx/appcompat/app/n$c;->a:Landroidx/appcompat/app/n;

    iget-object p1, p1, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class androidx.appcompat.app.n.d (androidx.appcompat.app.n$d)
.class public Landroidx/appcompat/app/n$d;
.super Lb/a/n/b;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroidx/appcompat/view/menu/h;

.field private f:Lb/a/n/b$a;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Landroidx/appcompat/app/n;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/n;Landroid/content/Context;Lb/a/n/b$a;)V
    .registers 4

    iput-object p1, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    invoke-direct {p0}, Lb/a/n/b;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/n$d;->d:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/n$d;->f:Lb/a/n/b$a;

    new-instance p1, Landroidx/appcompat/view/menu/h;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    iget-object p1, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v1, v0, Landroidx/appcompat/app/n;->j:Landroidx/appcompat/app/n$d;

    if-eq v1, p0, :cond_7

    return-void

    :cond_7
    iget-boolean v1, v0, Landroidx/appcompat/app/n;->r:Z

    iget-boolean v0, v0, Landroidx/appcompat/app/n;->s:Z

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/appcompat/app/n;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iput-object p0, v0, Landroidx/appcompat/app/n;->k:Lb/a/n/b;

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->f:Lb/a/n/b$a;

    iput-object v1, v0, Landroidx/appcompat/app/n;->l:Lb/a/n/b$a;

    goto :goto_20

    :cond_1b
    iget-object v0, p0, Landroidx/appcompat/app/n$d;->f:Lb/a/n/b$a;

    invoke-interface {v0, p0}, Lb/a/n/b$a;->a(Lb/a/n/b;)V

    :goto_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/n$d;->f:Lb/a/n/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/n;->g(Z)V

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v1, v1, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->a()V

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v1, v1, Landroidx/appcompat/app/n;->e:Landroidx/appcompat/widget/z;

    invoke-interface {v1}, Landroidx/appcompat/widget/z;->k()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v2, v1, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Landroidx/appcompat/app/n;->x:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iput-object v0, v1, Landroidx/appcompat/app/n;->j:Landroidx/appcompat/app/n$d;

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/n$d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/n$d;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-super {p0, p1}, Lb/a/n/b;->a(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/n$d;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Lb/a/n/g;

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/n/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->j:Landroidx/appcompat/app/n$d;

    if-eq v0, p0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    :try_start_c
    iget-object v0, p0, Landroidx/appcompat/app/n$d;->f:Lb/a/n/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    invoke-interface {v0, p0, v1}, Lb/a/n/b$a;->b(Lb/a/n/b;Landroid/view/Menu;)Z
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    return-void

    :catchall_19
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->b()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    :try_start_5
    iget-object v0, p0, Landroidx/appcompat/app/n$d;->f:Lb/a/n/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    invoke-interface {v0, p0, v1}, Lb/a/n/b$a;->a(Lb/a/n/b;Landroid/view/Menu;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    return v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/app/n$d;->e:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/app/n$d;->f:Lb/a/n/b$a;

    if-eqz p1, :cond_9

    invoke-interface {p1, p0, p2}, Lb/a/n/b$a;->a(Lb/a/n/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    iget-object p1, p0, Landroidx/appcompat/app/n$d;->f:Lb/a/n/b$a;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/n$d;->i()V

    iget-object p1, p0, Landroidx/appcompat/app/n$d;->h:Landroidx/appcompat/app/n;

    iget-object p1, p1, Landroidx/appcompat/app/n;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->d()Z

    return-void
.end method
