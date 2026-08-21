###### Class animebestapp.com.ui.comments.CommentsActivity (animebestapp.com.ui.comments.CommentsActivity)
.class public final Lanimebestapp/com/ui/comments/CommentsActivity;
.super Lanimebestapp/com/ui/a/a;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/comments/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/a<",
        "Lanimebestapp/com/ui/comments/d;",
        "Lanimebestapp/com/ui/comments/b;",
        ">;",
        "Lanimebestapp/com/ui/comments/d;"
    }
.end annotation


# instance fields
.field private final t:Lanimebestapp/com/ui/comments/a;

.field private u:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/a/a;-><init>()V

    new-instance v0, Lanimebestapp/com/ui/comments/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/comments/a;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->t:Lanimebestapp/com/ui/comments/a;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/comments/CommentsActivity;)Lanimebestapp/com/ui/comments/b;
    .registers 1

    iget-object p0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p0, Lanimebestapp/com/ui/comments/b;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Comment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->t:Lanimebestapp/com/ui/comments/a;

    invoke-virtual {v0}, Lanimebestapp/com/ui/comments/a;->a()Lanimebestapp/com/ui/comments/a$e;

    move-result-object v0

    sget-object v1, Lanimebestapp/com/ui/comments/a$e;->c:Lanimebestapp/com/ui/comments/a$e;

    if-ne v0, v1, :cond_1a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lg/m/j;->a()Ljava/util/List;

    move-result-object p1

    goto :goto_68

    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lg/m/j;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lanimebestapp/com/models/Comment;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lanimebestapp/com/models/Comment;

    invoke-virtual {v5}, Lanimebestapp/com/models/Comment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lanimebestapp/com/models/Comment;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto :goto_57

    :cond_56
    const/4 v3, 0x0

    :goto_57
    move-object v5, v3

    check-cast v5, Lanimebestapp/com/models/Comment;

    new-instance v2, Lanimebestapp/com/ui/comments/a$c;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lanimebestapp/com/ui/comments/a$c;-><init>(Lanimebestapp/com/models/Comment;Lanimebestapp/com/models/Comment;Ljava/lang/String;ILg/p/b/d;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_67
    move-object p1, v0

    :goto_68
    iget-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->t:Lanimebestapp/com/ui/comments/a;

    sget-object v1, Lanimebestapp/com/ui/comments/a$e;->b:Lanimebestapp/com/ui/comments/a$e;

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/comments/a;->a(Lanimebestapp/com/ui/comments/a$e;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->t:Lanimebestapp/com/ui/comments/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/o;->a(Ljava/util/List;)V

    sget p1, Lanimebestapp/com/a;->tvEmpty:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "tvEmpty"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->t:Lanimebestapp/com/ui/comments/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/o;->getItemCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_8f

    const/16 v0, 0x8

    goto :goto_90

    :cond_8f
    const/4 v0, 0x0

    :goto_90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "rvList"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->t:Lanimebestapp/com/ui/comments/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/o;->getItemCount()I

    move-result v0

    if-lez v0, :cond_a9

    const/4 v1, 0x0

    :cond_a9
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->u:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->u:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public h()V
    .registers 3

    sget v0, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public l()Lanimebestapp/com/ui/comments/b;
    .registers 5

    const-string v0, "CommentsActivity"

    const-string v1, "createPresenter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-eqz v2, :cond_3d

    :cond_1e
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lanimebestapp/com/models/Anime;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanimebestapp/com/models/Anime;

    invoke-virtual {v1}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lanimebestapp/com/ui/comments/b;

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/comments/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/comments/CommentsActivity;->l()Lanimebestapp/com/ui/comments/b;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/a;->setContentView(I)V

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->d(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_8a

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->e(Z)V

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lanimebestapp/com/ui/comments/CommentsActivity$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/comments/CommentsActivity$a;-><init>(Lanimebestapp/com/ui/comments/CommentsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "rvList"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lanimebestapp/com/utils/WrapContentLinearLayoutManager;

    invoke-direct {v1, p0}, Lanimebestapp/com/utils/WrapContentLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->t:Lanimebestapp/com/ui/comments/a;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/comments/b;

    sget v1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/comments/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    sget p1, Lanimebestapp/com/a;->btnSend:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lanimebestapp/com/ui/comments/CommentsActivity$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/comments/CommentsActivity$b;-><init>(Lanimebestapp/com/ui/comments/CommentsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lanimebestapp/com/ui/comments/CommentsActivity;->t:Lanimebestapp/com/ui/comments/a;

    new-instance v0, Lanimebestapp/com/ui/comments/CommentsActivity$c;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/comments/CommentsActivity$c;-><init>(Lanimebestapp/com/ui/comments/CommentsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void

    :cond_8a
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_8e
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0
.end method

.method public final y()Ljava/lang/String;
    .registers 9

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "java.util.Collections.list(this)"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_7a

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lg/m/j;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    const-string v4, "networkInterface"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_76

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_76

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/net/InetAddress;

    const-string v7, "it"

    invoke-static {v6, v7}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_63

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_63

    const/4 v6, 0x1

    goto :goto_64

    :cond_63
    const/4 v6, 0x0

    :goto_64
    if-eqz v6, :cond_45

    goto :goto_68

    :cond_67
    move-object v5, v4

    :goto_68
    check-cast v5, Ljava/net/InetAddress;

    if-eqz v5, :cond_76

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.hostAddress"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_76
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_7a
    const-string v0, ""

    return-object v0
.end method

###### Class animebestapp.com.ui.comments.CommentsActivity.a (animebestapp.com.ui.comments.CommentsActivity$a)
.class final Lanimebestapp/com/ui/comments/CommentsActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/CommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/comments/CommentsActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/CommentsActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/CommentsActivity$a;->b:Lanimebestapp/com/ui/comments/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/comments/CommentsActivity$a;->b:Lanimebestapp/com/ui/comments/CommentsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

###### Class animebestapp.com.ui.comments.CommentsActivity.b (animebestapp.com.ui.comments.CommentsActivity$b)
.class final Lanimebestapp/com/ui/comments/CommentsActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/CommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/comments/CommentsActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/CommentsActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/CommentsActivity$b;->b:Lanimebestapp/com/ui/comments/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/comments/CommentsActivity$b;->b:Lanimebestapp/com/ui/comments/CommentsActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/comments/CommentsActivity;->a(Lanimebestapp/com/ui/comments/CommentsActivity;)Lanimebestapp/com/ui/comments/b;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/comments/CommentsActivity$b;->b:Lanimebestapp/com/ui/comments/CommentsActivity;

    sget v1, Lanimebestapp/com/a;->etComment:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "etComment"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/comments/CommentsActivity$b;->b:Lanimebestapp/com/ui/comments/CommentsActivity;

    invoke-virtual {v1}, Lanimebestapp/com/ui/comments/CommentsActivity;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lanimebestapp/com/ui/comments/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lanimebestapp/com/ui/comments/CommentsActivity$b;->b:Lanimebestapp/com/ui/comments/CommentsActivity;

    sget v0, Lanimebestapp/com/a;->etComment:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.CommentsActivity.c (animebestapp.com.ui.comments.CommentsActivity$c)
.class public final Lanimebestapp/com/ui/comments/CommentsActivity$c;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/CommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/comments/CommentsActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/CommentsActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/comments/CommentsActivity$c;->a:Lanimebestapp/com/ui/comments/CommentsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(II)V
    .registers 3

    return-void
.end method

.method public a(III)V
    .registers 4

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public b(II)V
    .registers 3

    if-nez p1, :cond_10

    iget-object p1, p0, Lanimebestapp/com/ui/comments/CommentsActivity$c;->a:Lanimebestapp/com/ui/comments/CommentsActivity;

    sget p2, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/comments/CommentsActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_10
    return-void
.end method

.method public c(II)V
    .registers 3

    return-void
.end method
