###### Class animebestapp.com.ui.a.d (animebestapp.com.ui.a.d)
.class public final Lanimebestapp/com/ui/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/a/d$d;,
        Lanimebestapp/com/ui/a/d$a;,
        Lanimebestapp/com/ui/a/d$b;,
        Lanimebestapp/com/ui/a/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanimebestapp/com/models/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lanimebestapp/com/ui/a/d$c;

.field private final e:Lanimebestapp/com/ui/a/f/c;


# direct methods
.method public constructor <init>(Lanimebestapp/com/ui/a/f/c;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/a/d;->e:Lanimebestapp/com/ui/a/f/c;

    const p1, 0x7f0b0055

    iput p1, p0, Lanimebestapp/com/ui/a/d;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/a/d;->c:Ljava/util/List;

    sget-object p1, Lanimebestapp/com/ui/a/d$c;->c:Lanimebestapp/com/ui/a/d$c;

    iput-object p1, p0, Lanimebestapp/com/ui/a/d;->d:Lanimebestapp/com/ui/a/d$c;

    return-void
.end method

.method private final a(Lanimebestapp/com/ui/a/d$a;Lanimebestapp/com/models/Anime;)V
    .registers 8

    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getPoster()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->e()Landroid/widget/TextView;

    move-result-object v1

    if-nez v0, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    :cond_27
    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_2b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/p/c/u;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v3, "holder.itemView"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "holder.itemView.context"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/p/c/u;-><init>(I)V

    invoke-static {v1}, Lc/a/a/r/f;->b(Lcom/bumptech/glide/load/l;)Lc/a/a/r/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object v0

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getRating()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/internal/LinkedTreeMap;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_9f

    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getRating()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_97

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    const-string v3, "total_rate"

    invoke-virtual {v0, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a6

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->c()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a6

    :cond_97
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type com.google.gson.internal.LinkedTreeMap<kotlin.String, kotlin.Any>"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9f
    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a6
    :goto_a6
    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v0

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getSeria()Ljava/lang/String;

    move-result-object v0

    :cond_b0
    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v3, "7"

    invoke-static {v0, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e8

    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v0

    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getSeria()Ljava/lang/String;

    move-result-object v0

    goto :goto_ca

    :cond_c9
    const/4 v0, 0x0

    :goto_ca
    if-eqz v0, :cond_e0

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v1

    invoke-virtual {v1}, Lanimebestapp/com/models/XFields;->getSeria()Ljava/lang/String;

    move-result-object v1

    goto :goto_f5

    :cond_e0
    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f8

    :cond_e8
    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->d()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    :goto_f5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f8
    iget-object v0, p0, Lanimebestapp/com/ui/a/d;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_138

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->e()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->e()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_112

    const v3, 0x7f0500cb

    goto :goto_115

    :cond_112
    const v3, 0x7f0500ca

    :goto_115
    invoke-static {v2, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->e()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$a;->e()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_12e

    const v0, 0x7f05001d

    goto :goto_131

    :cond_12e
    const v0, 0x7f05001c

    :goto_131
    invoke-static {v2, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_138
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lanimebestapp/com/ui/a/d$e;

    invoke-direct {v1, p0, p1, p2}, Lanimebestapp/com/ui/a/d$e;-><init>(Lanimebestapp/com/ui/a/d;Lanimebestapp/com/ui/a/d$a;Lanimebestapp/com/models/Anime;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final a(Lanimebestapp/com/ui/a/d$b;Lanimebestapp/com/models/News;)V
    .registers 7

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$b;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lanimebestapp/com/models/News;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$b;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {p2}, Lanimebestapp/com/models/News;->getPoster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/p/c/u;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v3, "holder.itemView"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "holder.itemView.context"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/p/c/u;-><init>(I)V

    invoke-static {v1}, Lc/a/a/r/f;->b(Lcom/bumptech/glide/load/l;)Lc/a/a/r/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object v0

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d$b;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lanimebestapp/com/ui/a/d$f;

    invoke-direct {v1, p0, p1, p2}, Lanimebestapp/com/ui/a/d$f;-><init>(Lanimebestapp/com/ui/a/d;Lanimebestapp/com/ui/a/d$b;Lanimebestapp/com/models/News;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/a/d;->b:I

    return-void
.end method

.method public final a(Lanimebestapp/com/ui/a/d$c;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/ui/a/d;->d:Lanimebestapp/com/ui/a/d$c;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lanimebestapp/com/models/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_f

    sget-object v0, Lanimebestapp/com/ui/a/d$c;->b:Lanimebestapp/com/ui/a/d$c;

    goto :goto_11

    :cond_f
    sget-object v0, Lanimebestapp/com/ui/a/d$c;->c:Lanimebestapp/com/ui/a/d$c;

    :goto_11
    iput-object v0, p0, Lanimebestapp/com/ui/a/d;->d:Lanimebestapp/com/ui/a/d$c;

    iget-object v0, p0, Lanimebestapp/com/ui/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lanimebestapp/com/ui/a/d;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()Lanimebestapp/com/ui/a/f/c;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/d;->e:Lanimebestapp/com/ui/a/f/c;

    return-object v0
.end method

.method public getItemCount()I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lanimebestapp/com/ui/a/d;->d:Lanimebestapp/com/ui/a/d$c;

    sget-object v2, Lanimebestapp/com/ui/a/d$c;->b:Lanimebestapp/com/ui/a/d$c;

    if-ne v1, v2, :cond_e

    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    const/4 v1, 0x1

    :goto_f
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/models/d;

    invoke-interface {p1}, Lanimebestapp/com/models/d;->getIdModel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x0

    goto :goto_17

    :cond_a
    iget-object v0, p0, Lanimebestapp/com/ui/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lanimebestapp/com/models/Anime;

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x2

    :goto_17
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .registers 4

    const-string p2, "holder"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lanimebestapp/com/ui/a/d$b;

    if-eqz p2, :cond_25

    check-cast p1, Lanimebestapp/com/ui/a/d$b;

    iget-object p2, p0, Lanimebestapp/com/ui/a/d;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1d

    check-cast p2, Lanimebestapp/com/models/News;

    invoke-direct {p0, p1, p2}, Lanimebestapp/com/ui/a/d;->a(Lanimebestapp/com/ui/a/d$b;Lanimebestapp/com/models/News;)V

    goto :goto_5d

    :cond_1d
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type animebestapp.com.models.News"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    instance-of p2, p1, Lanimebestapp/com/ui/a/d$a;

    if-eqz p2, :cond_45

    check-cast p1, Lanimebestapp/com/ui/a/d$a;

    iget-object p2, p0, Lanimebestapp/com/ui/a/d;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3d

    check-cast p2, Lanimebestapp/com/models/Anime;

    invoke-direct {p0, p1, p2}, Lanimebestapp/com/ui/a/d;->a(Lanimebestapp/com/ui/a/d$a;Lanimebestapp/com/models/Anime;)V

    goto :goto_5d

    :cond_3d
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type animebestapp.com.models.Anime"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    instance-of p2, p1, Lanimebestapp/com/ui/a/d$d;

    if-eqz p2, :cond_5d

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lanimebestapp/com/ui/a/d;->d:Lanimebestapp/com/ui/a/d$c;

    sget-object v0, Lanimebestapp/com/ui/a/d$c;->b:Lanimebestapp/com/ui/a/d$c;

    if-ne p2, v0, :cond_59

    const/16 p2, 0x8

    goto :goto_5a

    :cond_59
    const/4 p2, 0x0

    :goto_5a
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .registers 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LayoutInflater.from(pare\u2026te(layout, parent, false)"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_22

    new-instance p2, Lanimebestapp/com/ui/a/d$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lanimebestapp/com/ui/a/d;->b:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/a/d$a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_22
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3c

    new-instance p2, Lanimebestapp/com/ui/a/d$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lanimebestapp/com/ui/a/d;->b:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/a/d$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_3c
    new-instance p2, Lanimebestapp/com/ui/a/d$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026_progress, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/a/d$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method

###### Class animebestapp.com.ui.a.d.a (animebestapp.com.ui.a.d$a)
.class public final Lanimebestapp/com/ui/a/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/LinearLayout;

.field private final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget v0, Lanimebestapp/com/a;->ivPreview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    iput-object v0, p0, Lanimebestapp/com/ui/a/d$a;->a:Landroid/widget/ImageView;

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_52

    iput-object v0, p0, Lanimebestapp/com/ui/a/d$a;->b:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->tvRating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4e

    iput-object v0, p0, Lanimebestapp/com/ui/a/d$a;->c:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->llRaiting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4a

    iput-object v0, p0, Lanimebestapp/com/ui/a/d$a;->d:Landroid/widget/LinearLayout;

    sget v0, Lanimebestapp/com/a;->tvSeriaLast:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_46

    iput-object p1, p0, Lanimebestapp/com/ui/a/d$a;->e:Landroid/widget/TextView;

    return-void

    :cond_46
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_4a
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_4e
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_52
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_56
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/d$a;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/d$a;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/d$a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/d$a;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/d$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

###### Class animebestapp.com.ui.a.d.b (animebestapp.com.ui.a.d$b)
.class public final Lanimebestapp/com/ui/a/d$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget v0, Lanimebestapp/com/a;->ivPreview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iput-object v0, p0, Lanimebestapp/com/ui/a/d$b;->a:Landroid/widget/ImageView;

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4c

    iput-object v0, p0, Lanimebestapp/com/ui/a/d$b;->b:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->tvRating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_48

    sget v0, Lanimebestapp/com/a;->llRaiting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_44

    sget v0, Lanimebestapp/com/a;->tvSeriaLast:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_40

    return-void

    :cond_40
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_44
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_48
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_4c
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_50
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/d$b;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/d$b;->b:Landroid/widget/TextView;

    return-object v0
.end method

###### Class animebestapp.com.ui.a.d.c (animebestapp.com.ui.a.d$c)
.class public final enum Lanimebestapp/com/ui/a/d$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanimebestapp/com/ui/a/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lanimebestapp/com/ui/a/d$c;

.field public static final enum c:Lanimebestapp/com/ui/a/d$c;

.field private static final synthetic d:[Lanimebestapp/com/ui/a/d$c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Lanimebestapp/com/ui/a/d$c;

    new-instance v1, Lanimebestapp/com/ui/a/d$c;

    const/4 v2, 0x0

    const-string v3, "LOADING"

    invoke-direct {v1, v3, v2}, Lanimebestapp/com/ui/a/d$c;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/ui/a/d$c;

    const/4 v2, 0x1

    const-string v3, "FINISH"

    invoke-direct {v1, v3, v2}, Lanimebestapp/com/ui/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lanimebestapp/com/ui/a/d$c;->b:Lanimebestapp/com/ui/a/d$c;

    aput-object v1, v0, v2

    new-instance v1, Lanimebestapp/com/ui/a/d$c;

    const/4 v2, 0x2

    const-string v3, "PROGRESS"

    invoke-direct {v1, v3, v2}, Lanimebestapp/com/ui/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lanimebestapp/com/ui/a/d$c;->c:Lanimebestapp/com/ui/a/d$c;

    aput-object v1, v0, v2

    sput-object v0, Lanimebestapp/com/ui/a/d$c;->d:[Lanimebestapp/com/ui/a/d$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanimebestapp/com/ui/a/d$c;
    .registers 2

    const-class v0, Lanimebestapp/com/ui/a/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanimebestapp/com/ui/a/d$c;

    return-object p0
.end method

.method public static values()[Lanimebestapp/com/ui/a/d$c;
    .registers 1

    sget-object v0, Lanimebestapp/com/ui/a/d$c;->d:[Lanimebestapp/com/ui/a/d$c;

    invoke-virtual {v0}, [Lanimebestapp/com/ui/a/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanimebestapp/com/ui/a/d$c;

    return-object v0
.end method

###### Class animebestapp.com.ui.a.d.C0038d (animebestapp.com.ui.a.d$d)
.class public final Lanimebestapp/com/ui/a/d$d;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    return-void
.end method

###### Class animebestapp.com.ui.a.d.e (animebestapp.com.ui.a.d$e)
.class final Lanimebestapp/com/ui/a/d$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/a/d;->a(Lanimebestapp/com/ui/a/d$a;Lanimebestapp/com/models/Anime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/a/d;

.field final synthetic c:Lanimebestapp/com/ui/a/d$a;

.field final synthetic d:Lanimebestapp/com/models/Anime;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/a/d;Lanimebestapp/com/ui/a/d$a;Lanimebestapp/com/models/Anime;)V
    .registers 4

    iput-object p1, p0, Lanimebestapp/com/ui/a/d$e;->b:Lanimebestapp/com/ui/a/d;

    iput-object p2, p0, Lanimebestapp/com/ui/a/d$e;->c:Lanimebestapp/com/ui/a/d$a;

    iput-object p3, p0, Lanimebestapp/com/ui/a/d$e;->d:Lanimebestapp/com/models/Anime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/a/d$e;->b:Lanimebestapp/com/ui/a/d;

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d;->b()Lanimebestapp/com/ui/a/f/c;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/a/d$e;->c:Lanimebestapp/com/ui/a/d$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lanimebestapp/com/ui/a/d$e;->d:Lanimebestapp/com/models/Anime;

    invoke-interface {p1, v0, v1}, Lanimebestapp/com/ui/a/f/c;->a(ILanimebestapp/com/models/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.a.d.f (animebestapp.com.ui.a.d$f)
.class final Lanimebestapp/com/ui/a/d$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/a/d;->a(Lanimebestapp/com/ui/a/d$b;Lanimebestapp/com/models/News;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/a/d;

.field final synthetic c:Lanimebestapp/com/ui/a/d$b;

.field final synthetic d:Lanimebestapp/com/models/News;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/a/d;Lanimebestapp/com/ui/a/d$b;Lanimebestapp/com/models/News;)V
    .registers 4

    iput-object p1, p0, Lanimebestapp/com/ui/a/d$f;->b:Lanimebestapp/com/ui/a/d;

    iput-object p2, p0, Lanimebestapp/com/ui/a/d$f;->c:Lanimebestapp/com/ui/a/d$b;

    iput-object p3, p0, Lanimebestapp/com/ui/a/d$f;->d:Lanimebestapp/com/models/News;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/a/d$f;->b:Lanimebestapp/com/ui/a/d;

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/d;->b()Lanimebestapp/com/ui/a/f/c;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/a/d$f;->c:Lanimebestapp/com/ui/a/d$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lanimebestapp/com/ui/a/d$f;->d:Lanimebestapp/com/models/News;

    invoke-interface {p1, v0, v1}, Lanimebestapp/com/ui/a/f/c;->a(ILanimebestapp/com/models/d;)V

    return-void
.end method
