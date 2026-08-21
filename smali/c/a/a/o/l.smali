###### Class c.a.a.o.l (c.a.a.o.l)
.class public Lc/a/a/o/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/l$b;
    }
.end annotation


# static fields
.field private static final j:Lc/a/a/o/l$b;


# instance fields
.field private volatile b:Lc/a/a/k;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lc/a/a/o/k;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb/k/a/i;",
            "Lc/a/a/o/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private final f:Lc/a/a/o/l$b;

.field private final g:Lb/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/k/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lb/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/a<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc/a/a/o/l$a;

    invoke-direct {v0}, Lc/a/a/o/l$a;-><init>()V

    sput-object v0, Lc/a/a/o/l;->j:Lc/a/a/o/l$b;

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/l$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/a/a/o/l;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/a/a/o/l;->d:Ljava/util/Map;

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lc/a/a/o/l;->g:Lb/e/a;

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lc/a/a/o/l;->h:Lb/e/a;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lc/a/a/o/l;->i:Landroid/os/Bundle;

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    sget-object p1, Lc/a/a/o/l;->j:Lc/a/a/o/l$b;

    :goto_2b
    iput-object p1, p0, Lc/a/a/o/l;->f:Lc/a/a/o/l$b;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lc/a/a/o/l;->e:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lc/a/a/o/l;->h:Lb/e/a;

    invoke-virtual {v0}, Lb/e/g;->clear()V

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/o/l;->h:Lb/e/a;

    invoke-direct {p0, v0, v1}, Lc/a/a/o/l;->a(Landroid/app/FragmentManager;Lb/e/a;)V

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v0, p0, Lc/a/a/o/l;->h:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_27

    goto :goto_36

    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_16

    :cond_36
    :goto_36
    iget-object p1, p0, Lc/a/a/o/l;->h:Lb/e/a;

    invoke-virtual {p1}, Lb/e/g;->clear()V

    return-object v0
.end method

.method private a(Landroid/view/View;Lb/k/a/e;)Lb/k/a/d;
    .registers 5

    iget-object v0, p0, Lc/a/a/o/l;->g:Lb/e/a;

    invoke-virtual {v0}, Lb/e/g;->clear()V

    invoke-virtual {p2}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/k/a/i;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/o/l;->g:Lb/e/a;

    invoke-static {v0, v1}, Lc/a/a/o/l;->a(Ljava/util/Collection;Ljava/util/Map;)V

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v0, p0, Lc/a/a/o/l;->g:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/a/d;

    if-eqz v0, :cond_2b

    goto :goto_3a

    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1a

    :cond_3a
    :goto_3a
    iget-object p1, p0, Lc/a/a/o/l;->g:Lb/e/a;

    invoke-virtual {p1}, Lb/e/g;->clear()V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/a/a/k;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lc/a/a/o/l;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/a/a/o/k;

    move-result-object p2

    invoke-virtual {p2}, Lc/a/a/o/k;->b()Lc/a/a/k;

    move-result-object p3

    if-nez p3, :cond_1f

    invoke-static {p1}, Lc/a/a/c;->b(Landroid/content/Context;)Lc/a/a/c;

    move-result-object p3

    iget-object p4, p0, Lc/a/a/o/l;->f:Lc/a/a/o/l$b;

    invoke-virtual {p2}, Lc/a/a/o/k;->a()Lc/a/a/o/a;

    move-result-object v0

    invoke-virtual {p2}, Lc/a/a/o/k;->c()Lc/a/a/o/m;

    move-result-object v1

    invoke-interface {p4, p3, v0, v1, p1}, Lc/a/a/o/l$b;->a(Lc/a/a/c;Lc/a/a/o/h;Lc/a/a/o/m;Landroid/content/Context;)Lc/a/a/k;

    move-result-object p3

    invoke-virtual {p2, p3}, Lc/a/a/o/k;->a(Lc/a/a/k;)V

    :cond_1f
    return-object p3
.end method

.method private a(Landroid/content/Context;Lb/k/a/i;Lb/k/a/d;Z)Lc/a/a/k;
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Lc/a/a/o/l;->a(Lb/k/a/i;Lb/k/a/d;Z)Lc/a/a/o/o;

    move-result-object p2

    invoke-virtual {p2}, Lc/a/a/o/o;->p()Lc/a/a/k;

    move-result-object p3

    if-nez p3, :cond_1f

    invoke-static {p1}, Lc/a/a/c;->b(Landroid/content/Context;)Lc/a/a/c;

    move-result-object p3

    iget-object p4, p0, Lc/a/a/o/l;->f:Lc/a/a/o/l$b;

    invoke-virtual {p2}, Lc/a/a/o/o;->o()Lc/a/a/o/a;

    move-result-object v0

    invoke-virtual {p2}, Lc/a/a/o/o;->q()Lc/a/a/o/m;

    move-result-object v1

    invoke-interface {p4, p3, v0, v1, p1}, Lc/a/a/o/l$b;->a(Lc/a/a/c;Lc/a/a/o/h;Lc/a/a/o/m;Landroid/content/Context;)Lc/a/a/k;

    move-result-object p3

    invoke-virtual {p2, p3}, Lc/a/a/o/o;->a(Lc/a/a/k;)V

    :cond_1f
    return-object p3
.end method

.method private a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/a/a/o/k;
    .registers 6

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lc/a/a/o/k;

    if-nez v1, :cond_3f

    iget-object v1, p0, Lc/a/a/o/l;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/o/k;

    if-nez v1, :cond_3f

    new-instance v1, Lc/a/a/o/k;

    invoke-direct {v1}, Lc/a/a/o/k;-><init>()V

    invoke-virtual {v1, p2}, Lc/a/a/o/k;->a(Landroid/app/Fragment;)V

    if-eqz p3, :cond_25

    invoke-virtual {v1}, Lc/a/a/o/k;->a()Lc/a/a/o/a;

    move-result-object p2

    invoke-virtual {p2}, Lc/a/a/o/a;->b()V

    :cond_25
    iget-object p2, p0, Lc/a/a/o/l;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p2, p0, Lc/a/a/o/l;->e:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3f
    return-object v1
.end method

.method private a(Lb/k/a/i;Lb/k/a/d;Z)Lc/a/a/o/o;
    .registers 6

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Lb/k/a/i;->a(Ljava/lang/String;)Lb/k/a/d;

    move-result-object v1

    check-cast v1, Lc/a/a/o/o;

    if-nez v1, :cond_3e

    iget-object v1, p0, Lc/a/a/o/l;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/o/o;

    if-nez v1, :cond_3e

    new-instance v1, Lc/a/a/o/o;

    invoke-direct {v1}, Lc/a/a/o/o;-><init>()V

    invoke-virtual {v1, p2}, Lc/a/a/o/o;->a(Lb/k/a/d;)V

    if-eqz p3, :cond_25

    invoke-virtual {v1}, Lc/a/a/o/o;->o()Lc/a/a/o/a;

    move-result-object p2

    invoke-virtual {p2}, Lc/a/a/o/a;->b()V

    :cond_25
    iget-object p2, p0, Lc/a/a/o/l;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lb/k/a/i;->a()Lb/k/a/o;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Lb/k/a/o;->a(Lb/k/a/d;Ljava/lang/String;)Lb/k/a/o;

    invoke-virtual {p2}, Lb/k/a/o;->b()I

    iget-object p2, p0, Lc/a/a/o/l;->e:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3e
    return-object v1
.end method

.method private a(Landroid/app/FragmentManager;Lb/e/a;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2f

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lc/a/a/o/l;->a(Landroid/app/FragmentManager;Lb/e/a;)V

    goto :goto_e

    :cond_2f
    invoke-direct {p0, p1, p2}, Lc/a/a/o/l;->b(Landroid/app/FragmentManager;Lb/e/a;)V

    :cond_32
    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lb/k/a/d;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lb/k/a/d;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/a/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lb/k/a/d;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_7

    :cond_1c
    invoke-virtual {v0}, Lb/k/a/d;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lb/k/a/d;->getChildFragmentManager()Lb/k/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/k/a/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lc/a/a/o/l;->a(Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_7

    :cond_2f
    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_7
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/o/l;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Landroid/app/FragmentManager;Lb/e/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lb/e/a<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lc/a/a/o/l;->i:Landroid/os/Bundle;

    add-int/lit8 v2, v0, 0x1

    const-string v3, "key"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lc/a/a/o/l;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v3}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    nop

    :goto_13
    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_30

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lc/a/a/o/l;->a(Landroid/app/FragmentManager;Lb/e/a;)V

    :cond_30
    move v0, v2

    goto :goto_1
.end method

.method private c(Landroid/content/Context;)Lc/a/a/k;
    .registers 6

    iget-object v0, p0, Lc/a/a/o/l;->b:Lc/a/a/k;

    if-nez v0, :cond_2c

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lc/a/a/o/l;->b:Lc/a/a/k;

    if-nez v0, :cond_27

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/c;->b(Landroid/content/Context;)Lc/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/o/l;->f:Lc/a/a/o/l$b;

    new-instance v2, Lc/a/a/o/b;

    invoke-direct {v2}, Lc/a/a/o/b;-><init>()V

    new-instance v3, Lc/a/a/o/g;

    invoke-direct {v3}, Lc/a/a/o/g;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1, v0, v2, v3, p1}, Lc/a/a/o/l$b;->a(Lc/a/a/c;Lc/a/a/o/h;Lc/a/a/o/m;Landroid/content/Context;)Lc/a/a/k;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/l;->b:Lc/a/a/k;

    :cond_27
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw p1

    :cond_2c
    :goto_2c
    iget-object p1, p0, Lc/a/a/o/l;->b:Lc/a/a/k;

    return-object p1
.end method

.method private static c(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_15

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method private static d(Landroid/app/Activity;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lc/a/a/k;
    .registers 5

    invoke-static {}, Lc/a/a/t/k;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-static {p1}, Lc/a/a/o/l;->c(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lc/a/a/o/l;->d(Landroid/app/Activity;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lc/a/a/o/l;->a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Fragment;)Lc/a/a/k;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {}, Lc/a/a/t/k;->b()Z

    move-result v0

    if-nez v0, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_13

    goto :goto_24

    :cond_13
    invoke-virtual {p1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lc/a/a/o/l;->a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_24
    :goto_24
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;)Lc/a/a/k;
    .registers 3

    if-eqz p1, :cond_36

    invoke-static {}, Lc/a/a/t/k;->c()Z

    move-result v0

    if-eqz v0, :cond_31

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_31

    instance-of v0, p1, Lb/k/a/e;

    if-eqz v0, :cond_17

    check-cast p1, Lb/k/a/e;

    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Lb/k/a/e;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_17
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_22

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Landroid/app/Activity;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_22
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_31

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_31
    invoke-direct {p0, p1}, Lc/a/a/o/l;->c(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;)Lc/a/a/k;
    .registers 4

    invoke-static {}, Lc/a/a/t/k;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v0, v1}, Lc/a/a/t/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/o/l;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2a

    goto :goto_6

    :cond_2a
    instance-of v1, v0, Lb/k/a/e;

    if-eqz v1, :cond_41

    move-object v1, v0

    check-cast v1, Lb/k/a/e;

    invoke-direct {p0, p1, v1}, Lc/a/a/o/l;->a(Landroid/view/View;Lb/k/a/e;)Lb/k/a/d;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Lb/k/a/d;)Lc/a/a/k;

    move-result-object p1

    goto :goto_40

    :cond_3c
    invoke-virtual {p0, v0}, Lc/a/a/o/l;->a(Landroid/app/Activity;)Lc/a/a/k;

    move-result-object p1

    :goto_40
    return-object p1

    :cond_41
    invoke-direct {p0, p1, v0}, Lc/a/a/o/l;->a(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_4c

    invoke-virtual {p0, v0}, Lc/a/a/o/l;->a(Landroid/app/Activity;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_4c
    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Landroid/app/Fragment;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/k/a/d;)Lc/a/a/k;
    .registers 5

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v0, v1}, Lc/a/a/t/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lc/a/a/t/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-virtual {p1}, Lb/k/a/d;->getChildFragmentManager()Lb/k/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v1

    invoke-virtual {p1}, Lb/k/a/d;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lc/a/a/o/l;->a(Landroid/content/Context;Lb/k/a/i;Lb/k/a/d;Z)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/k/a/e;)Lc/a/a/k;
    .registers 5

    invoke-static {}, Lc/a/a/t/k;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/o/l;->a(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-static {p1}, Lc/a/a/o/l;->c(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lc/a/a/o/l;->d(Landroid/app/Activity;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lc/a/a/o/l;->a(Landroid/content/Context;Lb/k/a/i;Lb/k/a/d;Z)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/app/Activity;)Lc/a/a/o/k;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lc/a/a/o/l;->d(Landroid/app/Activity;)Z

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lc/a/a/o/l;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/a/a/o/k;

    move-result-object p1

    return-object p1
.end method

.method b(Lb/k/a/e;)Lc/a/a/o/o;
    .registers 4

    invoke-virtual {p1}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    invoke-static {p1}, Lc/a/a/o/l;->d(Landroid/app/Activity;)Z

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lc/a/a/o/l;->a(Lb/k/a/i;Lb/k/a/d;Z)Lc/a/a/o/o;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_1f

    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lb/k/a/i;

    iget-object p1, p0, Lc/a/a/o/l;->d:Ljava/util/Map;

    goto :goto_1b

    :cond_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    iget-object p1, p0, Lc/a/a/o/l;->c:Ljava/util/Map;

    :goto_1b
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1f
    if-eqz v2, :cond_40

    if-nez p1, :cond_40

    const/4 p1, 0x5

    const-string v0, "RMRetriever"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_40

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v2
.end method

###### Class c.a.a.o.l.a (c.a.a.o.l$a)
.class Lc/a/a/o/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/o/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/c;Lc/a/a/o/h;Lc/a/a/o/m;Landroid/content/Context;)Lc/a/a/k;
    .registers 6

    new-instance v0, Lc/a/a/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lc/a/a/k;-><init>(Lc/a/a/c;Lc/a/a/o/h;Lc/a/a/o/m;Landroid/content/Context;)V

    return-object v0
.end method

###### Class c.a.a.o.l.b (c.a.a.o.l$b)
.class public interface abstract Lc/a/a/o/l$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lc/a/a/c;Lc/a/a/o/h;Lc/a/a/o/m;Landroid/content/Context;)Lc/a/a/k;
.end method
