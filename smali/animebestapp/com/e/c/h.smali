###### Class animebestapp.com.e.c.h (animebestapp.com.e.c.h)
.class public final Lanimebestapp/com/e/c/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final byteArray2:[B

.field private final dev:[B

.field private final prod:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1c

    new-array v1, v0, [B

    fill-array-data v1, :array_1e

    iput-object v1, p0, Lanimebestapp/com/e/c/h;->dev:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    iput-object v0, p0, Lanimebestapp/com/e/c/h;->prod:[B

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_42

    iput-object v0, p0, Lanimebestapp/com/e/c/h;->byteArray2:[B

    return-void

    nop

    :array_1e
    .array-data 1
        0x75t
        0x4ft
        0x6at
        0x63t
        0x44t
        0x46t
        0x56t
        0x54t
        0x72t
        0x36t
        0x65t
        0x75t
        0x53t
        0x48t
        0x64t
        0x64t
        0x38t
        0x32t
        0x50t
        0x55t
        0x61t
        0x41t
        0x39t
        0x43t
        0x2bt
        0x4dt
        0x63t
        0x3dt
    .end array-data

    :array_30
    .array-data 1
        0x47t
        0x4ft
        0x55t
        0x45t
        0x36t
        0x59t
        0x79t
        0x45t
        0x69t
        0x55t
        0x74t
        0x77t
        0x44t
        0x2ft
        0x6ct
        0x4dt
        0x70t
        0x59t
        0x79t
        0x6ft
        0x75t
        0x71t
        0x62t
        0x64t
        0x65t
        0x34t
        0x38t
        0x3dt
    .end array-data

    :array_42
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x7at
        0x42t
        0x67t
        0x55t
        0x58t
        0x78t
        0x33t
        0x76t
        0x42t
        0x76t
        0x44t
        0x59t
        0x31t
        0x69t
        0x47t
        0x4at
        0x49t
        0x77t
        0x3dt
    .end array-data
.end method


# virtual methods
.method public final getOriginalSignature()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/e/c/h;->prod:[B

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lg/s/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final getSha()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/e/c/h;->byteArray2:[B

    new-instance v1, Lg/q/d;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/q/d;-><init>(II)V

    invoke-static {v0, v1}, Lg/m/d;->a([BLg/q/d;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/m/j;->a(Ljava/util/Collection;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lg/s/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method
