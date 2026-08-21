###### Class b.k.a.g (b.k.a.g)
.class public Lb/k/a/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lb/k/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/k/a/h<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lb/k/a/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/a/h<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/k/a/g;->a:Lb/k/a/h;

    return-void
.end method

.method public static a(Lb/k/a/h;)Lb/k/a/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/a/h<",
            "*>;)",
            "Lb/k/a/g;"
        }
    .end annotation

    new-instance v0, Lb/k/a/g;

    invoke-direct {v0, p0}, Lb/k/a/g;-><init>(Lb/k/a/h;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/a/j;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lb/k/a/d;
    .registers 3

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1}, Lb/k/a/j;->b(Ljava/lang/String;)Lb/k/a/d;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->g()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1}, Lb/k/a/j;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Lb/k/a/k;)V
    .registers 4

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1, p2}, Lb/k/a/j;->a(Landroid/os/Parcelable;Lb/k/a/k;)V

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1}, Lb/k/a/j;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Lb/k/a/d;)V
    .registers 4

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v1, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v1, v0, v0, p1}, Lb/k/a/j;->a(Lb/k/a/h;Lb/k/a/f;Lb/k/a/d;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1}, Lb/k/a/j;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 4

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1, p2}, Lb/k/a/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1}, Lb/k/a/j;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->h()V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1}, Lb/k/a/j;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .registers 3

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1}, Lb/k/a/j;->b(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0, p1}, Lb/k/a/j;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->i()V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->k()V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->l()V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->m()V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->n()V

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->o()V

    return-void
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->q()Z

    move-result v0

    return v0
.end method

.method public j()Lb/k/a/i;
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    invoke-virtual {v0}, Lb/k/a/h;->d()Lb/k/a/j;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->t()V

    return-void
.end method

.method public l()Lb/k/a/k;
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->v()Lb/k/a/k;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Lb/k/a/g;->a:Lb/k/a/h;

    iget-object v0, v0, Lb/k/a/h;->d:Lb/k/a/j;

    invoke-virtual {v0}, Lb/k/a/j;->w()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
