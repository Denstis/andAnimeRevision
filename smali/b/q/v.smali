###### Class b.q.v (b.q.v)
.class Lb/q/v;
.super Lb/q/b0;
.source ""

# interfaces
.implements Lb/q/x;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lb/q/b0;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Lb/q/v;
    .registers 1

    invoke-static {p0}, Lb/q/b0;->c(Landroid/view/View;)Lb/q/b0;

    move-result-object p0

    check-cast p0, Lb/q/v;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lb/q/b0;->a:Lb/q/b0$a;

    invoke-virtual {v0, p1}, Lb/q/b0$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lb/q/b0;->a:Lb/q/b0$a;

    invoke-virtual {v0, p1}, Lb/q/b0$a;->b(Landroid/view/View;)V

    return-void
.end method
