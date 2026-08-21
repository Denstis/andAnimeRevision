###### Class androidx.lifecycle.h (androidx.lifecycle.h)
.class public Landroidx/lifecycle/h;
.super Landroidx/lifecycle/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h$b;
    }
.end annotation


# instance fields
.field private a:Lb/b/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/b/a<",
            "Landroidx/lifecycle/f;",
            "Landroidx/lifecycle/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/lifecycle/e$b;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g;)V
    .registers 3

    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    new-instance v0, Lb/b/a/b/a;

    invoke-direct {v0}, Lb/b/a/b/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/h;->d:I

    iput-boolean v0, p0, Landroidx/lifecycle/h;->e:Z

    iput-boolean v0, p0, Landroidx/lifecycle/h;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/h;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/h;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    iput-object p1, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    return-void
.end method

.method static a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_9

    move-object p0, p1

    :cond_9
    return-object p0
.end method

.method private a(Landroidx/lifecycle/g;)V
    .registers 7

    iget-object v0, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v0}, Lb/b/a/b/b;->a()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Landroidx/lifecycle/h;->f:Z

    if-nez v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/h$b;

    :goto_1c
    iget-object v3, v2, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    iget-object v4, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Landroidx/lifecycle/h;->f:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/b/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    invoke-static {v3}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v3

    invoke-static {v3}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/h;->d(Landroidx/lifecycle/e$b;)V

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/h$b;->a(Landroidx/lifecycle/g;Landroidx/lifecycle/e$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/h;->c()V

    goto :goto_1c

    :cond_4a
    return-void
.end method

.method private static b(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;
    .registers 4

    sget-object v0, Landroidx/lifecycle/h$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_34

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_34
    sget-object p0, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_37
    sget-object p0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_3a
    sget-object p0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;
    .registers 4

    sget-object v0, Landroidx/lifecycle/h$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    sget-object p0, Landroidx/lifecycle/e$b;->b:Landroidx/lifecycle/e$b;

    return-object p0

    :pswitch_25
    sget-object p0, Landroidx/lifecycle/e$b;->f:Landroidx/lifecycle/e$b;

    return-object p0

    :pswitch_28
    sget-object p0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    return-object p0

    :pswitch_2b
    sget-object p0, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private b(Landroidx/lifecycle/g;)V
    .registers 7

    iget-object v0, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v0}, Lb/b/a/b/b;->c()Lb/b/a/b/b$d;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Landroidx/lifecycle/h;->f:Z

    if-nez v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/h$b;

    :goto_1c
    iget-object v3, v2, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    iget-object v4, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-boolean v3, p0, Landroidx/lifecycle/h;->f:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/b/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    invoke-direct {p0, v3}, Landroidx/lifecycle/h;->d(Landroidx/lifecycle/e$b;)V

    iget-object v3, v2, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    invoke-static {v3}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/h$b;->a(Landroidx/lifecycle/g;Landroidx/lifecycle/e$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/h;->c()V

    goto :goto_1c

    :cond_48
    return-void
.end method

.method private b()Z
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v0}, Lb/b/a/b/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v0}, Lb/b/a/b/b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h$b;

    iget-object v0, v0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    iget-object v2, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v2}, Lb/b/a/b/b;->d()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/h$b;

    iget-object v2, v2, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    if-ne v0, v2, :cond_2d

    iget-object v0, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    if-ne v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method private c(Landroidx/lifecycle/f;)Landroidx/lifecycle/e$b;
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v0, p1}, Lb/b/a/b/a;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/h$b;

    iget-object p1, p1, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    goto :goto_13

    :cond_12
    move-object p1, v0

    :goto_13
    iget-object v1, p0, Landroidx/lifecycle/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v0, p0, Landroidx/lifecycle/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/e$b;

    :cond_29
    iget-object v1, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    invoke-static {v1, p1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private c(Landroidx/lifecycle/e$b;)V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    iget-boolean p1, p0, Landroidx/lifecycle/h;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    iget p1, p0, Landroidx/lifecycle/h;->d:I

    if-eqz p1, :cond_11

    goto :goto_1a

    :cond_11
    iput-boolean v0, p0, Landroidx/lifecycle/h;->e:Z

    invoke-direct {p0}, Landroidx/lifecycle/h;->d()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/h;->e:Z

    return-void

    :cond_1a
    :goto_1a
    iput-boolean v0, p0, Landroidx/lifecycle/h;->f:Z

    return-void
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Landroidx/lifecycle/h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/g;

    if-nez v0, :cond_12

    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    :goto_12
    invoke-direct {p0}, Landroidx/lifecycle/h;->b()Z

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/lifecycle/h;->f:Z

    if-nez v1, :cond_54

    iget-object v1, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    iget-object v2, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v2}, Lb/b/a/b/b;->b()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/h$b;

    iget-object v2, v2, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_34

    invoke-direct {p0, v0}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/g;)V

    :cond_34
    iget-object v1, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v1}, Lb/b/a/b/b;->d()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/lifecycle/h;->f:Z

    if-nez v2, :cond_12

    if-eqz v1, :cond_12

    iget-object v2, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/h$b;

    iget-object v1, v1, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_12

    invoke-direct {p0, v0}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/g;)V

    goto :goto_12

    :cond_54
    return-void
.end method

.method private d(Landroidx/lifecycle/e$b;)V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static e(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;
    .registers 4

    sget-object v0, Landroidx/lifecycle/h$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    goto :goto_3b

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_35
    sget-object p0, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_38
    sget-object p0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_3b
    :goto_3b
    sget-object p0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/lifecycle/e$b;
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    return-object v0
.end method

.method public a(Landroidx/lifecycle/e$a;)V
    .registers 2

    invoke-static {p1}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/lifecycle/h;->c(Landroidx/lifecycle/e$b;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/e$b;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/lifecycle/h;->c(Landroidx/lifecycle/e$b;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/f;)V
    .registers 8

    iget-object v0, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/e$b;

    sget-object v1, Landroidx/lifecycle/e$b;->b:Landroidx/lifecycle/e$b;

    if-ne v0, v1, :cond_7

    goto :goto_9

    :cond_7
    sget-object v1, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    :goto_9
    new-instance v0, Landroidx/lifecycle/h$b;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/h$b;-><init>(Landroidx/lifecycle/f;Landroidx/lifecycle/e$b;)V

    iget-object v1, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v1, p1, v0}, Lb/b/a/b/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/h$b;

    if-eqz v1, :cond_19

    return-void

    :cond_19
    iget-object v1, p0, Landroidx/lifecycle/h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/g;

    if-nez v1, :cond_24

    return-void

    :cond_24
    iget v2, p0, Landroidx/lifecycle/h;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_30

    iget-boolean v2, p0, Landroidx/lifecycle/h;->e:Z

    if-eqz v2, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v2, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v2, 0x1

    :goto_31
    invoke-direct {p0, p1}, Landroidx/lifecycle/h;->c(Landroidx/lifecycle/f;)Landroidx/lifecycle/e$b;

    move-result-object v4

    iget v5, p0, Landroidx/lifecycle/h;->d:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/h;->d:I

    :goto_3a
    iget-object v5, v0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_60

    iget-object v4, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v4, p1}, Lb/b/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    iget-object v4, v0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    invoke-direct {p0, v4}, Landroidx/lifecycle/h;->d(Landroidx/lifecycle/e$b;)V

    iget-object v4, v0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    invoke-static {v4}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/h$b;->a(Landroidx/lifecycle/g;Landroidx/lifecycle/e$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/h;->c()V

    invoke-direct {p0, p1}, Landroidx/lifecycle/h;->c(Landroidx/lifecycle/f;)Landroidx/lifecycle/e$b;

    move-result-object v4

    goto :goto_3a

    :cond_60
    if-nez v2, :cond_65

    invoke-direct {p0}, Landroidx/lifecycle/h;->d()V

    :cond_65
    iget p1, p0, Landroidx/lifecycle/h;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/h;->d:I

    return-void
.end method

.method public b(Landroidx/lifecycle/f;)V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/h;->a:Lb/b/a/b/a;

    invoke-virtual {v0, p1}, Lb/b/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class androidx.lifecycle.h.a (androidx.lifecycle.h$a)
.class synthetic Landroidx/lifecycle/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    invoke-static {}, Landroidx/lifecycle/e$b;->values()[Landroidx/lifecycle/e$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/lifecycle/h$a;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroidx/lifecycle/h$a;->b:[I

    sget-object v2, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Landroidx/lifecycle/h$a;->b:[I

    sget-object v3, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Landroidx/lifecycle/h$a;->b:[I

    sget-object v4, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Landroidx/lifecycle/h$a;->b:[I

    sget-object v5, Landroidx/lifecycle/e$b;->f:Landroidx/lifecycle/e$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Landroidx/lifecycle/h$a;->b:[I

    sget-object v6, Landroidx/lifecycle/e$b;->b:Landroidx/lifecycle/e$b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    :catch_40
    invoke-static {}, Landroidx/lifecycle/e$a;->values()[Landroidx/lifecycle/e$a;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Landroidx/lifecycle/h$a;->a:[I

    :try_start_49
    sget-object v5, Landroidx/lifecycle/h$a;->a:[I

    sget-object v6, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_53

    :catch_53
    :try_start_53
    sget-object v0, Landroidx/lifecycle/h$a;->a:[I

    sget-object v5, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v0, Landroidx/lifecycle/h$a;->a:[I

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_67} :catch_67

    :catch_67
    :try_start_67
    sget-object v0, Landroidx/lifecycle/h$a;->a:[I

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v0, Landroidx/lifecycle/h$a;->a:[I

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    sget-object v0, Landroidx/lifecycle/h$a;->a:[I

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v0, Landroidx/lifecycle/h$a;->a:[I

    sget-object v1, Landroidx/lifecycle/e$a;->ON_ANY:Landroidx/lifecycle/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_91} :catch_91

    :catch_91
    return-void
.end method

###### Class androidx.lifecycle.h.b (androidx.lifecycle.h$b)
.class Landroidx/lifecycle/h$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/lifecycle/e$b;

.field b:Landroidx/lifecycle/d;


# direct methods
.method constructor <init>(Landroidx/lifecycle/f;Landroidx/lifecycle/e$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/lifecycle/j;->a(Ljava/lang/Object;)Landroidx/lifecycle/d;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/h$b;->b:Landroidx/lifecycle/d;

    iput-object p2, p0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/g;Landroidx/lifecycle/e$a;)V
    .registers 5

    invoke-static {p2}, Landroidx/lifecycle/h;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    invoke-static {v1, v0}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    iget-object v1, p0, Landroidx/lifecycle/h$b;->b:Landroidx/lifecycle/d;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/d;->a(Landroidx/lifecycle/g;Landroidx/lifecycle/e$a;)V

    iput-object v0, p0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/e$b;

    return-void
.end method
