###### Class com.bumptech.glide.load.p.g.d (com.bumptech.glide.load.p.g.d)
.class public Lcom/bumptech/glide/load/p/g/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Lcom/bumptech/glide/load/p/g/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c;
    .registers 2

    sget-object p1, Lcom/bumptech/glide/load/c;->b:Lcom/bumptech/glide/load/c;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/n/v;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "Lcom/bumptech/glide/load/p/g/c;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/i;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/p/g/c;

    :try_start_6
    invoke-virtual {p1}, Lcom/bumptech/glide/load/p/g/c;->b()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p2}, Lc/a/a/t/a;->a(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_f

    const/4 p1, 0x1

    goto :goto_1f

    :catch_f
    move-exception p1

    const/4 p2, 0x5

    const-string p3, "GifEncoder"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1e

    const-string p2, "Failed to encode GIF drawable data"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z
    .registers 4

    check-cast p1, Lcom/bumptech/glide/load/n/v;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/p/g/d;->a(Lcom/bumptech/glide/load/n/v;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z

    move-result p1

    return p1
.end method
