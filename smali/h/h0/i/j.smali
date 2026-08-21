###### Class h.h0.i.j (h.h0.i.j)
.class final Lh/h0/i/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final h:Ljava/util/logging/Logger;


# instance fields
.field private final b:Li/d;

.field private final c:Z

.field private final d:Li/c;

.field private e:I

.field private f:Z

.field final g:Lh/h0/i/d$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lh/h0/i/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lh/h0/i/j;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Li/d;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/i/j;->b:Li/d;

    iput-boolean p2, p0, Lh/h0/i/j;->c:Z

    new-instance p1, Li/c;

    invoke-direct {p1}, Li/c;-><init>()V

    iput-object p1, p0, Lh/h0/i/j;->d:Li/c;

    new-instance p1, Lh/h0/i/d$b;

    iget-object p2, p0, Lh/h0/i/j;->d:Li/c;

    invoke-direct {p1, p2}, Lh/h0/i/d$b;-><init>(Li/c;)V

    iput-object p1, p0, Lh/h0/i/j;->g:Lh/h0/i/d$b;

    const/16 p1, 0x4000

    iput p1, p0, Lh/h0/i/j;->e:I

    return-void
.end method

.method private static a(Li/d;I)V
    .registers 3

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Li/d;->writeByte(I)Li/d;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Li/d;->writeByte(I)Li/d;

    and-int/lit16 p1, p1, 0xff

    invoke-interface {p0, p1}, Li/d;->writeByte(I)Li/d;

    return-void
.end method

.method private b(IJ)V
    .registers 11

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_24

    iget v2, p0, Lh/h0/i/j;->e:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr p2, v4

    const/16 v2, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0, p1, v3, v2, v0}, Lh/h0/i/j;->a(IIBB)V

    iget-object v0, p0, Lh/h0/i/j;->b:Li/d;

    iget-object v1, p0, Lh/h0/i/j;->d:Li/c;

    invoke-interface {v0, v1, v4, v5}, Li/r;->b(Li/c;J)V

    goto :goto_0

    :cond_24
    return-void
.end method


# virtual methods
.method a(IBLi/c;I)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0, p2}, Lh/h0/i/j;->a(IIBB)V

    if-lez p4, :cond_c

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Li/r;->b(Li/c;J)V

    :cond_c
    return-void
.end method

.method public a(IIBB)V
    .registers 9

    sget-object v0, Lh/h0/i/j;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    sget-object v0, Lh/h0/i/j;->h:Ljava/util/logging/Logger;

    invoke-static {v1, p1, p2, p3, p4}, Lh/h0/i/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_14
    iget v0, p0, Lh/h0/i/j;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt p2, v0, :cond_4a

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3c

    iget-object v0, p0, Lh/h0/i/j;->b:Li/d;

    invoke-static {v0, p2}, Lh/h0/i/j;->a(Li/d;I)V

    iget-object p2, p0, Lh/h0/i/j;->b:Li/d;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Li/d;->writeByte(I)Li/d;

    iget-object p2, p0, Lh/h0/i/j;->b:Li/d;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Li/d;->writeByte(I)Li/d;

    iget-object p2, p0, Lh/h0/i/j;->b:Li/d;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Li/d;->writeInt(I)Li/d;

    return-void

    :cond_3c
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lh/h0/i/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v2

    :cond_4a
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lh/h0/i/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v2
.end method

.method public declared-synchronized a(IILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Lh/h0/i/j;->g:Lh/h0/i/d$b;

    invoke-virtual {v0, p3}, Lh/h0/i/d$b;->a(Ljava/util/List;)V

    iget-object p3, p0, Lh/h0/i/j;->d:Li/c;

    invoke-virtual {p3}, Li/c;->s()J

    move-result-wide v0

    iget p3, p0, Lh/h0/i/j;->e:I

    const/4 v2, 0x4

    sub-int/2addr p3, v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    const/4 v3, 0x5

    int-to-long v4, p3

    cmp-long v6, v0, v4

    if-nez v6, :cond_22

    const/4 v6, 0x4

    goto :goto_23

    :cond_22
    const/4 v6, 0x0

    :goto_23
    add-int/2addr p3, v2

    invoke-virtual {p0, p1, p3, v3, v6}, Lh/h0/i/j;->a(IIBB)V

    iget-object p3, p0, Lh/h0/i/j;->b:Li/d;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Li/d;->writeInt(I)Li/d;

    iget-object p2, p0, Lh/h0/i/j;->b:Li/d;

    iget-object p3, p0, Lh/h0/i/j;->d:Li/c;

    invoke-interface {p2, p3, v4, v5}, Li/r;->b(Li/c;J)V

    cmp-long p2, v0, v4

    if-lez p2, :cond_3f

    sub-long/2addr v0, v4

    invoke-direct {p0, p1, v0, v1}, Lh/h0/i/j;->b(IJ)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_49

    :cond_3f
    monitor-exit p0

    return-void

    :cond_41
    :try_start_41
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IJ)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_36

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_26

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_26

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1, v2}, Lh/h0/i/j;->a(IIBB)V

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Li/d;->writeInt(I)Li/d;

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {p1}, Li/d;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_3e

    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p1, v0}, Lh/h0/i/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_3e

    const/4 p1, 0x0

    throw p1

    :cond_36
    :try_start_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILh/h0/i/b;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_24

    iget v0, p2, Lh/h0/i/b;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lh/h0/i/j;->a(IIBB)V

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    iget p2, p2, Lh/h0/i/b;->b:I

    invoke-interface {p1, p2}, Li/d;->writeInt(I)Li/d;

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {p1}, Li/d;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2c

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_24
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILh/h0/i/b;[B)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_36

    iget v0, p2, Lh/h0/i/b;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2d

    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    invoke-virtual {p0, v2, v0, v1, v2}, Lh/h0/i/j;->a(IIBB)V

    iget-object v0, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {v0, p1}, Li/d;->writeInt(I)Li/d;

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    iget p2, p2, Lh/h0/i/b;->b:I

    invoke-interface {p1, p2}, Li/d;->writeInt(I)Li/d;

    array-length p1, p3

    if-lez p1, :cond_26

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {p1, p3}, Li/d;->write([B)Li/d;

    :cond_26
    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {p1}, Li/d;->flush()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_3e

    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lh/h0/i/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3e

    const/4 p1, 0x0

    throw p1

    :cond_36
    :try_start_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lh/h0/i/m;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_2a

    iget v0, p0, Lh/h0/i/j;->e:I

    invoke-virtual {p1, v0}, Lh/h0/i/m;->c(I)I

    move-result v0

    iput v0, p0, Lh/h0/i/j;->e:I

    invoke-virtual {p1}, Lh/h0/i/m;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lh/h0/i/j;->g:Lh/h0/i/d$b;

    invoke-virtual {p1}, Lh/h0/i/m;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lh/h0/i/d$b;->a(I)V

    :cond_1d
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lh/h0/i/j;->a(IIBB)V

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {p1}, Li/d;->flush()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_32

    monitor-exit p0

    return-void

    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZII)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_22

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-virtual {p0, v2, v0, v1, p1}, Lh/h0/i/j;->a(IIBB)V

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {p1, p2}, Li/d;->writeInt(I)Li/d;

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {p1, p3}, Li/d;->writeInt(I)Li/d;

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {p1}, Li/d;->flush()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    monitor-exit p0

    return-void

    :cond_22
    :try_start_22
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZIILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean p3, p0, Lh/h0/i/j;->f:Z

    if-nez p3, :cond_a

    invoke-virtual {p0, p1, p2, p4}, Lh/h0/i/j;->a(ZILjava/util/List;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZILi/c;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    int-to-byte v0, p1

    :cond_a
    invoke-virtual {p0, p2, v0, p3, p4}, Lh/h0/i/j;->a(IBLi/c;I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_17

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(ZILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lh/h0/i/j;->g:Lh/h0/i/d$b;

    invoke-virtual {v0, p3}, Lh/h0/i/d$b;->a(Ljava/util/List;)V

    iget-object p3, p0, Lh/h0/i/j;->d:Li/c;

    invoke-virtual {p3}, Li/c;->s()J

    move-result-wide v0

    iget p3, p0, Lh/h0/i/j;->e:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v4, 0x4

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    if-eqz p1, :cond_24

    or-int/lit8 p1, v4, 0x1

    int-to-byte v4, p1

    :cond_24
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1, v4}, Lh/h0/i/j;->a(IIBB)V

    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    iget-object p3, p0, Lh/h0/i/j;->d:Li/c;

    invoke-interface {p1, p3, v2, v3}, Li/r;->b(Li/c;J)V

    cmp-long p1, v0, v2

    if-lez p1, :cond_37

    sub-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lh/h0/i/j;->b(IJ)V

    :cond_37
    return-void

    :cond_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized b(Lh/h0/i/m;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Lh/h0/i/m;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2, v1}, Lh/h0/i/j;->a(IIBB)V

    :goto_10
    const/16 v0, 0xa

    if-ge v1, v0, :cond_36

    invoke-virtual {p1, v1}, Lh/h0/i/m;->d(I)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_33

    :cond_1b
    if-ne v1, v2, :cond_1f

    const/4 v0, 0x3

    goto :goto_25

    :cond_1f
    const/4 v0, 0x7

    if-ne v1, v0, :cond_24

    const/4 v0, 0x4

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    iget-object v3, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {v3, v0}, Li/d;->writeShort(I)Li/d;

    iget-object v0, p0, Lh/h0/i/j;->b:Li/d;

    invoke-virtual {p1, v1}, Lh/h0/i/m;->a(I)I

    move-result v3

    invoke-interface {v0, v3}, Li/d;->writeInt(I)Li/d;

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_36
    iget-object p1, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {p1}, Li/d;->flush()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_45

    monitor-exit p0

    return-void

    :cond_3d
    :try_start_3d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p1

    monitor-exit p0

    goto :goto_49

    :goto_48
    throw p1

    :goto_49
    goto :goto_48
.end method

.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lh/h0/i/j;->f:Z

    iget-object v0, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {v0}, Li/r;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {v0}, Li/d;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/j;->f:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lh/h0/i/j;->c:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_46

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    sget-object v0, Lh/h0/i/j;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lh/h0/i/j;->h:Ljava/util/logging/Logger;

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lh/h0/i/e;->a:Li/f;

    invoke-virtual {v4}, Li/f;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lh/h0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lh/h0/i/j;->b:Li/d;

    sget-object v1, Lh/h0/i/e;->a:Li/f;

    invoke-virtual {v1}, Li/f;->g()[B

    move-result-object v1

    invoke-interface {v0, v1}, Li/d;->write([B)Li/d;

    iget-object v0, p0, Lh/h0/i/j;->b:Li/d;

    invoke-interface {v0}, Li/d;->flush()V
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_46

    monitor-exit p0

    return-void

    :cond_3e
    :try_start_3e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lh/h0/i/j;->e:I

    return v0
.end method
