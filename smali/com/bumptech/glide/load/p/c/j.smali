###### Class com.bumptech.glide.load.p.c.j (com.bumptech.glide.load.p.c.j)
.class public final Lcom/bumptech/glide/load/p/c/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/p/c/j$d;,
        Lcom/bumptech/glide/load/p/c/j$a;,
        Lcom/bumptech/glide/load/p/c/j$c;,
        Lcom/bumptech/glide/load/p/c/j$b;
    }
.end annotation


# static fields
.field static final a:[B

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/p/c/j;->a:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/bumptech/glide/load/p/c/j;->b:[I

    return-void

    :array_18
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)I
    .registers 2

    add-int/lit8 p0, p0, 0x2

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p0, p1

    return p0
.end method

.method private static a(Lcom/bumptech/glide/load/p/c/j$b;)I
    .registers 13

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/p/c/j$b;->a(I)S

    move-result v1

    const/16 v2, 0x4949

    const/4 v3, 0x3

    const-string v4, "DfltImageHeaderParser"

    if-eq v1, v2, :cond_2d

    const/16 v2, 0x4d4d

    if-eq v1, v2, :cond_2a

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown endianness = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_2f

    :cond_2d
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_2f
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/p/c/j$b;->a(Ljava/nio/ByteOrder;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/p/c/j$b;->b(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/p/c/j$b;->a(I)S

    move-result v0

    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v0, :cond_121

    invoke-static {v1, v2}, Lcom/bumptech/glide/load/p/c/j;->a(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/p/c/j$b;->a(I)S

    move-result v6

    const/16 v7, 0x112

    if-eq v6, v7, :cond_4e

    goto/16 :goto_11d

    :cond_4e
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v7}, Lcom/bumptech/glide/load/p/c/j$b;->a(I)S

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_103

    const/16 v8, 0xc

    if-le v7, v8, :cond_5d

    goto/16 :goto_103

    :cond_5d
    add-int/lit8 v8, v5, 0x4

    invoke-virtual {p0, v8}, Lcom/bumptech/glide/load/p/c/j$b;->b(I)I

    move-result v8

    if-gez v8, :cond_6f

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11d

    const-string v5, "Negative tiff component count"

    goto/16 :goto_11a

    :cond_6f
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    const-string v10, " tagType="

    if-eqz v9, :cond_a1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got tagIndex="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " formatCode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " componentCount="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    sget-object v9, Lcom/bumptech/glide/load/p/c/j;->b:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    const/4 v9, 0x4

    if-le v8, v9, :cond_b7

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got byte count > 4, not orientation, continuing, formatCode="

    goto :goto_110

    :cond_b7
    add-int/lit8 v5, v5, 0x8

    if-ltz v5, :cond_e5

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/c/j$b;->a()I

    move-result v7

    if-le v5, v7, :cond_c2

    goto :goto_e5

    :cond_c2
    if-ltz v8, :cond_d1

    add-int/2addr v8, v5

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/c/j$b;->a()I

    move-result v7

    if-le v8, v7, :cond_cc

    goto :goto_d1

    :cond_cc
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/p/c/j$b;->a(I)S

    move-result p0

    return p0

    :cond_d1
    :goto_d1
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_116

    :cond_e5
    :goto_e5
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_11d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal tagValueOffset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_11a

    :cond_103
    :goto_103
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got invalid format code = "

    :goto_110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_11a
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    :goto_11d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3e

    :cond_121
    const/4 p0, -0x1

    return p0
.end method

.method private a(Lcom/bumptech/glide/load/p/c/j$c;Lcom/bumptech/glide/load/n/a0/b;)I
    .registers 8

    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/bumptech/glide/load/p/c/j;->a(I)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    const-string v4, "DfltImageHeaderParser"

    if-nez v1, :cond_29

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_28

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Parser doesn\'t handle magic number: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return v3

    :cond_29
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/p/c/j;->b(Lcom/bumptech/glide/load/p/c/j$c;)I

    move-result v0

    if-ne v0, v3, :cond_3b

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p1, "Failed to parse exif segment length, or exif segment not found"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return v3

    :cond_3b
    const-class v1, [B

    invoke-interface {p2, v0, v1}, Lcom/bumptech/glide/load/n/a0/b;->b(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :try_start_43
    invoke-direct {p0, p1, v1, v0}, Lcom/bumptech/glide/load/p/c/j;->a(Lcom/bumptech/glide/load/p/c/j$c;[BI)I

    move-result p1
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_4b

    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/n/a0/b;->a(Ljava/lang/Object;)V

    return p1

    :catchall_4b
    move-exception p1

    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/n/a0/b;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method private a(Lcom/bumptech/glide/load/p/c/j$c;[BI)I
    .registers 7

    invoke-interface {p1, p2, p3}, Lcom/bumptech/glide/load/p/c/j$c;->a([BI)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x3

    const-string v2, "DfltImageHeaderParser"

    if-eq p1, p3, :cond_2d

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read exif segment data, length: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", actually read: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return v0

    :cond_2d
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/p/c/j;->a([BI)Z

    move-result p1

    if-eqz p1, :cond_3d

    new-instance p1, Lcom/bumptech/glide/load/p/c/j$b;

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/p/c/j$b;-><init>([BI)V

    invoke-static {p1}, Lcom/bumptech/glide/load/p/c/j;->a(Lcom/bumptech/glide/load/p/c/j$b;)I

    move-result p1

    return p1

    :cond_3d
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_48

    const-string p1, "Missing jpeg exif preamble"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return v0
.end method

.method private a(Lcom/bumptech/glide/load/p/c/j$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 8

    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->a()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_c

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_c
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->a()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, -0x76afb1b9

    if-ne v0, v2, :cond_31

    const-wide/16 v0, 0x15

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/p/c/j$c;->skip(J)J

    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->c()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_2e

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_30

    :cond_2e
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_30
    return-object p1

    :cond_31
    shr-int/lit8 v2, v0, 0x8

    const v4, 0x474946

    if-ne v2, v4, :cond_3b

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_3b
    const v2, 0x52494646

    if-eq v0, v2, :cond_43

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_43
    const-wide/16 v4, 0x4

    invoke-interface {p1, v4, v5}, Lcom/bumptech/glide/load/p/c/j$c;->skip(J)J

    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->a()I

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, 0x57454250

    if-eq v0, v2, :cond_5d

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_5d
    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->a()I

    move-result v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, -0x100

    const v2, 0x56503800

    if-eq v1, v2, :cond_74

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_74
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x58

    if-ne v0, v1, :cond_8b

    invoke-interface {p1, v4, v5}, Lcom/bumptech/glide/load/p/c/j$c;->skip(J)J

    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_88

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_8a

    :cond_88
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_8a
    return-object p1

    :cond_8b
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_a0

    invoke-interface {p1, v4, v5}, Lcom/bumptech/glide/load/p/c/j$c;->skip(J)J

    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_9d

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_9f

    :cond_9d
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_9f
    return-object p1

    :cond_a0
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method

.method private static a(I)Z
    .registers 3

    const v0, 0xffd8

    and-int v1, p0, v0

    if-eq v1, v0, :cond_12

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_12

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method private a([BI)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    sget-object v1, Lcom/bumptech/glide/load/p/c/j;->a:[B

    array-length v1, v1

    if-le p2, v1, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    if-eqz p2, :cond_1e

    const/4 v1, 0x0

    :goto_e
    sget-object v2, Lcom/bumptech/glide/load/p/c/j;->a:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1b

    const/4 p2, 0x0

    goto :goto_1e

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    :goto_1e
    return p2
.end method

.method private b(Lcom/bumptech/glide/load/p/c/j$c;)I
    .registers 12

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->b()S

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, -0x1

    const-string v4, "DfltImageHeaderParser"

    if-eq v0, v1, :cond_27

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_26

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown segmentId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return v3

    :cond_27
    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->b()S

    move-result v0

    const/16 v1, 0xda

    if-ne v0, v1, :cond_30

    return v3

    :cond_30
    const/16 v1, 0xd9

    if-ne v0, v1, :cond_40

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3f

    const-string p1, "Found MARKER_EOI in exif segment"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return v3

    :cond_40
    invoke-interface {p1}, Lcom/bumptech/glide/load/p/c/j$c;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v5, 0xe1

    if-eq v0, v5, :cond_7e

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lcom/bumptech/glide/load/p/c/j$c;->skip(J)J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-eqz v9, :cond_0

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to skip enough data, type: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wanted to skip: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but actually skipped: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v3

    :cond_7e
    return v1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Lcom/bumptech/glide/load/n/a0/b;)I
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/p/c/j$d;

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/p/c/j$d;-><init>(Ljava/io/InputStream;)V

    invoke-static {p2}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/bumptech/glide/load/n/a0/b;

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/load/p/c/j;->a(Lcom/bumptech/glide/load/p/c/j$c;Lcom/bumptech/glide/load/n/a0/b;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3

    new-instance v0, Lcom/bumptech/glide/load/p/c/j$d;

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/p/c/j$d;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/p/c/j;->a(Lcom/bumptech/glide/load/p/c/j$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3

    new-instance v0, Lcom/bumptech/glide/load/p/c/j$a;

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/p/c/j$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/p/c/j;->a(Lcom/bumptech/glide/load/p/c/j$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

###### Class com.bumptech.glide.load.p.c.j.a (com.bumptech.glide.load.p.c.j$a)
.class final Lcom/bumptech/glide/load/p/c/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/p/c/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/p/c/j$a;->a:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/c/j$a;->c()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/c/j$a;->c()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public a([BI)I
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p2, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$a;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p2
.end method

.method public b()S
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/p/c/j$a;->c()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    const/4 v0, -0x1

    return v0

    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public skip(J)J
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iget-object p1, p0, Lcom/bumptech/glide/load/p/c/j$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long p1, p2

    return-wide p1
.end method

###### Class com.bumptech.glide.load.p.c.j.b (com.bumptech.glide.load.p.c.j$b)
.class final Lcom/bumptech/glide/load/p/c/j$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/bumptech/glide/load/p/c/j$b;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(II)Z
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sub-int/2addr v0, p1

    if-lt v0, p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method


# virtual methods
.method a()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method a(I)S
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/p/c/j$b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method

.method a(Ljava/nio/ByteOrder;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method b(I)I
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/p/c/j$b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method

###### Class com.bumptech.glide.load.p.c.j.c (com.bumptech.glide.load.p.c.j$c)
.class interface abstract Lcom/bumptech/glide/load/p/c/j$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "c"
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract a([BI)I
.end method

.method public abstract b()S
.end method

.method public abstract c()I
.end method

.method public abstract skip(J)J
.end method

###### Class com.bumptech.glide.load.p.c.j.d (com.bumptech.glide.load.p.c.j$d)
.class final Lcom/bumptech/glide/load/p/c/j$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/p/c/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/p/c/j$d;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/p/c/j$d;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public a([BI)I
    .registers 6

    move v0, p2

    :goto_1
    if-lez v0, :cond_10

    iget-object v1, p0, Lcom/bumptech/glide/load/p/c/j$d;->a:Ljava/io/InputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_10
    sub-int/2addr p2, v0

    return p2
.end method

.method public b()S
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/j$d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    return-wide v0

    :cond_7
    move-wide v2, p1

    :goto_8
    cmp-long v4, v2, v0

    if-lez v4, :cond_25

    iget-object v4, p0, Lcom/bumptech/glide/load/p/c/j$d;->a:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_18

    :goto_16
    sub-long/2addr v2, v4

    goto :goto_8

    :cond_18
    iget-object v4, p0, Lcom/bumptech/glide/load/p/c/j$d;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    goto :goto_25

    :cond_22
    const-wide/16 v4, 0x1

    goto :goto_16

    :cond_25
    :goto_25
    sub-long/2addr p1, v2

    return-wide p1
.end method
