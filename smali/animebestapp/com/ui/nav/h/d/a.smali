###### Class animebestapp.com.ui.nav.h.d.a (animebestapp.com.ui.nav.h.d.a)
.class public final Lanimebestapp/com/ui/nav/h/d/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/h/d/a$a;
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

.field private final b:Lanimebestapp/com/ui/a/f/c;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/models/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanimebestapp/com/ui/a/f/c;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/ui/a/f/c;",
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/models/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/a;->b:Lanimebestapp/com/ui/a/f/c;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/h/d/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/d/a;)Lanimebestapp/com/ui/a/f/c;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/d/a;->b:Lanimebestapp/com/ui/a/f/c;

    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/a;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .registers 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lanimebestapp/com/ui/nav/h/d/a$a;

    if-nez v0, :cond_a

    return-void

    :cond_a
    move-object v0, p1

    check-cast v0, Lanimebestapp/com/ui/nav/h/d/a$a;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/d/a$a;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v1

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanimebestapp/com/models/e;

    invoke-virtual {v2}, Lanimebestapp/com/models/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v1

    invoke-static {}, Lc/a/a/r/f;->J()Lc/a/a/r/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object v1

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/d/a$a;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/d/a$a;->d()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanimebestapp/com/models/e;

    invoke-virtual {v2}, Lanimebestapp/com/models/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanimebestapp/com/models/e;

    invoke-virtual {v1}, Lanimebestapp/com/models/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_64

    goto :goto_66

    :cond_64
    const/4 v1, 0x0

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v1, 0x1

    :goto_67
    if-eqz v1, :cond_70

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/d/a$a;->c()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u041d\u0435 \u0437\u0430\u0434\u0430\u043d\u043d\u043e"

    goto :goto_80

    :cond_70
    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/d/a$a;->c()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanimebestapp/com/models/e;

    invoke-virtual {v2}, Lanimebestapp/com/models/e;->b()Ljava/lang/String;

    move-result-object v2

    :goto_80
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/d/a;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_c3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/d/a$a;->d()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/d/a$a;->d()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_9d

    const v4, 0x7f0500cb

    goto :goto_a0

    :cond_9d
    const v4, 0x7f0500ca

    :goto_a0
    invoke-static {v3, v4}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/d/a$a;->a()Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/d/a$a;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v1, :cond_b9

    const v1, 0x7f05001d

    goto :goto_bc

    :cond_b9
    const v1, 0x7f05001c

    :goto_bc
    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_c3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/a$b;

    invoke-direct {v0, p0, p2}, Lanimebestapp/com/ui/nav/h/d/a$b;-><init>(Lanimebestapp/com/ui/nav/h/d/a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .registers 6

    const-string p2, "parent"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lanimebestapp/com/ui/nav/h/d/a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026_schedule, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/nav/h/d/a$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

###### Class animebestapp.com.ui.nav.h.d.a.C0081a (animebestapp.com.ui.nav.h.d.a$a)
.class public final Lanimebestapp/com/ui/nav/h/d/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/h/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroidx/cardview/widget/CardView;


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

    const-string v1, "itemView.ivPreview"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/d/a$a;->a:Landroid/widget/ImageView;

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "itemView.tvTitle"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/d/a$a;->b:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->tvDate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "itemView.tvDate"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/d/a$a;->c:Landroid/widget/TextView;

    sget v0, Lanimebestapp/com/a;->card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    const-string v0, "itemView.card"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/a$a;->d:Landroidx/cardview/widget/CardView;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/cardview/widget/CardView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/a$a;->d:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public final b()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/a$a;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/a$a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/a$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

###### Class animebestapp.com.ui.nav.h.d.a.b (animebestapp.com.ui.nav.h.d.a$b)
.class final Lanimebestapp/com/ui/nav/h/d/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/d/a;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/d/a;I)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/a$b;->b:Lanimebestapp/com/ui/nav/h/d/a;

    iput p2, p0, Lanimebestapp/com/ui/nav/h/d/a$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/d/a$b;->b:Lanimebestapp/com/ui/nav/h/d/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/d/a;->a(Lanimebestapp/com/ui/nav/h/d/a;)Lanimebestapp/com/ui/a/f/c;

    move-result-object p1

    iget v0, p0, Lanimebestapp/com/ui/nav/h/d/a$b;->c:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lanimebestapp/com/ui/a/f/c;->a(ILanimebestapp/com/models/d;)V

    return-void
.end method
