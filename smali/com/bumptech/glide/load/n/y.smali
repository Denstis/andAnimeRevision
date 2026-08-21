###### Class com.bumptech.glide.load.n.y (com.bumptech.glide.load.n.y)
.class Lcom/bumptech/glide/load/n/y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/y$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/n/y$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/n/y$a;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/y;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/bumptech/glide/load/n/v;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/y;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/load/n/y;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_18

    :cond_10
    iput-boolean v1, p0, Lcom/bumptech/glide/load/n/y;->a:Z

    invoke-interface {p1}, Lcom/bumptech/glide/load/n/v;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/load/n/y;->a:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :goto_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.load.n.y.a (com.bumptech.glide.load.n.y$a)
.class final Lcom/bumptech/glide/load/n/y$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/n/v;

    invoke-interface {p1}, Lcom/bumptech/glide/load/n/v;->a()V

    return v1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method
