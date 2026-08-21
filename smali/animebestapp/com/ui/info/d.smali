###### Class animebestapp.com.ui.info.d (animebestapp.com.ui.info.d)
.class public final Lanimebestapp/com/ui/info/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/info/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lanimebestapp/com/ui/info/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lanimebestapp/com/ui/a/f/c;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Lanimebestapp/com/ui/a/f/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lanimebestapp/com/ui/a/f/c;",
            ")V"
        }
    .end annotation

    const-string v0, "series"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/info/d;->b:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lanimebestapp/com/ui/info/d;->c:Lanimebestapp/com/ui/a/f/c;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/d;)Lanimebestapp/com/ui/a/f/c;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/d;->c:Lanimebestapp/com/ui/a/f/c;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/ui/info/d;->a:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/info/d;->a:I

    return-void
.end method

.method public a(Lanimebestapp/com/ui/info/d$a;)V
    .registers 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    return-void
.end method

.method public a(Lanimebestapp/com/ui/info/d$a;I)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/d$a;->a()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanimebestapp/com/ui/info/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "series.keys"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lg/m/j;->b(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u0441\u0435\u0440\u0438\u044f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lanimebestapp/com/ui/info/d;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lanimebestapp/com/ui/info/d$b;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/ui/info/d$b;-><init>(Lanimebestapp/com/ui/info/d;Lanimebestapp/com/ui/info/d$a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/info/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "series.keys"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lg/m/j;->b(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .registers 3

    check-cast p1, Lanimebestapp/com/ui/info/d$a;

    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/ui/info/d;->a(Lanimebestapp/com/ui/info/d$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/ui/info/d;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lanimebestapp/com/ui/info/d$a;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lanimebestapp/com/ui/info/d$a;
    .registers 6

    const-string p2, "parent"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lanimebestapp/com/ui/info/d$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026i_series2, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/info/d$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/d$a;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/d;->a(Lanimebestapp/com/ui/info/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.d.a (animebestapp.com.ui.info.d$a)
.class public final Lanimebestapp/com/ui/info/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/info/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iput-object v0, p0, Lanimebestapp/com/ui/info/d$a;->a:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->ivVisible:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    sget v0, Lanimebestapp/com/a;->vBottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    sget v0, Lanimebestapp/com/a;->vTop:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_30

    return-void

    :cond_30
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_34
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_38
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_3c
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/d$a;->a:Landroid/widget/TextView;

    return-object v0
.end method

###### Class animebestapp.com.ui.info.d.b (animebestapp.com.ui.info.d$b)
.class final Lanimebestapp/com/ui/info/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/d;->a(Lanimebestapp/com/ui/info/d$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/d;

.field final synthetic c:Lanimebestapp/com/ui/info/d$a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/d;Lanimebestapp/com/ui/info/d$a;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/info/d$b;->b:Lanimebestapp/com/ui/info/d;

    iput-object p2, p0, Lanimebestapp/com/ui/info/d$b;->c:Lanimebestapp/com/ui/info/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/d$b;->b:Lanimebestapp/com/ui/info/d;

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/d$b;->b:Lanimebestapp/com/ui/info/d;

    iget-object v1, p0, Lanimebestapp/com/ui/info/d$b;->c:Lanimebestapp/com/ui/info/d$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/d;->a(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/d$b;->b:Lanimebestapp/com/ui/info/d;

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/d$b;->b:Lanimebestapp/com/ui/info/d;

    invoke-static {v0}, Lanimebestapp/com/ui/info/d;->a(Lanimebestapp/com/ui/info/d;)Lanimebestapp/com/ui/a/f/c;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/info/d$b;->c:Lanimebestapp/com/ui/info/d$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lanimebestapp/com/ui/a/f/c;->a(ILanimebestapp/com/models/d;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
