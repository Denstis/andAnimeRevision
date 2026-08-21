###### Class b.q.e (b.q.e)
.class public Lb/q/e;
.super Lb/k/a/r;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/k/a/r;-><init>()V

    return-void
.end method

.method private static a(Lb/q/n;)Z
    .registers 2

    invoke-virtual {p0}, Lb/q/n;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/k/a/r;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lb/q/n;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/k/a/r;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lb/q/n;->getTargetTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lb/k/a/r;->a(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lb/q/n;

    check-cast p2, Lb/q/n;

    check-cast p3, Lb/q/n;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    new-instance v0, Lb/q/r;

    invoke-direct {v0}, Lb/q/r;-><init>()V

    invoke-virtual {v0, p1}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    invoke-virtual {v0, p2}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lb/q/r;->b(I)Lb/q/r;

    move-object p1, v0

    goto :goto_23

    :cond_1b
    if-eqz p1, :cond_1e

    goto :goto_23

    :cond_1e
    if-eqz p2, :cond_22

    move-object p1, p2

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    if-eqz p3, :cond_33

    new-instance p2, Lb/q/r;

    invoke-direct {p2}, Lb/q/r;-><init>()V

    if-eqz p1, :cond_2f

    invoke-virtual {p2, p1}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    :cond_2f
    invoke-virtual {p2, p3}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    return-object p2

    :cond_33
    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lb/q/n;

    invoke-static {p1, p2}, Lb/q/p;->a(Landroid/view/ViewGroup;Lb/q/n;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 4

    if-eqz p1, :cond_c

    check-cast p1, Lb/q/n;

    new-instance v0, Lb/q/e$d;

    invoke-direct {v0, p0, p2}, Lb/q/e$d;-><init>(Lb/q/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lb/q/n;->setEpicenterCallback(Lb/q/n$f;)V

    :cond_c
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    check-cast p1, Lb/q/n;

    invoke-virtual {p1, p2}, Lb/q/n;->addTarget(Landroid/view/View;)Lb/q/n;

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lb/q/n;

    new-instance v0, Lb/q/e$b;

    invoke-direct {v0, p0, p2, p3}, Lb/q/e$b;-><init>(Lb/q/e;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lb/q/n;->addListener(Lb/q/n$g;)Lb/q/n;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lb/q/n;

    new-instance v9, Lb/q/e$c;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lb/q/e$c;-><init>(Lb/q/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lb/q/n;->addListener(Lb/q/n$g;)Lb/q/n;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lb/q/n;

    if-nez p1, :cond_5

    return-void

    :cond_5
    instance-of v0, p1, Lb/q/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p1, Lb/q/r;

    invoke-virtual {p1}, Lb/q/r;->a()I

    move-result v0

    :goto_10
    if-ge v1, v0, :cond_3e

    invoke-virtual {p1, v1}, Lb/q/r;->a(I)Lb/q/n;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lb/q/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    invoke-static {p1}, Lb/q/e;->a(Lb/q/n;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Lb/q/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/k/a/r;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_30
    if-ge v1, v0, :cond_3e

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lb/q/n;->addTarget(Landroid/view/View;)Lb/q/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3e
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lb/q/n;

    instance-of v0, p1, Lb/q/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    check-cast p1, Lb/q/r;

    invoke-virtual {p1}, Lb/q/r;->a()I

    move-result v0

    :goto_d
    if-ge v1, v0, :cond_5d

    invoke-virtual {p1, v1}, Lb/q/r;->a(I)Lb/q/n;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lb/q/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    invoke-static {p1}, Lb/q/e;->a(Lb/q/n;)Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p1}, Lb/q/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5d

    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p3, :cond_37

    const/4 v0, 0x0

    goto :goto_3b

    :cond_37
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3b
    if-ge v1, v0, :cond_49

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lb/q/n;->addTarget(Landroid/view/View;)Lb/q/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_4f
    if-ltz p3, :cond_5d

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lb/q/n;->removeTarget(Landroid/view/View;)Lb/q/n;

    add-int/lit8 p3, p3, -0x1

    goto :goto_4f

    :cond_5d
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lb/q/n;

    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p1, :cond_9

    check-cast p1, Lb/q/n;

    invoke-virtual {p1}, Lb/q/n;->clone()Lb/q/n;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lb/q/r;

    invoke-direct {v0}, Lb/q/r;-><init>()V

    if-eqz p1, :cond_c

    check-cast p1, Lb/q/n;

    invoke-virtual {v0, p1}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    :cond_c
    if-eqz p2, :cond_13

    check-cast p2, Lb/q/n;

    invoke-virtual {v0, p2}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    :cond_13
    if-eqz p3, :cond_1a

    check-cast p3, Lb/q/n;

    invoke-virtual {v0, p3}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    :cond_1a
    return-object v0
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    check-cast p1, Lb/q/n;

    invoke-virtual {p1, p2}, Lb/q/n;->removeTarget(Landroid/view/View;)Lb/q/n;

    :cond_7
    return-void
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lb/q/r;

    invoke-virtual {p1}, Lb/q/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v0, v3}, Lb/k/a/r;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, Lb/q/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lb/q/r;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lb/q/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lb/q/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, Lb/q/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_15
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lb/q/r;

    invoke-direct {v0}, Lb/q/r;-><init>()V

    check-cast p1, Lb/q/n;

    invoke-virtual {v0, p1}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    return-object v0
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_14

    check-cast p1, Lb/q/n;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2, v0}, Lb/k/a/r;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance p2, Lb/q/e$a;

    invoke-direct {p2, p0, v0}, Lb/q/e$a;-><init>(Lb/q/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lb/q/n;->setEpicenterCallback(Lb/q/n$f;)V

    :cond_14
    return-void
.end method

###### Class b.q.e.a (b.q.e$a)
.class Lb/q/e$a;
.super Lb/q/n$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/e;->c(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lb/q/e;Landroid/graphics/Rect;)V
    .registers 3

    iput-object p2, p0, Lb/q/e$a;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Lb/q/n$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/q/n;)Landroid/graphics/Rect;
    .registers 2

    iget-object p1, p0, Lb/q/e$a;->a:Landroid/graphics/Rect;

    return-object p1
.end method

###### Class b.q.e.b (b.q.e$b)
.class Lb/q/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/q/n$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/e;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lb/q/e;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 4

    iput-object p2, p0, Lb/q/e$b;->a:Landroid/view/View;

    iput-object p3, p0, Lb/q/e$b;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/q/n;)V
    .registers 2

    return-void
.end method

.method public b(Lb/q/n;)V
    .registers 2

    return-void
.end method

.method public c(Lb/q/n;)V
    .registers 5

    invoke-virtual {p1, p0}, Lb/q/n;->removeListener(Lb/q/n$g;)Lb/q/n;

    iget-object p1, p0, Lb/q/e$b;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lb/q/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, p1, :cond_22

    iget-object v2, p0, Lb/q/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method public d(Lb/q/n;)V
    .registers 2

    return-void
.end method

.method public e(Lb/q/n;)V
    .registers 2

    return-void
.end method

###### Class b.q.e.c (b.q.e$c)
.class Lb/q/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/q/n$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Lb/q/e;


# direct methods
.method constructor <init>(Lb/q/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 8

    iput-object p1, p0, Lb/q/e$c;->g:Lb/q/e;

    iput-object p2, p0, Lb/q/e$c;->a:Ljava/lang/Object;

    iput-object p3, p0, Lb/q/e$c;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lb/q/e$c;->c:Ljava/lang/Object;

    iput-object p5, p0, Lb/q/e$c;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Lb/q/e$c;->e:Ljava/lang/Object;

    iput-object p7, p0, Lb/q/e$c;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/q/n;)V
    .registers 5

    iget-object p1, p0, Lb/q/e$c;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p0, Lb/q/e$c;->g:Lb/q/e;

    iget-object v2, p0, Lb/q/e$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lb/q/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_c
    iget-object p1, p0, Lb/q/e$c;->c:Ljava/lang/Object;

    if-eqz p1, :cond_17

    iget-object v1, p0, Lb/q/e$c;->g:Lb/q/e;

    iget-object v2, p0, Lb/q/e$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lb/q/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_17
    iget-object p1, p0, Lb/q/e$c;->e:Ljava/lang/Object;

    if-eqz p1, :cond_22

    iget-object v1, p0, Lb/q/e$c;->g:Lb/q/e;

    iget-object v2, p0, Lb/q/e$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lb/q/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_22
    return-void
.end method

.method public b(Lb/q/n;)V
    .registers 2

    return-void
.end method

.method public c(Lb/q/n;)V
    .registers 2

    return-void
.end method

.method public d(Lb/q/n;)V
    .registers 2

    return-void
.end method

.method public e(Lb/q/n;)V
    .registers 2

    return-void
.end method

###### Class b.q.e.d (b.q.e$d)
.class Lb/q/e$d;
.super Lb/q/n$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/e;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lb/q/e;Landroid/graphics/Rect;)V
    .registers 3

    iput-object p2, p0, Lb/q/e$d;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Lb/q/n$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/q/n;)Landroid/graphics/Rect;
    .registers 2

    iget-object p1, p0, Lb/q/e$d;->a:Landroid/graphics/Rect;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_e

    :cond_b
    iget-object p1, p0, Lb/q/e$d;->a:Landroid/graphics/Rect;

    return-object p1

    :cond_e
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method
