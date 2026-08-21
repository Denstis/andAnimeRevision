###### Class com.bumptech.glide.load.n.a0.g (com.bumptech.glide.load.n.a0.g)
.class public final Lcom/bumptech/glide/load/n/a0/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/a0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/a0/a<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/n/a0/g;->a([B)I

    move-result p1

    return p1
.end method

.method public a([B)I
    .registers 2

    array-length p1, p1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/n/a0/g;->newArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[B
    .registers 2

    new-array p1, p1, [B

    return-object p1
.end method
