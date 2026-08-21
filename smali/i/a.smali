###### Class i.a (i.a)
.class public Li/a;
.super Li/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a$c;
    }
.end annotation


# static fields
.field private static final h:J

.field private static final i:J

.field static j:Li/a;


# instance fields
.field private e:Z

.field private f:Li/a;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Li/a;->h:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Li/a;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Li/a;->i:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li/t;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Li/a;JZ)V
    .registers 10

    const-class v0, Li/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Li/a;->j:Li/a;

    if-nez v1, :cond_16

    new-instance v1, Li/a;

    invoke-direct {v1}, Li/a;-><init>()V

    sput-object v1, Li/a;->j:Li/a;

    new-instance v1, Li/a$c;

    invoke-direct {v1}, Li/a$c;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2f

    if-eqz p3, :cond_2f

    invoke-virtual {p0}, Li/t;->c()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :goto_2b
    add-long/2addr p1, v1

    iput-wide p1, p0, Li/a;->g:J

    goto :goto_3c

    :cond_2f
    cmp-long v5, p1, v3

    if-eqz v5, :cond_34

    goto :goto_2b

    :cond_34
    if-eqz p3, :cond_63

    invoke-virtual {p0}, Li/t;->c()J

    move-result-wide p1

    iput-wide p1, p0, Li/a;->g:J

    :goto_3c
    invoke-direct {p0, v1, v2}, Li/a;->b(J)J

    move-result-wide p1

    sget-object p3, Li/a;->j:Li/a;

    :goto_42
    iget-object v3, p3, Li/a;->f:Li/a;

    if-eqz v3, :cond_54

    iget-object v3, p3, Li/a;->f:Li/a;

    invoke-direct {v3, v1, v2}, Li/a;->b(J)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_51

    goto :goto_54

    :cond_51
    iget-object p3, p3, Li/a;->f:Li/a;

    goto :goto_42

    :cond_54
    :goto_54
    iget-object p1, p3, Li/a;->f:Li/a;

    iput-object p1, p0, Li/a;->f:Li/a;

    iput-object p0, p3, Li/a;->f:Li/a;

    sget-object p0, Li/a;->j:Li/a;

    if-ne p3, p0, :cond_61

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_69

    :cond_61
    monitor-exit v0

    return-void

    :cond_63
    :try_start_63
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p0

    monitor-exit v0

    goto :goto_6d

    :goto_6c
    throw p0

    :goto_6d
    goto :goto_6c
.end method

.method private static declared-synchronized a(Li/a;)Z
    .registers 4

    const-class v0, Li/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Li/a;->j:Li/a;

    :goto_5
    if-eqz v1, :cond_18

    iget-object v2, v1, Li/a;->f:Li/a;

    if-ne v2, p0, :cond_15

    iget-object v2, p0, Li/a;->f:Li/a;

    iput-object v2, v1, Li/a;->f:Li/a;

    const/4 v1, 0x0

    iput-object v1, p0, Li/a;->f:Li/a;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return p0

    :cond_15
    :try_start_15
    iget-object v1, v1, Li/a;->f:Li/a;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1a

    goto :goto_5

    :cond_18
    const/4 p0, 0x1

    goto :goto_13

    :catchall_1a
    move-exception p0

    monitor-exit v0

    goto :goto_1e

    :goto_1d
    throw p0

    :goto_1e
    goto :goto_1d
.end method

.method private b(J)J
    .registers 5

    iget-wide v0, p0, Li/a;->g:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method static j()Li/a;
    .registers 9

    const-class v0, Li/a;

    sget-object v1, Li/a;->j:Li/a;

    iget-object v1, v1, Li/a;->f:Li/a;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    if-nez v1, :cond_26

    sget-wide v5, Li/a;->h:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    sget-object v0, Li/a;->j:Li/a;

    iget-object v0, v0, Li/a;->f:Li/a;

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Li/a;->i:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_25

    sget-object v2, Li/a;->j:Li/a;

    :cond_25
    return-object v2

    :cond_26
    invoke-direct {v1, v3, v4}, Li/a;->b(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3d

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    :cond_3d
    sget-object v0, Li/a;->j:Li/a;

    iget-object v3, v1, Li/a;->f:Li/a;

    iput-object v3, v0, Li/a;->f:Li/a;

    iput-object v2, v1, Li/a;->f:Li/a;

    return-object v1
.end method


# virtual methods
.method public final a(Li/r;)Li/r;
    .registers 3

    new-instance v0, Li/a$a;

    invoke-direct {v0, p0, p1}, Li/a$a;-><init>(Li/a;Li/r;)V

    return-object v0
.end method

.method public final a(Li/s;)Li/s;
    .registers 3

    new-instance v0, Li/a$b;

    invoke-direct {v0, p0, p1}, Li/a$b;-><init>(Li/a;Li/s;)V

    return-object v0
.end method

.method final a(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    invoke-virtual {p0}, Li/a;->h()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Li/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method final a(Z)V
    .registers 3

    invoke-virtual {p0}, Li/a;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Li/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_f
    :goto_f
    return-void
.end method

.method protected b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method public final g()V
    .registers 7

    iget-boolean v0, p0, Li/a;->e:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Li/t;->f()J

    move-result-wide v0

    invoke-virtual {p0}, Li/t;->d()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    iput-boolean v3, p0, Li/a;->e:Z

    invoke-static {p0, v0, v1, v2}, Li/a;->a(Li/a;JZ)V

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Z
    .registers 3

    iget-boolean v0, p0, Li/a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Li/a;->e:Z

    invoke-static {p0}, Li/a;->a(Li/a;)Z

    move-result v0

    return v0
.end method

.method protected i()V
    .registers 1

    return-void
.end method

###### Class i.a.C0193a (i.a$a)
.class Li/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/a;->a(Li/r;)Li/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Li/r;

.field final synthetic c:Li/a;


# direct methods
.method constructor <init>(Li/a;Li/r;)V
    .registers 3

    iput-object p1, p0, Li/a$a;->c:Li/a;

    iput-object p2, p0, Li/a$a;->b:Li/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/a$a;->c:Li/a;

    return-object v0
.end method

.method public b(Li/c;J)V
    .registers 10

    iget-wide v0, p1, Li/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Li/u;->a(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4a

    iget-object v2, p1, Li/c;->b:Li/o;

    :goto_10
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_27

    iget v3, v2, Li/o;->c:I

    iget v4, v2, Li/o;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_24

    move-wide v0, p2

    goto :goto_27

    :cond_24
    iget-object v2, v2, Li/o;->f:Li/o;

    goto :goto_10

    :cond_27
    :goto_27
    const/4 v2, 0x0

    iget-object v3, p0, Li/a$a;->c:Li/a;

    invoke-virtual {v3}, Li/a;->g()V

    :try_start_2d
    iget-object v3, p0, Li/a$a;->b:Li/r;

    invoke-interface {v3, p1, v0, v1}, Li/r;->b(Li/c;J)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_3c
    .catchall {:try_start_2d .. :try_end_32} :catchall_3a

    sub-long/2addr p2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Li/a$a;->c:Li/a;

    invoke-virtual {v1, v0}, Li/a;->a(Z)V

    goto :goto_8

    :catchall_3a
    move-exception p1

    goto :goto_44

    :catch_3c
    move-exception p1

    :try_start_3d
    iget-object p2, p0, Li/a$a;->c:Li/a;

    invoke-virtual {p2, p1}, Li/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    :goto_44
    iget-object p2, p0, Li/a$a;->c:Li/a;

    invoke-virtual {p2, v2}, Li/a;->a(Z)V

    throw p1

    :cond_4a
    return-void
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Li/a$a;->c:Li/a;

    invoke-virtual {v0}, Li/a;->g()V

    :try_start_5
    iget-object v0, p0, Li/a$a;->b:Li/r;

    invoke-interface {v0}, Li/r;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    iget-object v1, p0, Li/a$a;->c:Li/a;

    invoke-virtual {v1, v0}, Li/a;->a(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Li/a$a;->c:Li/a;

    invoke-virtual {v1, v0}, Li/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Li/a$a;->c:Li/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Li/a;->a(Z)V

    throw v0
.end method

.method public flush()V
    .registers 4

    iget-object v0, p0, Li/a$a;->c:Li/a;

    invoke-virtual {v0}, Li/a;->g()V

    :try_start_5
    iget-object v0, p0, Li/a$a;->b:Li/r;

    invoke-interface {v0}, Li/r;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    iget-object v1, p0, Li/a$a;->c:Li/a;

    invoke-virtual {v1, v0}, Li/a;->a(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Li/a$a;->c:Li/a;

    invoke-virtual {v1, v0}, Li/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Li/a$a;->c:Li/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Li/a;->a(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a$a;->b:Li/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class i.a.b (i.a$b)
.class Li/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/a;->a(Li/s;)Li/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Li/s;

.field final synthetic c:Li/a;


# direct methods
.method constructor <init>(Li/a;Li/s;)V
    .registers 3

    iput-object p1, p0, Li/a$b;->c:Li/a;

    iput-object p2, p0, Li/a$b;->b:Li/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 5

    iget-object v0, p0, Li/a$b;->c:Li/a;

    invoke-virtual {v0}, Li/a;->g()V

    :try_start_5
    iget-object v0, p0, Li/a$b;->b:Li/s;

    invoke-interface {v0, p1, p2, p3}, Li/s;->a(Li/c;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    const/4 p3, 0x1

    iget-object v0, p0, Li/a$b;->c:Li/a;

    invoke-virtual {v0, p3}, Li/a;->a(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    :try_start_15
    iget-object p2, p0, Li/a$b;->c:Li/a;

    invoke-virtual {p2, p1}, Li/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    :goto_1c
    iget-object p2, p0, Li/a$b;->c:Li/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Li/a;->a(Z)V

    throw p1
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/a$b;->c:Li/a;

    return-object v0
.end method

.method public close()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Li/a$b;->b:Li/s;

    invoke-interface {v0}, Li/s;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    const/4 v0, 0x1

    iget-object v1, p0, Li/a$b;->c:Li/a;

    invoke-virtual {v1, v0}, Li/a;->a(Z)V

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    :try_start_f
    iget-object v1, p0, Li/a$b;->c:Li/a;

    invoke-virtual {v1, v0}, Li/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    :goto_16
    iget-object v1, p0, Li/a$b;->c:Li/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Li/a;->a(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a$b;->b:Li/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class i.a.c (i.a$c)
.class final Li/a$c;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :catch_0
    :goto_0
    :try_start_0
    const-class v0, Li/a;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    :try_start_3
    invoke-static {}, Li/a;->j()Li/a;

    move-result-object v1

    if-nez v1, :cond_b

    monitor-exit v0

    goto :goto_0

    :cond_b
    sget-object v2, Li/a;->j:Li/a;

    if-ne v1, v2, :cond_14

    const/4 v1, 0x0

    sput-object v1, Li/a;->j:Li/a;

    monitor-exit v0

    return-void

    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    :try_start_15
    invoke-virtual {v1}, Li/a;->i()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_0

    goto :goto_0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    goto :goto_1d
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_0

    :goto_1c
    throw v1

    :goto_1d
    goto :goto_1c
.end method
