###### Class com.bumptech.glide.load.p.c.u (com.bumptech.glide.load.p.c.u)
.class public final Lcom/bumptech/glide/load/p/c/u;
.super Lcom/bumptech/glide/load/p/c/e;
.source ""


# static fields
.field private static final c:[B


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/g;->a:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/p/c/u;->c:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/c/e;-><init>()V

    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "roundingRadius must be greater than 0."

    invoke-static {v0, v1}, Lc/a/a/t/j;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/p/c/u;->b:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/n/a0/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    iget p3, p0, Lcom/bumptech/glide/load/p/c/u;->b:I

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/p/c/w;->b(Lcom/bumptech/glide/load/n/a0/e;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/security/MessageDigest;)V
    .registers 4

    sget-object v0, Lcom/bumptech/glide/load/p/c/u;->c:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/p/c/u;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/bumptech/glide/load/p/c/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p1, Lcom/bumptech/glide/load/p/c/u;

    iget v0, p0, Lcom/bumptech/glide/load/p/c/u;->b:I

    iget p1, p1, Lcom/bumptech/glide/load/p/c/u;->b:I

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public hashCode()I
    .registers 3

    const-string v0, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/load/p/c/u;->b:I

    invoke-static {v1}, Lc/a/a/t/k;->b(I)I

    move-result v1

    invoke-static {v0, v1}, Lc/a/a/t/k;->a(II)I

    move-result v0

    return v0
.end method
