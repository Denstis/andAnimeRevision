###### Class animebestapp.com.ui.news.NewsDetailActivity (animebestapp.com.ui.news.NewsDetailActivity)
.class public final Lanimebestapp/com/ui/news/NewsDetailActivity;
.super Lanimebestapp/com/ui/a/a;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/news/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/a<",
        "Lanimebestapp/com/ui/news/b;",
        "Lanimebestapp/com/ui/news/a;",
        ">;",
        "Lanimebestapp/com/ui/news/b;"
    }
.end annotation


# instance fields
.field private t:Lanimebestapp/com/models/News;

.field private u:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/a;-><init>()V

    return-void
.end method

.method private final a(Lanimebestapp/com/models/News;)V
    .registers 8

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvTitle"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/News;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lanimebestapp/com/a;->ivPoster:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {p1}, Lanimebestapp/com/models/News;->getPosterFull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sget v1, Lanimebestapp/com/a;->ivPoster:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    sget v0, Lanimebestapp/com/a;->tvStory:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lanimebestapp/com/models/News;->getFull_story()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->i(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lanimebestapp/com/a;->tvStory:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvStory"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->a(Landroid/widget/TextView;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/News;->getXfields()Lanimebestapp/com/models/NewsXFields;

    move-result-object v0

    if-eqz v0, :cond_24c

    sget v1, Lanimebestapp/com/a;->llLinkYoutube:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "llLinkYoutube"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v1, Lanimebestapp/com/a;->tvLinkYoutube:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "tvLinkYoutube"

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lanimebestapp/com/models/NewsXFields;->getVideonew()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lanimebestapp/com/models/NewsXFields;->getNew1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e0

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->llNews1:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "llNews1"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v4, Lanimebestapp/com/a;->ivNews1:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->ivNews1:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    sget v3, Lanimebestapp/com/a;->tvNews1:I

    invoke-virtual {p0, v3}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "tvNews1"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->i(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lanimebestapp/com/a;->tvNews1:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->a(Landroid/widget/TextView;)V

    :cond_e0
    invoke-virtual {v0}, Lanimebestapp/com/models/NewsXFields;->getNew2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13b

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->llNews2:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "llNews2"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v4, Lanimebestapp/com/a;->ivNews2:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->ivNews2:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    sget v3, Lanimebestapp/com/a;->tvNews2:I

    invoke-virtual {p0, v3}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "tvNews2"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->i(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lanimebestapp/com/a;->tvNews2:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->a(Landroid/widget/TextView;)V

    :cond_13b
    invoke-virtual {v0}, Lanimebestapp/com/models/NewsXFields;->getNew3()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_196

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->llNews3:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "llNews3"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v4, Lanimebestapp/com/a;->ivNews3:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->ivNews3:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    sget v3, Lanimebestapp/com/a;->tvNews3:I

    invoke-virtual {p0, v3}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "tvNews3"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->i(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lanimebestapp/com/a;->tvNews3:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->a(Landroid/widget/TextView;)V

    :cond_196
    invoke-virtual {v0}, Lanimebestapp/com/models/NewsXFields;->getNew4()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f1

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->llNews4:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "llNews4"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v4, Lanimebestapp/com/a;->ivNews4:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->ivNews4:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    sget v3, Lanimebestapp/com/a;->tvNews4:I

    invoke-virtual {p0, v3}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "tvNews4"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->i(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lanimebestapp/com/a;->tvNews4:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->a(Landroid/widget/TextView;)V

    :cond_1f1
    invoke-virtual {v0}, Lanimebestapp/com/models/NewsXFields;->getNew5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24c

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lanimebestapp/com/a;->llNews5:I

    invoke-virtual {p0, v3}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const-string v4, "llNews5"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v2, Lanimebestapp/com/a;->ivNews5:I

    invoke-virtual {p0, v2}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2}, Lc/a/a/c;->a(Landroid/view/View;)Lc/a/a/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v1

    sget v2, Lanimebestapp/com/a;->ivNews5:I

    invoke-virtual {p0, v2}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lc/a/a/j;->a(Landroid/widget/ImageView;)Lc/a/a/r/j/i;

    sget v1, Lanimebestapp/com/a;->tvNews5:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "tvNews5"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->i(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lanimebestapp/com/a;->tvNews5:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->a(Landroid/widget/TextView;)V

    :cond_24c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fullStory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanimebestapp/com/models/News;->getFull_story()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewsDetailActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final h(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v1, "<!--dle_image_end-->"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    if-lez v0, :cond_30

    const-string v4, "<!--dle_image_end-->"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz p1, :cond_2a

    :goto_22
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2a
    new-instance p1, Lg/j;

    invoke-direct {p1, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    const-string v4, "<!--MEnd-->"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_51

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "<!--MEnd-->"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz p1, :cond_4b

    goto :goto_22

    :cond_4b
    new-instance p1, Lg/j;

    invoke-direct {p1, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    return-object p1
.end method

.method private final i(Ljava/lang/String;)Landroid/text/Spannable;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "null cannot be cast to non-null type android.text.SpannableStringBuilder"

    const/16 v2, 0x18

    if-lt v0, v2, :cond_16

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_1c

    :cond_10
    new-instance p1, Lg/j;

    invoke-direct {p1, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    if-eqz p1, :cond_1f

    :goto_1c
    check-cast p1, Landroid/text/SpannableStringBuilder;

    return-object p1

    :cond_1f
    new-instance p1, Lg/j;

    invoke-direct {p1, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;)V
    .registers 11

    const-string v0, "receiver$0"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getSpans(0, length, URLSpan::class.java)"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    :goto_1e
    if-ge v3, v2, :cond_3c

    aget-object v4, v1, v3

    check-cast v4, Landroid/text/style/URLSpan;

    new-instance v5, Lanimebestapp/com/ui/news/NewsDetailActivity$a;

    invoke-direct {v5, v4, v0, p0}, Lanimebestapp/com/ui/news/NewsDetailActivity$a;-><init>(Landroid/text/style/URLSpan;Landroid/text/SpannableStringBuilder;Lanimebestapp/com/ui/news/NewsDetailActivity;)V

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const/16 v8, 0x11

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_3c
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "html"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    const-string v2, "src=\""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lg/s/e;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    const-string v3, "\""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    move v4, v1

    invoke-static/range {v2 .. v7}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "http"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v0}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    :goto_31
    move-object v0, p1

    goto :goto_49

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_44} :catch_45

    goto :goto_31

    :catch_45
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49
    return-object v0
.end method

.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/news/NewsDetailActivity;->u:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/news/NewsDetailActivity;->u:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/news/NewsDetailActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/news/NewsDetailActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/news/a;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/news/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/news/a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/news/NewsDetailActivity;->l()Lanimebestapp/com/ui/news/a;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0060

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

    iput-object p1, p0, Lanimebestapp/com/ui/news/NewsDetailActivity;->t:Lanimebestapp/com/models/News;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lanimebestapp/com/ui/news/NewsDetailActivity;->t:Lanimebestapp/com/models/News;

    const/4 v1, 0x0

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Lanimebestapp/com/models/News;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewsDetailActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_7f

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->d(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_7b

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->e(Z)V

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lanimebestapp/com/ui/news/NewsDetailActivity$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/news/NewsDetailActivity$b;-><init>(Lanimebestapp/com/ui/news/NewsDetailActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lanimebestapp/com/ui/news/NewsDetailActivity;->t:Lanimebestapp/com/models/News;

    if-eqz p1, :cond_77

    invoke-direct {p0, p1}, Lanimebestapp/com/ui/news/NewsDetailActivity;->a(Lanimebestapp/com/models/News;)V

    return-void

    :cond_77
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_7b
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_7f
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_83
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    if-eqz p1, :cond_21

    const v0, 0x7f0800f6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu!!.findItem(R.id.m_favorite)"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_21
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f0800f5

    if-eq p1, v1, :cond_10

    goto :goto_46

    :cond_10
    iget-object p1, p0, Lanimebestapp/com/ui/news/NewsDetailActivity;->t:Lanimebestapp/com/models/News;

    if-eqz p1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanimebestapp/com/models/News;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NewsDetailActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lanimebestapp/com/ui/comments/CommentsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/News;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_46
    :goto_46
    return v0
.end method

###### Class animebestapp.com.ui.news.NewsDetailActivity.a (animebestapp.com.ui.news.NewsDetailActivity$a)
.class public final Lanimebestapp/com/ui/news/NewsDetailActivity$a;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/news/NewsDetailActivity;->a(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/text/style/URLSpan;

.field final synthetic c:Lanimebestapp/com/ui/news/NewsDetailActivity;


# direct methods
.method constructor <init>(Landroid/text/style/URLSpan;Landroid/text/SpannableStringBuilder;Lanimebestapp/com/ui/news/NewsDetailActivity;)V
    .registers 4

    iput-object p1, p0, Lanimebestapp/com/ui/news/NewsDetailActivity$a;->b:Landroid/text/style/URLSpan;

    iput-object p3, p0, Lanimebestapp/com/ui/news/NewsDetailActivity$a;->c:Lanimebestapp/com/ui/news/NewsDetailActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15

    const-string v0, "widget"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lanimebestapp/com/ui/news/NewsDetailActivity$a;->b:Landroid/text/style/URLSpan;

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    const-string p1, "it.url"

    invoke-static {v1, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lg/s/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\"

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lg/s/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewsDetailActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lanimebestapp/com/ui/news/NewsDetailActivity$a;->c:Lanimebestapp/com/ui/news/NewsDetailActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_56
    .catchall {:try_start_41 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5b
    return-void
.end method

###### Class animebestapp.com.ui.news.NewsDetailActivity.b (animebestapp.com.ui.news.NewsDetailActivity$b)
.class final Lanimebestapp/com/ui/news/NewsDetailActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/news/NewsDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/news/NewsDetailActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/news/NewsDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/news/NewsDetailActivity$b;->b:Lanimebestapp/com/ui/news/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/news/NewsDetailActivity$b;->b:Lanimebestapp/com/ui/news/NewsDetailActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
