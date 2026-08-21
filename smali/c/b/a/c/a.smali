###### Class c.b.a.c.a (c.b.a.c.a)
.class public abstract Lc/b/a/c/a;
.super Landroidx/appcompat/app/d;
.source ""

# interfaces
.implements Lc/b/a/c/e;
.implements Lc/b/a/c/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lc/b/a/c/e;",
        "P::",
        "Lc/b/a/c/c<",
        "TV;>;>",
        "Landroidx/appcompat/app/d;",
        "Lc/b/a/c/e;",
        "Lc/b/a/c/f/e<",
        "TV;TP;>;"
    }
.end annotation


# instance fields
.field protected q:Lc/b/a/c/f/a;

.field protected r:Lc/b/a/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    return-void
.end method

.method public m()Lc/b/a/c/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    return-object v0
.end method

.method public n()Lc/b/a/c/e;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    return-object p0
.end method

.method public onContentChanged()V
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/app/d;->onContentChanged()V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0}, Lc/b/a/c/f/a;->onContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/b/a/c/f/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0}, Lc/b/a/c/f/a;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lb/k/a/e;->onPause()V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0}, Lc/b/a/c/f/a;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/b/a/c/f/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onRestart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0}, Lc/b/a/c/f/a;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lb/k/a/e;->onResume()V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0}, Lc/b/a/c/f/a;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/b/a/c/f/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/app/d;->onStart()V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0}, Lc/b/a/c/f/a;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/app/d;->onStop()V

    invoke-virtual {p0}, Lc/b/a/c/a;->x()Lc/b/a/c/f/a;

    move-result-object v0

    invoke-interface {v0}, Lc/b/a/c/f/a;->onStop()V

    return-void
.end method

.method protected x()Lc/b/a/c/f/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/c/f/a<",
            "TV;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/c/a;->q:Lc/b/a/c/f/a;

    if-nez v0, :cond_c

    new-instance v0, Lc/b/a/c/f/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lc/b/a/c/f/b;-><init>(Landroid/app/Activity;Lc/b/a/c/f/e;Z)V

    iput-object v0, p0, Lc/b/a/c/a;->q:Lc/b/a/c/f/a;

    :cond_c
    iget-object v0, p0, Lc/b/a/c/a;->q:Lc/b/a/c/f/a;

    return-object v0
.end method
