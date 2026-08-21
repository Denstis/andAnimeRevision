###### Class c.a.a.m.b (c.a.a.m.b)
.class Lc/a/a/m/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/nio/charset/Charset;

.field private d:[B

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    sget-object v0, Lc/a/a/m/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-object p1, p0, Lc/a/a/m/b;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lc/a/a/m/b;->c:Ljava/nio/charset/Charset;

    new-array p1, p2, [B

    iput-object p1, p0, Lc/a/a/m/b;->d:[B

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lc/a/a/m/b;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic a(Lc/a/a/m/b;)Ljava/nio/charset/Charset;
    .registers 1

    iget-object p0, p0, Lc/a/a/m/b;->c:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private l()V
    .registers 5

    iget-object v0, p0, Lc/a/a/m/b;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lc/a/a/m/b;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iput v3, p0, Lc/a/a/m/b;->e:I

    iput v0, p0, Lc/a/a/m/b;->f:I

    return-void

    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lc/a/a/m/b;->b:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lc/a/a/m/b;->d:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lc/a/a/m/b;->d:[B

    iget-object v1, p0, Lc/a/a/m/b;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Lc/a/a/m/b;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lc/a/a/m/b;->b:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lc/a/a/m/b;->d:[B

    if-eqz v1, :cond_8f

    iget v1, p0, Lc/a/a/m/b;->e:I

    iget v2, p0, Lc/a/a/m/b;->f:I

    if-lt v1, v2, :cond_10

    invoke-direct {p0}, Lc/a/a/m/b;->l()V

    :cond_10
    iget v1, p0, Lc/a/a/m/b;->e:I

    :goto_12
    iget v2, p0, Lc/a/a/m/b;->f:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_49

    iget-object v2, p0, Lc/a/a/m/b;->d:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_46

    iget v2, p0, Lc/a/a/m/b;->e:I

    if-eq v1, v2, :cond_2d

    iget-object v2, p0, Lc/a/a/m/b;->d:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v1

    :goto_2e
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lc/a/a/m/b;->d:[B

    iget v5, p0, Lc/a/a/m/b;->e:I

    iget v6, p0, Lc/a/a/m/b;->e:I

    sub-int/2addr v3, v6

    iget-object v6, p0, Lc/a/a/m/b;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/a/a/m/b;->e:I

    monitor-exit v0

    return-object v2

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_49
    new-instance v1, Lc/a/a/m/b$a;

    iget v2, p0, Lc/a/a/m/b;->f:I

    iget v4, p0, Lc/a/a/m/b;->e:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lc/a/a/m/b$a;-><init>(Lc/a/a/m/b;I)V

    :cond_55
    iget-object v2, p0, Lc/a/a/m/b;->d:[B

    iget v4, p0, Lc/a/a/m/b;->e:I

    iget v5, p0, Lc/a/a/m/b;->f:I

    iget v6, p0, Lc/a/a/m/b;->e:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    iput v2, p0, Lc/a/a/m/b;->f:I

    invoke-direct {p0}, Lc/a/a/m/b;->l()V

    iget v2, p0, Lc/a/a/m/b;->e:I

    :goto_69
    iget v4, p0, Lc/a/a/m/b;->f:I

    if-eq v2, v4, :cond_55

    iget-object v4, p0, Lc/a/a/m/b;->d:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_8c

    iget v3, p0, Lc/a/a/m/b;->e:I

    if-eq v2, v3, :cond_82

    iget-object v3, p0, Lc/a/a/m/b;->d:[B

    iget v4, p0, Lc/a/a/m/b;->e:I

    iget v5, p0, Lc/a/a/m/b;->e:I

    sub-int v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_82
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc/a/a/m/b;->e:I

    invoke-virtual {v1}, Lc/a/a/m/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_8f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_97
    move-exception v1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    goto :goto_9b

    :goto_9a
    throw v1

    :goto_9b
    goto :goto_9a
.end method

###### Class c.a.a.m.b.a (c.a.a.m.b$a)
.class Lc/a/a/m/b$a;
.super Ljava/io/ByteArrayOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/m/b;->k()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lc/a/a/m/b;


# direct methods
.method constructor <init>(Lc/a/a/m/b;I)V
    .registers 3

    iput-object p1, p0, Lc/a/a/m/b$a;->b:Lc/a/a/m/b;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    if-lez v0, :cond_11

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_11

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_11
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    :goto_13
    :try_start_13
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lc/a/a/m/b$a;->b:Lc/a/a/m/b;

    invoke-static {v4}, Lc/a/a/m/b;->a(Lc/a/a/m/b;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_25} :catch_26

    return-object v1

    :catch_26
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
