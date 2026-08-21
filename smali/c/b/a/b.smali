###### Class c.b.a.b (c.b.a.b)
.class public final Lc/b/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z = false

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    sput-object v0, Lc/b/a/b;->b:Ljava/util/Map;

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    sput-object v0, Lc/b/a/b;->c:Ljava/util/Map;

    new-instance v0, Lc/b/a/b$a;

    invoke-direct {v0}, Lc/b/a/b$a;-><init>()V

    sput-object v0, Lc/b/a/b;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static a(Landroid/app/Activity;)Lc/b/a/a;
    .registers 2

    if-eqz p0, :cond_17

    sget-object v0, Lc/b/a/b;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    sget-object v0, Lc/b/a/b;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/b/a/a;

    return-object p0

    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Activity is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation

    if-eqz p0, :cond_19

    if-eqz p1, :cond_11

    invoke-static {p0}, Lc/b/a/b;->a(Landroid/app/Activity;)Lc/b/a/a;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p0, p1}, Lc/b/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_10
    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "View id is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Activity is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a()Ljava/util/Map;
    .registers 1

    sget-object v0, Lc/b/a/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lc/b/a/c/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lc/b/a/c/c<",
            "+",
            "Lc/b/a/c/e;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_a

    invoke-static {p0}, Lc/b/a/b;->b(Landroid/app/Activity;)Lc/b/a/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lc/b/a/a;->a(Ljava/lang/String;Lc/b/a/c/c;)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Activity is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Landroid/app/Activity;)Lc/b/a/a;
    .registers 4

    if-eqz p0, :cond_4b

    sget-object v0, Lc/b/a/b;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_36

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/b/a/b;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lc/b/a/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    sget-object v1, Lc/b/a/b;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-boolean p0, Lc/b/a/b;->a:Z

    if-eqz p0, :cond_36

    const-string p0, "PresenterManager"

    const-string v1, "Registering ActivityLifecycleCallbacks"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    sget-object p0, Lc/b/a/b;->c:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/b/a/a;

    if-nez p0, :cond_4a

    new-instance p0, Lc/b/a/a;

    invoke-direct {p0}, Lc/b/a/a;-><init>()V

    sget-object v1, Lc/b/a/b;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    return-object p0

    :cond_4b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Activity is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b()Ljava/util/Map;
    .registers 1

    sget-object v0, Lc/b/a/b;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_c

    invoke-static {p0}, Lc/b/a/b;->a(Landroid/app/Activity;)Lc/b/a/a;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Lc/b/a/a;->b(Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Activity is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class c.b.a.b.a (c.b.a.b$a)
.class final Lc/b/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    if-eqz p2, :cond_11

    const-string v0, "com.hannesdorfmann.mosby3.MosbyPresenterManagerActivityId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-static {}, Lc/b/a/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-static {}, Lc/b/a/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_46

    invoke-static {}, Lc/b/a/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/a;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lc/b/a/a;->a()V

    invoke-static {}, Lc/b/a/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-static {}, Lc/b/a/b;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lc/b/a/b;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-boolean v0, Lc/b/a/b;->a:Z

    if-eqz v0, :cond_46

    const-string v0, "PresenterManager"

    const-string v1, "Unregistering ActivityLifecycleCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    invoke-static {}, Lc/b/a/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Lc/b/a/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_11

    const-string v0, "com.hannesdorfmann.mosby3.MosbyPresenterManagerActivityId"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
