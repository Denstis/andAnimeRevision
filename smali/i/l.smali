###### Class i.l (i.l)
.class public final Li/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Li/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Li/l;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Li/r;)Li/d;
    .registers 2

    new-instance v0, Li/m;

    invoke-direct {v0, p0}, Li/m;-><init>(Li/r;)V

    return-object v0
.end method

.method public static a(Li/s;)Li/e;
    .registers 2

    new-instance v0, Li/n;

    invoke-direct {v0, p0}, Li/n;-><init>(Li/s;)V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Li/t;)Li/r;
    .registers 3

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    new-instance v0, Li/l$a;

    invoke-direct {v0, p1, p0}, Li/l$a;-><init>(Li/t;Ljava/io/OutputStream;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/net/Socket;)Li/r;
    .registers 2

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Li/l;->c(Ljava/net/Socket;)Li/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Li/l;->a(Ljava/io/OutputStream;Li/t;)Li/r;

    move-result-object p0

    invoke-virtual {v0, p0}, Li/a;->a(Li/r;)Li/r;

    move-result-object p0

    return-object p0

    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)Li/s;
    .registers 2

    new-instance v0, Li/t;

    invoke-direct {v0}, Li/t;-><init>()V

    invoke-static {p0, v0}, Li/l;->a(Ljava/io/InputStream;Li/t;)Li/s;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Li/t;)Li/s;
    .registers 3

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    new-instance v0, Li/l$b;

    invoke-direct {v0, p1, p0}, Li/l$b;-><init>(Li/t;Ljava/io/InputStream;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static b(Ljava/net/Socket;)Li/s;
    .registers 2

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Li/l;->c(Ljava/net/Socket;)Li/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Li/l;->a(Ljava/io/InputStream;Li/t;)Li/s;

    move-result-object p0

    invoke-virtual {v0, p0}, Li/a;->a(Li/s;)Li/s;

    move-result-object p0

    return-object p0

    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Ljava/net/Socket;)Li/a;
    .registers 2

    new-instance v0, Li/l$c;

    invoke-direct {v0, p0}, Li/l$c;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

###### Class i.l.a (i.l$a)
.class final Li/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/l;->a(Ljava/io/OutputStream;Li/t;)Li/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Li/t;

.field final synthetic c:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Li/t;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Li/l$a;->b:Li/t;

    iput-object p2, p0, Li/l$a;->c:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/l$a;->b:Li/t;

    return-object v0
.end method

.method public b(Li/c;J)V
    .registers 10

    iget-wide v0, p1, Li/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Li/u;->a(JJJ)V

    :cond_8
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_45

    iget-object v0, p0, Li/l$a;->b:Li/t;

    invoke-virtual {v0}, Li/t;->e()V

    iget-object v0, p1, Li/c;->b:Li/o;

    iget v1, v0, Li/o;->c:I

    iget v2, v0, Li/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Li/l$a;->c:Ljava/io/OutputStream;

    iget-object v3, v0, Li/o;->a:[B

    iget v4, v0, Li/o;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v1, v0, Li/o;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Li/o;->b:I

    int-to-long v1, v2

    sub-long/2addr p2, v1

    iget-wide v3, p1, Li/c;->c:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Li/c;->c:J

    iget v1, v0, Li/o;->b:I

    iget v2, v0, Li/o;->c:I

    if-ne v1, v2, :cond_8

    invoke-virtual {v0}, Li/o;->b()Li/o;

    move-result-object v1

    iput-object v1, p1, Li/c;->b:Li/o;

    invoke-static {v0}, Li/p;->a(Li/o;)V

    goto :goto_8

    :cond_45
    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Li/l$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Li/l$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/l$a;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class i.l.b (i.l$b)
.class final Li/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/l;->a(Ljava/io/InputStream;Li/t;)Li/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Li/t;

.field final synthetic c:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Li/t;Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Li/l$b;->b:Li/t;

    iput-object p2, p0, Li/l$b;->c:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_49

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-wide v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Li/l$b;->b:Li/t;

    invoke-virtual {v0}, Li/t;->e()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Li/c;->b(I)Li/o;

    move-result-object v0

    iget v1, v0, Li/o;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    iget-object p2, p0, Li/l$b;->c:Ljava/io/InputStream;

    iget-object v1, v0, Li/o;->a:[B

    iget v2, v0, Li/o;->c:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2f

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_2f
    iget p3, v0, Li/o;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Li/o;->c:I

    iget-wide v0, p1, Li/c;->c:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Li/c;->c:J
    :try_end_3a
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_3a} :catch_3b

    return-wide p2

    :catch_3b
    move-exception p1

    invoke-static {p1}, Li/l;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_48

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_48
    throw p1

    :cond_49
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
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/l$b;->b:Li/t;

    return-object v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Li/l$b;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/l$b;->c:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class i.l.c (i.l$c)
.class final Li/l$c;
.super Li/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/l;->c(Ljava/net/Socket;)Li/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .registers 2

    iput-object p1, p0, Li/l$c;->k:Ljava/net/Socket;

    invoke-direct {p0}, Li/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected i()V
    .registers 6

    const-string v0, "Failed to close timed out socket "

    :try_start_2
    iget-object v1, p0, Li/l$c;->k:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_1a
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_33

    :catch_8
    move-exception v1

    invoke-static {v1}, Li/l;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Li/l;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_24

    :cond_19
    throw v1

    :catch_1a
    move-exception v1

    sget-object v2, Li/l;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li/l$c;->k:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_33
    return-void
.end method
