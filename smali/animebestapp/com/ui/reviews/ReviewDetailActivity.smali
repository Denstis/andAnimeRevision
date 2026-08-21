###### Class animebestapp.com.ui.reviews.ReviewDetailActivity (animebestapp.com.ui.reviews.ReviewDetailActivity)
.class public final Lanimebestapp/com/ui/reviews/ReviewDetailActivity;
.super Lanimebestapp/com/ui/a/a;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/reviews/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/a<",
        "Lanimebestapp/com/ui/reviews/b;",
        "Lanimebestapp/com/ui/reviews/a;",
        ">;",
        "Lanimebestapp/com/ui/reviews/b;"
    }
.end annotation


# instance fields
.field private t:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/reviews/ReviewDetailActivity;->t:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/reviews/ReviewDetailActivity;->t:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/reviews/ReviewDetailActivity;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/reviews/ReviewDetailActivity;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/reviews/a;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/reviews/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/reviews/a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/reviews/ReviewDetailActivity;->l()Lanimebestapp/com/ui/reviews/a;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0070

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/a;->setContentView(I)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lanimebestapp/com/models/News;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/models/News;

    return-void
.end method
