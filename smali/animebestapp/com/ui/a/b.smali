###### Class animebestapp.com.ui.a.b (animebestapp.com.ui.a.b)
.class public abstract Lanimebestapp/com/ui/a/b;
.super Lc/b/a/c/b;
.source ""

# interfaces
.implements Lanimebestapp/com/ui/a/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lanimebestapp/com/ui/a/f/a;",
        "P:",
        "Lanimebestapp/com/ui/a/c<",
        "TV;>;>",
        "Lc/b/a/c/b<",
        "TV;TP;>;",
        "Lanimebestapp/com/ui/a/f/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc/b/a/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lc/b/a/c/b;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lc/b/a/c/b;->c:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/a/c;

    invoke-static {}, Lanimebestapp/com/c/a/b;->a()Lanimebestapp/com/c/a/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lanimebestapp/com/c/a/a$a;->a(Landroid/app/Activity;)Lanimebestapp/com/c/a/a$a;

    sget-object v1, Lanimebestapp/com/App;->Companion:Lanimebestapp/com/App$a;

    invoke-virtual {v1}, Lanimebestapp/com/App$a;->b()Lanimebestapp/com/c/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lanimebestapp/com/c/a/a$a;->a(Lanimebestapp/com/c/b/a;)Lanimebestapp/com/c/a/a$a;

    invoke-interface {v0}, Lanimebestapp/com/c/a/a$a;->a()Lanimebestapp/com/c/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/a/c;->a(Lanimebestapp/com/c/a/a;)V

    return-void

    :cond_2a
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lc/b/a/c/b;->onDestroyView()V

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/b;->p()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lc/b/a/c/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb/k/a/d;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lb/k/a/d;->getFragmentManager()Lb/k/a/i;

    move-result-object p2

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lb/k/a/i;->b()I

    move-result p2

    int-to-float p2, p2

    goto :goto_1b

    :cond_1a
    const/4 p2, 0x0

    :goto_1b
    invoke-static {p1, p2}, Lb/h/o/s;->b(Landroid/view/View;F)V

    return-void

    :cond_1f
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract p()V
.end method
