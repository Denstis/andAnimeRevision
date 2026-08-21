###### Class com.bumptech.glide.load.p.c.h (com.bumptech.glide.load.p.c.h)
.class public Lcom/bumptech/glide/load/p/c/h;
.super Lcom/bumptech/glide/load/p/c/e;
.source ""


# static fields
.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/g;->a:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/p/c/h;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/p/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/n/a0/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/bumptech/glide/load/p/c/w;->b(Lcom/bumptech/glide/load/n/a0/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/security/MessageDigest;)V
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/p/c/h;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lcom/bumptech/glide/load/p/c/h;

    return p1
.end method

.method public hashCode()I
    .registers 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
