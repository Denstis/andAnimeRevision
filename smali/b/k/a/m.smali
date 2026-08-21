###### Class b.k.a.m (b.k.a.m)
.class public abstract Lb/k/a/m;
.super Landroidx/viewpager/widget/a;
.source ""


# instance fields
.field private final c:Lb/k/a/i;

.field private d:Lb/k/a/o;

.field private e:Lb/k/a/d;


# direct methods
.method public constructor <init>(Lb/k/a/i;)V
    .registers 3

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/k/a/m;->d:Lb/k/a/o;

    iput-object v0, p0, Lb/k/a/m;->e:Lb/k/a/d;

    iput-object p1, p0, Lb/k/a/m;->c:Lb/k/a/i;

    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lb/k/a/m;->d:Lb/k/a/o;

    if-nez v0, :cond_c

    iget-object v0, p0, Lb/k/a/m;->c:Lb/k/a/i;

    invoke-virtual {v0}, Lb/k/a/i;->a()Lb/k/a/o;

    move-result-object v0

    iput-object v0, p0, Lb/k/a/m;->d:Lb/k/a/o;

    :cond_c
    invoke-virtual {p0, p2}, Lb/k/a/m;->d(I)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Lb/k/a/m;->a(IJ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lb/k/a/m;->c:Lb/k/a/i;

    invoke-virtual {v3, v2}, Lb/k/a/i;->a(Ljava/lang/String;)Lb/k/a/d;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object p1, p0, Lb/k/a/m;->d:Lb/k/a/o;

    invoke-virtual {p1, v2}, Lb/k/a/o;->a(Lb/k/a/d;)Lb/k/a/o;

    goto :goto_3b

    :cond_26
    invoke-virtual {p0, p2}, Lb/k/a/m;->c(I)Lb/k/a/d;

    move-result-object v2

    iget-object p2, p0, Lb/k/a/m;->d:Lb/k/a/o;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lb/k/a/m;->a(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, v2, p1}, Lb/k/a/o;->a(ILb/k/a/d;Ljava/lang/String;)Lb/k/a/o;

    :goto_3b
    iget-object p1, p0, Lb/k/a/m;->e:Lb/k/a/d;

    if-eq v2, p1, :cond_46

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lb/k/a/d;->setMenuVisibility(Z)V

    invoke-virtual {v2, p1}, Lb/k/a/d;->setUserVisibleHint(Z)V

    :cond_46
    return-object v2
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 2

    iget-object p1, p0, Lb/k/a/m;->d:Lb/k/a/o;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lb/k/a/o;->d()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/k/a/m;->d:Lb/k/a/o;

    :cond_a
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    iget-object p1, p0, Lb/k/a/m;->d:Lb/k/a/o;

    if-nez p1, :cond_c

    iget-object p1, p0, Lb/k/a/m;->c:Lb/k/a/i;

    invoke-virtual {p1}, Lb/k/a/i;->a()Lb/k/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/k/a/m;->d:Lb/k/a/o;

    :cond_c
    iget-object p1, p0, Lb/k/a/m;->d:Lb/k/a/o;

    check-cast p3, Lb/k/a/d;

    invoke-virtual {p1, p3}, Lb/k/a/o;->b(Lb/k/a/d;)Lb/k/a/o;

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    check-cast p2, Lb/k/a/d;

    invoke-virtual {p2}, Lb/k/a/d;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Lb/k/a/d;

    iget-object p1, p0, Lb/k/a/m;->e:Lb/k/a/d;

    if-eq p3, p1, :cond_1a

    if-eqz p1, :cond_11

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lb/k/a/d;->setMenuVisibility(Z)V

    iget-object p1, p0, Lb/k/a/m;->e:Lb/k/a/d;

    invoke-virtual {p1, p2}, Lb/k/a/d;->setUserVisibleHint(Z)V

    :cond_11
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lb/k/a/d;->setMenuVisibility(Z)V

    invoke-virtual {p3, p1}, Lb/k/a/d;->setUserVisibleHint(Z)V

    iput-object p3, p0, Lb/k/a/m;->e:Lb/k/a/d;

    :cond_1a
    return-void
.end method

.method public c()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c(I)Lb/k/a/d;
.end method

.method public d(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method
