###### Class h.h0.i.h (h.h0.i.h)
.class final Lh/h0/i/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/i/h$b;,
        Lh/h0/i/h$a;
    }
.end annotation


# static fields
.field static final f:Ljava/util/logging/Logger;


# instance fields
.field private final b:Li/e;

.field private final c:Lh/h0/i/h$a;

.field private final d:Z

.field final e:Lh/h0/i/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lh/h0/i/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lh/h0/i/h;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Li/e;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/i/h;->b:Li/e;

    iput-boolean p2, p0, Lh/h0/i/h;->d:Z

    new-instance p1, Lh/h0/i/h$a;

    iget-object p2, p0, Lh/h0/i/h;->b:Li/e;

    invoke-direct {p1, p2}, Lh/h0/i/h$a;-><init>(Li/e;)V

    iput-object p1, p0, Lh/h0/i/h;->c:Lh/h0/i/h$a;

    new-instance p1, Lh/h0/i/d$a;

    iget-object p2, p0, Lh/h0/i/h;->c:Lh/h0/i/h$a;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lh/h0/i/d$a;-><init>(ILi/s;)V

    iput-object p1, p0, Lh/h0/i/h;->e:Lh/h0/i/d$a;

    return-void
.end method

.method static a(IBS)I
    .registers 4

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    add-int/lit8 p0, p0, -0x1

    :cond_6
    if-gt p2, p0, :cond_b

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_b
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p0, 0x0

    throw p0
.end method

.method static a(Li/e;)I
    .registers 3

    invoke-interface {p0}, Li/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Li/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Li/e;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private a(ISBI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/h0/i/h;->c:Lh/h0/i/h$a;

    iput p1, v0, Lh/h0/i/h$a;->f:I

    iput p1, v0, Lh/h0/i/h$a;->c:I

    iput-short p2, v0, Lh/h0/i/h$a;->g:S

    iput-byte p3, v0, Lh/h0/i/h$a;->d:B

    iput p4, v0, Lh/h0/i/h$a;->e:I

    iget-object p1, p0, Lh/h0/i/h;->e:Lh/h0/i/d$a;

    invoke-virtual {p1}, Lh/h0/i/d$a;->c()V

    iget-object p1, p0, Lh/h0/i/h;->e:Lh/h0/i/d$a;

    invoke-virtual {p1}, Lh/h0/i/d$a;->a()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Lh/h0/i/h$b;I)V
    .registers 7

    iget-object v0, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v0}, Li/e;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v3, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v3}, Li/e;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    invoke-interface {p1, p2, v0, v3, v1}, Lh/h0/i/h$b;->a(IIIZ)V

    return-void
.end method

.method private a(Lh/h0/i/h$b;IBI)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_39

    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    and-int/lit8 v4, p3, 0x20

    if-eqz v4, :cond_11

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    if-nez v3, :cond_31

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_21

    iget-object v0, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v0}, Li/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v1, v0

    :cond_21
    invoke-static {p2, p3, v1}, Lh/h0/i/h;->a(IBS)I

    move-result p2

    iget-object p3, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {p1, v2, p4, p3, p2}, Lh/h0/i/h$b;->a(ZILi/e;I)V

    iget-object p1, p0, Lh/h0/i/h;->b:Li/e;

    int-to-long p2, v1

    invoke-interface {p1, p2, p3}, Li/e;->skip(J)V

    return-void

    :cond_31
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_39
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method private b(Lh/h0/i/h$b;IBI)V
    .registers 9

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lt p2, v0, :cond_41

    if-nez p4, :cond_39

    iget-object p4, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {p4}, Li/e;->readInt()I

    move-result p4

    iget-object v3, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v3}, Li/e;->readInt()I

    move-result v3

    sub-int/2addr p2, v0

    invoke-static {v3}, Lh/h0/i/b;->a(I)Lh/h0/i/b;

    move-result-object v0

    if-eqz v0, :cond_2b

    sget-object p3, Li/f;->f:Li/f;

    if-lez p2, :cond_27

    iget-object p3, p0, Lh/h0/i/h;->b:Li/e;

    int-to-long v1, p2

    invoke-interface {p3, v1, v2}, Li/e;->b(J)Li/f;

    move-result-object p3

    :cond_27
    invoke-interface {p1, p4, v0, p3}, Lh/h0/i/h$b;->a(ILh/h0/i/b;Li/f;)V

    return-void

    :cond_2b
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_39
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_41
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method private c(Lh/h0/i/h$b;IBI)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p4, :cond_2d

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_17

    iget-object v0, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v0}, Li/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_17
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_20

    invoke-direct {p0, p1, p4}, Lh/h0/i/h;->a(Lh/h0/i/h$b;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_20
    invoke-static {p2, p3, v0}, Lh/h0/i/h;->a(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lh/h0/i/h;->a(ISBI)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    invoke-interface {p1, v1, p4, p3, p2}, Lh/h0/i/h$b;->a(ZIILjava/util/List;)V

    return-void

    :cond_2d
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method private d(Lh/h0/i/h$b;IBI)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p2, v3, :cond_25

    if-nez p4, :cond_1d

    iget-object p2, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {p2}, Li/e;->readInt()I

    move-result p2

    iget-object p4, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {p4}, Li/e;->readInt()I

    move-result p4

    and-int/2addr p3, v2

    if-eqz p3, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-interface {p1, v1, p2, p4}, Lh/h0/i/h$b;->a(ZII)V

    return-void

    :cond_1d
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_25
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method private e(Lh/h0/i/h$b;IBI)V
    .registers 7

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_13

    if-eqz p4, :cond_b

    invoke-direct {p0, p1, p4}, Lh/h0/i/h;->a(Lh/h0/i/h$b;I)V

    return-void

    :cond_b
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p3

    :cond_13
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p3
.end method

.method private f(Lh/h0/i/h$b;IBI)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p4, :cond_28

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_10

    iget-object v0, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v0}, Li/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_10
    iget-object v1, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v1}, Li/e;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lh/h0/i/h;->a(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lh/h0/i/h;->a(ISBI)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p4, v1, p2}, Lh/h0/i/h$b;->a(IILjava/util/List;)V

    return-void

    :cond_28
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method private g(Lh/h0/i/h$b;IBI)V
    .registers 8

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2e

    if-eqz p4, :cond_26

    iget-object p2, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {p2}, Li/e;->readInt()I

    move-result p2

    invoke-static {p2}, Lh/h0/i/b;->a(I)Lh/h0/i/b;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface {p1, p4, v2}, Lh/h0/i/h$b;->a(ILh/h0/i/b;)V

    return-void

    :cond_18
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_26
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_2e
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method private h(Lh/h0/i/h$b;IBI)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_81

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_16

    if-nez p2, :cond_e

    invoke-interface {p1}, Lh/h0/i/h$b;->a()V

    return-void

    :cond_e
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_16
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_73

    new-instance p3, Lh/h0/i/m;

    invoke-direct {p3}, Lh/h0/i/m;-><init>()V

    const/4 v2, 0x0

    :goto_20
    if-ge v2, p2, :cond_6f

    iget-object v3, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v3}, Li/e;->readShort()S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    iget-object v4, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v4}, Li/e;->readInt()I

    move-result v4

    packed-switch v3, :pswitch_data_8c

    goto :goto_69

    :pswitch_36
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_40

    const v5, 0xffffff

    if-gt v4, v5, :cond_40

    goto :goto_69

    :cond_40
    new-array p1, p4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :pswitch_4e
    const/4 v3, 0x7

    if-ltz v4, :cond_52

    goto :goto_69

    :cond_52
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :pswitch_5a
    const/4 v3, 0x4

    goto :goto_69

    :pswitch_5c
    if-eqz v4, :cond_69

    if-ne v4, p4, :cond_61

    goto :goto_69

    :cond_61
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_69
    :goto_69
    :pswitch_69
    invoke-virtual {p3, v3, v4}, Lh/h0/i/m;->a(II)Lh/h0/i/m;

    add-int/lit8 v2, v2, 0x6

    goto :goto_20

    :cond_6f
    invoke-interface {p1, v1, p3}, Lh/h0/i/h$b;->a(ZLh/h0/i/m;)V

    return-void

    :cond_73
    new-array p1, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_81
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    goto :goto_8a

    :goto_89
    throw v0

    :goto_8a
    goto :goto_89

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_69
        :pswitch_5c
        :pswitch_5a
        :pswitch_4e
        :pswitch_36
        :pswitch_69
    .end packed-switch
.end method

.method private i(Lh/h0/i/h$b;IBI)V
    .registers 11

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_29

    iget-object p2, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {p2}, Li/e;->readInt()I

    move-result p2

    int-to-long v2, p2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_1b

    invoke-interface {p1, p4, v2, v3}, Lh/h0/i/h$b;->a(IJ)V

    return-void

    :cond_1b
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p3

    :cond_29
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p3
.end method


# virtual methods
.method public a(Lh/h0/i/h$b;)V
    .registers 8

    iget-boolean v0, p0, Lh/h0/i/h;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0, v3, p1}, Lh/h0/i/h;->a(ZLh/h0/i/h$b;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_48

    :cond_e
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    invoke-static {v0, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_16
    iget-object p1, p0, Lh/h0/i/h;->b:Li/e;

    sget-object v0, Lh/h0/i/e;->a:Li/f;

    invoke-virtual {v0}, Li/f;->e()I

    move-result v0

    int-to-long v4, v0

    invoke-interface {p1, v4, v5}, Li/e;->b(J)Li/f;

    move-result-object p1

    sget-object v0, Lh/h0/i/h;->f:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lh/h0/i/h;->f:Ljava/util/logging/Logger;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Li/f;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Lh/h0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_40
    sget-object v0, Lh/h0/i/e;->a:Li/f;

    invoke-virtual {v0, p1}, Li/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :goto_48
    return-void

    :cond_49
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Li/f;->h()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method public a(ZLh/h0/i/h$b;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lh/h0/i/h;->b:Li/e;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Li/e;->e(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_95

    iget-object v1, p0, Lh/h0/i/h;->b:Li/e;

    invoke-static {v1}, Lh/h0/i/h;->a(Li/e;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_87

    const/16 v4, 0x4000

    if-gt v1, v4, :cond_87

    iget-object v4, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v4}, Li/e;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    if-eqz p1, :cond_33

    const/4 p1, 0x4

    if-ne v4, p1, :cond_25

    goto :goto_33

    :cond_25
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Expected a SETTINGS frame but was %s"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v2

    :cond_33
    :goto_33
    iget-object p1, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {p1}, Li/e;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iget-object v0, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v0}, Li/e;->readInt()I

    move-result v0

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    sget-object v2, Lh/h0/i/h;->f:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_59

    sget-object v2, Lh/h0/i/h;->f:Ljava/util/logging/Logger;

    invoke-static {v3, v0, v1, v4, p1}, Lh/h0/i/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_59
    packed-switch v4, :pswitch_data_96

    iget-object p1, p0, Lh/h0/i/h;->b:Li/e;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Li/e;->skip(J)V

    goto :goto_86

    :pswitch_63
    invoke-direct {p0, p2, v1, p1, v0}, Lh/h0/i/h;->i(Lh/h0/i/h$b;IBI)V

    goto :goto_86

    :pswitch_67
    invoke-direct {p0, p2, v1, p1, v0}, Lh/h0/i/h;->b(Lh/h0/i/h$b;IBI)V

    goto :goto_86

    :pswitch_6b
    invoke-direct {p0, p2, v1, p1, v0}, Lh/h0/i/h;->d(Lh/h0/i/h$b;IBI)V

    goto :goto_86

    :pswitch_6f
    invoke-direct {p0, p2, v1, p1, v0}, Lh/h0/i/h;->f(Lh/h0/i/h$b;IBI)V

    goto :goto_86

    :pswitch_73
    invoke-direct {p0, p2, v1, p1, v0}, Lh/h0/i/h;->h(Lh/h0/i/h$b;IBI)V

    goto :goto_86

    :pswitch_77
    invoke-direct {p0, p2, v1, p1, v0}, Lh/h0/i/h;->g(Lh/h0/i/h$b;IBI)V

    goto :goto_86

    :pswitch_7b
    invoke-direct {p0, p2, v1, p1, v0}, Lh/h0/i/h;->e(Lh/h0/i/h$b;IBI)V

    goto :goto_86

    :pswitch_7f
    invoke-direct {p0, p2, v1, p1, v0}, Lh/h0/i/h;->c(Lh/h0/i/h$b;IBI)V

    goto :goto_86

    :pswitch_83
    invoke-direct {p0, p2, v1, p1, v0}, Lh/h0/i/h;->a(Lh/h0/i/h$b;IBI)V

    :goto_86
    return v3

    :cond_87
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "FRAME_SIZE_ERROR: %s"

    invoke-static {p2, p1}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v2

    :catch_95
    return v0

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
    .end packed-switch
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lh/h0/i/h;->b:Li/e;

    invoke-interface {v0}, Li/s;->close()V

    return-void
.end method

###### Class h.h0.i.h.a (h.h0.i.h$a)
.class final Lh/h0/i/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:Li/e;

.field c:I

.field d:B

.field e:I

.field f:I

.field g:S


# direct methods
.method constructor <init>(Li/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/i/h$a;->b:Li/e;

    return-void
.end method

.method private i()V
    .registers 8

    iget v0, p0, Lh/h0/i/h$a;->e:I

    iget-object v1, p0, Lh/h0/i/h$a;->b:Li/e;

    invoke-static {v1}, Lh/h0/i/h;->a(Li/e;)I

    move-result v1

    iput v1, p0, Lh/h0/i/h$a;->f:I

    iput v1, p0, Lh/h0/i/h$a;->c:I

    iget-object v1, p0, Lh/h0/i/h$a;->b:Li/e;

    invoke-interface {v1}, Li/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v2, p0, Lh/h0/i/h$a;->b:Li/e;

    invoke-interface {v2}, Li/e;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lh/h0/i/h$a;->d:B

    sget-object v2, Lh/h0/i/h;->f:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    sget-object v2, Lh/h0/i/h;->f:Ljava/util/logging/Logger;

    iget v4, p0, Lh/h0/i/h$a;->e:I

    iget v5, p0, Lh/h0/i/h$a;->c:I

    iget-byte v6, p0, Lh/h0/i/h$a;->d:B

    invoke-static {v3, v4, v5, v1, v6}, Lh/h0/i/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3a
    iget-object v2, p0, Lh/h0/i/h$a;->b:Li/e;

    invoke-interface {v2}, Li/e;->readInt()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Lh/h0/i/h$a;->e:I

    const/16 v2, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_59

    iget v1, p0, Lh/h0/i/h$a;->e:I

    if-ne v1, v0, :cond_51

    return-void

    :cond_51
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-static {v1, v0}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_59
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%s != TYPE_CONTINUATION"

    invoke-static {v1, v0}, Lh/h0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 10

    :goto_0
    iget v0, p0, Lh/h0/i/h$a;->f:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1c

    iget-object v0, p0, Lh/h0/i/h$a;->b:Li/e;

    iget-short v3, p0, Lh/h0/i/h$a;->g:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Li/e;->skip(J)V

    const/4 v0, 0x0

    iput-short v0, p0, Lh/h0/i/h$a;->g:S

    iget-byte v0, p0, Lh/h0/i/h$a;->d:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    return-wide v1

    :cond_18
    invoke-direct {p0}, Lh/h0/i/h$a;->i()V

    goto :goto_0

    :cond_1c
    iget-object v3, p0, Lh/h0/i/h$a;->b:Li/e;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Li/s;->a(Li/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2c

    return-wide v1

    :cond_2c
    iget p3, p0, Lh/h0/i/h$a;->f:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lh/h0/i/h$a;->f:I

    return-wide p1
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Lh/h0/i/h$a;->b:Li/e;

    invoke-interface {v0}, Li/s;->b()Li/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

###### Class h.h0.i.h.b (h.h0.i.h$b)
.class interface abstract Lh/h0/i/h$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(IIIZ)V
.end method

.method public abstract a(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILh/h0/i/b;)V
.end method

.method public abstract a(ILh/h0/i/b;Li/f;)V
.end method

.method public abstract a(ZII)V
.end method

.method public abstract a(ZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(ZILi/e;I)V
.end method

.method public abstract a(ZLh/h0/i/m;)V
.end method
