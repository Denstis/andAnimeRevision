###### Class b.q.r (b.q.r)
.class public Lb/q/r;
.super Lb/q/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/q/r$b;
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/q/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field d:I

.field e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb/q/n;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/q/r;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/q/r;->e:Z

    iput v0, p0, Lb/q/r;->f:I

    return-void
.end method

.method private b()V
    .registers 4

    new-instance v0, Lb/q/r$b;

    invoke-direct {v0, p0}, Lb/q/r$b;-><init>(Lb/q/r;)V

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, v0}, Lb/q/n;->addListener(Lb/q/n$g;)Lb/q/n;

    goto :goto_b

    :cond_1b
    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lb/q/r;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lb/q/n;
    .registers 3

    if-ltz p1, :cond_14

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/q/n;

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lb/q/n;)Lb/q/r;
    .registers 7

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lb/q/n;->mParent:Lb/q/r;

    iget-wide v0, p0, Lb/q/n;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    invoke-virtual {p1, v0, v1}, Lb/q/n;->setDuration(J)Lb/q/n;

    :cond_12
    iget v0, p0, Lb/q/r;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lb/q/n;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/q/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lb/q/n;

    :cond_1f
    iget v0, p0, Lb/q/r;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lb/q/n;->getPropagation()Lb/q/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/q/n;->setPropagation(Lb/q/q;)V

    :cond_2c
    iget v0, p0, Lb/q/r;->f:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lb/q/n;->getPathMotion()Lb/q/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/q/n;->setPathMotion(Lb/q/g;)V

    :cond_39
    iget v0, p0, Lb/q/r;->f:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lb/q/n;->getEpicenterCallback()Lb/q/n$f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/q/n;->setEpicenterCallback(Lb/q/n$f;)V

    :cond_46
    return-object p0
.end method

.method public bridge synthetic addListener(Lb/q/n$g;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->addListener(Lb/q/n$g;)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lb/q/n$g;)Lb/q/r;
    .registers 2

    invoke-super {p0, p1}, Lb/q/n;->addListener(Lb/q/n$g;)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public bridge synthetic addTarget(I)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->addTarget(I)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->addTarget(Landroid/view/View;)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->addTarget(Ljava/lang/Class;)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->addTarget(Ljava/lang/String;)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public addTarget(I)Lb/q/r;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1}, Lb/q/n;->addTarget(I)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lb/q/n;->addTarget(I)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public addTarget(Landroid/view/View;)Lb/q/r;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1}, Lb/q/n;->addTarget(Landroid/view/View;)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lb/q/n;->addTarget(Landroid/view/View;)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public addTarget(Ljava/lang/Class;)Lb/q/r;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1}, Lb/q/n;->addTarget(Ljava/lang/Class;)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lb/q/n;->addTarget(Ljava/lang/Class;)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public addTarget(Ljava/lang/String;)Lb/q/r;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1}, Lb/q/n;->addTarget(Ljava/lang/String;)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lb/q/n;->addTarget(Ljava/lang/String;)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public b(I)Lb/q/r;
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_20

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/q/r;->c:Z

    goto :goto_22

    :cond_9
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput-boolean v0, p0, Lb/q/r;->c:Z

    :goto_22
    return-object p0
.end method

.method protected cancel()V
    .registers 4

    invoke-super {p0}, Lb/q/n;->cancel()V

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2}, Lb/q/n;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public captureEndValues(Lb/q/t;)V
    .registers 5

    iget-object v0, p1, Lb/q/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    iget-object v2, p1, Lb/q/t;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, p1}, Lb/q/n;->captureEndValues(Lb/q/t;)V

    iget-object v2, p1, Lb/q/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    return-void
.end method

.method capturePropagationValues(Lb/q/t;)V
    .registers 5

    invoke-super {p0, p1}, Lb/q/n;->capturePropagationValues(Lb/q/t;)V

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1}, Lb/q/n;->capturePropagationValues(Lb/q/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public captureStartValues(Lb/q/t;)V
    .registers 5

    iget-object v0, p1, Lb/q/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    iget-object v2, p1, Lb/q/t;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lb/q/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, p1}, Lb/q/n;->captureStartValues(Lb/q/t;)V

    iget-object v2, p1, Lb/q/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    return-void
.end method

.method public clone()Lb/q/n;
    .registers 5

    invoke-super {p0}, Lb/q/n;->clone()Lb/q/n;

    move-result-object v0

    check-cast v0, Lb/q/r;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lb/q/r;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_28

    iget-object v3, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/n;

    invoke-virtual {v3}, Lb/q/n;->clone()Lb/q/n;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lb/q/r;->clone()Lb/q/n;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Lb/q/u;Lb/q/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lb/q/u;",
            "Lb/q/u;",
            "Ljava/util/ArrayList<",
            "Lb/q/t;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lb/q/t;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual {p0}, Lb/q/n;->getStartDelay()J

    move-result-wide v1

    iget-object v3, v0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_40

    iget-object v5, v0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lb/q/n;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_33

    iget-boolean v5, v0, Lb/q/r;->c:Z

    if-nez v5, :cond_23

    if-nez v4, :cond_33

    :cond_23
    invoke-virtual {v6}, Lb/q/n;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_30

    add-long/2addr v9, v1

    invoke-virtual {v6, v9, v10}, Lb/q/n;->setStartDelay(J)Lb/q/n;

    goto :goto_33

    :cond_30
    invoke-virtual {v6, v1, v2}, Lb/q/n;->setStartDelay(J)Lb/q/n;

    :cond_33
    :goto_33
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lb/q/n;->createAnimators(Landroid/view/ViewGroup;Lb/q/u;Lb/q/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_40
    return-void
.end method

.method public excludeTarget(IZ)Lb/q/n;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1, p2}, Lb/q/n;->excludeTarget(IZ)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1, p2}, Lb/q/n;->excludeTarget(IZ)Lb/q/n;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Landroid/view/View;Z)Lb/q/n;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1, p2}, Lb/q/n;->excludeTarget(Landroid/view/View;Z)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1, p2}, Lb/q/n;->excludeTarget(Landroid/view/View;Z)Lb/q/n;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Lb/q/n;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1, p2}, Lb/q/n;->excludeTarget(Ljava/lang/Class;Z)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1, p2}, Lb/q/n;->excludeTarget(Ljava/lang/Class;Z)Lb/q/n;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Ljava/lang/String;Z)Lb/q/n;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1, p2}, Lb/q/n;->excludeTarget(Ljava/lang/String;Z)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1, p2}, Lb/q/n;->excludeTarget(Ljava/lang/String;Z)Lb/q/n;

    move-result-object p1

    return-object p1
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .registers 5

    invoke-super {p0, p1}, Lb/q/n;->forceToEnd(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1}, Lb/q/n;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public pause(Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1}, Lb/q/n;->pause(Landroid/view/View;)V

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1}, Lb/q/n;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public bridge synthetic removeListener(Lb/q/n$g;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->removeListener(Lb/q/n$g;)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lb/q/n$g;)Lb/q/r;
    .registers 2

    invoke-super {p0, p1}, Lb/q/n;->removeListener(Lb/q/n$g;)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public bridge synthetic removeTarget(I)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->removeTarget(I)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->removeTarget(Landroid/view/View;)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->removeTarget(Ljava/lang/Class;)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->removeTarget(Ljava/lang/String;)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public removeTarget(I)Lb/q/r;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1}, Lb/q/n;->removeTarget(I)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lb/q/n;->removeTarget(I)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public removeTarget(Landroid/view/View;)Lb/q/r;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1}, Lb/q/n;->removeTarget(Landroid/view/View;)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lb/q/n;->removeTarget(Landroid/view/View;)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public removeTarget(Ljava/lang/Class;)Lb/q/r;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1}, Lb/q/n;->removeTarget(Ljava/lang/Class;)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lb/q/n;->removeTarget(Ljava/lang/Class;)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public removeTarget(Ljava/lang/String;)Lb/q/r;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1}, Lb/q/n;->removeTarget(Ljava/lang/String;)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lb/q/n;->removeTarget(Ljava/lang/String;)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public resume(Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1}, Lb/q/n;->resume(Landroid/view/View;)V

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1}, Lb/q/n;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method protected runAnimators()V
    .registers 5

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lb/q/n;->start()V

    invoke-virtual {p0}, Lb/q/n;->end()V

    return-void

    :cond_f
    invoke-direct {p0}, Lb/q/r;->b()V

    iget-boolean v0, p0, Lb/q/r;->c:Z

    if-nez v0, :cond_4b

    const/4 v0, 0x1

    :goto_17
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    new-instance v3, Lb/q/r$a;

    invoke-direct {v3, p0, v2}, Lb/q/r$a;-><init>(Lb/q/r;Lb/q/n;)V

    invoke-virtual {v1, v3}, Lb/q/n;->addListener(Lb/q/n$g;)Lb/q/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_3c
    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/q/n;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lb/q/n;->runAnimators()V

    goto :goto_61

    :cond_4b
    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1}, Lb/q/n;->runAnimators()V

    goto :goto_51

    :cond_61
    :goto_61
    return-void
.end method

.method setCanRemoveViews(Z)V
    .registers 5

    invoke-super {p0, p1}, Lb/q/n;->setCanRemoveViews(Z)V

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1}, Lb/q/n;->setCanRemoveViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public bridge synthetic setDuration(J)Lb/q/n;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/q/r;->setDuration(J)Lb/q/r;

    return-object p0
.end method

.method public setDuration(J)Lb/q/r;
    .registers 8

    invoke-super {p0, p1, p2}, Lb/q/n;->setDuration(J)Lb/q/n;

    iget-wide v0, p0, Lb/q/n;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_22

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1, p2}, Lb/q/n;->setDuration(J)Lb/q/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_22
    return-object p0
.end method

.method public setEpicenterCallback(Lb/q/n$f;)V
    .registers 5

    invoke-super {p0, p1}, Lb/q/n;->setEpicenterCallback(Lb/q/n$f;)V

    iget v0, p0, Lb/q/r;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lb/q/r;->f:I

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1}, Lb/q/n;->setEpicenterCallback(Lb/q/n$f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->setInterpolator(Landroid/animation/TimeInterpolator;)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lb/q/r;
    .registers 5

    iget v0, p0, Lb/q/r;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/q/r;->f:I

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1}, Lb/q/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lb/q/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    invoke-super {p0, p1}, Lb/q/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method public setPathMotion(Lb/q/g;)V
    .registers 4

    invoke-super {p0, p1}, Lb/q/n;->setPathMotion(Lb/q/g;)V

    iget v0, p0, Lb/q/r;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lb/q/r;->f:I

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/n;

    invoke-virtual {v1, p1}, Lb/q/n;->setPathMotion(Lb/q/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method public setPropagation(Lb/q/q;)V
    .registers 5

    invoke-super {p0, p1}, Lb/q/n;->setPropagation(Lb/q/q;)V

    iget v0, p0, Lb/q/r;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb/q/r;->f:I

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1}, Lb/q/n;->setPropagation(Lb/q/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Lb/q/n;
    .registers 2

    invoke-virtual {p0, p1}, Lb/q/r;->setSceneRoot(Landroid/view/ViewGroup;)Lb/q/r;

    return-object p0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Lb/q/r;
    .registers 5

    invoke-super {p0, p1}, Lb/q/n;->setSceneRoot(Landroid/view/ViewGroup;)Lb/q/n;

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/n;

    invoke-virtual {v2, p1}, Lb/q/n;->setSceneRoot(Landroid/view/ViewGroup;)Lb/q/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Lb/q/n;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/q/r;->setStartDelay(J)Lb/q/r;

    move-result-object p1

    return-object p1
.end method

.method public setStartDelay(J)Lb/q/r;
    .registers 3

    invoke-super {p0, p1, p2}, Lb/q/n;->setStartDelay(J)Lb/q/n;

    move-result-object p1

    check-cast p1, Lb/q/r;

    return-object p1
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-super {p0, p1}, Lb/q/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/q/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/q/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/q/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_41
    return-object v0
.end method

###### Class b.q.r.a (b.q.r$a)
.class Lb/q/r$a;
.super Lb/q/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/r;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/q/n;


# direct methods
.method constructor <init>(Lb/q/r;Lb/q/n;)V
    .registers 3

    iput-object p2, p0, Lb/q/r$a;->a:Lb/q/n;

    invoke-direct {p0}, Lb/q/o;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/q/n;)V
    .registers 3

    iget-object v0, p0, Lb/q/r$a;->a:Lb/q/n;

    invoke-virtual {v0}, Lb/q/n;->runAnimators()V

    invoke-virtual {p1, p0}, Lb/q/n;->removeListener(Lb/q/n$g;)Lb/q/n;

    return-void
.end method

###### Class b.q.r.b (b.q.r$b)
.class Lb/q/r$b;
.super Lb/q/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lb/q/r;


# direct methods
.method constructor <init>(Lb/q/r;)V
    .registers 2

    invoke-direct {p0}, Lb/q/o;-><init>()V

    iput-object p1, p0, Lb/q/r$b;->a:Lb/q/r;

    return-void
.end method


# virtual methods
.method public a(Lb/q/n;)V
    .registers 3

    iget-object p1, p0, Lb/q/r$b;->a:Lb/q/r;

    iget-boolean v0, p1, Lb/q/r;->e:Z

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lb/q/n;->start()V

    iget-object p1, p0, Lb/q/r$b;->a:Lb/q/r;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/q/r;->e:Z

    :cond_e
    return-void
.end method

.method public c(Lb/q/n;)V
    .registers 4

    iget-object v0, p0, Lb/q/r$b;->a:Lb/q/r;

    iget v1, v0, Lb/q/r;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lb/q/r;->d:I

    iget v1, v0, Lb/q/r;->d:I

    if-nez v1, :cond_12

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/q/r;->e:Z

    invoke-virtual {v0}, Lb/q/n;->end()V

    :cond_12
    invoke-virtual {p1, p0}, Lb/q/n;->removeListener(Lb/q/n$g;)Lb/q/n;

    return-void
.end method
