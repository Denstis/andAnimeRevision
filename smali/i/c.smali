###### Class i.c (i.c)
.class public final Li/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/e;
.implements Li/d;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field private static final d:[B


# instance fields
.field b:Li/o;

.field c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Li/c;->d:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 11

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Li/u;->a(JJJ)V

    iget-object v0, p0, Li/c;->b:Li/o;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    return p1

    :cond_d
    iget v1, v0, Li/o;->c:I

    iget v2, v0, Li/o;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, v0, Li/o;->a:[B

    iget v2, v0, Li/o;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v0, Li/o;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Li/o;->b:I

    iget-wide p1, p0, Li/c;->c:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Li/c;->c:J

    iget p1, v0, Li/o;->b:I

    iget p2, v0, Li/o;->c:I

    if-ne p1, p2, :cond_37

    invoke-virtual {v0}, Li/o;->b()Li/o;

    move-result-object p1

    iput-object p1, p0, Li/c;->b:Li/o;

    invoke-static {v0}, Li/p;->a(Li/o;)V

    :cond_37
    return p3
.end method

.method public a(B)J
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Li/c;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .registers 21

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_7f

    cmp-long v3, p4, p2

    if-ltz v3, :cond_7f

    iget-wide v3, v0, Li/c;->c:J

    cmp-long v5, p4, v3

    if-lez v5, :cond_12

    goto :goto_14

    :cond_12
    move-wide/from16 v3, p4

    :goto_14
    const-wide/16 v5, -0x1

    cmp-long v7, p2, v3

    if-nez v7, :cond_1b

    return-wide v5

    :cond_1b
    iget-object v7, v0, Li/c;->b:Li/o;

    if-nez v7, :cond_20

    return-wide v5

    :cond_20
    iget-wide v8, v0, Li/c;->c:J

    sub-long v10, v8, p2

    cmp-long v12, v10, p2

    if-gez v12, :cond_36

    :goto_28
    cmp-long v1, v8, p2

    if-lez v1, :cond_45

    iget-object v7, v7, Li/o;->g:Li/o;

    iget v1, v7, Li/o;->c:I

    iget v2, v7, Li/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v8, v1

    goto :goto_28

    :cond_36
    :goto_36
    move-wide v8, v1

    iget v1, v7, Li/o;->c:I

    iget v2, v7, Li/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v8

    cmp-long v10, v1, p2

    if-gez v10, :cond_45

    iget-object v7, v7, Li/o;->f:Li/o;

    goto :goto_36

    :cond_45
    move-wide/from16 v1, p2

    :goto_47
    cmp-long v10, v8, v3

    if-gez v10, :cond_7e

    iget-object v10, v7, Li/o;->a:[B

    iget v11, v7, Li/o;->c:I

    int-to-long v11, v11

    iget v13, v7, Li/o;->b:I

    int-to-long v13, v13

    add-long/2addr v13, v3

    sub-long/2addr v13, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    iget v11, v7, Li/o;->b:I

    int-to-long v13, v11

    add-long/2addr v13, v1

    sub-long/2addr v13, v8

    long-to-int v1, v13

    :goto_60
    if-ge v1, v12, :cond_71

    aget-byte v2, v10, v1

    move/from16 v11, p1

    if-ne v2, v11, :cond_6e

    iget v2, v7, Li/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v8

    return-wide v1

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_71
    move/from16 v11, p1

    iget v1, v7, Li/o;->c:I

    iget v2, v7, Li/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v8

    iget-object v7, v7, Li/o;->f:Li/o;

    move-wide v8, v1

    goto :goto_47

    :cond_7e
    return-wide v5

    :cond_7f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v0, Li/c;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a6

    :goto_a5
    throw v1

    :goto_a6
    goto :goto_a5
.end method

.method public a(Li/c;J)J
    .registers 9

    if-eqz p1, :cond_31

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    iget-wide v2, p0, Li/c;->c:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Li/c;->b(Li/c;J)V

    return-wide p2

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Li/r;)J
    .registers 7

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    invoke-interface {p1, p0, v0, v1}, Li/r;->b(Li/c;J)V

    :cond_b
    return-wide v0
.end method

.method public a(Li/s;)J
    .registers 9

    if-eqz p1, :cond_13

    const-wide/16 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Li/s;->a(Li/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_12

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :goto_1b
    throw p1

    :goto_1c
    goto :goto_1b
.end method

.method public a()Li/c;
    .registers 1

    return-object p0
.end method

.method public a(Li/c;JJ)Li/c;
    .registers 14

    if-eqz p1, :cond_5f

    iget-wide v0, p0, Li/c;->c:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Li/u;->a(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    :cond_10
    iget-wide v2, p1, Li/c;->c:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Li/c;->c:J

    iget-object v2, p0, Li/c;->b:Li/o;

    :goto_17
    iget v3, v2, Li/o;->c:I

    iget v4, v2, Li/o;->b:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_28

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Li/o;->f:Li/o;

    goto :goto_17

    :cond_28
    :goto_28
    cmp-long v3, p4, v0

    if-lez v3, :cond_5e

    invoke-virtual {v2}, Li/o;->c()Li/o;

    move-result-object v3

    iget v4, v3, Li/o;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, Li/o;->b:I

    iget p2, v3, Li/o;->b:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Li/o;->c:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Li/o;->c:I

    iget-object p2, p1, Li/c;->b:Li/o;

    if-nez p2, :cond_4e

    iput-object v3, v3, Li/o;->g:Li/o;

    iput-object v3, v3, Li/o;->f:Li/o;

    iput-object v3, p1, Li/c;->b:Li/o;

    goto :goto_53

    :cond_4e
    iget-object p2, p2, Li/o;->g:Li/o;

    invoke-virtual {p2, v3}, Li/o;->a(Li/o;)Li/o;

    :goto_53
    iget p2, v3, Li/o;->c:I

    iget p3, v3, Li/o;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    iget-object v2, v2, Li/o;->f:Li/o;

    move-wide p2, v0

    goto :goto_28

    :cond_5e
    return-object p0

    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_68

    :goto_67
    throw p1

    :goto_68
    goto :goto_67
.end method

.method public a(Li/f;)Li/c;
    .registers 3

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Li/f;->a(Li/c;)V

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Li/c;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Li/c;->a(Ljava/lang/String;II)Li/c;

    return-object p0
.end method

.method public a(Ljava/lang/String;II)Li/c;
    .registers 11

    if-eqz p1, :cond_11c

    if-ltz p2, :cond_105

    if-lt p3, p2, :cond_e6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_c3

    :goto_c
    if-ge p2, p3, :cond_c2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4c

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Li/c;->b(I)Li/o;

    move-result-object v2

    iget-object v3, v2, Li/o;->a:[B

    iget v4, v2, Li/o;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    :goto_2c
    if-ge v6, v5, :cond_3d

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_35

    goto :goto_3d

    :cond_35
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_2c

    :cond_3d
    :goto_3d
    add-int/2addr v4, v6

    iget p2, v2, Li/o;->c:I

    sub-int/2addr v4, p2

    add-int/2addr p2, v4

    iput p2, v2, Li/o;->c:I

    iget-wide v0, p0, Li/c;->c:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/c;->c:J

    move p2, v6

    goto :goto_c

    :cond_4c
    const/16 v2, 0x800

    if-ge v0, v2, :cond_60

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    :goto_54
    invoke-virtual {p0, v2}, Li/c;->writeByte(I)Li/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Li/c;->writeByte(I)Li/c;

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_60
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b6

    const v2, 0xdfff

    if-le v0, v2, :cond_6d

    goto :goto_b6

    :cond_6d
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_76

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_77

    :cond_76
    const/4 v5, 0x0

    :goto_77
    const v6, 0xdbff

    if-gt v0, v6, :cond_b0

    const v6, 0xdc00

    if-lt v5, v6, :cond_b0

    if-le v5, v2, :cond_84

    goto :goto_b0

    :cond_84
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Li/c;->writeByte(I)Li/c;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Li/c;->writeByte(I)Li/c;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Li/c;->writeByte(I)Li/c;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Li/c;->writeByte(I)Li/c;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_c

    :cond_b0
    :goto_b0
    invoke-virtual {p0, v3}, Li/c;->writeByte(I)Li/c;

    move p2, v4

    goto/16 :goto_c

    :cond_b6
    :goto_b6
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Li/c;->writeByte(I)Li/c;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    goto :goto_54

    :cond_c2
    return-object p0

    :cond_c3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_105
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_125

    :goto_124
    throw p1

    :goto_125
    goto :goto_124
.end method

.method public a(Ljava/lang/String;IILjava/nio/charset/Charset;)Li/c;
    .registers 6

    if-eqz p1, :cond_89

    if-ltz p2, :cond_72

    if-lt p3, p2, :cond_53

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_30

    if-eqz p4, :cond_28

    sget-object v0, Li/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1, p2, p3}, Li/c;->a(Ljava/lang/String;II)Li/c;

    return-object p0

    :cond_1a
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Li/c;->write([BII)Li/c;

    return-object p0

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beginIndex < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic a(Li/f;)Li/d;
    .registers 2

    invoke-virtual {p0, p1}, Li/c;->a(Li/f;)Li/c;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Li/d;
    .registers 2

    invoke-virtual {p0, p1}, Li/c;->a(Ljava/lang/String;)Li/c;

    return-object p0
.end method

.method public a(I)Li/f;
    .registers 3

    if-nez p1, :cond_5

    sget-object p1, Li/f;->f:Li/f;

    return-object p1

    :cond_5
    new-instance v0, Li/q;

    invoke-direct {v0, p0, p1}, Li/q;-><init>(Li/c;I)V

    return-object v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Li/u;->a(JJJ)V

    if-eqz p3, :cond_6c

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_55

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1a

    const-string p1, ""

    return-object p1

    :cond_1a
    iget-object v0, p0, Li/c;->b:Li/o;

    iget v1, v0, Li/o;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Li/o;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_31

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Li/c;->d(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_31
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Li/o;->a:[B

    long-to-int v4, p1

    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Li/o;->b:I

    int-to-long v3, p3

    add-long/2addr v3, p1

    long-to-int p3, v3

    iput p3, v0, Li/o;->b:I

    iget-wide v3, p0, Li/c;->c:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Li/c;->c:J

    iget p1, v0, Li/o;->b:I

    iget p2, v0, Li/o;->c:I

    if-ne p1, p2, :cond_54

    invoke-virtual {v0}, Li/o;->b()Li/o;

    move-result-object p1

    iput-object p1, p0, Li/c;->b:Li/o;

    invoke-static {v0}, Li/p;->a(Li/o;)V

    :cond_54
    return-object v2

    :cond_55
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Li/c;->c:J

    invoke-virtual {p0, v0, v1, p1}, Li/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public a(J)Z
    .registers 6

    iget-wide v0, p0, Li/c;->c:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public a(JLi/f;)Z
    .registers 10

    invoke-virtual {p3}, Li/f;->e()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Li/c;->a(JLi/f;II)Z

    move-result p1

    return p1
.end method

.method public a(JLi/f;II)Z
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_32

    if-ltz p4, :cond_32

    if-ltz p5, :cond_32

    iget-wide v1, p0, Li/c;->c:J

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_32

    invoke-virtual {p3}, Li/f;->e()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, p5, :cond_30

    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Li/c;->h(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Li/f;->a(I)B

    move-result v3

    if-eq v2, v3, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_30
    const/4 p1, 0x1

    return p1

    :cond_32
    :goto_32
    return v0
.end method

.method public b(J)Li/f;
    .registers 4

    new-instance v0, Li/f;

    invoke-virtual {p0, p1, p2}, Li/c;->d(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Li/f;-><init>([B)V

    return-object v0
.end method

.method b(I)Li/o;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2e

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2e

    iget-object v1, p0, Li/c;->b:Li/o;

    if-nez v1, :cond_18

    invoke-static {}, Li/p;->a()Li/o;

    move-result-object p1

    iput-object p1, p0, Li/c;->b:Li/o;

    iget-object p1, p0, Li/c;->b:Li/o;

    iput-object p1, p1, Li/o;->g:Li/o;

    iput-object p1, p1, Li/o;->f:Li/o;

    return-object p1

    :cond_18
    iget-object v1, v1, Li/o;->g:Li/o;

    iget v2, v1, Li/o;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_26

    iget-boolean p1, v1, Li/o;->e:Z

    if-nez p1, :cond_24

    goto :goto_26

    :cond_24
    move-object p1, v1

    goto :goto_2d

    :cond_26
    :goto_26
    invoke-static {}, Li/p;->a()Li/o;

    move-result-object p1

    invoke-virtual {v1, p1}, Li/o;->a(Li/o;)Li/o;

    :goto_2d
    return-object p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public b()Li/t;
    .registers 2

    sget-object v0, Li/t;->d:Li/t;

    return-object v0
.end method

.method public b(Li/c;J)V
    .registers 10

    if-eqz p1, :cond_92

    if-eq p1, p0, :cond_8a

    iget-wide v0, p1, Li/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Li/u;->a(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_89

    iget-object v0, p1, Li/c;->b:Li/o;

    iget v1, v0, Li/o;->c:I

    iget v0, v0, Li/o;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    cmp-long v2, p2, v0

    if-gez v2, :cond_5a

    iget-object v0, p0, Li/c;->b:Li/o;

    if-eqz v0, :cond_25

    iget-object v0, v0, Li/o;->g:Li/o;

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_51

    iget-boolean v1, v0, Li/o;->e:Z

    if-eqz v1, :cond_51

    iget v1, v0, Li/o;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Li/o;->d:Z

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    goto :goto_38

    :cond_36
    iget v3, v0, Li/o;->b:I

    :goto_38
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_51

    iget-object v1, p1, Li/c;->b:Li/o;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Li/o;->a(Li/o;I)V

    iget-wide v0, p1, Li/c;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Li/c;->c:J

    iget-wide v0, p0, Li/c;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Li/c;->c:J

    return-void

    :cond_51
    iget-object v0, p1, Li/c;->b:Li/o;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Li/o;->a(I)Li/o;

    move-result-object v0

    iput-object v0, p1, Li/c;->b:Li/o;

    :cond_5a
    iget-object v0, p1, Li/c;->b:Li/o;

    iget v1, v0, Li/o;->c:I

    iget v2, v0, Li/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, Li/o;->b()Li/o;

    move-result-object v3

    iput-object v3, p1, Li/c;->b:Li/o;

    iget-object v3, p0, Li/c;->b:Li/o;

    if-nez v3, :cond_75

    iput-object v0, p0, Li/c;->b:Li/o;

    iget-object v0, p0, Li/c;->b:Li/o;

    iput-object v0, v0, Li/o;->g:Li/o;

    iput-object v0, v0, Li/o;->f:Li/o;

    goto :goto_7d

    :cond_75
    iget-object v3, v3, Li/o;->g:Li/o;

    invoke-virtual {v3, v0}, Li/o;->a(Li/o;)Li/o;

    invoke-virtual {v0}, Li/o;->a()V

    :goto_7d
    iget-wide v3, p1, Li/c;->c:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Li/c;->c:J

    iget-wide v3, p0, Li/c;->c:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Li/c;->c:J

    sub-long/2addr p2, v1

    goto :goto_c

    :cond_89
    return-void

    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9b

    :goto_9a
    throw p1

    :goto_9b
    goto :goto_9a
.end method

.method public c(I)Li/c;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    :goto_4
    invoke-virtual {p0, p1}, Li/c;->writeByte(I)Li/c;

    goto :goto_47

    :cond_8
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_18

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    :goto_12
    invoke-virtual {p0, v1}, Li/c;->writeByte(I)Li/c;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    goto :goto_4

    :cond_18
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_2f

    const v1, 0xd800

    if-lt p1, v1, :cond_2a

    const v1, 0xdfff

    if-gt p1, v1, :cond_2a

    invoke-virtual {p0, v2}, Li/c;->writeByte(I)Li/c;

    goto :goto_47

    :cond_2a
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    goto :goto_3f

    :cond_2f
    const v1, 0x10ffff

    if-gt p1, v1, :cond_48

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Li/c;->writeByte(I)Li/c;

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    :goto_3f
    invoke-virtual {p0, v1}, Li/c;->writeByte(I)Li/c;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    goto :goto_12

    :goto_47
    return-object p0

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method public c(J)Ljava/lang/String;
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_92

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_12

    goto :goto_14

    :cond_12
    add-long v2, p1, v0

    :goto_14
    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    move-object v4, p0

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Li/c;->a(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_29

    invoke-virtual {p0, v4, v5}, Li/c;->j(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_29
    invoke-virtual {p0}, Li/c;->s()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_48

    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Li/c;->h(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_48

    invoke-virtual {p0, v2, v3}, Li/c;->h(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_48

    invoke-virtual {p0, v2, v3}, Li/c;->j(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_48
    new-instance v6, Li/c;

    invoke-direct {v6}, Li/c;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x20

    invoke-virtual {p0}, Li/c;->s()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Li/c;->a(Li/c;JJ)Li/c;

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li/c;->s()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Li/c;->p()Li/f;

    move-result-object p1

    invoke-virtual {p1}, Li/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .registers 6

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public clone()Li/c;
    .registers 7

    new-instance v0, Li/c;

    invoke-direct {v0}, Li/c;-><init>()V

    iget-wide v1, p0, Li/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    :cond_e
    iget-object v1, p0, Li/c;->b:Li/o;

    invoke-virtual {v1}, Li/o;->c()Li/o;

    move-result-object v1

    iput-object v1, v0, Li/c;->b:Li/o;

    iget-object v1, v0, Li/c;->b:Li/o;

    iput-object v1, v1, Li/o;->g:Li/o;

    iput-object v1, v1, Li/o;->f:Li/o;

    iget-object v1, p0, Li/c;->b:Li/o;

    :goto_1e
    iget-object v1, v1, Li/o;->f:Li/o;

    iget-object v2, p0, Li/c;->b:Li/o;

    if-eq v1, v2, :cond_30

    iget-object v2, v0, Li/c;->b:Li/o;

    iget-object v2, v2, Li/o;->g:Li/o;

    invoke-virtual {v1}, Li/o;->c()Li/o;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/o;->a(Li/o;)Li/o;

    goto :goto_1e

    :cond_30
    iget-wide v1, p0, Li/c;->c:J

    iput-wide v1, v0, Li/c;->c:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Li/c;->clone()Li/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Li/c;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)[B
    .registers 9

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Li/u;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_16

    long-to-int p2, p1

    new-array p1, p2, [B

    invoke-virtual {p0, p1}, Li/c;->readFully([B)V

    return-object p1

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()I
    .registers 2

    invoke-virtual {p0}, Li/c;->readInt()I

    move-result v0

    invoke-static {v0}, Li/u;->a(I)I

    move-result v0

    return v0
.end method

.method public e(J)V
    .registers 6

    iget-wide v0, p0, Li/c;->c:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Li/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Li/c;

    iget-wide v3, p0, Li/c;->c:J

    iget-wide v5, p1, Li/c;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    iget-object v1, p0, Li/c;->b:Li/o;

    iget-object p1, p1, Li/c;->b:Li/o;

    iget v3, v1, Li/o;->b:I

    iget v4, p1, Li/o;->b:I

    :goto_24
    iget-wide v7, p0, Li/c;->c:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_67

    iget v7, v1, Li/o;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Li/o;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_38
    int-to-long v10, v3

    cmp-long v12, v10, v7

    if-gez v12, :cond_51

    iget-object v10, v1, Li/o;->a:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Li/o;->a:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4c

    return v2

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_38

    :cond_51
    iget v3, v1, Li/o;->c:I

    if-ne v4, v3, :cond_5a

    iget-object v1, v1, Li/o;->f:Li/o;

    iget v3, v1, Li/o;->b:I

    goto :goto_5b

    :cond_5a
    move v3, v4

    :goto_5b
    iget v4, p1, Li/o;->c:I

    if-ne v9, v4, :cond_64

    iget-object p1, p1, Li/o;->f:Li/o;

    iget v4, p1, Li/o;->b:I

    goto :goto_65

    :cond_64
    move v4, v9

    :goto_65
    add-long/2addr v5, v7

    goto :goto_24

    :cond_67
    return v0
.end method

.method public f(J)Li/c;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Li/c;->writeByte(I)Li/c;

    return-object p0

    :cond_c
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Li/c;->b(I)Li/o;

    move-result-object v2

    iget-object v3, v2, Li/o;->a:[B

    iget v4, v2, Li/o;->c:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_24
    if-lt v5, v4, :cond_34

    sget-object v6, Li/c;->d:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    :cond_34
    iget p1, v2, Li/o;->c:I

    add-int/2addr p1, v0

    iput p1, v2, Li/o;->c:I

    iget-wide p1, p0, Li/c;->c:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Li/c;->c:J

    return-object p0
.end method

.method public bridge synthetic f(J)Li/d;
    .registers 3

    invoke-virtual {p0, p1, p2}, Li/c;->f(J)Li/c;

    return-object p0
.end method

.method public f()S
    .registers 2

    invoke-virtual {p0}, Li/c;->readShort()S

    move-result v0

    invoke-static {v0}, Li/u;->a(S)S

    move-result v0

    return v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public g()J
    .registers 16

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_aa

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    :cond_b
    iget-object v6, p0, Li/c;->b:Li/o;

    iget-object v7, v6, Li/o;->a:[B

    iget v8, v6, Li/o;->b:I

    iget v9, v6, Li/o;->c:I

    :goto_13
    if-ge v8, v9, :cond_8f

    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_22

    const/16 v11, 0x39

    if-gt v10, v11, :cond_22

    add-int/lit8 v11, v10, -0x30

    goto :goto_3a

    :cond_22
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2f

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2f

    add-int/lit8 v11, v10, -0x61

    :goto_2c
    add-int/lit8 v11, v11, 0xa

    goto :goto_3a

    :cond_2f
    const/16 v11, 0x41

    if-lt v10, v11, :cond_70

    const/16 v11, 0x46

    if-gt v10, v11, :cond_70

    add-int/lit8 v11, v10, -0x41

    goto :goto_2c

    :goto_3a
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_4a

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_4a
    new-instance v0, Li/c;

    invoke-direct {v0}, Li/c;-><init>()V

    invoke-virtual {v0, v4, v5}, Li/c;->f(J)Li/c;

    invoke-virtual {v0, v10}, Li/c;->writeByte(I)Li/c;

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Li/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_70
    if-eqz v1, :cond_74

    const/4 v0, 0x1

    goto :goto_8f

    :cond_74
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    :goto_8f
    if-ne v8, v9, :cond_9b

    invoke-virtual {v6}, Li/o;->b()Li/o;

    move-result-object v7

    iput-object v7, p0, Li/c;->b:Li/o;

    invoke-static {v6}, Li/p;->a(Li/o;)V

    goto :goto_9d

    :cond_9b
    iput v8, v6, Li/o;->b:I

    :goto_9d
    if-nez v0, :cond_a3

    iget-object v6, p0, Li/c;->b:Li/o;

    if-nez v6, :cond_b

    :cond_a3
    iget-wide v2, p0, Li/c;->c:J

    int-to-long v0, v1

    sub-long/2addr v2, v0

    iput-wide v2, p0, Li/c;->c:J

    return-wide v4

    :cond_aa
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b3

    :goto_b2
    throw v0

    :goto_b3
    goto :goto_b2
.end method

.method public g(J)Li/c;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Li/c;->writeByte(I)Li/c;

    return-object p0

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-gez v4, :cond_1e

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Li/c;->a(Ljava/lang/String;)Li/c;

    return-object p0

    :cond_1d
    const/4 v2, 0x1

    :cond_1e
    const-wide/32 v4, 0x5f5e100

    const-wide/16 v6, 0xa

    cmp-long v8, p1, v4

    if-gez v8, :cond_6a

    const-wide/16 v4, 0x2710

    cmp-long v8, p1, v4

    if-gez v8, :cond_48

    const-wide/16 v4, 0x64

    cmp-long v8, p1, v4

    if-gez v8, :cond_3c

    cmp-long v4, p1, v6

    if-gez v4, :cond_39

    goto/16 :goto_e2

    :cond_39
    const/4 v3, 0x2

    goto/16 :goto_e2

    :cond_3c
    const-wide/16 v3, 0x3e8

    cmp-long v5, p1, v3

    if-gez v5, :cond_45

    const/4 v3, 0x3

    goto/16 :goto_e2

    :cond_45
    const/4 v3, 0x4

    goto/16 :goto_e2

    :cond_48
    const-wide/32 v3, 0xf4240

    cmp-long v5, p1, v3

    if-gez v5, :cond_5c

    const-wide/32 v3, 0x186a0

    cmp-long v5, p1, v3

    if-gez v5, :cond_59

    const/4 v3, 0x5

    goto/16 :goto_e2

    :cond_59
    const/4 v3, 0x6

    goto/16 :goto_e2

    :cond_5c
    const-wide/32 v3, 0x989680

    cmp-long v5, p1, v3

    if-gez v5, :cond_66

    const/4 v3, 0x7

    goto/16 :goto_e2

    :cond_66
    const/16 v3, 0x8

    goto/16 :goto_e2

    :cond_6a
    const-wide v3, 0xe8d4a51000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_98

    const-wide v3, 0x2540be400L

    cmp-long v5, p1, v3

    if-gez v5, :cond_89

    const-wide/32 v3, 0x3b9aca00

    cmp-long v5, p1, v3

    if-gez v5, :cond_86

    const/16 v3, 0x9

    goto :goto_e2

    :cond_86
    const/16 v3, 0xa

    goto :goto_e2

    :cond_89
    const-wide v3, 0x174876e800L

    cmp-long v5, p1, v3

    if-gez v5, :cond_95

    const/16 v3, 0xb

    goto :goto_e2

    :cond_95
    const/16 v3, 0xc

    goto :goto_e2

    :cond_98
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_bc

    const-wide v3, 0x9184e72a000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_ad

    const/16 v3, 0xd

    goto :goto_e2

    :cond_ad
    const-wide v3, 0x5af3107a4000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_b9

    const/16 v3, 0xe

    goto :goto_e2

    :cond_b9
    const/16 v3, 0xf

    goto :goto_e2

    :cond_bc
    const-wide v3, 0x16345785d8a0000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d4

    const-wide v3, 0x2386f26fc10000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d1

    const/16 v3, 0x10

    goto :goto_e2

    :cond_d1
    const/16 v3, 0x11

    goto :goto_e2

    :cond_d4
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_e0

    const/16 v3, 0x12

    goto :goto_e2

    :cond_e0
    const/16 v3, 0x13

    :goto_e2
    if-eqz v2, :cond_e6

    add-int/lit8 v3, v3, 0x1

    :cond_e6
    invoke-virtual {p0, v3}, Li/c;->b(I)Li/o;

    move-result-object v4

    iget-object v5, v4, Li/o;->a:[B

    iget v8, v4, Li/o;->c:I

    add-int/2addr v8, v3

    :goto_ef
    cmp-long v9, p1, v0

    if-eqz v9, :cond_100

    rem-long v9, p1, v6

    long-to-int v10, v9

    add-int/lit8 v8, v8, -0x1

    sget-object v9, Li/c;->d:[B

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    div-long/2addr p1, v6

    goto :goto_ef

    :cond_100
    if-eqz v2, :cond_108

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    aput-byte p1, v5, v8

    :cond_108
    iget p1, v4, Li/o;->c:I

    add-int/2addr p1, v3

    iput p1, v4, Li/o;->c:I

    iget-wide p1, p0, Li/c;->c:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Li/c;->c:J

    return-object p0
.end method

.method public bridge synthetic g(J)Li/d;
    .registers 3

    invoke-virtual {p0, p1, p2}, Li/c;->g(J)Li/c;

    return-object p0
.end method

.method public h(J)B
    .registers 9

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Li/u;->a(JJJ)V

    iget-wide v0, p0, Li/c;->c:J

    sub-long v2, v0, p1

    cmp-long v4, v2, p1

    if-lez v4, :cond_27

    iget-object v0, p0, Li/c;->b:Li/o;

    :goto_12
    iget v1, v0, Li/o;->c:I

    iget v2, v0, Li/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    cmp-long v1, p1, v3

    if-gez v1, :cond_23

    iget-object v0, v0, Li/o;->a:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2

    return p1

    :cond_23
    sub-long/2addr p1, v3

    iget-object v0, v0, Li/o;->f:Li/o;

    goto :goto_12

    :cond_27
    sub-long/2addr p1, v0

    iget-object v0, p0, Li/c;->b:Li/o;

    :cond_2a
    iget-object v0, v0, Li/o;->g:Li/o;

    iget v1, v0, Li/o;->c:I

    iget v2, v0, Li/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    add-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2a

    iget-object v0, v0, Li/o;->a:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2

    return p1
.end method

.method public h()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Li/c$b;

    invoke-direct {v0, p0}, Li/c$b;-><init>(Li/c;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Li/c;->b:Li/o;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget v2, v0, Li/o;->b:I

    iget v3, v0, Li/o;->c:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Li/o;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    iget-object v0, v0, Li/o;->f:Li/o;

    iget-object v2, p0, Li/c;->b:Li/o;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public i()Li/c;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic i()Li/d;
    .registers 1

    invoke-virtual {p0}, Li/c;->i()Li/c;

    return-object p0
.end method

.method public i(J)Ljava/lang/String;
    .registers 4

    sget-object v0, Li/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Li/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method j(J)Ljava/lang/String;
    .registers 9

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1c

    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Li/c;->h(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1c

    invoke-virtual {p0, v2, v3}, Li/c;->i(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    :goto_18
    invoke-virtual {p0, v0, v1}, Li/c;->skip(J)V

    return-object p1

    :cond_1c
    invoke-virtual {p0, p1, p2}, Li/c;->i(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_18
.end method

.method public l()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, Li/c;->c:J

    invoke-virtual {p0, v0, v1}, Li/c;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public m()J
    .registers 6

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    :cond_9
    iget-object v2, p0, Li/c;->b:Li/o;

    iget-object v2, v2, Li/o;->g:Li/o;

    iget v3, v2, Li/o;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1c

    iget-boolean v4, v2, Li/o;->e:Z

    if-eqz v4, :cond_1c

    iget v2, v2, Li/o;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1c
    return-wide v0
.end method

.method public n()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Li/c$a;

    invoke-direct {v0, p0}, Li/c$a;-><init>(Li/c;)V

    return-object v0
.end method

.method public o()[B
    .registers 3

    :try_start_0
    iget-wide v0, p0, Li/c;->c:J

    invoke-virtual {p0, v0, v1}, Li/c;->d(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public p()Li/f;
    .registers 3

    new-instance v0, Li/f;

    invoke-virtual {p0}, Li/c;->o()[B

    move-result-object v1

    invoke-direct {v0, v1}, Li/f;-><init>([B)V

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Li/c;->c:J

    sget-object v2, Li/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Li/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public r()I
    .registers 13

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_ad

    invoke-virtual {p0, v2, v3}, Li/c;->h(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_1c

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_3f

    :cond_1c
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_28

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_3f

    :cond_28
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_34

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_3f

    :cond_34
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a7

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    :goto_3f
    iget-wide v7, p0, Li/c;->c:J

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-ltz v11, :cond_75

    :goto_46
    if-ge v2, v5, :cond_5d

    int-to-long v7, v2

    invoke-virtual {p0, v7, v8}, Li/c;->h(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_59

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_59
    invoke-virtual {p0, v7, v8}, Li/c;->skip(J)V

    return v4

    :cond_5d
    invoke-virtual {p0, v9, v10}, Li/c;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_66

    return v4

    :cond_66
    const v0, 0xd800

    if-lt v1, v0, :cond_71

    const v0, 0xdfff

    if-gt v1, v0, :cond_71

    return v4

    :cond_71
    if-ge v1, v6, :cond_74

    return v4

    :cond_74
    return v1

    :cond_75
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Li/c;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a7
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Li/c;->skip(J)V

    return v4

    :cond_ad
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    goto :goto_b4

    :goto_b3
    throw v0

    :goto_b4
    goto :goto_b3
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8

    iget-object v0, p0, Li/c;->b:Li/o;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Li/o;->c:I

    iget v3, v0, Li/o;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Li/o;->a:[B

    iget v3, v0, Li/o;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Li/o;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Li/o;->b:I

    iget-wide v2, p0, Li/c;->c:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Li/c;->c:J

    iget p1, v0, Li/o;->b:I

    iget v2, v0, Li/o;->c:I

    if-ne p1, v2, :cond_34

    invoke-virtual {v0}, Li/o;->b()Li/o;

    move-result-object p1

    iput-object p1, p0, Li/c;->b:Li/o;

    invoke-static {v0}, Li/p;->a(Li/o;)V

    :cond_34
    return v1
.end method

.method public readByte()B
    .registers 10

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    iget-object v2, p0, Li/c;->b:Li/o;

    iget v3, v2, Li/o;->b:I

    iget v4, v2, Li/o;->c:I

    iget-object v5, v2, Li/o;->a:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    iput-wide v0, p0, Li/c;->c:J

    if-ne v6, v4, :cond_25

    invoke-virtual {v2}, Li/o;->b()Li/o;

    move-result-object v0

    iput-object v0, p0, Li/c;->b:Li/o;

    invoke-static {v2}, Li/p;->a(Li/o;)V

    goto :goto_27

    :cond_25
    iput v6, v2, Li/o;->b:I

    :goto_27
    return v3

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFully([B)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Li/c;->a([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/2addr v0, v1

    goto :goto_1

    :cond_f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_15
    return-void
.end method

.method public readInt()I
    .registers 11

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6a

    iget-object v4, p0, Li/c;->b:Li/o;

    iget v5, v4, Li/o;->b:I

    iget v6, v4, Li/o;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_35

    invoke-virtual {p0}, Li/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Li/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Li/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Li/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_35
    iget-object v7, v4, Li/o;->a:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Li/c;->c:J

    if-ne v9, v6, :cond_67

    invoke-virtual {v4}, Li/o;->b()Li/o;

    move-result-object v0

    iput-object v0, p0, Li/c;->b:Li/o;

    invoke-static {v4}, Li/p;->a(Li/o;)V

    goto :goto_69

    :cond_67
    iput v9, v4, Li/o;->b:I

    :goto_69
    return v5

    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Li/c;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readShort()S
    .registers 11

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_48

    iget-object v4, p0, Li/c;->b:Li/o;

    iget v5, v4, Li/o;->b:I

    iget v6, v4, Li/o;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_24

    invoke-virtual {p0}, Li/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Li/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_24
    iget-object v7, v4, Li/o;->a:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Li/c;->c:J

    if-ne v9, v6, :cond_44

    invoke-virtual {v4}, Li/o;->b()Li/o;

    move-result-object v0

    iput-object v0, p0, Li/c;->b:Li/o;

    invoke-static {v4}, Li/p;->a(Li/o;)V

    goto :goto_46

    :cond_44
    iput v9, v4, Li/o;->b:I

    :goto_46
    int-to-short v0, v5

    return v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Li/c;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()J
    .registers 3

    iget-wide v0, p0, Li/c;->c:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 9

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_39

    iget-object v0, p0, Li/c;->b:Li/o;

    if-eqz v0, :cond_33

    iget v1, v0, Li/o;->c:I

    iget v0, v0, Li/o;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-wide v2, p0, Li/c;->c:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Li/c;->c:J

    sub-long/2addr p1, v4

    iget-object v0, p0, Li/c;->b:Li/o;

    iget v2, v0, Li/o;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Li/o;->b:I

    iget v1, v0, Li/o;->b:I

    iget v2, v0, Li/o;->c:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Li/o;->b()Li/o;

    move-result-object v1

    iput-object v1, p0, Li/c;->b:Li/o;

    invoke-static {v0}, Li/p;->a(Li/o;)V

    goto :goto_0

    :cond_33
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_39
    return-void
.end method

.method public t()Li/f;
    .registers 6

    iget-wide v0, p0, Li/c;->c:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Li/c;->a(I)Li/f;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Li/c;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Li/c;->t()Li/f;

    move-result-object v0

    invoke-virtual {v0}, Li/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_7
    if-lez v1, :cond_24

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Li/c;->b(I)Li/o;

    move-result-object v2

    iget v3, v2, Li/o;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Li/o;->a:[B

    iget v5, v2, Li/o;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Li/o;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Li/o;->c:I

    goto :goto_7

    :cond_24
    iget-wide v1, p0, Li/c;->c:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Li/c;->c:J

    return v0

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :goto_33
    throw p1

    :goto_34
    goto :goto_33
.end method

.method public write([B)Li/c;
    .registers 4

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Li/c;->write([BII)Li/c;

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Li/c;
    .registers 13

    if-eqz p1, :cond_30

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Li/u;->a(JJJ)V

    add-int/2addr p3, p2

    :goto_b
    if-ge p2, p3, :cond_2a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/c;->b(I)Li/o;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Li/o;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Li/o;->a:[B

    iget v3, v0, Li/o;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, v0, Li/o;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Li/o;->c:I

    goto :goto_b

    :cond_2a
    iget-wide p1, p0, Li/c;->c:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Li/c;->c:J

    return-object p0

    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_39

    :goto_38
    throw p1

    :goto_39
    goto :goto_38
.end method

.method public bridge synthetic write([B)Li/d;
    .registers 2

    invoke-virtual {p0, p1}, Li/c;->write([B)Li/c;

    return-object p0
.end method

.method public bridge synthetic write([BII)Li/d;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Li/c;->write([BII)Li/c;

    return-object p0
.end method

.method public writeByte(I)Li/c;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/c;->b(I)Li/o;

    move-result-object v0

    iget-object v1, v0, Li/o;->a:[B

    iget v2, v0, Li/o;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Li/o;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/c;->c:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Li/d;
    .registers 2

    invoke-virtual {p0, p1}, Li/c;->writeByte(I)Li/c;

    return-object p0
.end method

.method public writeInt(I)Li/c;
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Li/c;->b(I)Li/o;

    move-result-object v0

    iget-object v1, v0, Li/o;->a:[B

    iget v2, v0, Li/o;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Li/o;->c:I

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/c;->c:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Li/d;
    .registers 2

    invoke-virtual {p0, p1}, Li/c;->writeInt(I)Li/c;

    return-object p0
.end method

.method public writeShort(I)Li/c;
    .registers 7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li/c;->b(I)Li/o;

    move-result-object v0

    iget-object v1, v0, Li/o;->a:[B

    iget v2, v0, Li/o;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Li/o;->c:I

    iget-wide v0, p0, Li/c;->c:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/c;->c:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Li/d;
    .registers 2

    invoke-virtual {p0, p1}, Li/c;->writeShort(I)Li/c;

    return-object p0
.end method

###### Class i.c.a (i.c$a)
.class Li/c$a;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/c;->n()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Li/c;


# direct methods
.method constructor <init>(Li/c;)V
    .registers 2

    iput-object p1, p0, Li/c$a;->b:Li/c;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li/c$a;->b:Li/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Li/c$a;->b:Li/c;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Li/c;->writeByte(I)Li/c;

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Li/c$a;->b:Li/c;

    invoke-virtual {v0, p1, p2, p3}, Li/c;->write([BII)Li/c;

    return-void
.end method

###### Class i.c.b (i.c$b)
.class Li/c$b;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/c;->h()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Li/c;


# direct methods
.method constructor <init>(Li/c;)V
    .registers 2

    iput-object p1, p0, Li/c$b;->b:Li/c;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    iget-object v0, p0, Li/c$b;->b:Li/c;

    iget-wide v0, v0, Li/c;->c:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public read()I
    .registers 7

    iget-object v0, p0, Li/c$b;->b:Li/c;

    iget-wide v1, v0, Li/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_11

    invoke-virtual {v0}, Li/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Li/c$b;->b:Li/c;

    invoke-virtual {v0, p1, p2, p3}, Li/c;->a([BII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li/c$b;->b:Li/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
