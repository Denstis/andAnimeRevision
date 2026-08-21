###### Class animebestapp.com.ui.info.e.a.b (animebestapp.com.ui.info.e.a.b)
.class public final Lanimebestapp/com/ui/info/e/a/b;
.super Lanimebestapp/com/ui/a/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/info/e/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/info/e/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/b<",
        "Lanimebestapp/com/ui/info/e/a/e;",
        "Lanimebestapp/com/ui/info/e/a/c;",
        ">;",
        "Lanimebestapp/com/ui/info/e/a/e;"
    }
.end annotation


# static fields
.field public static final f:Lanimebestapp/com/ui/info/e/a/b$a;


# instance fields
.field private d:Lanimebestapp/com/f/a;

.field private e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/info/e/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/info/e/a/b$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/ui/info/e/a/b;->f:Lanimebestapp/com/ui/info/e/a/b$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/b;-><init>()V

    return-void
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

.method private final g(Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/a;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-static {}, Lg/m/j;->a()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v1, "<li>"

    aput-object v1, v2, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lg/s/e;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_21

    :try_start_38
    const-string v9, "/anime/"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lg/s/e;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    const-string v4, "-"

    const-string v9, "/anime/"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lg/s/e;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    add-int/lit8 v10, v5, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v4

    invoke-static/range {v8 .. v13}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    if-eqz v2, :cond_6d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_7b

    :cond_6d
    new-instance v3, Lg/j;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v3, v4}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_75} :catch_75

    :catch_75
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v3, 0x0

    :goto_7b
    const-string v5, "\u042d\u0442\u043e \u0430\u043d\u0438\u043c\u0435 \u0441\u043e\u0441\u0442\u043e\u0438\u0442 \u0438\u0437"

    invoke-static {v2, v5, v0}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_21

    new-instance v5, Lanimebestapp/com/models/a;

    invoke-direct {p0, v2, v7}, Lanimebestapp/com/ui/info/e/a/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v3, v4, v2}, Lanimebestapp/com/models/a;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_90
    return-object v1
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/b;->d:Lanimebestapp/com/f/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lanimebestapp/com/f/a;->b()V

    return-void

    :cond_8
    const-string v0, "dialog"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Lanimebestapp/com/models/Anime;)V
    .registers 5

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lanimebestapp/com/ui/info/InfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/k/a/d;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/b;->d:Lanimebestapp/com/f/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lanimebestapp/com/f/a;->a()V

    return-void

    :cond_8
    const-string v0, "dialog"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Lanimebestapp/com/models/Anime;)V
    .registers 8

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/f/b;

    invoke-direct {v0}, Lanimebestapp/com/f/b;-><init>()V

    sget v1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/info/e/a/b;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lanimebestapp/com/f/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getAnimelist()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    sget v0, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/a/b;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rvList"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lanimebestapp/com/ui/info/e/a/f;

    invoke-virtual {p1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v3

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lanimebestapp/com/models/XFields;->getAnimelist()Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    :goto_3a
    invoke-direct {p0, v3}, Lanimebestapp/com/ui/info/e/a/b;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    sget v4, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v4}, Lanimebestapp/com/ui/info/e/a/b;->f(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    const-string v5, "presenter"

    invoke-static {v1, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lanimebestapp/com/ui/info/e/a/c;

    invoke-direct {v2, p1, v3, v4, v1}, Lanimebestapp/com/ui/info/e/a/f;-><init>(Lanimebestapp/com/models/Anime;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lanimebestapp/com/ui/info/e/a/c;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/a/b;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lanimebestapp/com/ui/info/e/a/b$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/a/b$b;-><init>(Lanimebestapp/com/ui/info/e/a/b;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/b;->e:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/a/b;->e:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/b;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lb/k/a/d;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 p1, 0x0

    return-object p1

    :cond_21
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/a/b;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/info/e/a/c;
    .registers 5

    new-instance v0, Lanimebestapp/com/ui/info/e/a/c;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lb/k/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_24

    const-string v3, "player"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lanimebestapp/com/models/Anime;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Gson().fromJson(argument\u2026yer\"), Anime::class.java)"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lanimebestapp/com/models/Anime;

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/info/e/a/c;-><init>(Lanimebestapp/com/models/Anime;)V

    return-object v0

    :cond_24
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/info/e/a/b;->l()Lanimebestapp/com/ui/info/e/a/c;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b004e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lanimebestapp/com/ui/a/b;->onDestroyView()V

    invoke-virtual {p0}, Lanimebestapp/com/ui/info/e/a/b;->p()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lanimebestapp/com/ui/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/e/a/c;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/a/c;->e()V

    new-instance p1, Lanimebestapp/com/f/a;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_22

    const-string v0, "context!!"

    invoke-static {p2, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lanimebestapp/com/f/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/b;->d:Lanimebestapp/com/f/a;

    return-void

    :cond_22
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/b;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.b.a (animebestapp.com.ui.info.e.a.b$a)
.class public final Lanimebestapp/com/ui/info/e/a/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/info/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/p/b/d;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/Anime;)Lanimebestapp/com/ui/info/e/a/b;
    .registers 5

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/ui/info/e/a/b;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/a/b;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lb/k/a/d;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lb/k/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_27

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "player"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_27
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

###### Class animebestapp.com.ui.info.e.a.b.RunnableC0053b (animebestapp.com.ui.info.e.a.b$b)
.class final Lanimebestapp/com/ui/info/e/a/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/b;->c(Lanimebestapp/com/models/Anime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/a/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/a/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/b$b;->b:Lanimebestapp/com/ui/info/e/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/b$b;->b:Lanimebestapp/com/ui/info/e/a/b;

    sget v1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/e/a/b;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
