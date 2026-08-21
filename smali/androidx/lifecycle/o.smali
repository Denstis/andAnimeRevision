###### Class androidx.lifecycle.o (androidx.lifecycle.o)
.class public Landroidx/lifecycle/o;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/o$a;
    }
.end annotation


# instance fields
.field private b:Landroidx/lifecycle/o$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/o;

    invoke-direct {v2}, Landroidx/lifecycle/o;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1f
    return-void
.end method

.method private a(Landroidx/lifecycle/e$a;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/i;

    if-eqz v1, :cond_12

    check-cast v0, Landroidx/lifecycle/i;

    invoke-interface {v0}, Landroidx/lifecycle/i;->getLifecycle()Landroidx/lifecycle/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    return-void

    :cond_12
    instance-of v1, v0, Landroidx/lifecycle/g;

    if-eqz v1, :cond_25

    check-cast v0, Landroidx/lifecycle/g;

    invoke-interface {v0}, Landroidx/lifecycle/g;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/h;

    if-eqz v1, :cond_25

    check-cast v0, Landroidx/lifecycle/h;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$a;)V

    :cond_25
    return-void
.end method

.method private a(Landroidx/lifecycle/o$a;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/lifecycle/o$a;->a()V

    :cond_5
    return-void
.end method

.method private b(Landroidx/lifecycle/o$a;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/lifecycle/o$a;->onResume()V

    :cond_5
    return-void
.end method

.method private c(Landroidx/lifecycle/o$a;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/lifecycle/o$a;->onStart()V

    :cond_5
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o$a;

    invoke-direct {p0, p1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/o$a;)V

    sget-object p1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-direct {p0, p1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o$a;

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/o$a;)V

    sget-object v0, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->c(Landroidx/lifecycle/o$a;)V

    sget-object v0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

###### Class androidx.lifecycle.o.a (androidx.lifecycle.o$a)
.class interface abstract Landroidx/lifecycle/o$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method
