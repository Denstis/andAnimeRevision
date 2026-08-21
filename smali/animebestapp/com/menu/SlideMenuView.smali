###### Class animebestapp.com.menu.SlideMenuView (animebestapp.com.menu.SlideMenuView)
.class public final Lanimebestapp/com/menu/SlideMenuView;
.super Lcom/google/android/material/navigation/NavigationView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/menu/SlideMenuView$b;,
        Lanimebestapp/com/menu/SlideMenuView$a;
    }
.end annotation


# instance fields
.field private b:Lanimebestapp/com/menu/SlideMenuView$b;

.field private final c:Lanimebestapp/com/menu/SlideMenuView$c;

.field private d:Landroid/view/View;

.field private e:Lanimebestapp/com/menu/SlideMenuView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lanimebestapp/com/menu/SlideMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILg/p/b/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lanimebestapp/com/menu/SlideMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILg/p/b/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 22

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lanimebestapp/com/menu/SlideMenuView$c;

    invoke-direct {v1, v0}, Lanimebestapp/com/menu/SlideMenuView$c;-><init>(Lanimebestapp/com/menu/SlideMenuView;)V

    iput-object v1, v0, Lanimebestapp/com/menu/SlideMenuView;->c:Lanimebestapp/com/menu/SlideMenuView$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b5

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f0b0051

    invoke-static {v2, v3}, Lanimebestapp/com/utils/d;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lanimebestapp/com/menu/SlideMenuView;->d:Landroid/view/View;

    sget-object v3, Lanimebestapp/com/menu/c;->b:Lanimebestapp/com/menu/c;

    invoke-virtual {v3}, Lanimebestapp/com/menu/c;->a()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lg/m/j;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lanimebestapp/com/menu/d/d;

    invoke-interface {v5}, Lanimebestapp/com/menu/d/d;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x3ac1651f

    const/4 v9, 0x1

    const-string v10, "null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem"

    const/4 v11, 0x2

    if-eq v7, v8, :cond_79

    const v8, -0x23dea296

    if-eq v7, v8, :cond_5d

    goto :goto_a0

    :cond_5d
    const-string v7, "night_mode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    if-eqz v5, :cond_73

    move-object v12, v5

    check-cast v12, Lanimebestapp/com/menu/d/e;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v5

    if-ne v5, v11, :cond_90

    goto :goto_8e

    :cond_73
    new-instance v1, Lg/j;

    invoke-direct {v1, v10}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_79
    const-string v7, "player"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    if-eqz v5, :cond_9a

    move-object v12, v5

    check-cast v12, Lanimebestapp/com/menu/d/e;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v5

    if-ne v5, v11, :cond_90

    :goto_8e
    const/4 v15, 0x1

    goto :goto_91

    :cond_90
    const/4 v15, 0x0

    :goto_91
    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lanimebestapp/com/menu/d/e;->a(Lanimebestapp/com/menu/d/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lanimebestapp/com/menu/d/e;

    move-result-object v5

    goto :goto_a0

    :cond_9a
    new-instance v1, Lg/j;

    invoke-direct {v1, v10}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a0
    :goto_a0
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_a4
    new-instance v1, Lanimebestapp/com/menu/SlideMenuView$a;

    iget-object v3, v0, Lanimebestapp/com/menu/SlideMenuView;->d:Landroid/view/View;

    iget-object v5, v0, Lanimebestapp/com/menu/SlideMenuView;->c:Lanimebestapp/com/menu/SlideMenuView$c;

    invoke-direct {v1, v3, v5, v4}, Lanimebestapp/com/menu/SlideMenuView$a;-><init>(Landroid/view/View;Lanimebestapp/com/menu/SlideMenuView$b;Ljava/util/List;)V

    iput-object v1, v0, Lanimebestapp/com/menu/SlideMenuView;->e:Lanimebestapp/com/menu/SlideMenuView$a;

    iget-object v1, v0, Lanimebestapp/com/menu/SlideMenuView;->e:Lanimebestapp/com/menu/SlideMenuView$a;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void

    :cond_b5
    new-instance v1, Lg/j;

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-direct {v1, v2}, Lg/j;-><init>(Ljava/lang/String;)V

    goto :goto_be

    :goto_bd
    throw v1

    :goto_be
    goto :goto_bd
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILg/p/b/d;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lanimebestapp/com/menu/SlideMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 18

    move-object/from16 v0, p0

    sget-object v1, Lanimebestapp/com/menu/c;->b:Lanimebestapp/com/menu/c;

    invoke-virtual {v1}, Lanimebestapp/com/menu/c;->a()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lg/m/j;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanimebestapp/com/menu/d/d;

    invoke-interface {v3}, Lanimebestapp/com/menu/d/d;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x3ac1651f

    const/4 v8, 0x1

    const-string v9, "null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem"

    const/4 v10, 0x2

    if-eq v6, v7, :cond_57

    const v7, -0x23dea296

    if-eq v6, v7, :cond_3b

    goto :goto_7d

    :cond_3b
    const-string v6, "night_mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    if-eqz v3, :cond_51

    move-object v11, v3

    check-cast v11, Lanimebestapp/com/menu/d/e;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v3

    if-ne v3, v10, :cond_6e

    goto :goto_6c

    :cond_51
    new-instance v1, Lg/j;

    invoke-direct {v1, v9}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_57
    const-string v6, "player"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    if-eqz v3, :cond_77

    move-object v11, v3

    check-cast v11, Lanimebestapp/com/menu/d/e;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v3

    if-ne v3, v10, :cond_6e

    :goto_6c
    const/4 v14, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v14, 0x0

    :goto_6f
    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lanimebestapp/com/menu/d/e;->a(Lanimebestapp/com/menu/d/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lanimebestapp/com/menu/d/e;

    move-result-object v3

    goto :goto_7d

    :cond_77
    new-instance v1, Lg/j;

    invoke-direct {v1, v9}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7d
    :goto_7d
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_81
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a3

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f0b0051

    invoke-static {v1, v3}, Lanimebestapp/com/utils/d;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lanimebestapp/com/menu/SlideMenuView;->d:Landroid/view/View;

    new-instance v3, Lanimebestapp/com/menu/SlideMenuView$a;

    iget-object v4, v0, Lanimebestapp/com/menu/SlideMenuView;->d:Landroid/view/View;

    iget-object v5, v0, Lanimebestapp/com/menu/SlideMenuView;->c:Lanimebestapp/com/menu/SlideMenuView$c;

    invoke-direct {v3, v4, v5, v2}, Lanimebestapp/com/menu/SlideMenuView$a;-><init>(Landroid/view/View;Lanimebestapp/com/menu/SlideMenuView$b;Ljava/util/List;)V

    iput-object v3, v0, Lanimebestapp/com/menu/SlideMenuView;->e:Lanimebestapp/com/menu/SlideMenuView$a;

    iget-object v2, v0, Lanimebestapp/com/menu/SlideMenuView;->e:Lanimebestapp/com/menu/SlideMenuView$a;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void

    :cond_a3
    new-instance v1, Lg/j;

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-direct {v1, v2}, Lg/j;-><init>(Ljava/lang/String;)V

    goto :goto_ac

    :goto_ab
    throw v1

    :goto_ac
    goto :goto_ab
.end method

.method public final a(Z)V
    .registers 15

    sget-object v0, Lanimebestapp/com/menu/c;->b:Lanimebestapp/com/menu/c;

    invoke-virtual {v0}, Lanimebestapp/com/menu/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lg/m/j;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanimebestapp/com/menu/d/d;

    invoke-interface {v2}, Lanimebestapp/com/menu/d/d;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x3ac1651f

    const-string v6, "null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem"

    if-eq v4, v5, :cond_5a

    const v5, -0x23dea296

    if-eq v4, v5, :cond_36

    goto :goto_77

    :cond_36
    const-string v4, "night_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    if-eqz v2, :cond_54

    move-object v7, v2

    check-cast v7, Lanimebestapp/com/menu/d/e;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4f

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto :goto_51

    :cond_4f
    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_51
    const/4 v11, 0x3

    const/4 v12, 0x0

    goto :goto_6c

    :cond_54
    new-instance p1, Lg/j;

    invoke-direct {p1, v6}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    const-string v4, "player"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    if-eqz v2, :cond_71

    move-object v7, v2

    check-cast v7, Lanimebestapp/com/menu/d/e;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move v10, p1

    :goto_6c
    invoke-static/range {v7 .. v12}, Lanimebestapp/com/menu/d/e;->a(Lanimebestapp/com/menu/d/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lanimebestapp/com/menu/d/e;

    move-result-object v2

    goto :goto_77

    :cond_71
    new-instance p1, Lg/j;

    invoke-direct {p1, v6}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_77
    :goto_77
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_7b
    iget-object p1, p0, Lanimebestapp/com/menu/SlideMenuView;->e:Lanimebestapp/com/menu/SlideMenuView$a;

    invoke-virtual {p1, v1}, Lanimebestapp/com/menu/SlideMenuView$a;->a(Ljava/util/List;)V

    iget-object p1, p0, Lanimebestapp/com/menu/SlideMenuView;->e:Lanimebestapp/com/menu/SlideMenuView$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "view"

    invoke-static {v1, v2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a6

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    sget-object v4, Lanimebestapp/com/menu/c;->b:Lanimebestapp/com/menu/c;

    invoke-virtual {v4}, Lanimebestapp/com/menu/c;->a()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lg/m/j;->a(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanimebestapp/com/menu/d/d;

    invoke-interface {v6}, Lanimebestapp/com/menu/d/d;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x3ac1651f

    const/4 v10, 0x1

    const-string v11, "null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem"

    const/4 v12, 0x2

    if-eq v8, v9, :cond_66

    const v9, -0x23dea296

    if-eq v8, v9, :cond_4a

    goto :goto_8f

    :cond_4a
    const-string v8, "night_mode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    if-eqz v6, :cond_60

    move-object v13, v6

    check-cast v13, Lanimebestapp/com/menu/d/e;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v6

    if-ne v6, v12, :cond_7e

    goto :goto_7b

    :cond_60
    new-instance v1, Lg/j;

    invoke-direct {v1, v11}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_66
    const-string v8, "player"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    if-eqz v6, :cond_89

    move-object v13, v6

    check-cast v13, Lanimebestapp/com/menu/d/e;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v6

    if-ne v6, v12, :cond_7e

    :goto_7b
    const/16 v16, 0x1

    goto :goto_80

    :cond_7e
    const/16 v16, 0x0

    :goto_80
    const/16 v17, 0x3

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lanimebestapp/com/menu/d/e;->a(Lanimebestapp/com/menu/d/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lanimebestapp/com/menu/d/e;

    move-result-object v6

    goto :goto_8f

    :cond_89
    new-instance v1, Lg/j;

    invoke-direct {v1, v11}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8f
    :goto_8f
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_93
    iput-object v1, v0, Lanimebestapp/com/menu/SlideMenuView;->d:Landroid/view/View;

    new-instance v1, Lanimebestapp/com/menu/SlideMenuView$a;

    iget-object v2, v0, Lanimebestapp/com/menu/SlideMenuView;->d:Landroid/view/View;

    iget-object v4, v0, Lanimebestapp/com/menu/SlideMenuView;->c:Lanimebestapp/com/menu/SlideMenuView$c;

    invoke-direct {v1, v2, v4, v5}, Lanimebestapp/com/menu/SlideMenuView$a;-><init>(Landroid/view/View;Lanimebestapp/com/menu/SlideMenuView$b;Ljava/util/List;)V

    iput-object v1, v0, Lanimebestapp/com/menu/SlideMenuView;->e:Lanimebestapp/com/menu/SlideMenuView$a;

    iget-object v1, v0, Lanimebestapp/com/menu/SlideMenuView;->e:Lanimebestapp/com/menu/SlideMenuView$a;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void

    :cond_a6
    new-instance v1, Lg/j;

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-direct {v1, v2}, Lg/j;-><init>(Ljava/lang/String;)V

    goto :goto_af

    :goto_ae
    throw v1

    :goto_af
    goto :goto_ae
.end method

.method public final getHeader()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView;->d:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/menu/SlideMenuView;->d:Landroid/view/View;

    return-object p1
.end method

.method public final getListener()Lanimebestapp/com/menu/SlideMenuView$b;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView;->b:Lanimebestapp/com/menu/SlideMenuView$b;

    return-object v0
.end method

.method public final setHeader(Landroid/view/View;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView;->d:Landroid/view/View;

    return-void
.end method

.method public final setListener(Lanimebestapp/com/menu/SlideMenuView$b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView;->b:Lanimebestapp/com/menu/SlideMenuView$b;

    return-void
.end method

###### Class animebestapp.com.menu.SlideMenuView.a (animebestapp.com.menu.SlideMenuView$a)
.class final Lanimebestapp/com/menu/SlideMenuView$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/menu/SlideMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/menu/SlideMenuView$a$c;,
        Lanimebestapp/com/menu/SlideMenuView$a$e;,
        Lanimebestapp/com/menu/SlideMenuView$a$a;,
        Lanimebestapp/com/menu/SlideMenuView$a$b;,
        Lanimebestapp/com/menu/SlideMenuView$a$d;
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

.field private final d:I

.field private final e:I

.field private final f:Landroid/view/View;

.field private final g:Lanimebestapp/com/menu/SlideMenuView$b;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lanimebestapp/com/menu/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lanimebestapp/com/menu/SlideMenuView$b;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lanimebestapp/com/menu/SlideMenuView$b;",
            "Ljava/util/List<",
            "+",
            "Lanimebestapp/com/menu/d/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->f:Landroid/view/View;

    iput-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a;->g:Lanimebestapp/com/menu/SlideMenuView$b;

    iput-object p3, p0, Lanimebestapp/com/menu/SlideMenuView$a;->h:Ljava/util/List;

    const/4 p1, 0x1

    iput p1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->b:I

    const/4 p2, 0x2

    iput p2, p0, Lanimebestapp/com/menu/SlideMenuView$a;->c:I

    const/4 p2, 0x3

    iput p2, p0, Lanimebestapp/com/menu/SlideMenuView$a;->d:I

    iget-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a;->f:Landroid/view/View;

    if-eqz p2, :cond_21

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    iput p1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->e:I

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/menu/SlideMenuView$a;)Lanimebestapp/com/menu/SlideMenuView$b;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/menu/SlideMenuView$a;->g:Lanimebestapp/com/menu/SlideMenuView$b;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lanimebestapp/com/menu/d/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->h:Ljava/util/List;

    return-void
.end method

.method public getItemCount()I
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    if-nez p1, :cond_9

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a;->f:Landroid/view/View;

    if-eqz v0, :cond_9

    iget p1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->a:I

    goto :goto_2a

    :cond_9
    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a;->h:Ljava/util/List;

    iget v1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->e:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/menu/d/d;

    instance-of v0, p1, Lanimebestapp/com/menu/d/b;

    if-eqz v0, :cond_1b

    iget p1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->b:I

    goto :goto_2a

    :cond_1b
    instance-of v0, p1, Lanimebestapp/com/menu/d/e;

    if-eqz v0, :cond_22

    iget p1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->c:I

    goto :goto_2a

    :cond_22
    instance-of p1, p1, Lanimebestapp/com/menu/d/a;

    if-eqz p1, :cond_29

    iget p1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->d:I

    goto :goto_2a

    :cond_29
    const/4 p1, 0x4

    :goto_2a
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_c

    iget-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a;->f:Landroid/view/View;

    if-eqz p2, :cond_c

    return-void

    :cond_c
    iget-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a;->h:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v0

    iget v1, p0, Lanimebestapp/com/menu/SlideMenuView$a;->e:I

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lanimebestapp/com/menu/d/d;

    instance-of v0, p1, Lanimebestapp/com/menu/SlideMenuView$a$d;

    if-eqz v0, :cond_31

    check-cast p1, Lanimebestapp/com/menu/SlideMenuView$a$d;

    if-eqz p2, :cond_29

    check-cast p2, Lanimebestapp/com/menu/d/a;

    invoke-virtual {p1, p2}, Lanimebestapp/com/menu/SlideMenuView$a$d;->a(Lanimebestapp/com/menu/d/a;)V

    goto :goto_6e

    :cond_29
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type animebestapp.com.menu.model.DropMenuItem"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    instance-of v0, p1, Lanimebestapp/com/menu/SlideMenuView$a$a;

    if-eqz v0, :cond_44

    check-cast p1, Lanimebestapp/com/menu/SlideMenuView$a$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    invoke-virtual {p1, p2, v0}, Lanimebestapp/com/menu/SlideMenuView$a$a;->a(Lanimebestapp/com/menu/d/d;Z)V

    goto :goto_6e

    :cond_44
    instance-of v0, p1, Lanimebestapp/com/menu/SlideMenuView$a$c;

    if-eqz v0, :cond_53

    check-cast p1, Lanimebestapp/com/menu/SlideMenuView$a$c;

    new-instance v0, Lanimebestapp/com/menu/SlideMenuView$a$f;

    invoke-direct {v0, p0}, Lanimebestapp/com/menu/SlideMenuView$a$f;-><init>(Lanimebestapp/com/menu/SlideMenuView$a;)V

    invoke-virtual {p1, p2, v0}, Lanimebestapp/com/menu/SlideMenuView$a$c;->a(Lanimebestapp/com/menu/d/d;Lg/p/a/b;)V

    goto :goto_6e

    :cond_53
    instance-of v0, p1, Lanimebestapp/com/menu/SlideMenuView$a$e;

    if-eqz v0, :cond_6e

    check-cast p1, Lanimebestapp/com/menu/SlideMenuView$a$e;

    if-eqz p2, :cond_66

    check-cast p2, Lanimebestapp/com/menu/d/e;

    new-instance v0, Lanimebestapp/com/menu/SlideMenuView$a$g;

    invoke-direct {v0, p0}, Lanimebestapp/com/menu/SlideMenuView$a$g;-><init>(Lanimebestapp/com/menu/SlideMenuView$a;)V

    invoke-virtual {p1, p2, v0}, Lanimebestapp/com/menu/SlideMenuView$a$e;->a(Lanimebestapp/com/menu/d/e;Lg/p/a/c;)V

    goto :goto_6e

    :cond_66
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type animebestapp.com.menu.model.SwitchMenuItem"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    :goto_6e
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .registers 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lanimebestapp/com/menu/SlideMenuView$a;->a:I

    if-ne p2, v0, :cond_19

    new-instance p1, Lanimebestapp/com/menu/SlideMenuView$a$b;

    iget-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a;->f:Landroid/view/View;

    if-eqz p2, :cond_14

    invoke-direct {p1, p2}, Lanimebestapp/com/menu/SlideMenuView$a$b;-><init>(Landroid/view/View;)V

    move-object p2, p1

    goto :goto_3e

    :cond_14
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_19
    iget v0, p0, Lanimebestapp/com/menu/SlideMenuView$a;->b:I

    if-ne p2, v0, :cond_23

    new-instance p2, Lanimebestapp/com/menu/SlideMenuView$a$a;

    invoke-direct {p2, p1}, Lanimebestapp/com/menu/SlideMenuView$a$a;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_3e

    :cond_23
    iget v0, p0, Lanimebestapp/com/menu/SlideMenuView$a;->c:I

    if-ne p2, v0, :cond_2d

    new-instance p2, Lanimebestapp/com/menu/SlideMenuView$a$e;

    invoke-direct {p2, p1}, Lanimebestapp/com/menu/SlideMenuView$a$e;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_3e

    :cond_2d
    iget v0, p0, Lanimebestapp/com/menu/SlideMenuView$a;->d:I

    if-ne p2, v0, :cond_39

    new-instance p2, Lanimebestapp/com/menu/SlideMenuView$a$d;

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a;->g:Lanimebestapp/com/menu/SlideMenuView$b;

    invoke-direct {p2, p1, v0}, Lanimebestapp/com/menu/SlideMenuView$a$d;-><init>(Landroid/view/ViewGroup;Lanimebestapp/com/menu/SlideMenuView$b;)V

    goto :goto_3e

    :cond_39
    new-instance p2, Lanimebestapp/com/menu/SlideMenuView$a$c;

    invoke-direct {p2, p1}, Lanimebestapp/com/menu/SlideMenuView$a$c;-><init>(Landroid/view/ViewGroup;)V

    :goto_3e
    return-object p2
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.C0032a (animebestapp.com.menu.SlideMenuView$a$a)
.class public final Lanimebestapp/com/menu/SlideMenuView$a$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/menu/SlideMenuView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b0076

    invoke-static {p1, v0}, Lanimebestapp/com/utils/d;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/menu/d/d;Z)V
    .registers 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById<View>(R.id.divider)"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    const/16 p2, 0x8

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    :goto_19
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const v0, 0x7f0801a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "itemView.findViewById<TextView>(R.id.tvTitle)"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    invoke-interface {p1}, Lanimebestapp/com/menu/d/d;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.b (animebestapp.com.menu.SlideMenuView$a$b)
.class public final Lanimebestapp/com/menu/SlideMenuView$a$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/menu/SlideMenuView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    return-void
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.c (animebestapp.com.menu.SlideMenuView$a$c)
.class public final Lanimebestapp/com/menu/SlideMenuView$a$c;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/menu/SlideMenuView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b0077

    invoke-static {p1, v0}, Lanimebestapp/com/utils/d;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/menu/d/d;Lg/p/a/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/menu/d/d;",
            "Lg/p/a/b<",
            "-",
            "Ljava/lang/String;",
            "Lg/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lanimebestapp/com/menu/SlideMenuView$a$c$a;

    invoke-direct {v1, p2, p1}, Lanimebestapp/com/menu/SlideMenuView$a$c$a;-><init>(Lg/p/a/b;Lanimebestapp/com/menu/d/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    if-eqz p2, :cond_22

    check-cast p2, Landroid/widget/TextView;

    invoke-interface {p1}, Lanimebestapp/com/menu/d/d;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_22
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.c.ViewOnClickListenerC0033a (animebestapp.com.menu.SlideMenuView$a$c$a)
.class final Lanimebestapp/com/menu/SlideMenuView$a$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/menu/SlideMenuView$a$c;->a(Lanimebestapp/com/menu/d/d;Lg/p/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lg/p/a/b;

.field final synthetic c:Lanimebestapp/com/menu/d/d;


# direct methods
.method constructor <init>(Lg/p/a/b;Lanimebestapp/com/menu/d/d;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$c$a;->b:Lg/p/a/b;

    iput-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a$c$a;->c:Lanimebestapp/com/menu/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$c$a;->b:Lg/p/a/b;

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$c$a;->c:Lanimebestapp/com/menu/d/d;

    invoke-interface {v0}, Lanimebestapp/com/menu/d/d;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lg/p/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.d (animebestapp.com.menu.SlideMenuView$a$d)
.class public final Lanimebestapp/com/menu/SlideMenuView$a$d;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/menu/SlideMenuView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Lanimebestapp/com/menu/SlideMenuView$b;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lanimebestapp/com/menu/SlideMenuView$b;)V
    .registers 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b0078

    invoke-static {p1, v0}, Lanimebestapp/com/utils/d;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->f:Lanimebestapp/com/menu/SlideMenuView$b;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const v0, 0x7f080135

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const v0, 0x7f0801a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->b:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const v0, 0x7f0800d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0700a1

    invoke-static {p2, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0700a2

    invoke-static {p1, p2}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->e:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic b(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic c(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic d(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public final a(Lanimebestapp/com/menu/d/a;)V
    .registers 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->b:Landroid/widget/TextView;

    const-string v1, "tvTitle"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/menu/d/a;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->b:Landroid/widget/TextView;

    new-instance v1, Lanimebestapp/com/menu/SlideMenuView$a$d$a;

    invoke-direct {v1, p0}, Lanimebestapp/com/menu/SlideMenuView$a$d$a;-><init>(Lanimebestapp/com/menu/SlideMenuView$a$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lanimebestapp/com/menu/SlideMenuView$a;

    iget-object v2, p0, Lanimebestapp/com/menu/SlideMenuView$a$d;->f:Lanimebestapp/com/menu/SlideMenuView$b;

    invoke-virtual {p1}, Lanimebestapp/com/menu/d/a;->a()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p1}, Lanimebestapp/com/menu/SlideMenuView$a;-><init>(Landroid/view/View;Lanimebestapp/com/menu/SlideMenuView$b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.d.ViewOnClickListenerC0034a (animebestapp.com.menu.SlideMenuView$a$d$a)
.class final Lanimebestapp/com/menu/SlideMenuView$a$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/menu/SlideMenuView$a$d;->a(Lanimebestapp/com/menu/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/menu/SlideMenuView$a$d;


# direct methods
.method constructor <init>(Lanimebestapp/com/menu/SlideMenuView$a$d;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$d$a;->b:Lanimebestapp/com/menu/SlideMenuView$a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$d$a;->b:Lanimebestapp/com/menu/SlideMenuView$a$d;

    invoke-static {p1}, Lanimebestapp/com/menu/SlideMenuView$a$d;->c(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d$a;->b:Lanimebestapp/com/menu/SlideMenuView$a$d;

    invoke-static {v0}, Lanimebestapp/com/menu/SlideMenuView$a$d;->d(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d$a;->b:Lanimebestapp/com/menu/SlideMenuView$a$d;

    invoke-static {v0}, Lanimebestapp/com/menu/SlideMenuView$a$d;->a(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_24

    :cond_1e
    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d$a;->b:Lanimebestapp/com/menu/SlideMenuView$a$d;

    invoke-static {v0}, Lanimebestapp/com/menu/SlideMenuView$a$d;->b(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_24
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$d$a;->b:Lanimebestapp/com/menu/SlideMenuView$a$d;

    invoke-static {p1}, Lanimebestapp/com/menu/SlideMenuView$a$d;->d(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$d$a;->b:Lanimebestapp/com/menu/SlideMenuView$a$d;

    invoke-static {v0}, Lanimebestapp/com/menu/SlideMenuView$a$d;->d(Lanimebestapp/com/menu/SlideMenuView$a$d;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    const/16 v0, 0x8

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.e (animebestapp.com.menu.SlideMenuView$a$e)
.class public final Lanimebestapp/com/menu/SlideMenuView$a$e;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/menu/SlideMenuView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b0079

    invoke-static {p1, v0}, Lanimebestapp/com/utils/d;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/menu/d/e;Lg/p/a/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/menu/d/e;",
            "Lg/p/a/c<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "Lg/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.widget.SwitchCompat"

    if-eqz v0, :cond_39

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_33

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lanimebestapp/com/menu/d/e;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance v1, Lanimebestapp/com/menu/SlideMenuView$a$e$a;

    invoke-direct {v1, p1, p2}, Lanimebestapp/com/menu/SlideMenuView$a$e$a;-><init>(Lanimebestapp/com/menu/d/e;Lg/p/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1}, Lanimebestapp/com/menu/d/e;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_33
    new-instance p1, Lg/j;

    invoke-direct {p1, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    new-instance p1, Lg/j;

    invoke-direct {p1, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.e.C0035a (animebestapp.com.menu.SlideMenuView$a$e$a)
.class final Lanimebestapp/com/menu/SlideMenuView$a$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/menu/SlideMenuView$a$e;->a(Lanimebestapp/com/menu/d/e;Lg/p/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/menu/d/e;

.field final synthetic b:Lg/p/a/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/menu/d/e;Lg/p/a/c;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$e$a;->a:Lanimebestapp/com/menu/d/e;

    iput-object p2, p0, Lanimebestapp/com/menu/SlideMenuView$a$e$a;->b:Lg/p/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$e$a;->b:Lg/p/a/c;

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$e$a;->a:Lanimebestapp/com/menu/d/e;

    invoke-virtual {v0}, Lanimebestapp/com/menu/d/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lg/p/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.f (animebestapp.com.menu.SlideMenuView$a$f)
.class final Lanimebestapp/com/menu/SlideMenuView$a$f;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/menu/SlideMenuView$a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/b<",
        "Ljava/lang/String;",
        "Lg/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/menu/SlideMenuView$a;


# direct methods
.method constructor <init>(Lanimebestapp/com/menu/SlideMenuView$a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$f;->b:Lanimebestapp/com/menu/SlideMenuView$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lanimebestapp/com/menu/SlideMenuView$a$f;->a(Ljava/lang/String;)V

    sget-object p1, Lg/l;->a:Lg/l;

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$f;->b:Lanimebestapp/com/menu/SlideMenuView$a;

    invoke-static {v0}, Lanimebestapp/com/menu/SlideMenuView$a;->a(Lanimebestapp/com/menu/SlideMenuView$a;)Lanimebestapp/com/menu/SlideMenuView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lanimebestapp/com/menu/SlideMenuView$b;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class animebestapp.com.menu.SlideMenuView.a.g (animebestapp.com.menu.SlideMenuView$a$g)
.class final Lanimebestapp/com/menu/SlideMenuView$a$g;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/menu/SlideMenuView$a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/c<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Lg/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/menu/SlideMenuView$a;


# direct methods
.method constructor <init>(Lanimebestapp/com/menu/SlideMenuView$a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$a$g;->b:Lanimebestapp/com/menu/SlideMenuView$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/menu/SlideMenuView$a$g;->a(Ljava/lang/String;Z)V

    sget-object p1, Lg/l;->a:Lg/l;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$a$g;->b:Lanimebestapp/com/menu/SlideMenuView$a;

    invoke-static {v0}, Lanimebestapp/com/menu/SlideMenuView$a;->a(Lanimebestapp/com/menu/SlideMenuView$a;)Lanimebestapp/com/menu/SlideMenuView$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lanimebestapp/com/menu/SlideMenuView$b;->a(Ljava/lang/String;Z)V

    return-void
.end method

###### Class animebestapp.com.menu.SlideMenuView.b (animebestapp.com.menu.SlideMenuView$b)
.class public interface abstract Lanimebestapp/com/menu/SlideMenuView$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/menu/SlideMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Z)V
.end method

###### Class animebestapp.com.menu.SlideMenuView.c (animebestapp.com.menu.SlideMenuView$c)
.class public final Lanimebestapp/com/menu/SlideMenuView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/menu/SlideMenuView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/menu/SlideMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/menu/SlideMenuView;


# direct methods
.method constructor <init>(Lanimebestapp/com/menu/SlideMenuView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/menu/SlideMenuView$c;->a:Lanimebestapp/com/menu/SlideMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$c;->a:Lanimebestapp/com/menu/SlideMenuView;

    invoke-virtual {v0}, Lanimebestapp/com/menu/SlideMenuView;->getListener()Lanimebestapp/com/menu/SlideMenuView$b;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Lanimebestapp/com/menu/SlideMenuView$b;->a(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/menu/SlideMenuView$c;->a:Lanimebestapp/com/menu/SlideMenuView;

    invoke-virtual {v0}, Lanimebestapp/com/menu/SlideMenuView;->getListener()Lanimebestapp/com/menu/SlideMenuView$b;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p1, p2}, Lanimebestapp/com/menu/SlideMenuView$b;->a(Ljava/lang/String;Z)V

    :cond_10
    return-void
.end method
