###### Class com.bumptech.glide.load.p.c.s (com.bumptech.glide.load.p.c.s)
.class public Lcom/bumptech/glide/load/p/c/s;
.super Ljava/io/FilterInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/p/c/s$a;
    }
.end annotation


# instance fields
.field private volatile b:[B

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Lcom/bumptech/glide/load/n/a0/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/n/a0/b;)V
    .registers 4

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/p/c/s;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/n/a0/b;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/n/a0/b;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    iput-object p2, p0, Lcom/bumptech/glide/load/p/c/s;->g:Lcom/bumptech/glide/load/n/a0/b;

    const-class p1, [B

    invoke-interface {p2, p3, p1}, Lcom/bumptech/glide/load/n/a0/b;->b(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    return-void
.end method

.method private a(Ljava/io/InputStream;[B)I
    .registers 8

    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5a

    iget v3, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->d:I

    if-lt v3, v4, :cond_e

    goto :goto_5a

    :cond_e
    if-nez v0, :cond_35

    array-length v0, p2

    if-le v4, v0, :cond_35

    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    array-length v1, p2

    if-ne v0, v1, :cond_35

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1e

    move v0, v4

    :cond_1e
    iget-object v1, p0, Lcom/bumptech/glide/load/p/c/s;->g:Lcom/bumptech/glide/load/n/a0/b;

    const-class v3, [B

    invoke-interface {v1, v0, v3}, Lcom/bumptech/glide/load/n/a0/b;->b(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    iget-object v1, p0, Lcom/bumptech/glide/load/p/c/s;->g:Lcom/bumptech/glide/load/n/a0/b;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/n/a0/b;->a(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_3e

    :cond_35
    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    if-lez v0, :cond_3e

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3e
    :goto_3e
    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    iput v2, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    iput v2, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget p2, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    if-gtz p1, :cond_56

    goto :goto_57

    :cond_56
    add-int/2addr p2, p1

    :goto_57
    iput p2, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    return p1

    :cond_5a
    :goto_5a
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_66

    iput v1, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    iput v2, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    iput p1, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    :cond_66
    return p1
.end method

.method private static l()Ljava/io/IOException;
    .registers 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iget v2, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    :cond_15
    :try_start_15
    invoke-static {}, Lcom/bumptech/glide/load/p/c/s;->l()Ljava/io/IOException;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1a

    const/4 v0, 0x0

    throw v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->g:Lcom/bumptech/glide/load/n/a0/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/n/a0/b;->a(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    :cond_e
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_17
    return-void
.end method

.method public declared-synchronized j()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    array-length v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/p/c/s;->d:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->g:Lcom/bumptech/glide/load/n/a0/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/n/a0/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->d:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/p/c/s;->d:I

    iget p1, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    iput p1, p0, Lcom/bumptech/glide/load/p/c/s;->e:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    if-eqz v1, :cond_3b

    iget v3, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    const/4 v5, -0x1

    if-lt v3, v4, :cond_19

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/p/c/s;->a(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_3f

    if-ne v1, v5, :cond_19

    monitor-exit p0

    return v5

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    if-eqz v0, :cond_22

    goto :goto_26

    :cond_22
    invoke-static {}, Lcom/bumptech/glide/load/p/c/s;->l()Ljava/io/IOException;
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_3f

    throw v2

    :cond_26
    :goto_26
    :try_start_26
    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iget v2, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_39

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    aget-byte v0, v0, v1
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_3f

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :cond_39
    monitor-exit p0

    return v5

    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/bumptech/glide/load/p/c/s;->l()Ljava/io/IOException;
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    throw v2

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9c

    const/4 v1, 0x0

    if-eqz v0, :cond_98

    if-nez p3, :cond_b

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_b
    :try_start_b
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_94

    iget v3, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    if-ge v3, v4, :cond_3c

    iget v3, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    sub-int/2addr v3, v4

    if-lt v3, p3, :cond_1e

    move v3, p3

    goto :goto_23

    :cond_1e
    iget v3, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    sub-int/2addr v3, v4

    :goto_23
    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    if-eq v3, p3, :cond_3a

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_9c

    if-nez v4, :cond_36

    goto :goto_3a

    :cond_36
    add-int/2addr p2, v3

    sub-int v3, p3, v3

    goto :goto_3d

    :cond_3a
    :goto_3a
    monitor-exit p0

    return v3

    :cond_3c
    move v3, p3

    :goto_3d
    :try_start_3d
    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_52

    array-length v4, v0

    if-lt v3, v4, :cond_52

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_9c

    if-ne v4, v5, :cond_84

    if-ne v3, p3, :cond_4e

    goto :goto_50

    :cond_4e
    sub-int v5, p3, v3

    :goto_50
    monitor-exit p0

    return v5

    :cond_52
    :try_start_52
    invoke-direct {p0, v2, v0}, Lcom/bumptech/glide/load/p/c/s;->a(Ljava/io/InputStream;[B)I

    move-result v4
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_9c

    if-ne v4, v5, :cond_5f

    if-ne v3, p3, :cond_5b

    goto :goto_5d

    :cond_5b
    sub-int v5, p3, v3

    :goto_5d
    monitor-exit p0

    return v5

    :cond_5f
    :try_start_5f
    iget-object v4, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    if-eq v0, v4, :cond_6c

    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    if-eqz v0, :cond_68

    goto :goto_6c

    :cond_68
    invoke-static {}, Lcom/bumptech/glide/load/p/c/s;->l()Ljava/io/IOException;
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_9c

    throw v1

    :cond_6c
    :goto_6c
    :try_start_6c
    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iget v5, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    sub-int/2addr v4, v5

    if-lt v4, v3, :cond_75

    move v4, v3

    goto :goto_7a

    :cond_75
    iget v4, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iget v5, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    sub-int/2addr v4, v5

    :goto_7a
    iget v5, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    invoke-static {v0, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/bumptech/glide/load/p/c/s;->f:I
    :try_end_84
    .catchall {:try_start_6c .. :try_end_84} :catchall_9c

    :cond_84
    sub-int/2addr v3, v4

    if-nez v3, :cond_89

    monitor-exit p0

    return p3

    :cond_89
    :try_start_89
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_9c

    if-nez v5, :cond_92

    sub-int/2addr p3, v3

    monitor-exit p0

    return p3

    :cond_92
    add-int/2addr p2, v4

    goto :goto_3d

    :cond_94
    :try_start_94
    invoke-static {}, Lcom/bumptech/glide/load/p/c/s;->l()Ljava/io/IOException;
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_9c

    throw v1

    :cond_98
    :try_start_98
    invoke-static {}, Lcom/bumptech/glide/load/p/c/s;->l()Ljava/io/IOException;
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    throw v1

    :catchall_9c
    move-exception p1

    monitor-exit p0

    goto :goto_a0

    :goto_9f
    throw p1

    :goto_a0
    goto :goto_9f
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    if-eqz v0, :cond_33

    const/4 v0, -0x1

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    iput v0, p0, Lcom/bumptech/glide/load/p/c/s;->f:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3b

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    new-instance v0, Lcom/bumptech/glide/load/p/c/s$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mark has been invalidated, pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " markLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/load/p/c/s;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/p/c/s$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 11

    monitor-enter p0

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-gez v2, :cond_b

    const-wide/16 p1, 0x0

    monitor-exit p0

    return-wide p1

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/bumptech/glide/load/p/c/s;->b:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_72

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iget v3, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    sub-int/2addr v1, v3

    int-to-long v3, v1

    cmp-long v1, v3, p1

    if-ltz v1, :cond_27

    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v1, v0

    iput v1, p0, Lcom/bumptech/glide/load/p/c/s;->f:I
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_7a

    monitor-exit p0

    return-wide p1

    :cond_27
    :try_start_27
    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    int-to-long v3, v1

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    int-to-long v5, v1

    sub-long/2addr v3, v5

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iput v1, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->e:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_6a

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->d:I

    int-to-long v6, v1

    cmp-long v1, p1, v6

    if-gtz v1, :cond_6a

    invoke-direct {p0, v2, v0}, Lcom/bumptech/glide/load/p/c/s;->a(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_7a

    if-ne v0, v5, :cond_46

    monitor-exit p0

    return-wide v3

    :cond_46
    :try_start_46
    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iget v1, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v5, p1, v3

    cmp-long v2, v0, v5

    if-ltz v2, :cond_5c

    iget v0, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    sub-long/2addr v0, v3

    long-to-int v1, v0

    iput v1, p0, Lcom/bumptech/glide/load/p/c/s;->f:I
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_7a

    monitor-exit p0

    return-wide p1

    :cond_5c
    :try_start_5c
    iget p1, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    int-to-long p1, p1

    add-long/2addr v3, p1

    iget p1, p0, Lcom/bumptech/glide/load/p/c/s;->f:I

    int-to-long p1, p1

    sub-long/2addr v3, p1

    iget p1, p0, Lcom/bumptech/glide/load/p/c/s;->c:I

    iput p1, p0, Lcom/bumptech/glide/load/p/c/s;->f:I
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_7a

    monitor-exit p0

    return-wide v3

    :cond_6a
    sub-long/2addr p1, v3

    :try_start_6b
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_7a

    add-long/2addr v3, p1

    monitor-exit p0

    return-wide v3

    :cond_72
    :try_start_72
    invoke-static {}, Lcom/bumptech/glide/load/p/c/s;->l()Ljava/io/IOException;
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_7a

    throw v1

    :cond_76
    :try_start_76
    invoke-static {}, Lcom/bumptech/glide/load/p/c/s;->l()Ljava/io/IOException;
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    throw v1

    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.load.p.c.s.a (com.bumptech.glide.load.p.c.s$a)
.class Lcom/bumptech/glide/load/p/c/s$a;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/p/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
