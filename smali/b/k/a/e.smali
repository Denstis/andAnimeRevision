###### Class b.k.a.e (b.k.a.e)
.class public Lb/k/a/e;
.super Landroidx/core/app/e;
.source ""

# interfaces
.implements Landroidx/lifecycle/s;
.implements Landroidx/core/app/a$b;
.implements Landroidx/core/app/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/k/a/e$b;,
        Lb/k/a/e$c;
    }
.end annotation


# instance fields
.field final c:Landroid/os/Handler;

.field final d:Lb/k/a/g;

.field private e:Landroidx/lifecycle/r;

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:I

.field m:Lb/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/core/app/e;-><init>()V

    new-instance v0, Lb/k/a/e$a;

    invoke-direct {v0, p0}, Lb/k/a/e$a;-><init>(Lb/k/a/e;)V

    iput-object v0, p0, Lb/k/a/e;->c:Landroid/os/Handler;

    new-instance v0, Lb/k/a/e$b;

    invoke-direct {v0, p0}, Lb/k/a/e$b;-><init>(Lb/k/a/e;)V

    invoke-static {v0}, Lb/k/a/g;->a(Lb/k/a/h;)Lb/k/a/g;

    move-result-object v0

    iput-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/e;->h:Z

    return-void
.end method

.method private static a(Lb/k/a/i;Landroidx/lifecycle/e$b;)Z
    .registers 6

    invoke-virtual {p0}, Lb/k/a/i;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/a/d;

    if-nez v1, :cond_18

    goto :goto_9

    :cond_18
    invoke-virtual {v1}, Lb/k/a/d;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/e$b;->a(Landroidx/lifecycle/e$b;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v0, v1, Lb/k/a/d;->mLifecycleRegistry:Landroidx/lifecycle/h;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$b;)V

    const/4 v0, 0x1

    :cond_2e
    invoke-virtual {v1}, Lb/k/a/d;->peekChildFragmentManager()Lb/k/a/i;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {v1, p1}, Lb/k/a/e;->a(Lb/k/a/i;Landroidx/lifecycle/e$b;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_9

    :cond_3a
    return v0
.end method

.method private b(Lb/k/a/d;)I
    .registers 5

    iget-object v0, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v0}, Lb/e/h;->b()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_2e

    :goto_b
    iget-object v0, p0, Lb/k/a/e;->m:Lb/e/h;

    iget v2, p0, Lb/k/a/e;->l:I

    invoke-virtual {v0, v2}, Lb/e/h;->c(I)I

    move-result v0

    if-ltz v0, :cond_1d

    iget v0, p0, Lb/k/a/e;->l:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Lb/k/a/e;->l:I

    goto :goto_b

    :cond_1d
    iget v0, p0, Lb/k/a/e;->l:I

    iget-object v2, p0, Lb/k/a/e;->m:Lb/e/h;

    iget-object p1, p1, Lb/k/a/d;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Lb/e/h;->c(ILjava/lang/Object;)V

    iget p1, p0, Lb/k/a/e;->l:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, Lb/k/a/e;->l:I

    return v0

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :goto_36
    throw p1

    :goto_37
    goto :goto_36
.end method

.method static g(I)V
    .registers 2

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private t()V
    .registers 3

    :cond_0
    invoke-virtual {p0}, Lb/k/a/e;->p()Lb/k/a/i;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-static {v0, v1}, Lb/k/a/e;->a(Lb/k/a/i;Landroidx/lifecycle/e$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/a/g;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/k/a/d;)V
    .registers 2

    return-void
.end method

.method public a(Lb/k/a/d;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/e;->k:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_d

    :try_start_7
    invoke-static {p0, p2, v1, p4}, Landroidx/core/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_22

    iput-boolean v2, p0, Lb/k/a/e;->k:Z

    return-void

    :cond_d
    :try_start_d
    invoke-static {p3}, Lb/k/a/e;->g(I)V

    invoke-direct {p0, p1}, Lb/k/a/e;->b(Lb/k/a/d;)I

    move-result p1

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p3, v0

    add-int/2addr p1, p3

    invoke-static {p0, p2, p1, p4}, Landroidx/core/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_22

    iput-boolean v2, p0, Lb/k/a/e;->k:Z

    return-void

    :catchall_22
    move-exception p1

    iput-boolean v2, p0, Lb/k/a/e;->k:Z

    throw p1
.end method

.method public a(Lb/k/a/d;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 20

    move-object v9, p0

    move v0, p3

    const/4 v1, 0x1

    iput-boolean v1, v9, Lb/k/a/e;->j:Z

    const/4 v2, -0x1

    const/4 v10, 0x0

    if-ne v0, v2, :cond_1b

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    :try_start_15
    invoke-static/range {v1 .. v8}, Landroidx/core/app/a;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_3c

    iput-boolean v10, v9, Lb/k/a/e;->j:Z

    return-void

    :cond_1b
    :try_start_1b
    invoke-static {p3}, Lb/k/a/e;->g(I)V

    invoke-direct {p0, p1}, Lb/k/a/e;->b(Lb/k/a/d;)I

    move-result v2

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int v3, v1, v0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Landroidx/core/app/a;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_3c

    iput-boolean v10, v9, Lb/k/a/e;->j:Z

    return-void

    :catchall_3c
    move-exception v0

    iput-boolean v10, v9, Lb/k/a/e;->j:Z

    throw v0
.end method

.method a(Lb/k/a/d;[Ljava/lang/String;I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_7

    invoke-static {p0, p2, p3}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_7
    invoke-static {p3}, Lb/k/a/e;->g(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lb/k/a/e;->i:Z

    invoke-direct {p0, p1}, Lb/k/a/e;->b(Lb/k/a/d;)I

    move-result p1

    add-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    const v1, 0xffff

    and-int/2addr p3, v1

    add-int/2addr p1, p3

    invoke-static {p0, p2, p1}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_20

    iput-boolean v0, p0, Lb/k/a/e;->i:Z

    return-void

    :catchall_20
    move-exception p1

    iput-boolean v0, p0, Lb/k/a/e;->i:Z

    throw p1
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb/k/a/e;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb/k/a/e;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb/k/a/e;->h:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-static {p0}, Lb/n/a/a;->a(Landroidx/lifecycle/g;)Lb/n/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lb/n/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5a
    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->j()Lb/k/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/a/i;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final f(I)V
    .registers 3

    iget-boolean v0, p0, Lb/k/a/e;->i:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    invoke-static {p1}, Lb/k/a/e;->g(I)V

    :cond_a
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/e;
    .registers 2

    invoke-super {p0}, Landroidx/core/app/e;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/r;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/a/e$c;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lb/k/a/e$c;->a:Landroidx/lifecycle/r;

    iput-object v0, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    :cond_16
    iget-object v0, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    if-nez v0, :cond_21

    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    iput-object v0, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    :cond_21
    iget-object v0, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    return-object v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->k()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_47

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v1, v0}, Lb/e/h;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v2, v0}, Lb/e/h;->e(I)V

    const-string v0, "FragmentActivity"

    if-nez v1, :cond_22

    const-string p1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    iget-object v2, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v2, v1}, Lb/k/a/g;->a(Ljava/lang/String;)Lb/k/a/d;

    move-result-object v2

    if-nez v2, :cond_3f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_3f
    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {v2, p1, p2, p3}, Lb/k/a/d;->onActivityResult(IILandroid/content/Intent;)V

    :goto_46
    return-void

    :cond_47
    invoke-static {}, Landroidx/core/app/a;->a()Landroidx/core/app/a$c;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/core/app/a$c;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_54

    return-void

    :cond_54
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 5

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->j()Lb/k/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/k/a/i;->d()Z

    move-result v1

    if-eqz v1, :cond_13

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_13

    return-void

    :cond_13
    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lb/k/a/i;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1b
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->k()V

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0, p1}, Lb/k/a/g;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/k/a/g;->a(Lb/k/a/d;)V

    invoke-super {p0, p1}, Landroidx/core/app/e;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/a/e$c;

    if-eqz v0, :cond_1b

    iget-object v2, v0, Lb/k/a/e$c;->a:Landroidx/lifecycle/r;

    if-eqz v2, :cond_1b

    iget-object v3, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    if-nez v3, :cond_1b

    iput-object v2, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    :cond_1b
    const/4 v2, 0x0

    if-eqz p1, :cond_6f

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Lb/k/a/e;->d:Lb/k/a/g;

    if-eqz v0, :cond_2a

    iget-object v1, v0, Lb/k/a/e$c;->b:Lb/k/a/k;

    :cond_2a
    invoke-virtual {v4, v3, v1}, Lb/k/a/g;->a(Landroid/os/Parcelable;Lb/k/a/k;)V

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lb/k/a/e;->l:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android:support:request_fragment_who"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_68

    if-eqz p1, :cond_68

    array-length v1, v0

    array-length v3, p1

    if-eq v1, v3, :cond_50

    goto :goto_68

    :cond_50
    new-instance v1, Lb/e/h;

    array-length v3, v0

    invoke-direct {v1, v3}, Lb/e/h;-><init>(I)V

    iput-object v1, p0, Lb/k/a/e;->m:Lb/e/h;

    const/4 v1, 0x0

    :goto_59
    array-length v3, v0

    if-ge v1, v3, :cond_6f

    iget-object v3, p0, Lb/k/a/e;->m:Lb/e/h;

    aget v4, v0, v1

    aget-object v5, p1, v1

    invoke-virtual {v3, v4, v5}, Lb/e/h;->c(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_68
    :goto_68
    const-string p1, "FragmentActivity"

    const-string v0, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    iget-object p1, p0, Lb/k/a/e;->m:Lb/e/h;

    if-nez p1, :cond_7c

    new-instance p1, Lb/e/h;

    invoke-direct {p1}, Lb/e/h;-><init>()V

    iput-object p1, p0, Lb/k/a/e;->m:Lb/e/h;

    iput v2, p0, Lb/k/a/e;->l:I

    :cond_7c
    iget-object p1, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {p1}, Lb/k/a/g;->b()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 5

    if-nez p1, :cond_12

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lb/k/a/g;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/k/a/e;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lb/k/a/e;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v0
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->a()V

    :cond_12
    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->c()V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->d()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    if-eqz p1, :cond_16

    const/4 v0, 0x6

    if-eq p1, v0, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    iget-object p1, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {p1, p2}, Lb/k/a/g;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_16
    iget-object p1, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {p1, p2}, Lb/k/a/g;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0, p1}, Lb/k/a/g;->a(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {p1}, Lb/k/a/g;->k()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    if-eqz p1, :cond_3

    goto :goto_8

    :cond_3
    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0, p2}, Lb/k/a/g;->a(Landroid/view/Menu;)V

    :goto_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/e;->g:Z

    iget-object v0, p0, Lb/k/a/e;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lb/k/a/e;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lb/k/a/e;->q()V

    :cond_17
    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->e()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 3

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0, p1}, Lb/k/a/g;->b(Z)V

    return-void
.end method

.method protected onPostResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lb/k/a/e;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lb/k/a/e;->q()V

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->i()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_10

    if-eqz p3, :cond_10

    invoke-virtual {p0, p2, p3}, Lb/k/a/e;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    iget-object p2, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {p2, p3}, Lb/k/a/g;->b(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->k()V

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_47

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v2, v0}, Lb/e/h;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v3, v0}, Lb/e/h;->e(I)V

    const-string v0, "FragmentActivity"

    if-nez v2, :cond_26

    const-string p1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    iget-object v3, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v3, v2}, Lb/k/a/g;->a(Ljava/lang/String;)Lb/k/a/d;

    move-result-object v3

    if-nez v3, :cond_43

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_43
    and-int/2addr p1, v1

    invoke-virtual {v3, p1, p2, p3}, Lb/k/a/d;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_47
    :goto_47
    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lb/k/a/e;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/e;->g:Z

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->i()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lb/k/a/e;->r()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v1}, Lb/k/a/g;->l()Lb/k/a/k;

    move-result-object v1

    if-nez v1, :cond_14

    iget-object v2, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    if-nez v2, :cond_14

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    new-instance v0, Lb/k/a/e$c;

    invoke-direct {v0}, Lb/k/a/e$c;-><init>()V

    iget-object v2, p0, Lb/k/a/e;->e:Landroidx/lifecycle/r;

    iput-object v2, v0, Lb/k/a/e$c;->a:Landroidx/lifecycle/r;

    iput-object v1, v0, Lb/k/a/e$c;->b:Lb/k/a/k;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroidx/core/app/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lb/k/a/e;->t()V

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->m()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_13
    iget-object v0, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v0}, Lb/e/h;->b()I

    move-result v0

    if-lez v0, :cond_5a

    iget v0, p0, Lb/k/a/e;->l:I

    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v0}, Lb/e/h;->b()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v1}, Lb/e/h;->b()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_33
    iget-object v3, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v3}, Lb/e/h;->b()I

    move-result v3

    if-ge v2, v3, :cond_50

    iget-object v3, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v3, v2}, Lb/e/h;->d(I)I

    move-result v3

    aput v3, v0, v2

    iget-object v3, p0, Lb/k/a/e;->m:Lb/e/h;

    invoke-virtual {v3, v2}, Lb/e/h;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_50
    const-string v2, "android:support:request_indicies"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/a/e;->h:Z

    iget-boolean v0, p0, Lb/k/a/e;->f:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/e;->f:Z

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->a()V

    :cond_12
    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->k()V

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->i()Z

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->g()V

    return-void
.end method

.method public onStateNotSaved()V
    .registers 2

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->k()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/a/e;->h:Z

    invoke-direct {p0}, Lb/k/a/e;->t()V

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->h()V

    return-void
.end method

.method public p()Lb/k/a/i;
    .registers 2

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->j()Lb/k/a/i;

    move-result-object v0

    return-object v0
.end method

.method protected q()V
    .registers 2

    iget-object v0, p0, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {v0}, Lb/k/a/g;->f()V

    return-void
.end method

.method public r()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    iget-boolean v0, p0, Lb/k/a/e;->k:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    invoke-static {p2}, Lb/k/a/e;->g(I)V

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    iget-boolean v0, p0, Lb/k/a/e;->k:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    invoke-static {p2}, Lb/k/a/e;->g(I)V

    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 8

    iget-boolean v0, p0, Lb/k/a/e;->j:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    invoke-static {p2}, Lb/k/a/e;->g(I)V

    :cond_a
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 9

    iget-boolean v0, p0, Lb/k/a/e;->j:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    invoke-static {p2}, Lb/k/a/e;->g(I)V

    :cond_a
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

###### Class b.k.a.e.a (b.k.a.e$a)
.class Lb/k/a/e$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/k/a/e;


# direct methods
.method constructor <init>(Lb/k/a/e;)V
    .registers 2

    iput-object p1, p0, Lb/k/a/e$a;->a:Lb/k/a/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_15

    :cond_9
    iget-object p1, p0, Lb/k/a/e$a;->a:Lb/k/a/e;

    invoke-virtual {p1}, Lb/k/a/e;->q()V

    iget-object p1, p0, Lb/k/a/e$a;->a:Lb/k/a/e;

    iget-object p1, p1, Lb/k/a/e;->d:Lb/k/a/g;

    invoke-virtual {p1}, Lb/k/a/g;->i()Z

    :goto_15
    return-void
.end method

###### Class b.k.a.e.b (b.k.a.e$b)
.class Lb/k/a/e$b;
.super Lb/k/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/k/a/h<",
        "Lb/k/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lb/k/a/e;


# direct methods
.method public constructor <init>(Lb/k/a/e;)V
    .registers 2

    iput-object p1, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-direct {p0, p1}, Lb/k/a/h;-><init>(Lb/k/a/e;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/k/a/d;)V
    .registers 3

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0, p1}, Lb/k/a/e;->a(Lb/k/a/d;)V

    return-void
.end method

.method public a(Lb/k/a/d;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/a/e;->a(Lb/k/a/d;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Lb/k/a/d;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lb/k/a/e$b;->e:Lb/k/a/e;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lb/k/a/e;->a(Lb/k/a/d;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Lb/k/a/d;[Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lb/k/a/e;->a(Lb/k/a/d;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/a/e;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-static {v0, p1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/k/a/d;)Z
    .registers 2

    iget-object p1, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public f()Lb/k/a/e;
    .registers 2

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    return-object v0
.end method

.method public bridge synthetic f()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lb/k/a/e$b;->f()Lb/k/a/e;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_10
    return v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Lb/k/a/e$b;->e:Lb/k/a/e;

    invoke-virtual {v0}, Lb/k/a/e;->s()V

    return-void
.end method

###### Class b.k.a.e.c (b.k.a.e$c)
.class final Lb/k/a/e$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/lifecycle/r;

.field b:Lb/k/a/k;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
