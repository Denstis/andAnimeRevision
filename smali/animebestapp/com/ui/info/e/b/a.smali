###### Class animebestapp.com.ui.info.e.b.a (animebestapp.com.ui.info.e.b.a)
.class public final Lanimebestapp/com/ui/info/e/b/a;
.super Lanimebestapp/com/ui/a/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/info/e/b/d;
.implements Lanimebestapp/com/ui/a/f/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/info/e/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/b<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        "Lanimebestapp/com/ui/info/e/b/b;",
        ">;",
        "Lanimebestapp/com/ui/info/e/b/d;",
        "Lanimebestapp/com/ui/a/f/b;"
    }
.end annotation


# static fields
.field public static final f:Lanimebestapp/com/ui/info/e/b/a$a;


# instance fields
.field private d:Lanimebestapp/com/ui/info/d;

.field private e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/info/e/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/info/e/b/a$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/ui/info/e/b/a;->f:Lanimebestapp/com/ui/info/e/b/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/e/b/a;)Lanimebestapp/com/ui/info/e/b/b;
    .registers 1

    iget-object p0, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p0, Lanimebestapp/com/ui/info/e/b/b;

    return-object p0
.end method

.method private final q()V
    .registers 3

    sget v0, Lanimebestapp/com/a;->btnWeb:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    new-instance v1, Lanimebestapp/com/ui/info/e/b/a$b;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/e/b/a$b;-><init>(Lanimebestapp/com/ui/info/e/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lanimebestapp/com/a;->btnNative:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    new-instance v1, Lanimebestapp/com/ui/info/e/b/a$c;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/e/b/a$c;-><init>(Lanimebestapp/com/ui/info/e/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lanimebestapp/com/a;->btnNewPlayer:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/info/e/b/a$d;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/e/b/a$d;-><init>(Lanimebestapp/com/ui/info/e/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lanimebestapp/com/a;->btn1080p:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/info/e/b/a$e;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/e/b/a$e;-><init>(Lanimebestapp/com/ui/info/e/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lanimebestapp/com/ui/info/e/b/a$f;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/e/b/a$f;-><init>(Lanimebestapp/com/ui/info/e/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Lanimebestapp/com/a;->etSearch:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lanimebestapp/com/ui/info/e/b/a$g;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/e/b/a$g;-><init>(Lanimebestapp/com/ui/info/e/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method


# virtual methods
.method public a(Lanimebestapp/com/ui/info/e/b/d$a;)V
    .registers 6

    const-string v0, "state"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->btn1080p:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "btn1080p"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/b/d$a;->e()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1d
    const/16 v1, 0x8

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lanimebestapp/com/a;->btnNewPlayer:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "btnNewPlayer"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/b/d$a;->f()Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    goto :goto_39

    :cond_37
    const/16 v1, 0x8

    :goto_39
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lanimebestapp/com/a;->rgPlayer:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_52

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/b/d$a;->g()Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_4f

    :cond_4d
    const/16 v2, 0x8

    :goto_4f
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_52
    sget v0, Lanimebestapp/com/a;->rgPlayer:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/b/d$a;->b()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_65

    const p1, 0x7f080059

    goto :goto_68

    :cond_65
    const p1, 0x7f080044

    :goto_68
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lanimebestapp/com/models/Anime;I)V
    .registers 8

    const-string v0, "f"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anime"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "content"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "position"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/k/a/d;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "value"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lanimebestapp/com/ui/info/NewPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "frame"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/k/a/d;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/util/LinkedHashMap;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string p2, "series"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lanimebestapp/com/ui/info/d;

    new-instance v0, Lanimebestapp/com/ui/info/e/b/a$h;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/b/a$h;-><init>(Lanimebestapp/com/ui/info/e/b/a;)V

    invoke-direct {p2, p1, v0}, Lanimebestapp/com/ui/info/d;-><init>(Ljava/util/LinkedHashMap;Lanimebestapp/com/ui/a/f/c;)V

    iput-object p2, p0, Lanimebestapp/com/ui/info/e/b/a;->d:Lanimebestapp/com/ui/info/d;

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "rvList"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    sget p1, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lanimebestapp/com/ui/info/e/b/a;->d:Lanimebestapp/com/ui/info/d;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lanimebestapp/com/ui/info/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/k/a/d;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public e(I)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/a;->d:Lanimebestapp/com/ui/info/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/info/d;->a(I)V

    :cond_7
    sget v0, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rvList"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1d
    sget v0, Lanimebestapp/com/a;->rvList:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/e/b/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_31

    const/4 v0, 0x0

    :cond_31
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_39

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(II)V

    :cond_39
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-class v2, Lanimebestapp/com/ui/FunnyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x1685

    invoke-virtual {p0, p1, v0}, Lb/k/a/d;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1e
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public f(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/a;->e:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/b/a;->e:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/a;->e:Ljava/util/HashMap;

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

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/b/a;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public i()V
    .registers 7

    new-instance v0, Lg/p/b/h;

    invoke-direct {v0}, Lg/p/b/h;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/p/b/h;->b:Z

    new-instance v2, Landroidx/appcompat/app/c$a;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_4e

    const v4, 0x7f0f0009

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;I)V

    const-string v3, "\u0412\u044b\u0431\u0438\u0440\u0438\u0442\u0435 \u043f\u043b\u0435\u0435\u0440 \u0434\u043b\u044f \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u044f"

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/c$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "\u0417\u0430\u043f\u043e\u043c\u043d\u0438\u0442\u044c \u0432\u044b\u0431\u043e\u0440"

    aput-object v5, v4, v1

    new-array v3, v3, [Z

    new-instance v5, Lanimebestapp/com/ui/info/e/b/a$i;

    invoke-direct {v5, v0}, Lanimebestapp/com/ui/info/e/b/a$i;-><init>(Lg/p/b/h;)V

    invoke-virtual {v2, v4, v3, v5}, Landroidx/appcompat/app/c$a;->a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/c$a;

    sget-object v3, Lanimebestapp/com/ui/info/e/b/a$j;->b:Lanimebestapp/com/ui/info/e/b/a$j;

    const-string v4, "\u041e\u0442\u043c\u0435\u043d\u0430"

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/c$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    new-instance v3, Lanimebestapp/com/ui/info/e/b/a$k;

    invoke-direct {v3, p0, v0}, Lanimebestapp/com/ui/info/e/b/a$k;-><init>(Lanimebestapp/com/ui/info/e/b/a;Lg/p/b/h;)V

    const-string v4, "\u0412\u043d\u0443\u0442\u0440\u0435\u043d\u043d\u0438\u0439"

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/c$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    new-instance v3, Lanimebestapp/com/ui/info/e/b/a$l;

    invoke-direct {v3, p0, v0}, Lanimebestapp/com/ui/info/e/b/a$l;-><init>(Lanimebestapp/com/ui/info/e/b/a;Lg/p/b/h;)V

    const-string v0, "\u0412\u0435\u0431-\u043f\u043b\u0435\u0435\u0440"

    invoke-virtual {v2, v0, v3}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/c$a;->a(Z)Landroidx/appcompat/app/c$a;

    invoke-virtual {v2}, Landroidx/appcompat/app/c$a;->c()Landroidx/appcompat/app/c;

    return-void

    :cond_4e
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public l()Lanimebestapp/com/ui/info/e/b/b;
    .registers 5

    new-instance v0, Lanimebestapp/com/ui/info/e/b/b;

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

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/info/e/b/b;-><init>(Lanimebestapp/com/models/Anime;)V

    return-object v0

    :cond_24
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/info/e/b/a;->l()Lanimebestapp/com/ui/info/e/b/b;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lb/k/a/d;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1685

    if-ne p1, p2, :cond_e

    iget-object p1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/e/b/b;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/b/b;->g()V

    :cond_e
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0048

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lanimebestapp/com/ui/info/e/b/a;->d:Lanimebestapp/com/ui/info/d;

    invoke-super {p0}, Lanimebestapp/com/ui/a/b;->onDestroyView()V

    invoke-virtual {p0}, Lanimebestapp/com/ui/info/e/b/a;->p()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lanimebestapp/com/ui/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/b/a;->q()V

    return-void
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/a;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.C0057a (animebestapp.com.ui.info.e.b.a$a)
.class public final Lanimebestapp/com/ui/info/e/b/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/info/e/b/a;
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

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/Anime;)Lanimebestapp/com/ui/info/e/b/a;
    .registers 5

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/ui/info/e/b/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/b/a;-><init>()V

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

###### Class animebestapp.com.ui.info.e.b.a.b (animebestapp.com.ui.info.e.b.a$b)
.class final Lanimebestapp/com/ui/info/e/b/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$b;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$b;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-static {p1}, Lanimebestapp/com/ui/info/e/b/a;->a(Lanimebestapp/com/ui/info/e/b/a;)Lanimebestapp/com/ui/info/e/b/b;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lanimebestapp/com/ui/info/e/b/b;->a(Lanimebestapp/com/ui/info/e/b/b;IZILjava/lang/Object;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.c (animebestapp.com.ui.info.e.b.a$c)
.class final Lanimebestapp/com/ui/info/e/b/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$c;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$c;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-static {p1}, Lanimebestapp/com/ui/info/e/b/a;->a(Lanimebestapp/com/ui/info/e/b/a;)Lanimebestapp/com/ui/info/e/b/b;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v0, v1, v2}, Lanimebestapp/com/ui/info/e/b/b;->a(Lanimebestapp/com/ui/info/e/b/b;IZILjava/lang/Object;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.d (animebestapp.com.ui.info.e.b.a$d)
.class final Lanimebestapp/com/ui/info/e/b/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$d;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$d;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-static {p1}, Lanimebestapp/com/ui/info/e/b/a;->a(Lanimebestapp/com/ui/info/e/b/a;)Lanimebestapp/com/ui/info/e/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/b/b;->f()V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.e (animebestapp.com.ui.info.e.b.a$e)
.class final Lanimebestapp/com/ui/info/e/b/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$e;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$e;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-static {p1}, Lanimebestapp/com/ui/info/e/b/a;->a(Lanimebestapp/com/ui/info/e/b/a;)Lanimebestapp/com/ui/info/e/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/e/b/b;->e()V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.f (animebestapp.com.ui.info.e.b.a$f)
.class public final Lanimebestapp/com/ui/info/e/b/a$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$f;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    const-string p2, "text"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    const-string p2, "text"

    invoke-static {p1, p2}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lanimebestapp/com/ui/info/e/b/a$f;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-static {p2}, Lanimebestapp/com/ui/info/e/b/a;->a(Lanimebestapp/com/ui/info/e/b/a;)Lanimebestapp/com/ui/info/e/b/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lanimebestapp/com/ui/info/e/b/b;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.g (animebestapp.com.ui.info.e.b.a$g)
.class final Lanimebestapp/com/ui/info/e/b/a$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$g;->a:Lanimebestapp/com/ui/info/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_16

    const/4 p1, 0x6

    if-eq p2, p1, :cond_16

    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_1f

    :cond_16
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    return p1

    :cond_21
    :goto_21
    sget-object p1, Lanimebestapp/com/utils/j;->a:Lanimebestapp/com/utils/j;

    iget-object p2, p0, Lanimebestapp/com/ui/info/e/b/a$g;->a:Lanimebestapp/com/ui/info/e/b/a;

    invoke-virtual {p2}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p2

    if-eqz p2, :cond_35

    const-string p3, "activity!!"

    invoke-static {p2, p3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lanimebestapp/com/utils/j;->a(Lb/k/a/e;)V

    const/4 p1, 0x1

    return p1

    :cond_35
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

###### Class animebestapp.com.ui.info.e.b.a.h (animebestapp.com.ui.info.e.b.a$h)
.class public final Lanimebestapp/com/ui/info/e/b/a$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/a/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->a(Ljava/util/LinkedHashMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$h;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILanimebestapp/com/models/d;)V
    .registers 3

    iget-object p2, p0, Lanimebestapp/com/ui/info/e/b/a$h;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-static {p2}, Lanimebestapp/com/ui/info/e/b/a;->a(Lanimebestapp/com/ui/info/e/b/a;)Lanimebestapp/com/ui/info/e/b/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lanimebestapp/com/ui/info/e/b/b;->a(I)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.i (animebestapp.com.ui.info.e.b.a$i)
.class final Lanimebestapp/com/ui/info/e/b/a$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/p/b/h;


# direct methods
.method constructor <init>(Lg/p/b/h;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$i;->a:Lg/p/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$i;->a:Lg/p/b/h;

    iput-boolean p3, p1, Lg/p/b/h;->b:Z

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.j (animebestapp.com.ui.info.e.b.a$j)
.class final Lanimebestapp/com/ui/info/e/b/a$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final b:Lanimebestapp/com/ui/info/e/b/a$j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/e/b/a$j;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/b/a$j;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/e/b/a$j;->b:Lanimebestapp/com/ui/info/e/b/a$j;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.k (animebestapp.com.ui.info.e.b.a$k)
.class final Lanimebestapp/com/ui/info/e/b/a$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/b/a;

.field final synthetic c:Lg/p/b/h;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/a;Lg/p/b/h;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$k;->b:Lanimebestapp/com/ui/info/e/b/a;

    iput-object p2, p0, Lanimebestapp/com/ui/info/e/b/a$k;->c:Lg/p/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$k;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-static {p1}, Lanimebestapp/com/ui/info/e/b/a;->a(Lanimebestapp/com/ui/info/e/b/a;)Lanimebestapp/com/ui/info/e/b/b;

    move-result-object p1

    iget-object p2, p0, Lanimebestapp/com/ui/info/e/b/a$k;->c:Lg/p/b/h;

    iget-boolean p2, p2, Lg/p/b/h;->b:Z

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/info/e/b/b;->a(Z)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.a.l (animebestapp.com.ui.info.e.b.a$l)
.class final Lanimebestapp/com/ui/info/e/b/a$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/e/b/a;

.field final synthetic c:Lg/p/b/h;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/a;Lg/p/b/h;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$l;->b:Lanimebestapp/com/ui/info/e/b/a;

    iput-object p2, p0, Lanimebestapp/com/ui/info/e/b/a$l;->c:Lg/p/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/b/a$l;->b:Lanimebestapp/com/ui/info/e/b/a;

    invoke-static {p1}, Lanimebestapp/com/ui/info/e/b/a;->a(Lanimebestapp/com/ui/info/e/b/a;)Lanimebestapp/com/ui/info/e/b/b;

    move-result-object p1

    iget-object p2, p0, Lanimebestapp/com/ui/info/e/b/a$l;->c:Lg/p/b/h;

    iget-boolean p2, p2, Lg/p/b/h;->b:Z

    invoke-virtual {p1, p2}, Lanimebestapp/com/ui/info/e/b/b;->b(Z)V

    return-void
.end method
