###### Class animebestapp.com.ui.info.e.a.a (animebestapp.com.ui.info.e.a.a)
.class public final Lanimebestapp/com/ui/info/e/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/info/e/a/a$a;
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
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanimebestapp/com/models/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lanimebestapp/com/ui/info/e/a/c;


# direct methods
.method public constructor <init>(Ljava/util/List;Lanimebestapp/com/ui/info/e/a/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/a;",
            ">;",
            "Lanimebestapp/com/ui/info/e/a/c;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenter"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/a;->a:Ljava/util/List;

    iput-object p2, p0, Lanimebestapp/com/ui/info/e/a/a;->b:Lanimebestapp/com/ui/info/e/a/c;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/e/a/a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/e/a/a;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a()Lanimebestapp/com/ui/info/e/a/c;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/a;->b:Lanimebestapp/com/ui/info/e/a/c;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .registers 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_67

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanimebestapp/com/ui/info/e/a/a;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanimebestapp/com/models/a;

    invoke-virtual {v2}, Lanimebestapp/com/models/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/models/a;

    invoke-virtual {v0}, Lanimebestapp/com/models/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_51

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lanimebestapp/com/ui/info/e/a/a$b;

    invoke-direct {v0, p0, p2}, Lanimebestapp/com/ui/info/e/a/a$b;-><init>(Lanimebestapp/com/ui/info/e/a/a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_66

    :cond_51
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_66
    return-void

    :cond_67
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .registers 6

    const-string p2, "parent"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lanimebestapp/com/ui/info/e/a/a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026e_consist, parent, false)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/info/e/a/a$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

###### Class animebestapp.com.ui.info.e.a.a.C0052a (animebestapp.com.ui.info.e.a.a$a)
.class public final Lanimebestapp/com/ui/info/e/a/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/info/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.a.b (animebestapp.com.ui.info.e.a.a$b)
.class final Lanimebestapp/com/ui/info/e/a/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/a/a;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/a/a;I)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/a$b;->b:Lanimebestapp/com/ui/info/e/a/a;

    iput p2, p0, Lanimebestapp/com/ui/info/e/a/a$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/a$b;->b:Lanimebestapp/com/ui/info/e/a/a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/a;->a()Lanimebestapp/com/ui/info/e/a/c;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/a$b;->b:Lanimebestapp/com/ui/info/e/a/a;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/a/a;->a(Lanimebestapp/com/ui/info/e/a/a;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lanimebestapp/com/ui/info/e/a/a$b;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/models/a;

    invoke-virtual {v0}, Lanimebestapp/com/models/a;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lanimebestapp/com/ui/info/e/a/c;->a(J)V

    return-void
.end method
