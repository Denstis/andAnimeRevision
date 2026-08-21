###### Class animebestapp.com.ui.nav.h.a.b (animebestapp.com.ui.nav.h.a.b)
.class public abstract Lanimebestapp/com/ui/nav/h/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroidx/appcompat/app/c;

.field private final b:Lanimebestapp/com/ui/nav/h/a/a;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0039

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "view"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->cvContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    iput-object v1, p0, Lanimebestapp/com/ui/nav/h/a/b;->c:Landroid/view/View;

    sget v1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    sget v2, Lanimebestapp/com/a;->btnClose:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Landroidx/appcompat/app/c$a;

    invoke-direct {v3, p1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/c$a;->b(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    invoke-virtual {v3}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object v3

    const-string v4, "AlertDialog.Builder(cont\u2026                .create()"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lanimebestapp/com/ui/nav/h/a/b;->a:Landroidx/appcompat/app/c;

    sget v3, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lanimebestapp/com/ui/nav/h/a/b$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/h/a/b$a;-><init>(Lanimebestapp/com/ui/nav/h/a/b;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "rvList"

    invoke-static {v1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const v2, 0x7f0e0077

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7a

    const/4 p3, 0x3

    goto :goto_7b

    :cond_7a
    const/4 p3, 0x2

    :goto_7b
    invoke-direct {v0, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    new-instance p1, Lanimebestapp/com/ui/nav/h/a/b$b;

    invoke-direct {p1, p0, p2, p2}, Lanimebestapp/com/ui/nav/h/a/b$b;-><init>(Lanimebestapp/com/ui/nav/h/a/b;Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/b;->b:Lanimebestapp/com/ui/nav/h/a/a;

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/a/b;->b:Lanimebestapp/com/ui/nav/h/a/a;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/a/b;)Landroidx/appcompat/app/c;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/a/b;->a:Landroidx/appcompat/app/c;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/b;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public abstract a(Lg/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/b;->b:Lanimebestapp/com/ui/nav/h/a/a;

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/nav/h/a/a;->a(Z)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/b;->c:Landroid/view/View;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_f

    const p1, 0x7f050027

    goto :goto_12

    :cond_f
    const p1, 0x7f050026

    :goto_12
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_15
    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/b;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/b;->a:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_d
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.a.b.a (animebestapp.com.ui.nav.h.a.b$a)
.class final Lanimebestapp/com/ui/nav/h/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/a/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/a/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/b$a;->b:Lanimebestapp/com/ui/nav/h/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/a/b$a;->b:Lanimebestapp/com/ui/nav/h/a/b;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/a/b;->a(Lanimebestapp/com/ui/nav/h/a/b;)Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.a.b.C0067b (animebestapp.com.ui.nav.h.a.b$b)
.class public final Lanimebestapp/com/ui/nav/h/a/b$b;
.super Lanimebestapp/com/ui/nav/h/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/a/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/a/b;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/b$b;->b:Lanimebestapp/com/ui/nav/h/a/b;

    invoke-direct {p0, p3}, Lanimebestapp/com/ui/nav/h/a/a;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lg/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/b$b;->b:Lanimebestapp/com/ui/nav/h/a/b;

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/nav/h/a/b;->a(Lg/f;)V

    return-void
.end method
