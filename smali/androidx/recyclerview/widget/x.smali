###### Class androidx.recyclerview.widget.x (androidx.recyclerview.widget.x)
.class Landroidx/recyclerview/widget/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/x$b;,
        Landroidx/recyclerview/widget/x$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/x$b;

.field b:Landroidx/recyclerview/widget/x$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/x$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    new-instance p1, Landroidx/recyclerview/widget/x$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/x$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .registers 13

    iget-object v0, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/x$b;->a()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/x$b;->b()I

    move-result v1

    if-le p2, p1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    const/4 v3, 0x0

    :goto_12
    if-eq p1, p2, :cond_57

    iget-object v4, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/x$b;->a(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/x$b;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/x$b;->b(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroidx/recyclerview/widget/x$a;->a(IIII)V

    if-eqz p3, :cond_40

    iget-object v5, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/x$a;->b()V

    iget-object v5, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {v5, p3}, Landroidx/recyclerview/widget/x$a;->a(I)V

    iget-object v5, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/x$a;->a()Z

    move-result v5

    if-eqz v5, :cond_40

    return-object v4

    :cond_40
    if-eqz p4, :cond_55

    iget-object v5, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/x$a;->b()V

    iget-object v5, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {v5, p4}, Landroidx/recyclerview/widget/x$a;->a(I)V

    iget-object v5, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/x$a;->a()Z

    move-result v5

    if-eqz v5, :cond_55

    move-object v3, v4

    :cond_55
    add-int/2addr p1, v2

    goto :goto_12

    :cond_57
    return-object v3
.end method

.method a(Landroid/view/View;I)Z
    .registers 8

    iget-object v0, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    iget-object v1, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/x$b;->a()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    invoke-interface {v2}, Landroidx/recyclerview/widget/x$b;->b()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/x$b;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/x$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/x$b;->b(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/recyclerview/widget/x$a;->a(IIII)V

    if-eqz p2, :cond_30

    iget-object p1, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/x$a;->b()V

    iget-object p1, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/x$a;->a(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/x;->b:Landroidx/recyclerview/widget/x$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/x$a;->a()Z

    move-result p1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

###### Class androidx.recyclerview.widget.x.a (androidx.recyclerview.widget.x$a)
.class Landroidx/recyclerview/widget/x$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/x$a;->a:I

    return-void
.end method


# virtual methods
.method a(II)I
    .registers 3

    if-le p1, p2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-ne p1, p2, :cond_8

    const/4 p1, 0x2

    return p1

    :cond_8
    const/4 p1, 0x4

    return p1
.end method

.method a(I)V
    .registers 3

    iget v0, p0, Landroidx/recyclerview/widget/x$a;->a:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/x$a;->a:I

    return-void
.end method

.method a(IIII)V
    .registers 5

    iput p1, p0, Landroidx/recyclerview/widget/x$a;->b:I

    iput p2, p0, Landroidx/recyclerview/widget/x$a;->c:I

    iput p3, p0, Landroidx/recyclerview/widget/x$a;->d:I

    iput p4, p0, Landroidx/recyclerview/widget/x$a;->e:I

    return-void
.end method

.method a()Z
    .registers 5

    iget v0, p0, Landroidx/recyclerview/widget/x$a;->a:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget v1, p0, Landroidx/recyclerview/widget/x$a;->d:I

    iget v3, p0, Landroidx/recyclerview/widget/x$a;->b:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/x$a;->a(II)I

    move-result v1

    shl-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_14

    return v2

    :cond_14
    iget v0, p0, Landroidx/recyclerview/widget/x$a;->a:I

    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_28

    iget v1, p0, Landroidx/recyclerview/widget/x$a;->d:I

    iget v3, p0, Landroidx/recyclerview/widget/x$a;->c:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/x$a;->a(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_28

    return v2

    :cond_28
    iget v0, p0, Landroidx/recyclerview/widget/x$a;->a:I

    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_3c

    iget v1, p0, Landroidx/recyclerview/widget/x$a;->e:I

    iget v3, p0, Landroidx/recyclerview/widget/x$a;->b:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/x$a;->a(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_3c

    return v2

    :cond_3c
    iget v0, p0, Landroidx/recyclerview/widget/x$a;->a:I

    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_50

    iget v1, p0, Landroidx/recyclerview/widget/x$a;->e:I

    iget v3, p0, Landroidx/recyclerview/widget/x$a;->c:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/x$a;->a(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    and-int/2addr v0, v1

    if-nez v0, :cond_50

    return v2

    :cond_50
    const/4 v0, 0x1

    return v0
.end method

.method b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/x$a;->a:I

    return-void
.end method

###### Class androidx.recyclerview.widget.x.b (androidx.recyclerview.widget.x$b)
.class interface abstract Landroidx/recyclerview/widget/x$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;)I
.end method

.method public abstract a(I)Landroid/view/View;
.end method

.method public abstract b()I
.end method

.method public abstract b(Landroid/view/View;)I
.end method
