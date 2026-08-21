###### Class com.bumptech.glide.load.p.g.g (com.bumptech.glide.load.p.g.g)
.class Lcom/bumptech/glide/load/p/g/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/p/g/g$d;,
        Lcom/bumptech/glide/load/p/g/g$a;,
        Lcom/bumptech/glide/load/p/g/g$c;,
        Lcom/bumptech/glide/load/p/g/g$b;
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/n/a;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/p/g/g$b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lc/a/a/k;

.field private final e:Lcom/bumptech/glide/load/n/a0/e;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lc/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/bumptech/glide/load/p/g/g$a;

.field private k:Z

.field private l:Lcom/bumptech/glide/load/p/g/g$a;

.field private m:Landroid/graphics/Bitmap;

.field private n:Lcom/bumptech/glide/load/p/g/g$a;

.field private o:Lcom/bumptech/glide/load/p/g/g$d;


# direct methods
.method constructor <init>(Lc/a/a/c;Lc/a/a/n/a;IILcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/c;",
            "Lc/a/a/n/a;",
            "II",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lc/a/a/c;->c()Lcom/bumptech/glide/load/n/a0/e;

    move-result-object v1

    invoke-virtual {p1}, Lc/a/a/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/c;->e(Landroid/content/Context;)Lc/a/a/k;

    move-result-object v2

    invoke-virtual {p1}, Lc/a/a/c;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/c;->e(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/bumptech/glide/load/p/g/g;->a(Lc/a/a/k;II)Lc/a/a/j;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/p/g/g;-><init>(Lcom/bumptech/glide/load/n/a0/e;Lc/a/a/k;Lc/a/a/n/a;Landroid/os/Handler;Lc/a/a/j;Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/n/a0/e;Lc/a/a/k;Lc/a/a/n/a;Landroid/os/Handler;Lc/a/a/j;Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/a0/e;",
            "Lc/a/a/k;",
            "Lc/a/a/n/a;",
            "Landroid/os/Handler;",
            "Lc/a/a/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/p/g/g;->d:Lc/a/a/k;

    if-nez p4, :cond_1c

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/load/p/g/g$c;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/p/g/g$c;-><init>(Lcom/bumptech/glide/load/p/g/g;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :cond_1c
    iput-object p1, p0, Lcom/bumptech/glide/load/p/g/g;->e:Lcom/bumptech/glide/load/n/a0/e;

    iput-object p4, p0, Lcom/bumptech/glide/load/p/g/g;->b:Landroid/os/Handler;

    iput-object p5, p0, Lcom/bumptech/glide/load/p/g/g;->i:Lc/a/a/j;

    iput-object p3, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-virtual {p0, p6, p7}, Lcom/bumptech/glide/load/p/g/g;->a(Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static a(Lc/a/a/k;II)Lc/a/a/j;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/k;",
            "II)",
            "Lc/a/a/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/a/a/k;->b()Lc/a/a/j;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/n/j;->a:Lcom/bumptech/glide/load/n/j;

    invoke-static {v0}, Lc/a/a/r/f;->b(Lcom/bumptech/glide/load/n/j;)Lc/a/a/r/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a/a/r/a;->b(Z)Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/r/f;

    invoke-virtual {v0, v1}, Lc/a/a/r/a;->a(Z)Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/r/f;

    invoke-virtual {v0, p1, p2}, Lc/a/a/r/a;->a(II)Lc/a/a/r/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object p0

    return-object p0
.end method

.method private static j()Lcom/bumptech/glide/load/g;
    .registers 3

    new-instance v0, Lc/a/a/s/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/s/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private k()I
    .registers 4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/g/g;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/g/g;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/g/g;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc/a/a/t/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method

.method private l()V
    .registers 6

    iget-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->f:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->g:Z

    if-eqz v0, :cond_9

    goto :goto_67

    :cond_9
    iget-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->n:Lcom/bumptech/glide/load/p/g/g$a;

    const/4 v2, 0x0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lc/a/a/t/j;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-interface {v0}, Lc/a/a/n/a;->f()V

    iput-boolean v2, p0, Lcom/bumptech/glide/load/p/g/g;->h:Z

    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->n:Lcom/bumptech/glide/load/p/g/g$a;

    if-eqz v0, :cond_2d

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/p/g/g;->n:Lcom/bumptech/glide/load/p/g/g$a;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/p/g/g;->a(Lcom/bumptech/glide/load/p/g/g$a;)V

    return-void

    :cond_2d
    iput-boolean v1, p0, Lcom/bumptech/glide/load/p/g/g;->g:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-interface {v0}, Lc/a/a/n/a;->d()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-interface {v0}, Lc/a/a/n/a;->b()V

    new-instance v0, Lcom/bumptech/glide/load/p/g/g$a;

    iget-object v3, p0, Lcom/bumptech/glide/load/p/g/g;->b:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-interface {v4}, Lc/a/a/n/a;->g()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bumptech/glide/load/p/g/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->l:Lcom/bumptech/glide/load/p/g/g$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->i:Lc/a/a/j;

    invoke-static {}, Lcom/bumptech/glide/load/p/g/g;->j()Lcom/bumptech/glide/load/g;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/r/f;->b(Lcom/bumptech/glide/load/g;)Lc/a/a/r/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-virtual {v0, v1}, Lc/a/a/j;->a(Ljava/lang/Object;)Lc/a/a/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/p/g/g;->l:Lcom/bumptech/glide/load/p/g/g$a;

    invoke-virtual {v0, v1}, Lc/a/a/j;->a(Lc/a/a/r/j/h;)Lc/a/a/r/j/h;

    :cond_67
    :goto_67
    return-void
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/bumptech/glide/load/p/g/g;->e:Lcom/bumptech/glide/load/n/a0/e;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/n/a0/e;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->m:Landroid/graphics/Bitmap;

    :cond_c
    return-void
.end method

.method private n()V
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->k:Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/g/g;->l()V

    return-void
.end method

.method private o()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->f:Z

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/g/g;->m()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/g/g;->o()V

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->j:Lcom/bumptech/glide/load/p/g/g$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/bumptech/glide/load/p/g/g;->d:Lc/a/a/k;

    invoke-virtual {v2, v0}, Lc/a/a/k;->a(Lc/a/a/r/j/h;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/p/g/g;->j:Lcom/bumptech/glide/load/p/g/g$a;

    :cond_17
    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->l:Lcom/bumptech/glide/load/p/g/g$a;

    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/bumptech/glide/load/p/g/g;->d:Lc/a/a/k;

    invoke-virtual {v2, v0}, Lc/a/a/k;->a(Lc/a/a/r/j/h;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/p/g/g;->l:Lcom/bumptech/glide/load/p/g/g$a;

    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->n:Lcom/bumptech/glide/load/p/g/g$a;

    if-eqz v0, :cond_2d

    iget-object v2, p0, Lcom/bumptech/glide/load/p/g/g;->d:Lc/a/a/k;

    invoke-virtual {v2, v0}, Lc/a/a/k;->a(Lc/a/a/r/j/h;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/p/g/g;->n:Lcom/bumptech/glide/load/p/g/g$a;

    :cond_2d
    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-interface {v0}, Lc/a/a/n/a;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->k:Z

    return-void
.end method

.method a(Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/l;

    invoke-static {p2}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/bumptech/glide/load/p/g/g;->m:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/bumptech/glide/load/p/g/g;->i:Lc/a/a/j;

    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0}, Lc/a/a/r/f;-><init>()V

    invoke-virtual {v0, p1}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/a/a/j;->a(Lc/a/a/r/a;)Lc/a/a/j;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/p/g/g;->i:Lc/a/a/j;

    return-void
.end method

.method a(Lcom/bumptech/glide/load/p/g/g$a;)V
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->o:Lcom/bumptech/glide/load/p/g/g$d;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/bumptech/glide/load/p/g/g$d;->a()V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->g:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->k:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_19
    iget-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->f:Z

    if-nez v0, :cond_20

    iput-object p1, p0, Lcom/bumptech/glide/load/p/g/g;->n:Lcom/bumptech/glide/load/p/g/g$a;

    return-void

    :cond_20
    invoke-virtual {p1}, Lcom/bumptech/glide/load/p/g/g$a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/g/g;->m()V

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->j:Lcom/bumptech/glide/load/p/g/g$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/p/g/g;->j:Lcom/bumptech/glide/load/p/g/g$a;

    iget-object p1, p0, Lcom/bumptech/glide/load/p/g/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_35
    if-ltz p1, :cond_45

    iget-object v2, p0, Lcom/bumptech/glide/load/p/g/g;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/p/g/g$b;

    invoke-interface {v2}, Lcom/bumptech/glide/load/p/g/g$b;->a()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_35

    :cond_45
    if-eqz v0, :cond_50

    iget-object p1, p0, Lcom/bumptech/glide/load/p/g/g;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_50
    invoke-direct {p0}, Lcom/bumptech/glide/load/p/g/g;->l()V

    return-void
.end method

.method a(Lcom/bumptech/glide/load/p/g/g$b;)V
    .registers 4

    iget-boolean v0, p0, Lcom/bumptech/glide/load/p/g/g;->k:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/p/g/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/g/g;->n()V

    :cond_1c
    return-void

    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-interface {v0}, Lc/a/a/n/a;->e()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/bumptech/glide/load/p/g/g$b;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bumptech/glide/load/p/g/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/g/g;->o()V

    :cond_10
    return-void
.end method

.method c()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->j:Lcom/bumptech/glide/load/p/g/g$a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/g/g$a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->m:Landroid/graphics/Bitmap;

    :goto_b
    return-object v0
.end method

.method d()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->j:Lcom/bumptech/glide/load/p/g/g$a;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/bumptech/glide/load/p/g/g$a;->f:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method e()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method f()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-interface {v0}, Lc/a/a/n/a;->c()I

    move-result v0

    return v0
.end method

.method g()I
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/g/g;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method h()I
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g;->a:Lc/a/a/n/a;

    invoke-interface {v0}, Lc/a/a/n/a;->h()I

    move-result v0

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/g/g;->k()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method i()I
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/g/g;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

###### Class com.bumptech.glide.load.p.g.g.a (com.bumptech.glide.load.p.g.g$a)
.class Lcom/bumptech/glide/load/p/g/g$a;
.super Lc/a/a/r/j/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/r/j/f<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Landroid/os/Handler;

.field final f:I

.field private final g:J

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .registers 5

    invoke-direct {p0}, Lc/a/a/r/j/f;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/p/g/g$a;->e:Landroid/os/Handler;

    iput p2, p0, Lcom/bumptech/glide/load/p/g/g$a;->f:I

    iput-wide p3, p0, Lcom/bumptech/glide/load/p/g/g$a;->g:J

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lc/a/a/r/k/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lc/a/a/r/k/b<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/p/g/g$a;->h:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/bumptech/glide/load/p/g/g$a;->e:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/p/g/g$a;->e:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/bumptech/glide/load/p/g/g$a;->g:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lc/a/a/r/k/b;)V
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/p/g/g$a;->a(Landroid/graphics/Bitmap;Lc/a/a/r/k/b;)V

    return-void
.end method

.method b()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g$a;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

###### Class com.bumptech.glide.load.p.g.g.b (com.bumptech.glide.load.p.g.g$b)
.class public interface abstract Lcom/bumptech/glide/load/p/g/g$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

###### Class com.bumptech.glide.load.p.g.g.c (com.bumptech.glide.load.p.g.g$c)
.class Lcom/bumptech/glide/load/p/g/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/bumptech/glide/load/p/g/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/p/g/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/p/g/g$c;->b:Lcom/bumptech/glide/load/p/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/p/g/g$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g$c;->b:Lcom/bumptech/glide/load/p/g/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/p/g/g;->a(Lcom/bumptech/glide/load/p/g/g$a;)V

    return v1

    :cond_f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/p/g/g$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/p/g/g$c;->b:Lcom/bumptech/glide/load/p/g/g;

    iget-object v0, v0, Lcom/bumptech/glide/load/p/g/g;->d:Lc/a/a/k;

    invoke-virtual {v0, p1}, Lc/a/a/k;->a(Lc/a/a/r/j/h;)V

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

###### Class com.bumptech.glide.load.p.g.g.d (com.bumptech.glide.load.p.g.g$d)
.class interface abstract Lcom/bumptech/glide/load/p/g/g$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "d"
.end annotation


# virtual methods
.method public abstract a()V
.end method
