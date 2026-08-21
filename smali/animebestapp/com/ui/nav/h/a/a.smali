###### Class animebestapp.com.ui.nav.h.a.a (animebestapp.com.ui.nav.h.a.a)
.class public abstract Lanimebestapp/com/ui/nav/h/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/h/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lanimebestapp/com/ui/nav/h/a/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/a;->a:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/a/a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/a/a;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Lanimebestapp/com/ui/nav/h/a/a$a;I)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/h/a/a$a;->a()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f;

    invoke-virtual {v1}, Lg/f;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lanimebestapp/com/ui/nav/h/a/a$b;

    invoke-direct {v0, p0, p2}, Lanimebestapp/com/ui/nav/h/a/a$b;-><init>(Lanimebestapp/com/ui/nav/h/a/a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    .registers 2

    return-void
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .registers 3

    check-cast p1, Lanimebestapp/com/ui/nav/h/a/a$a;

    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/ui/nav/h/a/a;->a(Lanimebestapp/com/ui/nav/h/a/a$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/ui/nav/h/a/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lanimebestapp/com/ui/nav/h/a/a$a;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lanimebestapp/com/ui/nav/h/a/a$a;
    .registers 6

    const-string p2, "parent"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lanimebestapp/com/ui/nav/h/a/a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026_category, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/nav/h/a/a$a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_22
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

###### Class animebestapp.com.ui.nav.h.a.a.C0066a (animebestapp.com.ui.nav.h.a.a$a)
.class public final Lanimebestapp/com/ui/nav/h/a/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/a$a;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/a$a;->a:Landroid/widget/TextView;

    return-object v0
.end method

###### Class animebestapp.com.ui.nav.h.a.a.b (animebestapp.com.ui.nav.h.a.a$b)
.class final Lanimebestapp/com/ui/nav/h/a/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/a;->a(Lanimebestapp/com/ui/nav/h/a/a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/a/a;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/a/a;I)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/a$b;->b:Lanimebestapp/com/ui/nav/h/a/a;

    iput p2, p0, Lanimebestapp/com/ui/nav/h/a/a$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/a/a$b;->b:Lanimebestapp/com/ui/nav/h/a/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/a/a;->a(Lanimebestapp/com/ui/nav/h/a/a;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lanimebestapp/com/ui/nav/h/a/a$b;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/f;

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/h/a/a;->a(Lg/f;)V

    return-void
.end method
