###### Class i.p (i.p)
.class final Li/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field static a:Li/o;

.field static b:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Li/o;
    .registers 6

    const-class v0, Li/p;

    monitor-enter v0

    :try_start_3
    sget-object v1, Li/p;->a:Li/o;

    if-eqz v1, :cond_19

    sget-object v1, Li/p;->a:Li/o;

    iget-object v2, v1, Li/o;->f:Li/o;

    sput-object v2, Li/p;->a:Li/o;

    const/4 v2, 0x0

    iput-object v2, v1, Li/o;->f:Li/o;

    sget-wide v2, Li/p;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Li/p;->b:J

    monitor-exit v0

    return-object v1

    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    new-instance v0, Li/o;

    invoke-direct {v0}, Li/o;-><init>()V

    return-object v0

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static a(Li/o;)V
    .registers 9

    iget-object v0, p0, Li/o;->f:Li/o;

    if-nez v0, :cond_33

    iget-object v0, p0, Li/o;->g:Li/o;

    if-nez v0, :cond_33

    iget-boolean v0, p0, Li/o;->d:Z

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const-class v0, Li/p;

    monitor-enter v0

    :try_start_10
    sget-wide v1, Li/p;->b:J

    const-wide/16 v3, 0x2000

    add-long/2addr v1, v3

    const-wide/32 v5, 0x10000

    cmp-long v7, v1, v5

    if-lez v7, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    sget-wide v1, Li/p;->b:J

    add-long/2addr v1, v3

    sput-wide v1, Li/p;->b:J

    sget-object v1, Li/p;->a:Li/o;

    iput-object v1, p0, Li/o;->f:Li/o;

    const/4 v1, 0x0

    iput v1, p0, Li/o;->c:I

    iput v1, p0, Li/o;->b:I

    sput-object p0, Li/p;->a:Li/o;

    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_30

    throw p0

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
