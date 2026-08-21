###### Class animebestapp.com.ui.nav.h.d.f.a (animebestapp.com.ui.nav.h.d.f.a)
.class public final Lanimebestapp/com/ui/nav/h/d/f/a;
.super Lanimebestapp/com/ui/a/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/nav/h/d/f/d;
.implements Lanimebestapp/com/ui/a/f/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/ui/nav/h/d/f/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/b<",
        "Lanimebestapp/com/ui/nav/h/d/f/d;",
        "Lanimebestapp/com/ui/nav/h/d/f/b;",
        ">;",
        "Lanimebestapp/com/ui/nav/h/d/f/d;",
        "Lanimebestapp/com/ui/a/f/d;"
    }
.end annotation


# static fields
.field public static final g:Lanimebestapp/com/ui/nav/h/d/f/a$a;


# instance fields
.field private d:Lanimebestapp/com/ui/a/e;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/f/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/nav/h/d/f/a$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/ui/nav/h/d/f/a;->g:Lanimebestapp/com/ui/nav/h/d/f/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/d/f/a;)V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/d/f/a;->q()V

    return-void
.end method

.method private final q()V
    .registers 8

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a1

    const-string v2, "context!!"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context!!.applicationContext"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "file.json"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "context!!.applicationCon\u2026.assets.open(\"file.json\")"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lg/s/c;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v0, 0x2000

    instance-of v2, v3, Ljava/io/BufferedReader;

    if-eqz v2, :cond_35

    check-cast v3, Ljava/io/BufferedReader;

    move-object v2, v3

    goto :goto_3a

    :cond_35
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_3a
    :try_start_3a
    invoke-static {v2}, Lg/o/b;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_19a

    invoke-static {v2, v1}, Lg/o/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lanimebestapp/com/models/f;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/models/f;

    new-instance v2, Lanimebestapp/com/ui/a/e;

    invoke-virtual {p0}, Lb/k/a/d;->getChildFragmentManager()Lb/k/a/i;

    move-result-object v3

    const-string v4, "childFragmentManager"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lanimebestapp/com/ui/a/e;-><init>(Lb/k/a/i;)V

    iput-object v2, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    const-string v3, "adapter"

    if-eqz v2, :cond_196

    sget-object v4, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v5, "Mon"

    invoke-virtual {v0, v5}, Lanimebestapp/com/models/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v4

    const v5, 0x7f0e0083

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.monday)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v2, :cond_192

    sget-object v4, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v5, "Tue"

    invoke-virtual {v0, v5}, Lanimebestapp/com/models/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v4

    const v5, 0x7f0e00ad

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.tuesday)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v2, :cond_18e

    sget-object v4, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v5, "Wed"

    invoke-virtual {v0, v5}, Lanimebestapp/com/models/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v4

    const v5, 0x7f0e00b1

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.wednesday)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v2, :cond_18a

    sget-object v4, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v5, "Thu"

    invoke-virtual {v0, v5}, Lanimebestapp/com/models/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v4

    const v5, 0x7f0e00aa

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.thursday)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v2, :cond_186

    sget-object v4, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v5, "Fri"

    invoke-virtual {v0, v5}, Lanimebestapp/com/models/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v4

    const v5, 0x7f0e0075

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.friday)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v2, :cond_182

    sget-object v4, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v5, "Sat"

    invoke-virtual {v0, v5}, Lanimebestapp/com/models/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v4

    const v5, 0x7f0e009e

    invoke-virtual {p0, v5}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.saturday)"

    invoke-static {v5, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v2, :cond_17e

    sget-object v4, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v5, "Sun"

    invoke-virtual {v0, v5}, Lanimebestapp/com/models/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v4, v0}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v0

    const v4, 0x7f0e00a7

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.sunday)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v2, "viewpager"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v2, :cond_17a

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget v1, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    sget v0, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void

    :cond_17a
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_17e
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_182
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_186
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_18a
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_18e
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_192
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_196
    invoke-static {v3}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :catchall_19a
    move-exception v0

    :try_start_19b
    throw v0
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_19c

    :catchall_19c
    move-exception v1

    invoke-static {v2, v0}, Lg/o/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1a1
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/e;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/ui/a/e;

    invoke-virtual {p0}, Lb/k/a/d;->getChildFragmentManager()Lb/k/a/i;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lanimebestapp/com/ui/a/e;-><init>(Lb/k/a/i;)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-eqz v0, :cond_159

    sget-object v3, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v4, "Mon"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v3

    const v4, 0x7f0e0083

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.monday)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_155

    sget-object v3, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v4, "Tue"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v3

    const v4, 0x7f0e00ad

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.tuesday)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_151

    sget-object v3, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v4, "Wed"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v3

    const v4, 0x7f0e00b1

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.wednesday)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_14d

    sget-object v3, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v4, "Thu"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v3

    const v4, 0x7f0e00aa

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.thursday)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_149

    sget-object v3, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v4, "Fri"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v3

    const v4, 0x7f0e0075

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.friday)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_145

    sget-object v3, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v4, "Sat"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object v3

    const v4, 0x7f0e009e

    invoke-virtual {p0, v4}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.saturday)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_141

    sget-object v3, Lanimebestapp/com/ui/nav/h/d/b;->h:Lanimebestapp/com/ui/nav/h/d/b$a;

    const-string v4, "Sun"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v3, p1}, Lanimebestapp/com/ui/nav/h/d/b$a;->a(Ljava/util/List;)Lanimebestapp/com/ui/nav/h/d/b;

    move-result-object p1

    const v3, 0x7f0e00a7

    invoke-virtual {p0, v3}, Lb/k/a/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.sunday)"

    invoke-static {v3, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lanimebestapp/com/ui/a/e;->a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;

    sget p1, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    const-string v0, "viewpager"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v0, :cond_13d

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    sget p1, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    sget p1, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->invalidate()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->e:Ljava/lang/Boolean;

    if-eqz p1, :cond_13c

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/f/a;->d(Z)Z

    :cond_13c
    return-void

    :cond_13d
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_141
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_145
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_149
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_14d
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_151
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_155
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_159
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Z)Z
    .registers 6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lb/k/a/d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    sget v1, Lanimebestapp/com/a;->tabs:I

    invoke-virtual {p0, v1}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lb/k/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_25

    if-eqz v2, :cond_21

    const v3, 0x7f0500d2

    goto :goto_2a

    :cond_21
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_25
    if-eqz v2, :cond_3f

    const v3, 0x7f0500d1

    :goto_2a
    invoke-static {v2, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->d:Lanimebestapp/com/ui/a/e;

    if-eqz v1, :cond_39

    invoke-virtual {v1, p1}, Lanimebestapp/com/ui/a/e;->a(Z)V

    goto :goto_43

    :cond_39
    const-string p1, "adapter"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_3f
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_43
    :goto_43
    const/4 p1, 0x1

    return p1
.end method

.method public f(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->f:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->f:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->f:Ljava/util/HashMap;

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

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/nav/h/d/f/b;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/f/b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/d/f/b;-><init>()V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/d/f/a;->l()Lanimebestapp/com/ui/nav/h/d/f/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b004d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lanimebestapp/com/ui/a/b;->onDestroyView()V

    invoke-virtual {p0}, Lanimebestapp/com/ui/nav/h/d/f/a;->p()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lc/b/a/c/b;->onPause()V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_18

    check-cast v0, Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->btnRefresh:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_18
    new-instance v0, Lg/j;

    const-string v1, "null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity"

    invoke-direct {v0, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lc/b/a/c/b;->onResume()V

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_1c

    check-cast v0, Lanimebestapp/com/ui/nav/NavActivity;

    sget v1, Lanimebestapp/com/a;->btnRefresh:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/nav/NavActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lanimebestapp/com/ui/nav/h/d/f/a$b;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/d/f/a$b;-><init>(Lanimebestapp/com/ui/nav/h/d/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1c
    new-instance v0, Lg/j;

    const-string v1, "null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity"

    invoke-direct {v0, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lanimebestapp/com/ui/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/nav/h/d/f/b;

    invoke-virtual {p1}, Lanimebestapp/com/ui/nav/h/d/f/b;->e()V

    return-void
.end method

.method public p()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.f.a.C0083a (animebestapp.com.ui.nav.h.d.f.a$a)
.class public final Lanimebestapp/com/ui/nav/h/d/f/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/ui/nav/h/d/f/a;
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

    invoke-direct {p0}, Lanimebestapp/com/ui/nav/h/d/f/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lanimebestapp/com/ui/nav/h/d/f/a;
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/f/a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/d/f/a;-><init>()V

    return-object v0
.end method

###### Class animebestapp.com.ui.nav.h.d.f.a.b (animebestapp.com.ui.nav.h.d.f.a$b)
.class final Lanimebestapp/com/ui/nav/h/d/f/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/f/a;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/nav/h/d/f/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/d/f/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/f/a$b;->b:Lanimebestapp/com/ui/nav/h/d/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/d/f/a$b;->b:Lanimebestapp/com/ui/nav/h/d/f/a;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    const-string v0, "viewpager"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    if-eqz p1, :cond_3a

    check-cast p1, Lanimebestapp/com/ui/a/e;

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/e;->d()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/d/f/a$b;->b:Lanimebestapp/com/ui/nav/h/d/f/a;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/d/f/a$b;->b:Lanimebestapp/com/ui/nav/h/d/f/a;

    sget v0, Lanimebestapp/com/a;->viewpager:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/nav/h/d/f/a;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/d/f/a$b;->b:Lanimebestapp/com/ui/nav/h/d/f/a;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/d/f/a;->a(Lanimebestapp/com/ui/nav/h/d/f/a;)V

    return-void

    :cond_3a
    new-instance p1, Lg/j;

    const-string v0, "null cannot be cast to non-null type animebestapp.com.ui.base.PagerAdapter"

    invoke-direct {p1, v0}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method
