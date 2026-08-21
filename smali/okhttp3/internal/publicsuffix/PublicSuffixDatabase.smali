###### Class okhttp3.internal.publicsuffix.PublicSuffixDatabase (okhttp3.internal.publicsuffix.PublicSuffixDatabase)
.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final e:[B

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:[B

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x2a

    aput-byte v3, v1, v2

    sput-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    new-array v1, v2, [Ljava/lang/String;

    sput-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[Ljava/lang/String;

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static a([B[[BI)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_85

    add-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    :goto_e
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_1a

    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_1a

    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    :goto_1e
    add-int v10, v5, v9

    aget-byte v11, v0, v10

    if-eq v11, v6, :cond_27

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_27
    sub-int v6, v10, v5

    move/from16 v11, p2

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_2e
    :goto_2e
    if-eqz v9, :cond_36

    const/16 v9, 0x2e

    const/4 v9, 0x0

    const/16 v14, 0x2e

    goto :goto_3c

    :cond_36
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    :goto_3c
    add-int v15, v5, v13

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    if-eqz v14, :cond_46

    goto :goto_56

    :cond_46
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v13, v6, :cond_4d

    goto :goto_56

    :cond_4d
    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v12, :cond_2e

    array-length v9, v1

    sub-int/2addr v9, v8

    if-ne v11, v9, :cond_80

    :goto_56
    if-gez v14, :cond_5c

    :goto_58
    add-int/lit8 v5, v5, -0x1

    move v4, v5

    goto :goto_8

    :cond_5c
    if-lez v14, :cond_62

    :goto_5e
    add-int/lit8 v10, v10, 0x1

    move v2, v10

    goto :goto_8

    :cond_62
    sub-int v7, v6, v13

    aget-object v8, v1, v11

    array-length v8, v8

    sub-int/2addr v8, v12

    :goto_68
    add-int/lit8 v11, v11, 0x1

    array-length v9, v1

    if-ge v11, v9, :cond_72

    aget-object v9, v1, v11

    array-length v9, v9

    add-int/2addr v8, v9

    goto :goto_68

    :cond_72
    if-ge v8, v7, :cond_75

    goto :goto_58

    :cond_75
    if-le v8, v7, :cond_78

    goto :goto_5e

    :cond_78
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lh/h0/c;->i:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_86

    :cond_80
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x1

    const/4 v12, -0x1

    goto :goto_2e

    :cond_85
    const/4 v1, 0x0

    :goto_86
    return-object v1
.end method

.method public static a()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c()V

    goto :goto_1b

    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1b

    :catch_1b
    :goto_1b
    monitor-enter p0

    :try_start_1c
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v0, :cond_b7

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_bf

    array-length v0, p1

    new-array v0, v0, [[B

    const/4 v3, 0x0

    :goto_25
    array-length v4, p1

    if-ge v3, v4, :cond_35

    aget-object v4, p1, v3

    sget-object v5, Lh/h0/c;->i:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_35
    const/4 p1, 0x0

    :goto_36
    array-length v3, v0

    const/4 v4, 0x0

    if-ge p1, v3, :cond_46

    iget-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    invoke-static {v3, v0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    goto :goto_47

    :cond_43
    add-int/lit8 p1, p1, 0x1

    goto :goto_36

    :cond_46
    move-object v3, v4

    :goto_47
    array-length p1, v0

    if-le p1, v2, :cond_65

    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    const/4 v5, 0x0

    :goto_51
    array-length v6, p1

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_65

    sget-object v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    aput-object v6, p1, v5

    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    invoke-static {v6, p1, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_62

    goto :goto_66

    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_65
    move-object v6, v4

    :goto_66
    if-eqz v6, :cond_78

    :goto_68
    array-length p1, v0

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_78

    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    invoke-static {p1, v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_75

    goto :goto_79

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_78
    move-object p1, v4

    :goto_79
    if-eqz p1, :cond_93

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_93
    if-nez v3, :cond_9a

    if-nez v6, :cond_9a

    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[Ljava/lang/String;

    return-object p1

    :cond_9a
    if-eqz v3, :cond_a3

    const-string p1, "\\."

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_a5

    :cond_a3
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    :goto_a5
    if-eqz v6, :cond_ae

    const-string v0, "\\."

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_b0

    :cond_ae
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    :goto_b0
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_b5

    goto :goto_b6

    :cond_b5
    move-object p1, v0

    :goto_b6
    return-object p1

    :cond_b7
    :try_start_b7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_bf
    move-exception p1

    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_bf

    goto :goto_c3

    :goto_c2
    throw p1

    :goto_c3
    goto :goto_c2
.end method

.method private b()V
    .registers 4

    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Li/j;

    invoke-static {v0}, Li/l;->a(Ljava/io/InputStream;)Li/s;

    move-result-object v0

    invoke-direct {v1, v0}, Li/j;-><init>(Li/s;)V

    invoke-static {v1}, Li/l;->a(Li/s;)Li/e;

    move-result-object v0

    :try_start_18
    invoke-interface {v0}, Li/e;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {v0, v1}, Li/e;->readFully([B)V

    invoke-interface {v0}, Li/e;->readInt()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {v0, v2}, Li/e;->readFully([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3c

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    monitor-enter p0

    :try_start_2e
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_39

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :catchall_3c
    move-exception v1

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private c()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_4} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_10
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    :catchall_e
    move-exception v1

    goto :goto_25

    :catch_10
    move-exception v1

    :try_start_11
    invoke-static {}, Lh/h0/j/f;->c()Lh/h0/j/f;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v1}, Lh/h0/j/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_e

    if-eqz v0, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    return-void

    :goto_25
    if-eqz v0, :cond_2e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2e
    throw v1

    :catch_2f
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_56

    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    array-length v4, v2

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ne v3, v4, :cond_21

    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_21

    const/4 p1, 0x0

    return-object p1

    :cond_21
    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    array-length v0, v0

    array-length v2, v2

    if-ne v3, v5, :cond_2c

    goto :goto_2e

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    :goto_2e
    sub-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_38
    array-length v1, p1

    if-ge v0, v1, :cond_48

    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_56
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "domain == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_5f

    :goto_5e
    throw p1

    :goto_5f
    goto :goto_5e
.end method
