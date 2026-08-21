###### Class com.bumptech.glide.load.n.d0.a (com.bumptech.glide.load.n.d0.a)
.class public final Lcom/bumptech/glide/load/n/d0/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/n/b0/h;Lcom/bumptech/glide/load/n/a0/e;Lcom/bumptech/glide/load/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
