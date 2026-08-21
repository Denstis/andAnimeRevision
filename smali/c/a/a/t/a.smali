###### Class c.a.a.t.a (c.a.a.t.a)
.class public final Lc/a/a/t/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/t/a$a;,
        Lc/a/a/t/a$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;)Lc/a/a/t/a$b;
    .registers 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lc/a/a/t/a$b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lc/a/a/t/a$b;-><init>([BII)V

    return-object v0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, v5, v1

    if-gtz v3, :cond_42

    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    if-eqz v3, :cond_3a

    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v7, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_4a

    :try_start_19
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_38

    :try_start_1d
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_33

    if-eqz p0, :cond_2f

    :try_start_2c
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    :try_start_2f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_32

    :catch_32
    return-object v0

    :catchall_33
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_4c

    :catchall_38
    move-exception p0

    goto :goto_4c

    :cond_3a
    :try_start_3a
    new-instance p0, Ljava/io/IOException;

    const-string v1, "File unsuitable for memory mapping"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    new-instance p0, Ljava/io/IOException;

    const-string v1, "File too large to map into memory"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p0

    move-object v7, v0

    :goto_4c
    if-eqz v0, :cond_53

    :try_start_4e
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_53

    :catch_52
    nop

    :cond_53
    :goto_53
    if-eqz v7, :cond_58

    :try_start_55
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_58

    :catch_58
    :cond_58
    throw p0
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_27

    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_25

    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_24

    :catch_24
    return-void

    :catchall_25
    move-exception p0

    goto :goto_29

    :catchall_27
    move-exception p0

    move-object v2, v1

    :goto_29
    if-eqz v1, :cond_30

    :try_start_2b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    nop

    :cond_30
    :goto_30
    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    throw p0
.end method

.method public static b(Ljava/nio/ByteBuffer;)[B
    .registers 3

    invoke-static {p0}, Lc/a/a/t/a;->a(Ljava/nio/ByteBuffer;)Lc/a/a/t/a$b;

    move-result-object v0

    if-eqz v0, :cond_16

    iget v1, v0, Lc/a/a/t/a$b;->a:I

    if-nez v1, :cond_16

    iget v1, v0, Lc/a/a/t/a$b;->b:I

    iget-object v0, v0, Lc/a/a/t/a$b;->c:[B

    array-length v0, v0

    if-ne v1, v0, :cond_16

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    goto :goto_28

    :cond_16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p0, v0

    :goto_28
    return-object p0
.end method

.method public static c(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lc/a/a/t/a$a;

    invoke-direct {v0, p0}, Lc/a/a/t/a$a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

###### Class c.a.a.t.a.C0132a (c.a.a.t.a$a)
.class Lc/a/a/t/a$a;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/nio/ByteBuffer;

.field private c:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/a/a/t/a$a;->c:I

    iput-object p1, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    iget-object v0, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lc/a/a/t/a$a;->c:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 2

    iget-object v0, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    iget-object v0, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    invoke-virtual {p0}, Lc/a/a/t/a$a;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lc/a/a/t/a$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lc/a/a/t/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset to unset mark position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6

    iget-object v0, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_b
    invoke-virtual {p0}, Lc/a/a/t/a$a;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lc/a/a/t/a$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1
.end method

###### Class c.a.a.t.a.b (c.a.a.t.a$b)
.class final Lc/a/a/t/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:[B


# direct methods
.method constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/t/a$b;->c:[B

    iput p2, p0, Lc/a/a/t/a$b;->a:I

    iput p3, p0, Lc/a/a/t/a$b;->b:I

    return-void
.end method
