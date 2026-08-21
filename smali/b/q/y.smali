###### Class b.q.y (b.q.y)
.class Lb/q/y;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/view/ViewGroup;)Lb/q/x;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    new-instance v0, Lb/q/w;

    invoke-direct {v0, p0}, Lb/q/w;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    :cond_c
    invoke-static {p0}, Lb/q/v;->a(Landroid/view/ViewGroup;)Lb/q/v;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/view/ViewGroup;Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1}, Lb/q/a0;->a(Landroid/view/ViewGroup;Z)V

    goto :goto_d

    :cond_a
    invoke-static {p0, p1}, Lb/q/z;->a(Landroid/view/ViewGroup;Z)V

    :goto_d
    return-void
.end method
