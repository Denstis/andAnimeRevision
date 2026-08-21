###### Class b.a.n.h (b.a.n.h)
.class public Lb/a/n/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/h/o/w;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field d:Lb/h/o/x;

.field private e:Z

.field private final f:Lb/h/o/y;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/a/n/h;->b:J

    new-instance v0, Lb/a/n/h$a;

    invoke-direct {v0, p0}, Lb/a/n/h$a;-><init>(Lb/a/n/h;)V

    iput-object v0, p0, Lb/a/n/h;->f:Lb/h/o/y;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/n/h;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(J)Lb/a/n/h;
    .registers 4

    iget-boolean v0, p0, Lb/a/n/h;->e:Z

    if-nez v0, :cond_6

    iput-wide p1, p0, Lb/a/n/h;->b:J

    :cond_6
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lb/a/n/h;
    .registers 3

    iget-boolean v0, p0, Lb/a/n/h;->e:Z

    if-nez v0, :cond_6

    iput-object p1, p0, Lb/a/n/h;->c:Landroid/view/animation/Interpolator;

    :cond_6
    return-object p0
.end method

.method public a(Lb/h/o/w;)Lb/a/n/h;
    .registers 3

    iget-boolean v0, p0, Lb/a/n/h;->e:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lb/a/n/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object p0
.end method

.method public a(Lb/h/o/w;Lb/h/o/w;)Lb/a/n/h;
    .registers 5

    iget-object v0, p0, Lb/a/n/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lb/h/o/w;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lb/h/o/w;->b(J)Lb/h/o/w;

    iget-object p1, p0, Lb/a/n/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lb/h/o/x;)Lb/a/n/h;
    .registers 3

    iget-boolean v0, p0, Lb/a/n/h;->e:Z

    if-nez v0, :cond_6

    iput-object p1, p0, Lb/a/n/h;->d:Lb/h/o/x;

    :cond_6
    return-object p0
.end method

.method public a()V
    .registers 3

    iget-boolean v0, p0, Lb/a/n/h;->e:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lb/a/n/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/h/o/w;

    invoke-virtual {v1}, Lb/h/o/w;->a()V

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/n/h;->e:Z

    return-void
.end method

.method b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/n/h;->e:Z

    return-void
.end method

.method public c()V
    .registers 8

    iget-boolean v0, p0, Lb/a/n/h;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lb/a/n/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/h/o/w;

    iget-wide v2, p0, Lb/a/n/h;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_22

    invoke-virtual {v1, v2, v3}, Lb/h/o/w;->a(J)Lb/h/o/w;

    :cond_22
    iget-object v2, p0, Lb/a/n/h;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_29

    invoke-virtual {v1, v2}, Lb/h/o/w;->a(Landroid/view/animation/Interpolator;)Lb/h/o/w;

    :cond_29
    iget-object v2, p0, Lb/a/n/h;->d:Lb/h/o/x;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lb/a/n/h;->f:Lb/h/o/y;

    invoke-virtual {v1, v2}, Lb/h/o/w;->a(Lb/h/o/x;)Lb/h/o/w;

    :cond_32
    invoke-virtual {v1}, Lb/h/o/w;->c()V

    goto :goto_b

    :cond_36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/n/h;->e:Z

    return-void
.end method

###### Class b.a.n.h.a (b.a.n.h$a)
.class Lb/a/n/h$a;
.super Lb/h/o/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Lb/a/n/h;


# direct methods
.method constructor <init>(Lb/a/n/h;)V
    .registers 2

    iput-object p1, p0, Lb/a/n/h$a;->c:Lb/a/n/h;

    invoke-direct {p0}, Lb/h/o/y;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/a/n/h$a;->a:Z

    iput p1, p0, Lb/a/n/h$a;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lb/a/n/h$a;->b:I

    iput-boolean v0, p0, Lb/a/n/h$a;->a:Z

    iget-object v0, p0, Lb/a/n/h$a;->c:Lb/a/n/h;

    invoke-virtual {v0}, Lb/a/n/h;->b()V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    iget p1, p0, Lb/a/n/h$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a/n/h$a;->b:I

    iget-object v0, p0, Lb/a/n/h$a;->c:Lb/a/n/h;

    iget-object v0, v0, Lb/a/n/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1d

    iget-object p1, p0, Lb/a/n/h$a;->c:Lb/a/n/h;

    iget-object p1, p1, Lb/a/n/h;->d:Lb/h/o/x;

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/h/o/x;->b(Landroid/view/View;)V

    :cond_1a
    invoke-virtual {p0}, Lb/a/n/h$a;->a()V

    :cond_1d
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-boolean p1, p0, Lb/a/n/h$a;->a:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/a/n/h$a;->a:Z

    iget-object p1, p0, Lb/a/n/h$a;->c:Lb/a/n/h;

    iget-object p1, p1, Lb/a/n/h;->d:Lb/h/o/x;

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/h/o/x;->c(Landroid/view/View;)V

    :cond_12
    return-void
.end method
