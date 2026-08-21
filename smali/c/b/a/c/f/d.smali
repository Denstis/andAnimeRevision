###### Class c.b.a.c.f.d (c.b.a.c.f.d)
.class public Lc/b/a/c/f/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/f/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lc/b/a/c/e;",
        "P::",
        "Lc/b/a/c/c<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lc/b/a/c/f/c<",
        "TV;TP;>;"
    }
.end annotation


# static fields
.field public static g:Z = false


# instance fields
.field private a:Lc/b/a/c/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/f/e<",
            "TV;TP;>;"
        }
    .end annotation
.end field

.field protected b:Lb/k/a/d;

.field protected final c:Z

.field protected final d:Z

.field private e:Z

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/k/a/d;Lc/b/a/c/f/e;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/a/d;",
            "Lc/b/a/c/f/e<",
            "TV;TP;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/b/a/c/f/d;->e:Z

    if-eqz p2, :cond_28

    if-eqz p1, :cond_20

    if-nez p3, :cond_17

    if-nez p4, :cond_f

    goto :goto_17

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "It is not possible to keep the presenter on backstack, but NOT keep presenter through screen orientation changes. Keep presenter on backstack also requires keep presenter through screen orientation changes to be enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_17
    iput-object p1, p0, Lc/b/a/c/f/d;->b:Lb/k/a/d;

    iput-object p2, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

    iput-boolean p3, p0, Lc/b/a/c/f/d;->c:Z

    iput-boolean p4, p0, Lc/b/a/c/f/d;->d:Z

    return-void

    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Fragment is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MvpDelegateCallback is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Landroid/app/Activity;Lb/k/a/d;ZZ)Z
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_7

    return p2

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const/4 p0, 0x1

    if-eqz p3, :cond_19

    invoke-static {p1}, Landroidx/core/app/c;->a(Lb/k/a/d;)Z

    move-result p2

    if-eqz p2, :cond_19

    return p0

    :cond_19
    invoke-virtual {p1}, Lb/k/a/d;->isRemoving()Z

    move-result p1

    xor-int/2addr p0, p1

    return p0
.end method

.method private b()Lc/b/a/c/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

    invoke-interface {v0}, Lc/b/a/c/f/e;->l()Lc/b/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-boolean v1, p0, Lc/b/a/c/f/d;->c:Z

    if-eqz v1, :cond_1f

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    invoke-direct {p0}, Lc/b/a/c/f/d;->c()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lc/b/a/b;->a(Landroid/app/Activity;Ljava/lang/String;Lc/b/a/c/c;)V

    :cond_1f
    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presenter returned from createPresenter() is null. Activity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/d;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Landroid/app/Activity;
    .registers 4

    iget-object v0, p0, Lc/b/a/c/f/d;->b:Lb/k/a/d;

    invoke-virtual {v0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity returned by Fragment.getActivity() is null. Fragment is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/b/a/c/f/d;->b:Lb/k/a/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()Lc/b/a/c/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

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

.method private e()Lc/b/a/c/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

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
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Lc/b/a/c/f/d;->e()Lc/b/a/c/c;

    move-result-object p1

    invoke-direct {p0}, Lc/b/a/c/f/d;->d()Lc/b/a/c/e;

    move-result-object p2

    invoke-interface {p1, p2}, Lc/b/a/c/c;->a(Lc/b/a/c/e;)V

    sget-boolean p2, Lc/b/a/c/f/d;->g:Z

    if-eqz p2, :cond_31

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "View"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/d;->d()Lc/b/a/c/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " attached to Presenter "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentMvpVSDelegate"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/b/a/c/f/d;->e:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, " for view "

    const-string v1, "FragmentMvpVSDelegate"

    if-eqz p1, :cond_98

    iget-boolean v2, p0, Lc/b/a/c/f/d;->c:Z

    if-eqz v2, :cond_98

    const-string v2, "com.hannesdorfmann.mosby3.fragment.mvp.id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    sget-boolean p1, Lc/b/a/c/f/d;->g:Z

    if-eqz p1, :cond_3a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MosbyView ID = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for MvpView: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

    invoke-interface {v2}, Lc/b/a/c/f/e;->n()Lc/b/a/c/e;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-object p1, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    if-eqz p1, :cond_71

    invoke-direct {p0}, Lc/b/a/c/f/d;->c()Landroid/app/Activity;

    move-result-object p1

    iget-object v2, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    invoke-static {p1, v2}, Lc/b/a/b;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c/c;

    if-eqz p1, :cond_71

    sget-boolean v2, Lc/b/a/c/f/d;->g:Z

    if-eqz v2, :cond_a8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reused presenter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

    invoke-interface {v0}, Lc/b/a/c/f/e;->n()Lc/b/a/c/e;

    move-result-object v0

    :goto_66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_71
    invoke-direct {p0}, Lc/b/a/c/f/d;->b()Lc/b/a/c/c;

    move-result-object p1

    sget-boolean v2, Lc/b/a/c/f/d;->g:Z

    if-eqz v2, :cond_a8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No presenter found although view Id was here: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Most likely this was caused by a process death. New Presenter created"

    :goto_8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/d;->d()Lc/b/a/c/e;

    move-result-object v0

    goto :goto_66

    :cond_98
    invoke-direct {p0}, Lc/b/a/c/f/d;->b()Lc/b/a/c/c;

    move-result-object p1

    sget-boolean v2, Lc/b/a/c/f/d;->g:Z

    if-eqz v2, :cond_a8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New presenter "

    goto :goto_8a

    :cond_a8
    :goto_a8
    if-eqz p1, :cond_b0

    iget-object v0, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

    invoke-interface {v0, p1}, Lc/b/a/c/f/e;->a(Lc/b/a/c/c;)V

    return-void

    :cond_b0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Oops, Presenter is null. This seems to be a Mosby internal bug. Please report this issue here: https://github.com/sockeqwe/mosby/issues"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b9

    :goto_b8
    throw p1

    :goto_b9
    goto :goto_b8
.end method

.method public onDestroy()V
    .registers 6

    invoke-direct {p0}, Lc/b/a/c/f/d;->c()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/c/f/d;->b:Lb/k/a/d;

    iget-boolean v2, p0, Lc/b/a/c/f/d;->c:Z

    iget-boolean v3, p0, Lc/b/a/c/f/d;->d:Z

    invoke-static {v0, v1, v2, v3}, Lc/b/a/c/f/d;->a(Landroid/app/Activity;Lb/k/a/d;ZZ)Z

    move-result v1

    invoke-direct {p0}, Lc/b/a/c/f/d;->e()Lc/b/a/c/c;

    move-result-object v2

    if-nez v1, :cond_3f

    invoke-interface {v2}, Lc/b/a/c/c;->destroy()V

    sget-boolean v3, Lc/b/a/c/f/d;->g:Z

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Presenter destroyed. MvpView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

    invoke-interface {v4}, Lc/b/a/c/f/e;->n()Lc/b/a/c/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "   Presenter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentMvpVSDelegate"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    if-nez v1, :cond_48

    iget-object v1, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    if-eqz v1, :cond_48

    invoke-static {v0, v1}, Lc/b/a/b;->b(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/b/a/c/f/d;->e:Z

    invoke-direct {p0}, Lc/b/a/c/f/d;->e()Lc/b/a/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/b/a/c/c;->a()V

    sget-boolean v0, Lc/b/a/c/f/d;->g:Z

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detached MvpView from Presenter. MvpView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

    invoke-interface {v1}, Lc/b/a/c/f/e;->n()Lc/b/a/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   Presenter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/b/a/c/f/d;->e()Lc/b/a/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentMvpVSDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Lc/b/a/c/f/d;->c:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lc/b/a/c/f/d;->d:Z

    if-eqz v0, :cond_2d

    :cond_8
    if-eqz p1, :cond_2d

    iget-object v0, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    const-string v1, "com.hannesdorfmann.mosby3.fragment.mvp.id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lc/b/a/c/f/d;->g:Z

    if-eqz p1, :cond_2d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Saving MosbyViewId into Bundle. ViewId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/b/a/c/f/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentMvpVSDelegate"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method public onStart()V
    .registers 4

    iget-boolean v0, p0, Lc/b/a/c/f/d;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It seems that you are using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/b/a/c/f/d;->a:Lc/b/a/c/f/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as headless (UI less) fragment (because onViewCreated() has not been called or maybe delegation misses that part). Having a Presenter without a View (UI) doesn\'t make sense. Simply use an usual fragment instead of an MvpFragment if you want to use a UI less Fragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStop()V
    .registers 1

    return-void
.end method
