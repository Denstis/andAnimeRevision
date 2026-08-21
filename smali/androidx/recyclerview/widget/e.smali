###### Class androidx.recyclerview.widget.e (androidx.recyclerview.widget.e)
.class public Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/p;


# instance fields
.field final a:Landroidx/recyclerview/widget/p;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/e;->b:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/e;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/e;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/p;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget v0, p0, Landroidx/recyclerview/widget/e;->b:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto :goto_2e

    :cond_f
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/p;

    iget v1, p0, Landroidx/recyclerview/widget/e;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/e;->d:I

    iget-object v3, p0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroidx/recyclerview/widget/p;->a(IILjava/lang/Object;)V

    goto :goto_2e

    :cond_1b
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/p;

    iget v1, p0, Landroidx/recyclerview/widget/e;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/e;->d:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/p;->c(II)V

    goto :goto_2e

    :cond_25
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/p;

    iget v1, p0, Landroidx/recyclerview/widget/e;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/e;->d:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/p;->b(II)V

    :goto_2e
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/e;->b:I

    return-void
.end method

.method public a(II)V
    .registers 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->a()V

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/p;

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/p;->a(II)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .registers 9

    iget v0, p0, Landroidx/recyclerview/widget/e;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroidx/recyclerview/widget/e;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/e;->d:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_26

    add-int v3, p1, p2

    if-lt v3, v0, :cond_26

    iget-object v4, p0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/Object;

    if-ne v4, p3, :cond_26

    add-int/2addr v2, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/e;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/e;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/recyclerview/widget/e;->d:I

    return-void

    :cond_26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->a()V

    iput p1, p0, Landroidx/recyclerview/widget/e;->c:I

    iput p2, p0, Landroidx/recyclerview/widget/e;->d:I

    iput-object p3, p0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/Object;

    iput v1, p0, Landroidx/recyclerview/widget/e;->b:I

    return-void
.end method

.method public b(II)V
    .registers 7

    iget v0, p0, Landroidx/recyclerview/widget/e;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget v0, p0, Landroidx/recyclerview/widget/e;->c:I

    if-lt p1, v0, :cond_19

    iget v2, p0, Landroidx/recyclerview/widget/e;->d:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_19

    add-int/2addr v2, p2

    iput v2, p0, Landroidx/recyclerview/widget/e;->d:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/e;->c:I

    return-void

    :cond_19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->a()V

    iput p1, p0, Landroidx/recyclerview/widget/e;->c:I

    iput p2, p0, Landroidx/recyclerview/widget/e;->d:I

    iput v1, p0, Landroidx/recyclerview/widget/e;->b:I

    return-void
.end method

.method public c(II)V
    .registers 6

    iget v0, p0, Landroidx/recyclerview/widget/e;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroidx/recyclerview/widget/e;->c:I

    if-lt v0, p1, :cond_15

    add-int v2, p1, p2

    if-gt v0, v2, :cond_15

    iget v0, p0, Landroidx/recyclerview/widget/e;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/e;->d:I

    iput p1, p0, Landroidx/recyclerview/widget/e;->c:I

    return-void

    :cond_15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->a()V

    iput p1, p0, Landroidx/recyclerview/widget/e;->c:I

    iput p2, p0, Landroidx/recyclerview/widget/e;->d:I

    iput v1, p0, Landroidx/recyclerview/widget/e;->b:I

    return-void
.end method
