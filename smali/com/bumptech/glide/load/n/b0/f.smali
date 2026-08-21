###### Class com.bumptech.glide.load.n.b0.f (com.bumptech.glide.load.n.b0.f)
.class public final Lcom/bumptech/glide/load/n/b0/f;
.super Lcom/bumptech/glide/load/n/b0/d;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "image_manager_disk_cache"

    const-wide/32 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/load/n/b0/f;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    new-instance v0, Lcom/bumptech/glide/load/n/b0/f$a;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/n/b0/f$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/bumptech/glide/load/n/b0/d;-><init>(Lcom/bumptech/glide/load/n/b0/d$a;J)V

    return-void
.end method

###### Class com.bumptech.glide.load.n.b0.f.a (com.bumptech.glide.load.n.b0.f$a)
.class Lcom/bumptech/glide/load/n/b0/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/b0/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/n/b0/f;-><init>(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/load/n/b0/f$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/b0/f$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/n/b0/f$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/bumptech/glide/load/n/b0/f$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_14

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    :cond_14
    return-object v0
.end method
