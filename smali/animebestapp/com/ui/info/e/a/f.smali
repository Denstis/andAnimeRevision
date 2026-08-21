###### Class animebestapp.com.ui.info.e.a.f (animebestapp.com.ui.info.e.a.f)
.class public final Lanimebestapp/com/ui/info/e/a/f;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/info/e/a/f$b;,
        Lanimebestapp/com/ui/info/e/a/f$a;,
        Lanimebestapp/com/ui/info/e/a/f$c;
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
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Z

.field private final e:Lanimebestapp/com/models/Anime;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanimebestapp/com/models/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lanimebestapp/com/ui/info/e/a/c;


# direct methods
.method public constructor <init>(Lanimebestapp/com/models/Anime;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lanimebestapp/com/ui/info/e/a/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/models/Anime;",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/a;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lanimebestapp/com/ui/info/e/a/c;",
            ")V"
        }
    .end annotation

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rvList"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "presenter"

    invoke-static {p4, p3}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    iput-object p2, p0, Lanimebestapp/com/ui/info/e/a/f;->f:Ljava/util/List;

    iput-object p4, p0, Lanimebestapp/com/ui/info/e/a/f;->g:Lanimebestapp/com/ui/info/e/a/c;

    const/4 p1, 0x1

    iput p1, p0, Lanimebestapp/com/ui/info/e/a/f;->a:I

    const/4 p2, 0x2

    iput p2, p0, Lanimebestapp/com/ui/info/e/a/f;->b:I

    const/4 p2, 0x3

    iput p2, p0, Lanimebestapp/com/ui/info/e/a/f;->c:I

    iput-boolean p1, p0, Lanimebestapp/com/ui/info/e/a/f;->d:Z

    return-void
.end method

.method static synthetic a(Lanimebestapp/com/ui/info/e/a/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-direct {p0, p1, p2}, Lanimebestapp/com/ui/info/e/a/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "null cannot be cast to non-null type android.text.SpannableStringBuilder"

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_22

    invoke-static {p1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    if-eqz p1, :cond_1c

    check-cast p1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v2, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "(Html.fromHtml(html, Htm\u2026ete(0, offset).toString()"

    goto :goto_34

    :cond_1c
    new-instance p1, Lg/j;

    invoke-direct {p1, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    if-eqz p1, :cond_38

    check-cast p1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v2, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "(Html.fromHtml(html) as \u2026ete(0, offset).toString()"

    :goto_34
    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_38
    new-instance p1, Lg/j;

    invoke-direct {p1, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a()V
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/ui/info/e/a/f;->d:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lanimebestapp/com/ui/info/e/a/f;->d:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/e/a/f;)V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/a/f;->a()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    if-nez p1, :cond_5

    iget p1, p0, Lanimebestapp/com/ui/info/e/a/f;->a:I

    goto :goto_d

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget p1, p0, Lanimebestapp/com/ui/info/e/a/f;->b:I

    goto :goto_d

    :cond_b
    iget p1, p0, Lanimebestapp/com/ui/info/e/a/f;->c:I

    :goto_d
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lanimebestapp/com/ui/info/e/a/f$c;

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_10a

    iget-object p2, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getScreen()Ljava/util/List;

    move-result-object p2

    check-cast p1, Lanimebestapp/com/ui/info/e/a/f$c;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->b()Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v5}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v5

    iget-object v6, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {v6}, Lanimebestapp/com/models/Anime;->getPoster()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v5

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->b()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_8e

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->c()Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v5}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v5

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v3

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->c()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v3, v5}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_6f

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->e()Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v1

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->e()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    :cond_6f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_8e

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->d()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object p2

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->d()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2, v1}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    :cond_8e
    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->i()Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {v1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v1

    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Lanimebestapp/com/models/XFields;->getYear()Ljava/lang/String;

    move-result-object v1

    goto :goto_a0

    :cond_9f
    move-object v1, v4

    :goto_a0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->j()Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {v1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v1

    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Lanimebestapp/com/models/XFields;->getType()Ljava/lang/String;

    move-result-object v1

    goto :goto_b5

    :cond_b4
    move-object v1, v4

    :goto_b5
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->f()Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {v1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v1

    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Lanimebestapp/com/models/XFields;->getGenre()Ljava/lang/String;

    move-result-object v1

    goto :goto_ca

    :cond_c9
    move-object v1, v4

    :goto_ca
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->h()Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {v1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v1

    if-eqz v1, :cond_dd

    invoke-virtual {v1}, Lanimebestapp/com/models/XFields;->getDirector()Ljava/lang/String;

    move-result-object v4

    :cond_dd
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->g()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {p2}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object p2

    if-eqz p2, :cond_fc

    invoke-virtual {p2}, Lanimebestapp/com/models/XFields;->getNames()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_fc

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->g()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_fc
    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$c;->a()Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/ui/info/e/a/f$d;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/info/e/a/f$d;-><init>(Lanimebestapp/com/ui/info/e/a/f;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_233

    :cond_10a
    instance-of p2, p1, Lanimebestapp/com/ui/info/e/a/f$b;

    if-eqz p2, :cond_21d

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v5, "holder.itemView"

    invoke-static {p2, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object p2, p1

    check-cast p2, Lanimebestapp/com/ui/info/e/a/f$b;

    invoke-virtual {p2}, Lanimebestapp/com/ui/info/e/a/f$b;->b()Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {v7}, Lanimebestapp/com/models/Anime;->getFull_story()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v3, v2, v4}, Lanimebestapp/com/ui/info/e/a/f;->a(Lanimebestapp/com/ui/info/e/a/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lanimebestapp/com/ui/info/e/a/f$b;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v6

    new-instance v7, Lanimebestapp/com/ui/info/e/a/a;

    iget-object v8, p0, Lanimebestapp/com/ui/info/e/a/f;->f:Ljava/util/List;

    iget-object v9, p0, Lanimebestapp/com/ui/info/e/a/f;->g:Lanimebestapp/com/ui/info/e/a/c;

    invoke-direct {v7, v8, v9}, Lanimebestapp/com/ui/info/e/a/a;-><init>(Ljava/util/List;Lanimebestapp/com/ui/info/e/a/c;)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {p2}, Lanimebestapp/com/ui/info/e/a/f$b;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v6, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v7, Lanimebestapp/com/a;->btnDescription:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const-string v7, "holder.itemView.btnDescription"

    invoke-static {v6, v7}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setActivated(Z)V

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v6, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v8, Lanimebestapp/com/a;->dividerAnime:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v8, "#616263"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v6, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v8, Lanimebestapp/com/a;->dividerDesc:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v8, "#0073aa"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, p0, Lanimebestapp/com/ui/info/e/a/f;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1e1

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v6, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v8, Lanimebestapp/com/a;->btnAnime:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const-string v8, "holder.itemView.btnAnime"

    invoke-static {v6, v8}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {v6, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v8, Lanimebestapp/com/a;->btnDescription:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-static {v6, v7}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {v7}, Lanimebestapp/com/models/Anime;->getFull_story()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v3, v2, v4}, Lanimebestapp/com/ui/info/e/a/f;->a(Lanimebestapp/com/ui/info/e/a/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x9

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2}, Lanimebestapp/com/ui/info/e/a/f$b;->b()Landroid/widget/TextView;

    move-result-object p2

    goto :goto_1ef

    :cond_1e1
    invoke-virtual {p2}, Lanimebestapp/com/ui/info/e/a/f$b;->b()Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f;->e:Lanimebestapp/com/models/Anime;

    invoke-virtual {v0}, Lanimebestapp/com/models/Anime;->getFull_story()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v4}, Lanimebestapp/com/ui/info/e/a/f;->a(Lanimebestapp/com/ui/info/e/a/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1ef
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p2, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->btnAnime:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v0, Lanimebestapp/com/ui/info/e/a/f$e;

    invoke-direct {v0, p1}, Lanimebestapp/com/ui/info/e/a/f$e;-><init>(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p2, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->btnDescription:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v0, Lanimebestapp/com/ui/info/e/a/f$f;

    invoke-direct {v0, p1}, Lanimebestapp/com/ui/info/e/a/f$f;-><init>(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_233

    :cond_21d
    instance-of p2, p1, Lanimebestapp/com/ui/info/e/a/f$a;

    if-eqz p2, :cond_233

    check-cast p1, Lanimebestapp/com/ui/info/e/a/f$a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$a;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/ui/info/e/a/a;

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f;->f:Ljava/util/List;

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/a/f;->g:Lanimebestapp/com/ui/info/e/a/c;

    invoke-direct {p2, v0, v1}, Lanimebestapp/com/ui/info/e/a/a;-><init>(Ljava/util/List;Lanimebestapp/com/ui/info/e/a/c;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_233
    :goto_233
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .registers 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lanimebestapp/com/ui/info/e/a/f;->a:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_24

    new-instance p2, Lanimebestapp/com/ui/info/e/a/f$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0088

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026.view_top, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/info/e/a/f$c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_24
    iget v0, p0, Lanimebestapp/com/ui/info/e/a/f;->b:I

    if-ne p2, v0, :cond_42

    new-instance p2, Lanimebestapp/com/ui/info/e/a/f$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0083

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026tion_tabs, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/info/e/a/f$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_42
    new-instance p2, Lanimebestapp/com/ui/info/e/a/f$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0080

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ew_bottom, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/info/e/a/f$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

###### Class animebestapp.com.ui.info.e.a.f.a (animebestapp.com.ui.info.e.a.f$a)
.class public final Lanimebestapp/com/ui/info/e/a/f$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/info/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget v0, Lanimebestapp/com/a;->rvAnimeList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_15

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    :cond_15
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

###### Class animebestapp.com.ui.info.e.a.f.b (animebestapp.com.ui.info.e.a.f$b)
.class public final Lanimebestapp/com/ui/info/e/a/f$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/info/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget v0, Lanimebestapp/com/a;->tvDescription:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$b;->a:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->rvAnimeList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_22

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    :cond_22
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_26
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method


# virtual methods
.method public final a()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$b;->a:Landroid/widget/TextView;

    return-object v0
.end method

###### Class animebestapp.com.ui.info.e.a.f.c (animebestapp.com.ui.info.e.a.f$c)
.class public final Lanimebestapp/com/ui/info/e/a/f$c;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/info/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget v0, Lanimebestapp/com/a;->ivPost:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_b4

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->a:Landroid/widget/ImageView;

    sget v0, Lanimebestapp/com/a;->ivScreenThree:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_b0

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->b:Landroid/widget/ImageView;

    sget v0, Lanimebestapp/com/a;->ivScreenTwo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_ac

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->c:Landroid/widget/ImageView;

    sget v0, Lanimebestapp/com/a;->ivScreenOne:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_a8

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->d:Landroid/widget/ImageView;

    sget v0, Lanimebestapp/com/a;->tvRelease:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a4

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->e:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->tvType:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a0

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->f:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->tvGenre:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_9c

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->g:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->tvProducer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_98

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->h:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->btnOpen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_94

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->i:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->tvRating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_90

    sget v0, Lanimebestapp/com/a;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8c

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$c;->j:Landroid/widget/TextView;

    return-void

    :cond_8c
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_90
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_94
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_98
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_9c
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_a0
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_a4
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_a8
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_ac
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_b0
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_b4
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final d()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final e()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final f()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public final g()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public final h()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public final i()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final j()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/f$c;->f:Landroid/widget/TextView;

    return-object v0
.end method

###### Class animebestapp.com.ui.info.e.a.f.d (animebestapp.com.ui.info.e.a.f$d)
.class final Lanimebestapp/com/ui/info/e/a/f$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/f;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/a/f;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/a/f;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$d;->b:Lanimebestapp/com/ui/info/e/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$d;->b:Lanimebestapp/com/ui/info/e/a/f;

    invoke-static {p1}, Lanimebestapp/com/ui/info/e/a/f;->a(Lanimebestapp/com/ui/info/e/a/f;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.f.e (animebestapp.com.ui.info.e.a.f$e)
.class final Lanimebestapp/com/ui/info/e/a/f$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/f;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView$d0;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    check-cast p1, Lanimebestapp/com/ui/info/e/a/f$b;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$b;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lanimebestapp/com/a;->dividerAnime:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "#0073aa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lanimebestapp/com/a;->dividerDesc:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "#616263"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lanimebestapp/com/a;->btnDescription:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v2, "holder.itemView.btnDescription"

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lanimebestapp/com/a;->dividerDesc:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "holder.itemView.dividerDesc"

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->btnAnime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "holder.itemView.btnAnime"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lanimebestapp/com/a;->dividerAnime:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "holder.itemView.dividerAnime"

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$e;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->viewFlipper:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewSwitcher;

    const-string v1, "holder.itemView.viewFlipper"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.f.ViewOnClickListenerC0056f (animebestapp.com.ui.info.e.a.f$f)
.class final Lanimebestapp/com/ui/info/e/a/f$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/f;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView$d0;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$f;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$f;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lanimebestapp/com/a;->btnAnime:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v1, "holder.itemView.btnAnime"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$f;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lanimebestapp/com/a;->dividerAnime:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "#616263"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$f;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lanimebestapp/com/a;->dividerDesc:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "#0073aa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$f;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lanimebestapp/com/a;->btnDescription:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v2, "holder.itemView.btnDescription"

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$f;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lanimebestapp/com/a;->dividerDesc:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v3, "holder.itemView.dividerDesc"

    invoke-static {p1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$f;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    check-cast p1, Lanimebestapp/com/ui/info/e/a/f$b;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/f$b;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/f$f;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->viewFlipper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewSwitcher;

    const-string v0, "holder.itemView.viewFlipper"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    return-void
.end method
