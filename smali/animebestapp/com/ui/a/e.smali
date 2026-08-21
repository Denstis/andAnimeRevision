###### Class animebestapp.com.ui.a.e (animebestapp.com.ui.a.e)
.class public final Lanimebestapp/com/ui/a/e;
.super Lb/k/a/m;
.source ""


# instance fields
.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/k/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/k/a/i;)V
    .registers 3

    const-string v0, "fm"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lb/k/a/m;-><init>(Lb/k/a/i;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/a/e;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/a/e;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Lb/k/a/d;Ljava/lang/String;)Lanimebestapp/com/ui/a/e;
    .registers 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lanimebestapp/com/ui/a/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/a/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final a(Z)V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/ui/a/e;->f:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/a/d;

    instance-of v2, v1, Lanimebestapp/com/ui/a/f/d;

    if-eqz v2, :cond_6

    check-cast v1, Lanimebestapp/com/ui/a/f/d;

    invoke-interface {v1, p1}, Lanimebestapp/com/ui/a/f/d;->d(Z)Z

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public c(I)Lb/k/a/d;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mFragments[position]"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lb/k/a/d;

    return-object p1
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lanimebestapp/com/ui/a/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/viewpager/widget/a;->b()V

    return-void
.end method
