###### Class animebestapp.com.ui.info.InfoActivity (animebestapp.com.ui.info.InfoActivity)
.class public final Lanimebestapp/com/ui/info/InfoActivity;
.super Lanimebestapp/com/ui/a/a;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/info/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/a<",
        "Lanimebestapp/com/ui/info/c;",
        "Lanimebestapp/com/ui/info/a;",
        ">;",
        "Lanimebestapp/com/ui/info/c;"
    }
.end annotation


# instance fields
.field private t:Lanimebestapp/com/ui/a/e;

.field private u:Landroid/view/MenuItem;

.field private v:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    return-void
.end method

.method public b(Lanimebestapp/com/models/Anime;)V
    .registers 8

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/ui/a/e;

    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v1

    const-string v2, "supportFragmentManager"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/a/e;-><init>(Lb/k/a/i;)V

    iput-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->t:Lanimebestapp/com/ui/a/e;

    sget v0, Lanimebestapp/com/a;->tvTitle:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/InfoActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tvTitle"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/Anime;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->t:Lanimebestapp/com/ui/a/e;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_b8

    sget-object v3, Lanimebestapp/com/ui/info/e/a/b;->f:Lanimebestapp/com/ui/info/e/a/b$a;

    invoke-virtual {v3, p1}, Lanimebestapp/com/ui/info/e/a/b$a;->a(Lanimebestapp/com/models/Anime;)Lanimebestapp/com/ui/info/e/a/b;

    move-result-object v3

    const v4, 0x7f0e0078

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.full_info)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    invoke-virtual {p1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getSeries_list()Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_51

    :cond_50
    move-object v0, v2

    :goto_51
    if-eqz v0, :cond_71

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->t:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_6d

    sget-object v3, Lanimebestapp/com/ui/info/e/b/a;->f:Lanimebestapp/com/ui/info/e/b/a$a;

    invoke-virtual {v3, p1}, Lanimebestapp/com/ui/info/e/b/a$a;->a(Lanimebestapp/com/models/Anime;)Lanimebestapp/com/ui/info/e/b/a;

    move-result-object v3

    const v4, 0x7f0e008c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.online_see)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    goto :goto_71

    :cond_6d
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_71
    :goto_71
    sget v0, Lanimebestapp/com/a;->btnOpenSite:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/InfoActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lanimebestapp/com/ui/info/InfoActivity$b;

    invoke-direct {v3, p0, p1}, Lanimebestapp/com/ui/info/InfoActivity$b;-><init>(Lanimebestapp/com/ui/info/InfoActivity;Lanimebestapp/com/models/Anime;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/InfoActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    const-string v0, "viewpager"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->t:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_b4

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    sget p1, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/InfoActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/InfoActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    sget p1, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/InfoActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void

    :cond_b4
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_b8
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public d()V
    .registers 6

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    const-string v1, "mFavorite"

    const/4 v2, 0x0

    if-eqz v0, :cond_dd

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const v3, 0x7f080109

    invoke-interface {v0, v3}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v3, "mFavorite.subMenu.findItem(R.id.nav_delete)"

    invoke-static {v0, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_d9

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const v4, 0x7f080112

    invoke-interface {v0, v4}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v4, "mFavorite.subMenu.findItem(R.id.nav_viewed)"

    invoke-static {v0, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_d5

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const v4, 0x7f08010f

    invoke-interface {v0, v4}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v4, "mFavorite.subMenu.findItem(R.id.nav_snoozed)"

    invoke-static {v0, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_d1

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const v4, 0x7f080108

    invoke-interface {v0, v4}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v4, "mFavorite.subMenu.findItem(R.id.nav_abandoned)"

    invoke-static {v0, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_cd

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const v4, 0x7f08010c

    invoke-interface {v0, v4}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v4, "mFavorite.subMenu.findItem(R.id.nav_scheduled)"

    invoke-static {v0, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_c9

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const v4, 0x7f08010b

    invoke-interface {v0, v4}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v4, "mFavorite.subMenu.findItem(R.id.nav_reviewing)"

    invoke-static {v0, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_c5

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const v1, 0x7f08010a

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "mFavorite.subMenu.findItem(R.id.nav_look)"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance v0, Landroidx/appcompat/app/c$a;

    const v1, 0x7f0f0009

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0e008a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    const v1, 0x7f0e0032

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->c()Landroidx/appcompat/app/c;

    return-void

    :cond_c5
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_c9
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_cd
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_d1
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_d5
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_d9
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_dd
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public d(Lanimebestapp/com/models/Anime;)V
    .registers 4

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lanimebestapp/com/ui/comments/CommentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "mFavorite.subMenu.findItem(R.id.nav_delete)"

    const v3, 0x7f080109

    const/4 v4, 0x0

    const-string v5, "mFavorite"

    packed-switch v0, :pswitch_data_124

    goto/16 :goto_f9

    :pswitch_17
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_37

    const v0, 0x7f0700b4

    invoke-static {p0, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_33

    goto/16 :goto_e2

    :cond_33
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :cond_37
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :pswitch_3b
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_5b

    const v0, 0x7f0700c9

    invoke-static {p0, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_57

    goto/16 :goto_e2

    :cond_57
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :cond_5b
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :pswitch_5f
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_7e

    const v0, 0x7f07009f

    invoke-static {p0, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_7a

    goto :goto_e2

    :cond_7a
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :cond_7e
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :pswitch_82
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_a1

    const v0, 0x7f0700cf

    invoke-static {p0, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_9d

    goto :goto_e2

    :cond_9d
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :cond_a1
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :pswitch_a5
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_c4

    const v0, 0x7f07009e

    invoke-static {p0, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_c0

    goto :goto_e2

    :cond_c0
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :cond_c4
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :pswitch_c8
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_f5

    const v0, 0x7f0700a9

    invoke-static {p0, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_f1

    :goto_e2
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_11a

    :cond_f1
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :cond_f5
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :cond_f9
    :goto_f9
    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_11f

    const v0, 0x7f0700d0

    invoke-static {p0, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    if-eqz p1, :cond_11b

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_11a
    return-void

    :cond_11b
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    :cond_11f
    invoke-static {v5}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_124
    .packed-switch 0x31
        :pswitch_c8
        :pswitch_a5
        :pswitch_82
        :pswitch_5f
        :pswitch_3b
        :pswitch_17
    .end packed-switch
.end method

.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->v:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->v:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/info/InfoActivity;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/info/a;
    .registers 5

    new-instance v0, Lanimebestapp/com/ui/info/a;

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

    const-string v2, "Gson().fromJson(intent.g\u2026TENT), Anime::class.java)"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lanimebestapp/com/models/Anime;

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/info/a;-><init>(Lanimebestapp/com/models/Anime;)V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/info/InfoActivity;->l()Lanimebestapp/com/ui/info/a;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/a;->setContentView(I)V

    sget p1, Lanimebestapp/com/a;->adView:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/InfoActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/InfoActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->d(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->u()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->e(Z)V

    sget p1, Lanimebestapp/com/a;->toolbar:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/InfoActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lanimebestapp/com/ui/info/InfoActivity$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/InfoActivity$a;-><init>(Lanimebestapp/com/ui/info/InfoActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/a;->i()V

    return-void

    :cond_54
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_58
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    if-eqz p1, :cond_26

    const v0, 0x7f0800f6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu!!.findItem(R.id.m_favorite)"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lanimebestapp/com/ui/info/InfoActivity;->u:Landroid/view/MenuItem;

    iget-object v0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast v0, Lanimebestapp/com/ui/info/a;

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/a;->e()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_26
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0800f5

    if-eq p1, v0, :cond_57

    const v0, 0x7f08010f

    if-eq p1, v0, :cond_50

    const v0, 0x7f080112

    if-eq p1, v0, :cond_49

    packed-switch p1, :pswitch_data_60

    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/a;->f()V

    goto :goto_5e

    :pswitch_23
    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    const-string v0, "4"

    goto :goto_45

    :pswitch_2a
    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    const-string v0, "5"

    goto :goto_45

    :pswitch_31
    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    const-string v0, "6"

    goto :goto_45

    :pswitch_38
    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    const-string v0, "0"

    goto :goto_45

    :pswitch_3f
    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    const-string v0, "2"

    :goto_45
    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/info/a;->a(Ljava/lang/String;)V

    goto :goto_5e

    :cond_49
    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    const-string v0, "1"

    goto :goto_45

    :cond_50
    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    const-string v0, "3"

    goto :goto_45

    :cond_57
    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/a;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/a;->h()V

    :goto_5e
    const/4 p1, 0x0

    return p1

    :pswitch_data_60
    .packed-switch 0x7f080108
        :pswitch_3f
        :pswitch_38
        :pswitch_31
        :pswitch_2a
        :pswitch_23
    .end packed-switch
.end method

###### Class animebestapp.com.ui.info.InfoActivity.a (animebestapp.com.ui.info.InfoActivity$a)
.class final Lanimebestapp/com/ui/info/InfoActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/InfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/InfoActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/InfoActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity$a;->b:Lanimebestapp/com/ui/info/InfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity$a;->b:Lanimebestapp/com/ui/info/InfoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

###### Class animebestapp.com.ui.info.InfoActivity.b (animebestapp.com.ui.info.InfoActivity$b)
.class final Lanimebestapp/com/ui/info/InfoActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/InfoActivity;->b(Lanimebestapp/com/models/Anime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/InfoActivity;

.field final synthetic c:Lanimebestapp/com/models/Anime;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/InfoActivity;Lanimebestapp/com/models/Anime;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity$b;->b:Lanimebestapp/com/ui/info/InfoActivity;

    iput-object p2, p0, Lanimebestapp/com/ui/info/InfoActivity$b;->c:Lanimebestapp/com/models/Anime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    :try_start_0
    const-string p1, "android.intent.action.VIEW"

    const-string v0, "https://animeapp1.animebesst.org/anime3/%s-1.html"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lanimebestapp/com/ui/info/InfoActivity$b;->c:Lanimebestapp/com/models/Anime;

    invoke-virtual {v3}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/InfoActivity$b;->b:Lanimebestapp/com/ui/info/InfoActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_30

    :catchall_30
    return-void
.end method
