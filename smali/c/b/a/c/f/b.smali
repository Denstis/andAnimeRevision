###### Class c.b.a.c.f.b (c.b.a.c.f.b)
.class public Lc/b/a/c/f/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lc/b/a/c/e;",
        "P::",
        "Lc/b/a/c/c<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lc/b/a/c/f/a;"
    }
.end annotation


# static fields
.field public static e:Z = false


# instance fields
.field private a:Lc/b/a/c/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/f/e<",
            "TV;TP;>;"
        }
    .end annotation
.end field

.field protected b:Z

.field protected c:Landroid/app/Activity;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc/b/a/c/f/e;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lc/b/a/c/f/e<",
            "TV;TP;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    if-eqz p1, :cond_19

    if-eqz p2, :cond_11

    iput-object p2, p0, Lc/b/a/c/f/b;->a:Lc/b/a/c/f/e;

    iput-object p1, p0, Lc/b/a/c/f/b;->c:Landroid/app/Activity;

    iput-boolean p3, p0, Lc/b/a/c/f/b;->b:Z

    return-void

    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MvpDelegateCallback is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Activity is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Lc/b/a/c/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/c/f/b;->a:Lc/b/a/c/f/e;

    invoke-interface {v0}, Lc/b/a/c/f/e;->l()Lc/b/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-boolean v1, p0, Lc/b/a/c/f/b;->b:Z

    if-eqz v1, :cond_1d

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lc/b/a/c/f/b;->c:Landroid/app/Activity;

    iget-object v2, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lc/b/a/b;->a(Landroid/app/Activity;Ljava/lang/String;Lc/b/a/c/c;)V

    :cond_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presenter returned from createPresenter() is null. Activity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/b/a/c/f/b;->c:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(ZLandroid/app/Activity;)Z
    .registers 2

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private b()Lc/b/a/c/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/c/f/b;->a:Lc/b/a/c/f/e;

    invoke-interface {v0}, Lc/b/a/c/f/e;->n()Lc/b/a/c/e;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "View returned from getMvpView() is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Lc/b/a/c/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/c/f/b;->a:Lc/b/a/c/f/e;

    invoke-interface {v0}, Lc/b/a/c/f/e;->m()Lc/b/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Presenter returned from getPresenter() is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onContentChanged()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, " for view "

    const-string v1, "ActivityMvpDelegateImpl"

    if-eqz p1, :cond_94

    iget-boolean v2, p0, Lc/b/a/c/f/b;->b:Z

    if-eqz v2, :cond_94

    const-string v2, "com.hannesdorfmann.mosby3.activity.mvp.id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    sget-boolean p1, Lc/b/a/c/f/b;->e:Z

    if-eqz p1, :cond_3a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MosbyView ID = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for MvpView: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/b/a/c/f/b;->a:Lc/b/a/c/f/e;

    invoke-interface {v2}, Lc/b/a/c/f/e;->n()Lc/b/a/c/e;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-object p1, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    if-eqz p1, :cond_6d

    iget-object v2, p0, Lc/b/a/c/f/b;->c:Landroid/app/Activity;

    invoke-static {v2, p1}, Lc/b/a/b;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c/c;

    if-eqz p1, :cond_6d

    sget-boolean v2, Lc/b/a/c/f/b;->e:Z

    if-eqz v2, :cond_a4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reused presenter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/b/a/c/f/b;->a:Lc/b/a/c/f/e;

    invoke-interface {v0}, Lc/b/a/c/f/e;->n()Lc/b/a/c/e;

    move-result-object v0

    :goto_62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    :cond_6d
    invoke-direct {p0}, Lc/b/a/c/f/b;->a()Lc/b/a/c/c;

    move-result-object p1

    sget-boolean v2, Lc/b/a/c/f/b;->e:Z

    if-eqz v2, :cond_a4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No presenter found although view Id was here: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Most likely this was caused by a process death. New Presenter created"

    :goto_86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/b;->b()Lc/b/a/c/e;

    move-result-object v0

    goto :goto_62

    :cond_94
    invoke-direct {p0}, Lc/b/a/c/f/b;->a()Lc/b/a/c/c;

    move-result-object p1

    sget-boolean v2, Lc/b/a/c/f/b;->e:Z

    if-eqz v2, :cond_a4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New presenter "

    goto :goto_86

    :cond_a4
    :goto_a4
    if-eqz p1, :cond_db

    iget-object v0, p0, Lc/b/a/c/f/b;->a:Lc/b/a/c/f/e;

    invoke-interface {v0, p1}, Lc/b/a/c/f/e;->a(Lc/b/a/c/c;)V

    invoke-direct {p0}, Lc/b/a/c/f/b;->c()Lc/b/a/c/c;

    move-result-object v0

    invoke-direct {p0}, Lc/b/a/c/f/b;->b()Lc/b/a/c/e;

    move-result-object v2

    invoke-interface {v0, v2}, Lc/b/a/c/c;->a(Lc/b/a/c/e;)V

    sget-boolean v0, Lc/b/a/c/f/b;->e:Z

    if-eqz v0, :cond_da

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/b;->b()Lc/b/a/c/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " attached to Presenter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    return-void

    :cond_db
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Oops, Presenter is null. This seems to be a Mosby internal bug. Please report this issue here: https://github.com/sockeqwe/mosby/issues"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_e4

    :goto_e3
    throw p1

    :goto_e4
    goto :goto_e3
.end method

.method public onDestroy()V
    .registers 4

    iget-boolean v0, p0, Lc/b/a/c/f/b;->b:Z

    iget-object v1, p0, Lc/b/a/c/f/b;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lc/b/a/c/f/b;->a(ZLandroid/app/Activity;)Z

    move-result v0

    invoke-direct {p0}, Lc/b/a/c/f/b;->c()Lc/b/a/c/c;

    move-result-object v1

    invoke-interface {v1}, Lc/b/a/c/c;->a()V

    if-nez v0, :cond_18

    invoke-direct {p0}, Lc/b/a/c/f/b;->c()Lc/b/a/c/c;

    move-result-object v1

    invoke-interface {v1}, Lc/b/a/c/c;->destroy()V

    :cond_18
    if-nez v0, :cond_23

    iget-object v1, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v2, p0, Lc/b/a/c/f/b;->c:Landroid/app/Activity;

    invoke-static {v2, v1}, Lc/b/a/b;->b(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_23
    sget-boolean v1, Lc/b/a/c/f/b;->e:Z

    if-eqz v1, :cond_61

    const-string v1, "View"

    const-string v2, "ActivityMvpDelegateImpl"

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/b;->b()Lc/b/a/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " destroyed temporarily. View detached from presenter "

    goto :goto_50

    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/b;->b()Lc/b/a/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " destroyed permanently. View detached permanently from presenter "

    :goto_50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/b;->c()Lc/b/a/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onRestart()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Lc/b/a/c/f/b;->b:Z

    if-eqz v0, :cond_35

    if-eqz p1, :cond_35

    iget-object v0, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    const-string v1, "com.hannesdorfmann.mosby3.activity.mvp.id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lc/b/a/c/f/b;->e:Z

    if-eqz p1, :cond_35

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Saving MosbyViewId into Bundle. ViewId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/b/a/c/f/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for view "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/b;->b()Lc/b/a/c/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityMvpDelegateImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method
