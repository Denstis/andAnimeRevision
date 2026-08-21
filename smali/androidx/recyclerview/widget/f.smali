###### Class androidx.recyclerview.widget.f (androidx.recyclerview.widget.f)
.class Landroidx/recyclerview/widget/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/f$b;,
        Landroidx/recyclerview/widget/f$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/f$b;

.field final b:Landroidx/recyclerview/widget/f$a;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/f$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    new-instance p1, Landroidx/recyclerview/widget/f$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/f$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    return-void
.end method

.method private f(I)I
    .registers 6

    const/4 v0, -0x1

    if-gez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/f$b;->a()I

    move-result v1

    move v2, p1

    :goto_b
    if-ge v2, v1, :cond_27

    iget-object v3, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/f$a;->b(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_25

    :goto_19
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/f$a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_24
    return v2

    :cond_25
    add-int/2addr v2, v3

    goto :goto_b

    :cond_27
    return v0
.end method

.method private g(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->a(Landroid/view/View;)V

    return-void
.end method

.method private h(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->d(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a()I
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/f$b;->a()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method a(I)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->f(I)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f$a;->d(I)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->b(I)V

    return-void
.end method

.method a(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->b(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/f$a;->e(I)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->g(Landroid/view/View;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 6

    if-gez p2, :cond_9

    iget-object p2, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {p2}, Landroidx/recyclerview/widget/f$b;->a()I

    move-result p2

    goto :goto_d

    :cond_9
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/f;->f(I)I

    move-result p2

    :goto_d
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v0, p2, p4}, Landroidx/recyclerview/widget/f$a;->a(IZ)V

    if-eqz p4, :cond_17

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->g(Landroid/view/View;)V

    :cond_17
    iget-object p4, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {p4, p1, p2, p3}, Landroidx/recyclerview/widget/f$b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Landroid/view/View;IZ)V
    .registers 5

    if-gez p2, :cond_9

    iget-object p2, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {p2}, Landroidx/recyclerview/widget/f$b;->a()I

    move-result p2

    goto :goto_d

    :cond_9
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/f;->f(I)I

    move-result p2

    :goto_d
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v0, p2, p3}, Landroidx/recyclerview/widget/f$a;->a(IZ)V

    if-eqz p3, :cond_17

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->g(Landroid/view/View;)V

    :cond_17
    iget-object p3, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {p3, p1, p2}, Landroidx/recyclerview/widget/f$b;->a(Landroid/view/View;I)V

    return-void
.end method

.method a(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/recyclerview/widget/f;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method b()I
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/f$b;->a()I

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;)I
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->b(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    return v0

    :cond_a
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/f$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f$a;->b(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method b(I)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    iget-object v2, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v3, v2}, Landroidx/recyclerview/widget/f$b;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$d0;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2a

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$d0;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$d0;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2a

    return-object v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method c(I)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->f(I)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method c()V
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f$a;->a()V

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_24

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    iget-object v2, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2}, Landroidx/recyclerview/widget/f$b;->d(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_24
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/f$b;->b()V

    return-void
.end method

.method c(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method d(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->b(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/f$a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->h(Landroid/view/View;)Z

    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/f$b;->c(I)V

    return-void
.end method

.method e(I)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->f(I)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->a(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/f$a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/f;->h(Landroid/view/View;)Z

    :cond_18
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->c(I)V

    return-void
.end method

.method e(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->b(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->h(Landroid/view/View;)Z

    return v1

    :cond_e
    iget-object v2, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/f$a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/f$a;->d(I)Z

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->h(Landroid/view/View;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/f$b;->c(I)V

    return v1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method f(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/f$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f$b;->b(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_30

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/f$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/f$a;->a(I)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/f;->h(Landroid/view/View;)Z

    return-void

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/f$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.recyclerview.widget.f.a (androidx.recyclerview.widget.f$a)
.class Landroidx/recyclerview/widget/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Landroidx/recyclerview/widget/f$a;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/recyclerview/widget/f$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/f$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    :cond_b
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f$a;->a()V

    :cond_b
    return-void
.end method

.method a(I)V
    .registers 8

    const/16 v0, 0x40

    if-lt p1, v0, :cond_d

    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    if-eqz v1, :cond_18

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/f$a;->a(I)V

    goto :goto_18

    :cond_d
    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    :cond_18
    :goto_18
    return-void
.end method

.method a(IZ)V
    .registers 15

    const/16 v0, 0x40

    if-lt p1, v0, :cond_e

    invoke-direct {p0}, Landroidx/recyclerview/widget/f$a;->b()V

    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/f$a;->a(IZ)V

    goto :goto_46

    :cond_e
    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    const-wide/16 v1, 0x1

    shl-long v6, v1, p1

    sub-long/2addr v6, v1

    iget-wide v1, p0, Landroidx/recyclerview/widget/f$a;->a:J

    and-long v8, v1, v6

    const-wide/16 v10, -0x1

    xor-long/2addr v6, v10

    and-long/2addr v1, v6

    shl-long/2addr v1, v4

    or-long/2addr v1, v8

    iput-wide v1, p0, Landroidx/recyclerview/widget/f$a;->a:J

    if-eqz p2, :cond_35

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f$a;->e(I)V

    goto :goto_38

    :cond_35
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f$a;->a(I)V

    :goto_38
    if-nez v0, :cond_3e

    iget-object p1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    if-eqz p1, :cond_46

    :cond_3e
    invoke-direct {p0}, Landroidx/recyclerview/widget/f$a;->b()V

    iget-object p1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {p1, v5, v0}, Landroidx/recyclerview/widget/f$a;->a(IZ)V

    :cond_46
    :goto_46
    return-void
.end method

.method b(I)I
    .registers 8

    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1c

    if-lt p1, v1, :cond_11

    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_11
    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1c
    if-ge p1, v1, :cond_29

    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_29
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f$a;->b(I)I

    move-result p1

    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method c(I)Z
    .registers 6

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    invoke-direct {p0}, Landroidx/recyclerview/widget/f$a;->b()V

    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/f$a;->c(I)Z

    move-result p1

    return p1

    :cond_f
    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1
.end method

.method d(I)Z
    .registers 15

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    invoke-direct {p0}, Landroidx/recyclerview/widget/f$a;->b()V

    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/f$a;->d(I)Z

    move-result p1

    return p1

    :cond_f
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, Landroidx/recyclerview/widget/f$a;->a:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    const/4 p1, 0x1

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-eqz v9, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    iget-wide v5, p0, Landroidx/recyclerview/widget/f$a;->a:J

    const-wide/16 v9, -0x1

    xor-long v11, v2, v9

    and-long/2addr v5, v11

    iput-wide v5, p0, Landroidx/recyclerview/widget/f$a;->a:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    and-long v5, v0, v2

    xor-long/2addr v2, v9

    and-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    or-long/2addr v0, v5

    iput-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    iget-object p1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    if-eqz p1, :cond_4c

    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/f$a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_47

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f$a;->e(I)V

    :cond_47
    iget-object p1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/f$a;->d(I)Z

    :cond_4c
    return v4
.end method

.method e(I)V
    .registers 6

    const/16 v0, 0x40

    if-lt p1, v0, :cond_e

    invoke-direct {p0}, Landroidx/recyclerview/widget/f$a;->b()V

    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/f$a;->e(I)V

    goto :goto_16

    :cond_e
    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    :goto_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    if-nez v0, :cond_b

    iget-wide v0, p0, Landroidx/recyclerview/widget/f$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->b:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/f$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/recyclerview/widget/f$a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0
.end method

###### Class androidx.recyclerview.widget.f.b (androidx.recyclerview.widget.f$b)
.class interface abstract Landroidx/recyclerview/widget/f$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)Landroid/view/View;
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;I)V
.end method

.method public abstract a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract b()V
.end method

.method public abstract b(I)V
.end method

.method public abstract c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$d0;
.end method

.method public abstract c(I)V
.end method

.method public abstract d(Landroid/view/View;)V
.end method
