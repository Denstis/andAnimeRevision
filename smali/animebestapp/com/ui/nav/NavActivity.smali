###### Class animebestapp.com.ui.nav.NavActivity (animebestapp.com.ui.nav.NavActivity)
.class public final Lanimebestapp/com/ui/nav/NavActivity;
.super Lanimebestapp/com/ui/a/a;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/nav/g;
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/NavActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/a<",
        "Lanimebestapp/com/ui/nav/g;",
        "Lanimebestapp/com/ui/nav/e;",
        ">;",
        "Lanimebestapp/com/ui/nav/g;",
        "Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;"
    }
.end annotation


# static fields
.field private static v:Ljava/io/BufferedInputStream; = null

.field private static w:Le/a/v/b; = null

.field private static x:Lanimebestapp/com/models/h; = null

.field private static y:Lanimebestapp/com/ui/nav/c; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final z:J = 0x100000L


# instance fields
.field private t:Z

.field private u:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/NavActivity$a;-><init>(Lg/p/b/d;)V

    const-wide/32 v0, 0x100000

    sput-wide v0, Lanimebestapp/com/ui/nav/NavActivity;->z:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lanimebestapp/com/ui/a/a;-><init>()V

    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v0

    const/4 v1, 0x1

    return-void
.end method

.method public static final synthetic B()Lanimebestapp/com/ui/nav/c;
    .registers 1

    sget-object v0, Lanimebestapp/com/ui/nav/NavActivity;->y:Lanimebestapp/com/ui/nav/c;

    return-object v0
.end method

.method public static final synthetic C()Ljava/io/BufferedInputStream;
    .registers 1

    sget-object v0, Lanimebestapp/com/ui/nav/NavActivity;->v:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public static final synthetic D()Lanimebestapp/com/models/h;
    .registers 1

    sget-object v0, Lanimebestapp/com/ui/nav/NavActivity;->x:Lanimebestapp/com/models/h;

    return-object v0
.end method

.method private final E()V
    .registers 3

    sget v0, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/menu/SlideMenuView;

    iget-object v1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast v1, Lanimebestapp/com/ui/nav/e;

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/e;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lanimebestapp/com/menu/SlideMenuView;->a(Z)V

    sget v0, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/menu/SlideMenuView;

    new-instance v1, Lanimebestapp/com/ui/nav/NavActivity$o;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/NavActivity$o;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {v0, v1}, Lanimebestapp/com/menu/SlideMenuView;->setListener(Lanimebestapp/com/menu/SlideMenuView$b;)V

    return-void
.end method

.method private final F()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:La3Kameron@gmail.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/NavActivity;)Lanimebestapp/com/ui/nav/e;
    .registers 1

    iget-object p0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p0, Lanimebestapp/com/ui/nav/e;

    return-object p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/c;)V
    .registers 1

    sput-object p0, Lanimebestapp/com/ui/nav/NavActivity;->y:Lanimebestapp/com/ui/nav/c;

    return-void
.end method

.method public static final synthetic a(Ljava/io/BufferedInputStream;)V
    .registers 1

    sput-object p0, Lanimebestapp/com/ui/nav/NavActivity;->v:Ljava/io/BufferedInputStream;

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/models/h;)V
    .registers 1

    sput-object p0, Lanimebestapp/com/ui/nav/NavActivity;->x:Lanimebestapp/com/models/h;

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/nav/NavActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lanimebestapp/com/ui/nav/NavActivity;->t:Z

    return p0
.end method

.method public static final synthetic c(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/NavActivity;->F()V

    return-void
.end method


# virtual methods
.method public final A()V
    .registers 5

    sget-object v0, Lanimebestapp/com/ui/nav/h/e/a;->g:Lanimebestapp/com/ui/nav/h/e/a$a;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/e/a$a;->a()Lanimebestapp/com/ui/nav/h/e/a;

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/k/a/i;->a()Lb/k/a/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/k/a/o;->a(Ljava/lang/String;)Lb/k/a/o;

    sget-object v1, Lanimebestapp/com/ui/nav/h/e/a;->g:Lanimebestapp/com/ui/nav/h/e/a$a;

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/h/e/a$a;->a()Lanimebestapp/com/ui/nav/h/e/a;

    move-result-object v1

    const v2, 0x7f0800b8

    const-string v3, "search"

    invoke-virtual {v0, v2, v1, v3}, Lb/k/a/o;->b(ILb/k/a/d;Ljava/lang/String;)Lb/k/a/o;

    invoke-virtual {v0}, Lb/k/a/o;->a()I

    return-void
.end method

.method public a(I)V
    .registers 4

    sget v0, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/menu/SlideMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanimebestapp/com/menu/SlideMenuView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lanimebestapp/com/a;->inPass:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "view.inPass"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->frame:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lanimebestapp/com/ui/nav/NavActivity$a0;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/NavActivity$a0;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lanimebestapp/com/models/g;)V
    .registers 9

    const-string v0, "user"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/menu/SlideMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11e

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0050

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lanimebestapp/com/models/g;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v2, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v2, 0x1

    :goto_32
    if-eqz v2, :cond_37

    const-string v2, "https://anime-best.com/templates/anime/dleimages/noavatar.png"

    goto :goto_5d

    :cond_37
    invoke-virtual {p1}, Lanimebestapp/com/models/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanimebestapp/com/models/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5d

    :cond_59
    invoke-virtual {p1}, Lanimebestapp/com/models/g;->a()Ljava/lang/String;

    move-result-object v2

    :goto_5d
    const-string v4, "header"

    invoke-static {v0, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lanimebestapp/com/a;->ivPhoto:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v2

    new-instance v4, Lc/a/a/r/f;

    invoke-direct {v4}, Lc/a/a/r/f;-><init>()V

    invoke-virtual {v4}, Lc/a/a/r/a;->b()Lc/a/a/r/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object v2

    new-instance v4, Lcom/bumptech/glide/load/p/c/u;

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06005a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/p/c/u;-><init>(I)V

    invoke-static {v4}, Lc/a/a/r/f;->b(Lcom/bumptech/glide/load/l;)Lc/a/a/r/f;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object v2

    sget v4, Lanimebestapp/com/a;->ivPhoto:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    invoke-virtual {p1}, Lanimebestapp/com/models/g;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ae

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_af

    :cond_ae
    const/4 v1, 0x1

    :cond_af
    const-string v2, "header.tvFullName"

    if-eqz v1, :cond_bc

    sget v1, Lanimebestapp/com/a;->tvFullName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_d8

    :cond_bc
    sget v1, Lanimebestapp/com/a;->tvFullName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lanimebestapp/com/a;->tvLogin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "header.tvLogin"

    :goto_d8
    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/g;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lanimebestapp/com/a;->btnLogout:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Lanimebestapp/com/ui/nav/NavActivity$b;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/NavActivity$b;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnVip:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Lanimebestapp/com/ui/nav/NavActivity$c;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/NavActivity$c;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnRedact:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Lanimebestapp/com/ui/nav/NavActivity$d;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/NavActivity$d;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/menu/SlideMenuView;

    invoke-virtual {p1, v0}, Lanimebestapp/com/menu/SlideMenuView;->addHeaderView(Landroid/view/View;)V

    return-void

    :cond_11e
    new-instance p1, Lg/j;

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-direct {p1, v0}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lanimebestapp/com/models/h;)V
    .registers 5

    const-string v0, "urlApk"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->j(Ljava/lang/String;)Le/a/h;

    move-result-object v0

    invoke-static {}, Le/a/b0/b;->b()Le/a/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/h;->b(Le/a/n;)Le/a/h;

    move-result-object v0

    invoke-static {}, Le/a/u/b/a;->a()Le/a/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/h;->a(Le/a/n;)Le/a/h;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/nav/NavActivity$g;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/NavActivity$g;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    new-instance v2, Lanimebestapp/com/ui/nav/NavActivity$h;

    invoke-direct {v2, p0, p1}, Lanimebestapp/com/ui/nav/NavActivity$h;-><init>(Lanimebestapp/com/ui/nav/NavActivity;Lanimebestapp/com/models/h;)V

    new-instance p1, Lanimebestapp/com/ui/nav/NavActivity$i;

    invoke-direct {p1, p0}, Lanimebestapp/com/ui/nav/NavActivity$i;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {v0, v1, v2, p1}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;Le/a/x/a;)Le/a/v/b;

    move-result-object p1

    sput-object p1, Lanimebestapp/com/ui/nav/NavActivity;->w:Le/a/v/b;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/nav/d;)V
    .registers 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/ui/nav/a;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/ui/nav/a;-><init>(Landroidx/appcompat/app/d;Lanimebestapp/com/ui/nav/d;)V

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/a;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    sget v0, Lanimebestapp/com/a;->coordinatorLayout:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "category"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lanimebestapp/com/ui/nav/h/a/c;->h:Lanimebestapp/com/ui/nav/h/a/c$a;

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/ui/nav/h/a/c$a;->a(Ljava/lang/String;Ljava/lang/String;)Lanimebestapp/com/ui/nav/h/a/c;

    move-result-object p1

    sget p2, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p0, p2}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0e0076

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lb/k/a/i;->a()Lb/k/a/o;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lb/k/a/o;->a(Ljava/lang/String;)Lb/k/a/o;

    const v0, 0x7f0800b8

    const-string v1, "genre"

    invoke-virtual {p2, v0, p1, v1}, Lb/k/a/o;->b(ILb/k/a/d;Ljava/lang/String;)Lb/k/a/o;

    invoke-virtual {p2}, Lb/k/a/o;->a()I

    return-void
.end method

.method public b(I)V
    .registers 4

    sget v0, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/menu/SlideMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanimebestapp/com/menu/SlideMenuView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lanimebestapp/com/a;->inLogin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "view.inLogin"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/menu/SlideMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanimebestapp/com/menu/SlideMenuView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lanimebestapp/com/a;->inPass:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "view.inPass"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Z)V
    .registers 8

    iput-boolean p1, p0, Lanimebestapp/com/ui/nav/NavActivity;->t:Z

    const-string v0, "etSearch"

    const-string v1, "bottomNav"

    const-string v2, "tvTitle"

    const-string v3, "btnRefresh"

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez p1, :cond_63

    sget p1, Lanimebestapp/com/a;->btnRefresh:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->btnClear:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const-string v0, "btnClear"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->bottomNav:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->btnSearch:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f0700ca

    goto :goto_b3

    :cond_63
    sget p1, Lanimebestapp/com/a;->btnRefresh:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->bottomNav:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lanimebestapp/com/a;->btnSearch:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f0700a4

    :goto_b3
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public e()V
    .registers 4

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    const-string v1, "FirebaseStorage.getInstance()"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    const-string v1, "info.json"

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    const-string v1, "storageRef.reference.child(\"info.json\")"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v1, Lanimebestapp/com/ui/nav/NavActivity;->z:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/storage/StorageReference;->getBytes(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/nav/NavActivity$e;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/NavActivity$e;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lanimebestapp/com/ui/nav/NavActivity$f;->a:Lanimebestapp/com/ui/nav/NavActivity$f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 7

    const-string v0, "path"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x10000000

    const-string v2, "application/vnd.android.package-archive"

    const-string v3, "android.intent.action.VIEW"

    const/16 v4, 0x18

    if-lt v0, v4, :cond_47

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v4}, Landroidx/core/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "FileProvider.getUriForFi\u2026.packageName, File(path))"

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_5b

    :cond_47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_5b
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity;->u:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity;->u:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/NavActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .registers 5

    const-string v0, "urlApk"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->j(Ljava/lang/String;)Le/a/h;

    move-result-object p1

    invoke-static {}, Le/a/b0/b;->b()Le/a/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/h;->b(Le/a/n;)Le/a/h;

    move-result-object p1

    invoke-static {}, Le/a/u/b/a;->a()Le/a/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/h;->a(Le/a/n;)Le/a/h;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$p;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$p;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    sget-object v1, Lanimebestapp/com/ui/nav/NavActivity$q;->a:Lanimebestapp/com/ui/nav/NavActivity$q;

    new-instance v2, Lanimebestapp/com/ui/nav/NavActivity$r;

    invoke-direct {v2, p0}, Lanimebestapp/com/ui/nav/NavActivity$r;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;Le/a/x/a;)Le/a/v/b;

    move-result-object p1

    sput-object p1, Lanimebestapp/com/ui/nav/NavActivity;->w:Le/a/v/b;

    return-void
.end method

.method public final i(I)V
    .registers 3

    sget-object v0, Lanimebestapp/com/ui/nav/NavActivity;->y:Lanimebestapp/com/ui/nav/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/nav/c;->a(I)V

    :cond_7
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_4

    goto/16 :goto_b6

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x692216c8

    const v2, 0x7f0800b8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_80

    const v1, 0x2ea2b233

    if-eq v0, v1, :cond_4f

    const v1, 0x7cc5427b

    if-eq v0, v1, :cond_1e

    goto/16 :goto_b6

    :cond_1e
    const-string v0, "nav_home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lb/k/a/i;->a(Ljava/lang/String;I)V

    sget-object p1, Lanimebestapp/com/ui/nav/h/c/e/a;->l:Lanimebestapp/com/ui/nav/h/c/e/a$a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/h/c/e/a$a;->a()Lanimebestapp/com/ui/nav/h/c/e/a;

    move-result-object p1

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e002d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/k/a/i;->a()Lb/k/a/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lb/k/a/o;->a(Ljava/lang/String;)Lb/k/a/o;

    const-string v1, "list"

    goto :goto_b0

    :cond_4f
    const-string v0, "nav_schedule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lb/k/a/i;->a(Ljava/lang/String;I)V

    sget-object p1, Lanimebestapp/com/ui/nav/h/d/f/a;->g:Lanimebestapp/com/ui/nav/h/d/f/a$a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/h/d/f/a$a;->a()Lanimebestapp/com/ui/nav/h/d/f/a;

    move-result-object p1

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/k/a/i;->a()Lb/k/a/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lb/k/a/o;->a(Ljava/lang/String;)Lb/k/a/o;

    const-string v1, "schedule"

    goto :goto_b0

    :cond_80
    const-string v0, "nav_favorite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lb/k/a/i;->a(Ljava/lang/String;I)V

    sget-object p1, Lanimebestapp/com/ui/nav/h/b/e/a;->g:Lanimebestapp/com/ui/nav/h/b/e/a$a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/h/b/e/a$a;->a()Lanimebestapp/com/ui/nav/h/b/e/a;

    move-result-object p1

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0071

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/k/a/i;->a()Lb/k/a/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lb/k/a/o;->a(Ljava/lang/String;)Lb/k/a/o;

    const-string v1, "favorite"

    :goto_b0
    invoke-virtual {v0, v2, p1, v1}, Lb/k/a/o;->b(ILb/k/a/d;Ljava/lang/String;)Lb/k/a/o;

    invoke-virtual {v0}, Lb/k/a/o;->a()I

    :cond_b6
    :goto_b6
    return-void
.end method

.method public final j(Ljava/lang/String;)Le/a/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "urlApk"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lanimebestapp/com/ui/nav/NavActivity;->v:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_19

    if-eqz v0, :cond_11

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_19

    :catch_f
    move-exception v0

    goto :goto_16

    :cond_11
    invoke-static {}, Lg/p/b/f;->a()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_f

    const/4 p1, 0x0

    throw p1

    :goto_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    :goto_19
    sget-object v0, Lanimebestapp/com/ui/nav/NavActivity;->w:Le/a/v/b;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Le/a/v/b;->b()V

    :cond_20
    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$z;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/ui/nav/NavActivity$z;-><init>(Lanimebestapp/com/ui/nav/NavActivity;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/h;->a(Le/a/j;)Le/a/h;

    move-result-object p1

    const-string v0, "Observable.create<Int> {\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final j()V
    .registers 3

    sget v0, Lanimebestapp/com/a;->drawerLayout:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->f(I)V

    return-void
.end method

.method public k()V
    .registers 4

    sget v0, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/menu/SlideMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanimebestapp/com/menu/SlideMenuView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lanimebestapp/com/a;->etLogin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lanimebestapp/com/ui/nav/NavActivity$j;

    invoke-direct {v2, v0}, Lanimebestapp/com/ui/nav/NavActivity$j;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v1, Lanimebestapp/com/a;->etPass:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v2, Lanimebestapp/com/ui/nav/NavActivity$k;

    invoke-direct {v2, v0}, Lanimebestapp/com/ui/nav/NavActivity$k;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v1, Lanimebestapp/com/a;->btnReg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lanimebestapp/com/ui/nav/NavActivity$l;

    invoke-direct {v2, p0}, Lanimebestapp/com/ui/nav/NavActivity$l;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lanimebestapp/com/a;->btnEnter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lanimebestapp/com/ui/nav/NavActivity$m;

    invoke-direct {v2, p0, v0}, Lanimebestapp/com/ui/nav/NavActivity$m;-><init>(Lanimebestapp/com/ui/nav/NavActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lanimebestapp/com/a;->btnForgotPass:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lanimebestapp/com/ui/nav/NavActivity$n;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/NavActivity$n;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public l()Lanimebestapp/com/ui/nav/e;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/e;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/e;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/NavActivity;->l()Lanimebestapp/com/ui/nav/e;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    sget v0, Lanimebestapp/com/a;->drawerLayout:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget v0, Lanimebestapp/com/a;->drawerLayout:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)V

    goto :goto_20

    :cond_1d
    invoke-super {p0}, Lanimebestapp/com/ui/a/a;->onBackPressed()V

    :goto_20
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    const v0, 0x7f0b0021

    invoke-virtual {p0, p1, v0}, Lanimebestapp/com/ui/a/a;->a(II)V

    new-instance p1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    sget-object p1, Lanimebestapp/com/ui/nav/NavActivity;->w:Le/a/v/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_51

    if-eqz p1, :cond_4d

    invoke-interface {p1}, Le/a/v/b;->a()Z

    move-result p1

    if-eqz p1, :cond_51

    sget-object p1, Lanimebestapp/com/ui/nav/NavActivity;->x:Lanimebestapp/com/models/h;

    if-eqz p1, :cond_51

    new-instance v1, Lanimebestapp/com/ui/nav/c;

    if-eqz p1, :cond_49

    invoke-direct {v1, p0, p1}, Lanimebestapp/com/ui/nav/c;-><init>(Lanimebestapp/com/ui/nav/NavActivity;Lanimebestapp/com/models/h;)V

    sput-object v1, Lanimebestapp/com/ui/nav/NavActivity;->y:Lanimebestapp/com/ui/nav/c;

    sget-object p1, Lanimebestapp/com/ui/nav/NavActivity;->y:Lanimebestapp/com/ui/nav/c;

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/c;->d()V

    goto :goto_51

    :cond_49
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_4d
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_51
    :goto_51
    sget-object p1, Lanimebestapp/com/ui/nav/NavActivity;->y:Lanimebestapp/com/ui/nav/c;

    if-eqz p1, :cond_64

    if-eqz p1, :cond_93

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/c;->c()Z

    move-result p1

    if-nez p1, :cond_93

    goto :goto_64

    :cond_60
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_64
    :goto_64
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    const-string v0, "FirebaseStorage.getInstance()"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    const-string v0, "versions.json"

    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    const-string v0, "storageRef.reference.child(\"versions.json\")"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v0, Lanimebestapp/com/ui/nav/NavActivity;->z:J

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/storage/StorageReference;->getBytes(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$s;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$s;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$t;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$t;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_93
    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lb/k/a/i;->a()Lb/k/a/o;

    move-result-object p1

    const-string v0, "tabsMain"

    invoke-virtual {p1, v0}, Lb/k/a/o;->a(Ljava/lang/String;)Lb/k/a/o;

    const v0, 0x7f0800b8

    sget-object v1, Lanimebestapp/com/ui/nav/h/c/e/a;->l:Lanimebestapp/com/ui/nav/h/c/e/a$a;

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/h/c/e/a$a;->a()Lanimebestapp/com/ui/nav/h/c/e/a;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {p1, v0, v1, v2}, Lb/k/a/o;->b(ILb/k/a/d;Ljava/lang/String;)Lb/k/a/o;

    invoke-virtual {p1}, Lb/k/a/o;->a()I

    sget p1, Lanimebestapp/com/a;->btnBottomHome:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v0, "btnBottomHome"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    sget p1, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/menu/SlideMenuView;

    invoke-virtual {p1, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/nav/e;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/e;->g()V

    const-string p1, "LOGS"

    const-string v0, "loadAd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lanimebestapp/com/a;->btnBottomFavorites:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$u;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$u;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnBottomHome:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$v;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$v;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnBottomSchedule:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$w;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$w;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnMenu:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$x;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$x;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnSearch:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$y;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$y;-><init>(Lanimebestapp/com/ui/nav/NavActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/NavActivity;->E()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lc/b/a/c/a;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lanimebestapp/com/ui/nav/NavActivity;->y:Lanimebestapp/com/ui/nav/c;

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lc/b/a/c/a;->onPause()V

    iget-object v0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast v0, Lanimebestapp/com/ui/nav/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/e;->a(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lc/b/a/c/a;->onResume()V

    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v0

    const/4 v1, 0x1

    iget-object v0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast v0, Lanimebestapp/com/ui/nav/e;

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/e;->a(Z)V

    return-void
.end method

.method public final y()Ljava/io/File;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1d

    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "animebest.com/temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1d
    return-object v0
.end method

.method public final z()V
    .registers 4

    sget v0, Lanimebestapp/com/a;->btnBottomSchedule:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v1, "btnBottomSchedule"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setActivated(Z)V

    sget v0, Lanimebestapp/com/a;->btnBottomHome:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v1, "btnBottomHome"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setActivated(Z)V

    sget v0, Lanimebestapp/com/a;->btnBottomFavorites:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v2, "btnBottomFavorites"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setActivated(Z)V

    const-string v0, "nav_schedule"

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/NavActivity;->i(Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.a (animebestapp.com.ui.nav.NavActivity$a)
.class public final Lanimebestapp/com/ui/nav/NavActivity$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/NavActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/p/b/d;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/NavActivity$a;-><init>()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.a0 (animebestapp.com.ui.nav.NavActivity$a0)
.class final Lanimebestapp/com/ui/nav/NavActivity$a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$a0;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/NavActivity$a0;->b:Landroid/content/Context;

    const-class v2, Lanimebestapp/com/ui/splash/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/NavActivity$a0;->b:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->a(Landroid/content/Context;[Landroid/content/Intent;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.b (animebestapp.com.ui.nav.NavActivity$b)
.class final Lanimebestapp/com/ui/nav/NavActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/models/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$b;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$b;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/NavActivity;)Lanimebestapp/com/ui/nav/e;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/e;->i()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$b;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v0, Lanimebestapp/com/a;->navMenu:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/menu/SlideMenuView;

    invoke-virtual {p1}, Lanimebestapp/com/menu/SlideMenuView;->a()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$b;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/NavActivity;->k()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.c (animebestapp.com.ui.nav.NavActivity$c)
.class final Lanimebestapp/com/ui/nav/NavActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/models/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$c;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$c;->b:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://animebestapp.org/vip.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.d (animebestapp.com.ui.nav.NavActivity$d)
.class final Lanimebestapp/com/ui/nav/NavActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/models/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$d;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$d;->b:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://aniandrl23l2l13.animebesst.org/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.e (animebestapp.com.ui.nav.NavActivity$e)
.class final Lanimebestapp/com/ui/nav/NavActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$e;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lg/s/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lg/s/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class p1, Lanimebestapp/com/ui/nav/d;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/ui/nav/d;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$e;->a:Lanimebestapp/com/ui/nav/NavActivity;

    const-string v1, "info"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/d;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity$e;->a([B)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.f (animebestapp.com.ui.nav.NavActivity$f)
.class final Lanimebestapp/com/ui/nav/NavActivity$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/NavActivity$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$f;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/NavActivity$f;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/NavActivity$f;->a:Lanimebestapp/com/ui/nav/NavActivity$f;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.g (animebestapp.com.ui.nav.NavActivity$g)
.class final Lanimebestapp/com/ui/nav/NavActivity$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/models/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/x/d<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$g;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$g;->a:Lanimebestapp/com/ui/nav/NavActivity;

    const-string v1, "it"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->i(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity$g;->a(Ljava/lang/Integer;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.h (animebestapp.com.ui.nav.NavActivity$h)
.class final Lanimebestapp/com/ui/nav/NavActivity$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/models/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/x/d<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;

.field final synthetic b:Lanimebestapp/com/models/h;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;Lanimebestapp/com/models/h;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$h;->a:Lanimebestapp/com/ui/nav/NavActivity;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/NavActivity$h;->b:Lanimebestapp/com/models/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity$h;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$h;->a:Lanimebestapp/com/ui/nav/NavActivity;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$h;->b:Lanimebestapp/com/models/h;

    invoke-virtual {v0}, Lanimebestapp/com/models/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.i (animebestapp.com.ui.nav.NavActivity$i)
.class final Lanimebestapp/com/ui/nav/NavActivity$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/models/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$i;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Lanimebestapp/com/ui/nav/NavActivity;->b(Lanimebestapp/com/models/h;)V

    invoke-static {v0}, Lanimebestapp/com/ui/nav/NavActivity;->a(Ljava/io/BufferedInputStream;)V

    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->B()Lanimebestapp/com/ui/nav/c;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/c;->a()V

    :cond_10
    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$i;->a:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanimebestapp/com/ui/nav/NavActivity$i;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {v2}, Lanimebestapp/com/ui/nav/NavActivity;->y()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AnimeBest.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/NavActivity;->g(Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.j (animebestapp.com.ui.nav.NavActivity$j)
.class public final Lanimebestapp/com/ui/nav/NavActivity$j;
.super Lanimebestapp/com/utils/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$j;->b:Landroid/view/View;

    invoke-direct {p0}, Lanimebestapp/com/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$j;->b:Landroid/view/View;

    sget p2, Lanimebestapp/com/a;->inLogin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "view.inLogin"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.k (animebestapp.com.ui.nav.NavActivity$k)
.class public final Lanimebestapp/com/ui/nav/NavActivity$k;
.super Lanimebestapp/com/utils/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$k;->b:Landroid/view/View;

    invoke-direct {p0}, Lanimebestapp/com/utils/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$k;->b:Landroid/view/View;

    sget p2, Lanimebestapp/com/a;->inPass:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "view.inPass"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.l (animebestapp.com.ui.nav.NavActivity$l)
.class final Lanimebestapp/com/ui/nav/NavActivity$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$l;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$l;->b:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lanimebestapp/com/ui/auth/RegActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.m (animebestapp.com.ui.nav.NavActivity$m)
.class final Lanimebestapp/com/ui/nav/NavActivity$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$m;->b:Lanimebestapp/com/ui/nav/NavActivity;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/NavActivity$m;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$m;->c:Landroid/view/View;

    sget v0, Lanimebestapp/com/a;->inLogin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "view.inLogin"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$m;->c:Landroid/view/View;

    sget v1, Lanimebestapp/com/a;->inPass:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "view.inPass"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$m;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/NavActivity;)Lanimebestapp/com/ui/nav/e;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$m;->c:Landroid/view/View;

    sget v1, Lanimebestapp/com/a;->etLogin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "view.etLogin"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/NavActivity$m;->c:Landroid/view/View;

    sget v2, Lanimebestapp/com/a;->etPass:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "view.etPass"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lanimebestapp/com/ui/nav/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.n (animebestapp.com.ui.nav.NavActivity$n)
.class final Lanimebestapp/com/ui/nav/NavActivity$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$n;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$n;->b:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://ani1androi23122d.animebesst.org/index.php?do=lostpassword"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.o (animebestapp.com.ui.nav.NavActivity$o)
.class public final Lanimebestapp/com/ui/nav/NavActivity$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/menu/SlideMenuView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    sparse-switch v0, :sswitch_data_10a

    goto/16 :goto_ef

    :sswitch_10
    const-string v0, "serials"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    goto/16 :goto_f8

    :sswitch_1a
    const-string v0, "check_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    const-string v0, "FirebaseStorage.getInstance()"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    const-string v0, "versions.json"

    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    const-string v0, "storageRef.reference.child(\"versions.json\")"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x100000

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/storage/StorageReference;->getBytes(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$o$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$o$a;-><init>(Lanimebestapp/com/ui/nav/NavActivity$o;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lanimebestapp/com/ui/nav/NavActivity$o$b;->a:Lanimebestapp/com/ui/nav/NavActivity$o$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "islandRef.getBytes(ONE_M\u2026                        }"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f8

    :sswitch_57
    const-string v0, "vkdos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://vk.com/anime__world?w=app6887721_-47949197"

    goto/16 :goto_d6

    :sswitch_6a
    const-string v0, "films"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    goto/16 :goto_f8

    :sswitch_74
    const-string v0, "Vips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://animebestapp.org/vip.html"

    goto :goto_d6

    :sswitch_86
    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lanimebestapp/com/ui/top/TopAnimeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_dd

    :sswitch_98
    const-string v0, "ova"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    goto :goto_f8

    :sswitch_a1
    const-string v0, "vk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://vk.com/public47949197"

    goto :goto_d6

    :sswitch_b3
    const-string v0, "ukraine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://animebestapp.org/donate.html"

    goto :goto_d6

    :sswitch_c5
    const-string v0, "telegram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://t.me/+km1WDcsQmd1iNzUy"

    :goto_d6
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_dd
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f8

    :sswitch_e1
    const-string v0, "support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->c(Lanimebestapp/com/ui/nav/NavActivity;)V

    goto :goto_f8

    :cond_ef
    :goto_ef
    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/NavActivity;)Lanimebestapp/com/ui/nav/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/nav/e;->a(Ljava/lang/String;)V

    :goto_f8
    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    sget v0, Lanimebestapp/com/a;->drawerLayout:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)V

    return-void

    nop

    :sswitch_data_10a
    .sparse-switch
        -0x6e8d8031 -> :sswitch_e1
        -0x511716ff -> :sswitch_c5
        -0x15bc3985 -> :sswitch_b3
        0xeb5 -> :sswitch_a1
        0x1af5a -> :sswitch_98
        0x1c155 -> :sswitch_86
        0x28b016 -> :sswitch_74
        0x5cebb6f -> :sswitch_6a
        0x6b0fe73 -> :sswitch_57
        0x89a17e0 -> :sswitch_1a
        0x763dc0ff -> :sswitch_10
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3ac1651f

    if-eq v0, v1, :cond_3f

    const v1, -0x23dea296

    if-eq v0, v1, :cond_14

    goto :goto_50

    :cond_14
    const-string v0, "night_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    const v1, 0x7f0f0009

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;I)V

    const-string v0, "\u0414\u043b\u044f \u0441\u043c\u0435\u043d\u044b \u0442\u0435\u043c\u044b \u043d\u0443\u0436\u043d\u0430 \u043f\u0435\u0440\u0435\u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    const/4 v0, 0x0

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0438\u0442\u044c"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$o$c;

    invoke-direct {v0, p0, p2}, Lanimebestapp/com/ui/nav/NavActivity$o$c;-><init>(Lanimebestapp/com/ui/nav/NavActivity$o;Z)V

    const-string p2, "\u041f\u0435\u0440\u0435\u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c"

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/c$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->c()Landroidx/appcompat/app/c;

    goto :goto_50

    :cond_3f
    const-string v0, "player"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/NavActivity;)Lanimebestapp/com/ui/nav/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/nav/e;->b(Z)V

    :cond_50
    :goto_50
    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.o.a (animebestapp.com.ui.nav.NavActivity$o$a)
.class final Lanimebestapp/com/ui/nav/NavActivity$o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity$o;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity$o;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity$o;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o$a;->a:Lanimebestapp/com/ui/nav/NavActivity$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lg/s/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lg/s/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class p1, Lanimebestapp/com/models/h;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/models/h;

    new-instance v0, Lanimebestapp/com/ui/nav/c;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/NavActivity$o$a;->a:Lanimebestapp/com/ui/nav/NavActivity$o;

    iget-object v1, v1, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    const-string v2, "version"

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lanimebestapp/com/ui/nav/c;-><init>(Lanimebestapp/com/ui/nav/NavActivity;Lanimebestapp/com/models/h;)V

    invoke-static {v0}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/c;)V

    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->B()Lanimebestapp/com/ui/nav/c;

    move-result-object p1

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/c;->d()V

    :cond_3f
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity$o$a;->a([B)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.o.b (animebestapp.com.ui.nav.NavActivity$o$b)
.class final Lanimebestapp/com/ui/nav/NavActivity$o$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity$o;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/NavActivity$o$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$o$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/NavActivity$o$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/NavActivity$o$b;->a:Lanimebestapp/com/ui/nav/NavActivity$o$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.o.c (animebestapp.com.ui.nav.NavActivity$o$c)
.class final Lanimebestapp/com/ui/nav/NavActivity$o$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity$o;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity$o;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity$o;Z)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o$c;->b:Lanimebestapp/com/ui/nav/NavActivity$o;

    iput-boolean p2, p0, Lanimebestapp/com/ui/nav/NavActivity$o$c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o$c;->b:Lanimebestapp/com/ui/nav/NavActivity$o;

    iget-object p1, p1, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/NavActivity;)Lanimebestapp/com/ui/nav/e;

    move-result-object p1

    iget-boolean p2, p0, Lanimebestapp/com/ui/nav/NavActivity$o$c;->c:Z

    if-eqz p2, :cond_e

    const/4 p2, 0x2

    goto :goto_f

    :cond_e
    const/4 p2, 0x1

    :goto_f
    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/nav/e;->a(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$o$c;->b:Lanimebestapp/com/ui/nav/NavActivity$o;

    iget-object p1, p1, Lanimebestapp/com/ui/nav/NavActivity$o;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {p1, p1}, Lanimebestapp/com/ui/nav/NavActivity;->a(Landroid/content/Context;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.p (animebestapp.com.ui.nav.NavActivity$p)
.class final Lanimebestapp/com/ui/nav/NavActivity$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/x/d<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$p;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$p;->a:Lanimebestapp/com/ui/nav/NavActivity;

    const-string v1, "it"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/nav/NavActivity;->i(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity$p;->a(Ljava/lang/Integer;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.q (animebestapp.com.ui.nav.NavActivity$q)
.class final Lanimebestapp/com/ui/nav/NavActivity$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/x/d<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/NavActivity$q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$q;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/NavActivity$q;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/NavActivity$q;->a:Lanimebestapp/com/ui/nav/NavActivity$q;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity$q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.r (animebestapp.com.ui.nav.NavActivity$r)
.class final Lanimebestapp/com/ui/nav/NavActivity$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$r;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Lanimebestapp/com/ui/nav/NavActivity;->b(Lanimebestapp/com/models/h;)V

    invoke-static {v0}, Lanimebestapp/com/ui/nav/NavActivity;->a(Ljava/io/BufferedInputStream;)V

    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->B()Lanimebestapp/com/ui/nav/c;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/c;->a()V

    :cond_10
    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$r;->a:Lanimebestapp/com/ui/nav/NavActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanimebestapp/com/ui/nav/NavActivity$r;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {v2}, Lanimebestapp/com/ui/nav/NavActivity;->y()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AnimeBest.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/NavActivity;->g(Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.s (animebestapp.com.ui.nav.NavActivity$s)
.class final Lanimebestapp/com/ui/nav/NavActivity$s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$s;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lg/s/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lg/s/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class p1, Lanimebestapp/com/models/h;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/models/h;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->b(Lanimebestapp/com/models/h;)V

    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->D()Lanimebestapp/com/models/h;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Lanimebestapp/com/models/h;->d()I

    move-result p1

    const/16 v1, 0xa4

    if-le p1, v1, :cond_63

    new-instance p1, Lanimebestapp/com/ui/nav/c;

    iget-object v1, p0, Lanimebestapp/com/ui/nav/NavActivity$s;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->D()Lanimebestapp/com/models/h;

    move-result-object v2

    if-eqz v2, :cond_5f

    invoke-direct {p1, v1, v2}, Lanimebestapp/com/ui/nav/c;-><init>(Lanimebestapp/com/ui/nav/NavActivity;Lanimebestapp/com/models/h;)V

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/c;)V

    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->B()Lanimebestapp/com/ui/nav/c;

    move-result-object p1

    if-eqz p1, :cond_55

    new-instance v0, Lanimebestapp/com/ui/nav/NavActivity$s$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/NavActivity$s$a;-><init>(Lanimebestapp/com/ui/nav/NavActivity$s;)V

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/c;->a(Lg/p/a/a;)V

    :cond_55
    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->B()Lanimebestapp/com/ui/nav/c;

    move-result-object p1

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/c;->d()V

    goto :goto_6c

    :cond_5f
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_63
    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$s;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/NavActivity;)Lanimebestapp/com/ui/nav/e;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/e;->f()V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/NavActivity$s;->a([B)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.s.a (animebestapp.com.ui.nav.NavActivity$s$a)
.class final Lanimebestapp/com/ui/nav/NavActivity$s$a;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity$s;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/a<",
        "Lg/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity$s;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity$s;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$s$a;->b:Lanimebestapp/com/ui/nav/NavActivity$s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/NavActivity$s$a;->a()V

    sget-object v0, Lg/l;->a:Lg/l;

    return-object v0
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/NavActivity$s$a;->b:Lanimebestapp/com/ui/nav/NavActivity$s;

    iget-object v0, v0, Lanimebestapp/com/ui/nav/NavActivity$s;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/NavActivity;)Lanimebestapp/com/ui/nav/e;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/e;->f()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.t (animebestapp.com.ui.nav.NavActivity$t)
.class final Lanimebestapp/com/ui/nav/NavActivity$t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$t;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$t;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->a(Lanimebestapp/com/ui/nav/NavActivity;)Lanimebestapp/com/ui/nav/e;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/e;->f()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.u (animebestapp.com.ui.nav.NavActivity$u)
.class final Lanimebestapp/com/ui/nav/NavActivity$u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$u;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$u;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v0, Lanimebestapp/com/a;->btnBottomHome:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v0, "btnBottomHome"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$u;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->btnBottomSchedule:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v1, "btnBottomSchedule"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$u;->b:Lanimebestapp/com/ui/nav/NavActivity;

    const-string v0, "nav_favorite"

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->i(Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.v (animebestapp.com.ui.nav.NavActivity$v)
.class final Lanimebestapp/com/ui/nav/NavActivity$v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$v;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$v;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v0, Lanimebestapp/com/a;->btnBottomFavorites:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v0, "btnBottomFavorites"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$v;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->btnBottomSchedule:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v1, "btnBottomSchedule"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$v;->b:Lanimebestapp/com/ui/nav/NavActivity;

    const-string v0, "nav_home"

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->i(Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.w (animebestapp.com.ui.nav.NavActivity$w)
.class final Lanimebestapp/com/ui/nav/NavActivity$w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$w;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$w;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v0, Lanimebestapp/com/a;->btnBottomHome:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v0, "btnBottomHome"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$w;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->btnBottomFavorites:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v1, "btnBottomFavorites"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$w;->b:Lanimebestapp/com/ui/nav/NavActivity;

    const-string v0, "nav_schedule"

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->i(Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.x (animebestapp.com.ui.nav.NavActivity$x)
.class final Lanimebestapp/com/ui/nav/NavActivity$x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$x;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$x;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v0, Lanimebestapp/com/a;->drawerLayout:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$x;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->drawerLayout:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)V

    goto :goto_2e

    :cond_21
    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$x;->b:Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->drawerLayout:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->f(I)V

    :goto_2e
    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.y (animebestapp.com.ui.nav.NavActivity$y)
.class final Lanimebestapp/com/ui/nav/NavActivity$y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/NavActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$y;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$y;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/NavActivity;->b(Lanimebestapp/com/ui/nav/NavActivity;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$y;->b:Lanimebestapp/com/ui/nav/NavActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->d(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$y;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/NavActivity;->onBackPressed()V

    goto :goto_1f

    :cond_14
    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$y;->b:Lanimebestapp/com/ui/nav/NavActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/NavActivity;->d(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$y;->b:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/NavActivity;->A()V

    :goto_1f
    return-void
.end method

###### Class animebestapp.com.ui.nav.NavActivity.z (animebestapp.com.ui.nav.NavActivity$z)
.class final Lanimebestapp/com/ui/nav/NavActivity$z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/NavActivity;->j(Ljava/lang/String;)Le/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/NavActivity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/NavActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/NavActivity$z;->a:Lanimebestapp/com/ui/nav/NavActivity;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/NavActivity$z;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/a/i;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AnimeBest.apk"

    const-string v1, "it"

    invoke-static {p1, v1}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_9
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lanimebestapp/com/ui/nav/NavActivity$z;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    iget-object v5, p0, Lanimebestapp/com/ui/nav/NavActivity$z;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {v5}, Lanimebestapp/com/ui/nav/NavActivity;->y()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lanimebestapp/com/ui/nav/NavActivity$z;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {v6}, Lanimebestapp/com/ui/nav/NavActivity;->y()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lanimebestapp/com/ui/nav/NavActivity$z;->a:Lanimebestapp/com/ui/nav/NavActivity;

    invoke-virtual {v8}, Lanimebestapp/com/ui/nav/NavActivity;->y()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v6, "conn"

    invoke-static {v0, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    if-eqz v3, :cond_9b

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, 0x0

    :goto_69
    const/4 v8, -0x1

    if-eq v6, v8, :cond_7f

    add-int/2addr v7, v6

    mul-int/lit8 v8, v7, 0x64

    div-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Le/a/d;->a(Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v2, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    goto :goto_69

    :cond_7f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_85} :catch_a1
    .catchall {:try_start_9 .. :try_end_85} :catchall_9f

    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->C()Ljava/io/BufferedInputStream;

    move-result-object v0

    if-eqz v0, :cond_bd

    :try_start_8b
    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->C()Ljava/io/BufferedInputStream;

    move-result-object v0

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_bd

    :cond_95
    invoke-static {}, Lg/p/b/f;->a()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_98} :catch_99

    throw v1

    :catch_99
    move-exception v0

    goto :goto_ba

    :cond_9b
    :try_start_9b
    invoke-static {}, Lg/p/b/f;->a()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a1
    .catchall {:try_start_9b .. :try_end_9e} :catchall_9f

    throw v1

    :catchall_9f
    move-exception v0

    goto :goto_c8

    :catch_a1
    move-exception v0

    :try_start_a2
    invoke-interface {p1, v0}, Le/a/d;->a(Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_9f

    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->C()Ljava/io/BufferedInputStream;

    move-result-object v0

    if-eqz v0, :cond_bd

    :try_start_ab
    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->C()Ljava/io/BufferedInputStream;

    move-result-object v0

    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_bd

    :cond_b5
    invoke-static {}, Lg/p/b/f;->a()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b8} :catch_b9

    throw v1

    :catch_b9
    move-exception v0

    :goto_ba
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_bd
    :goto_bd
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/d;->a(Ljava/lang/Object;)V

    invoke-interface {p1}, Le/a/d;->onComplete()V

    return-void

    :goto_c8
    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->C()Ljava/io/BufferedInputStream;

    move-result-object v3

    if-eqz v3, :cond_e0

    :try_start_ce
    invoke-static {}, Lanimebestapp/com/ui/nav/NavActivity;->C()Ljava/io/BufferedInputStream;

    move-result-object v3

    if-nez v3, :cond_d8

    invoke-static {}, Lg/p/b/f;->a()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d7} :catch_dc

    throw v1

    :cond_d8
    :try_start_d8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_e0

    :catch_dc
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_e0
    :goto_e0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/d;->a(Ljava/lang/Object;)V

    invoke-interface {p1}, Le/a/d;->onComplete()V

    goto :goto_ec

    :goto_eb
    throw v0

    :goto_ec
    goto :goto_eb
.end method
