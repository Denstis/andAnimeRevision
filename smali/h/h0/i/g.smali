###### Class h.h0.i.g (h.h0.i.g)
.class public final Lh/h0/i/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/i/g$h;,
        Lh/h0/i/g$j;,
        Lh/h0/i/g$g;,
        Lh/h0/i/g$i;
    }
.end annotation


# static fields
.field private static final v:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final b:Z

.field final c:Lh/h0/i/g$h;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lh/h0/i/i;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field final k:Lh/h0/i/l;

.field private l:Z

.field m:J

.field n:J

.field o:Lh/h0/i/m;

.field final p:Lh/h0/i/m;

.field q:Z

.field final r:Ljava/net/Socket;

.field final s:Lh/h0/i/j;

.field final t:Lh/h0/i/g$j;

.field final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-class v0, Lh/h0/i/g;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp Http2Connection"

    invoke-static {v8, v1}, Lh/h0/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lh/h0/i/g;->v:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lh/h0/i/g$g;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lh/h0/i/g;->d:Ljava/util/Map;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lh/h0/i/g;->m:J

    new-instance v2, Lh/h0/i/m;

    invoke-direct {v2}, Lh/h0/i/m;-><init>()V

    iput-object v2, v0, Lh/h0/i/g;->o:Lh/h0/i/m;

    new-instance v2, Lh/h0/i/m;

    invoke-direct {v2}, Lh/h0/i/m;-><init>()V

    iput-object v2, v0, Lh/h0/i/g;->p:Lh/h0/i/m;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lh/h0/i/g;->q:Z

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lh/h0/i/g;->u:Ljava/util/Set;

    iget-object v3, v1, Lh/h0/i/g$g;->f:Lh/h0/i/l;

    iput-object v3, v0, Lh/h0/i/g;->k:Lh/h0/i/l;

    iget-boolean v3, v1, Lh/h0/i/g$g;->g:Z

    iput-boolean v3, v0, Lh/h0/i/g;->b:Z

    iget-object v4, v1, Lh/h0/i/g$g;->e:Lh/h0/i/g$h;

    iput-object v4, v0, Lh/h0/i/g;->c:Lh/h0/i/g$h;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x2

    :goto_3d
    iput v3, v0, Lh/h0/i/g;->g:I

    iget-boolean v3, v1, Lh/h0/i/g$g;->g:Z

    if-eqz v3, :cond_48

    iget v3, v0, Lh/h0/i/g;->g:I

    add-int/2addr v3, v4

    iput v3, v0, Lh/h0/i/g;->g:I

    :cond_48
    iget-boolean v3, v1, Lh/h0/i/g$g;->g:Z

    const/4 v4, 0x7

    if-eqz v3, :cond_54

    iget-object v3, v0, Lh/h0/i/g;->o:Lh/h0/i/m;

    const/high16 v6, 0x1000000

    invoke-virtual {v3, v4, v6}, Lh/h0/i/m;->a(II)Lh/h0/i/m;

    :cond_54
    iget-object v3, v1, Lh/h0/i/g$g;->b:Ljava/lang/String;

    iput-object v3, v0, Lh/h0/i/g;->e:Ljava/lang/String;

    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lh/h0/i/g;->e:Ljava/lang/String;

    aput-object v7, v6, v2

    const-string v7, "OkHttp %s Writer"

    invoke-static {v7, v6}, Lh/h0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lh/h0/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lh/h0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget v3, v1, Lh/h0/i/g$g;->h:I

    if-eqz v3, :cond_83

    iget-object v6, v0, Lh/h0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lh/h0/i/g$i;

    invoke-direct {v7, v0, v2, v2, v2}, Lh/h0/i/g$i;-><init>(Lh/h0/i/g;ZII)V

    iget v3, v1, Lh/h0/i/g$g;->h:I

    int-to-long v8, v3

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_83
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/16 v16, 0x3c

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v19, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lh/h0/i/g;->e:Ljava/lang/String;

    aput-object v7, v6, v2

    const-string v2, "OkHttp %s Push Observer"

    invoke-static {v2, v6}, Lh/h0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lh/h0/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v20

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lh/h0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v0, Lh/h0/i/g;->p:Lh/h0/i/m;

    const v3, 0xffff

    invoke-virtual {v2, v4, v3}, Lh/h0/i/m;->a(II)Lh/h0/i/m;

    iget-object v2, v0, Lh/h0/i/g;->p:Lh/h0/i/m;

    const/4 v3, 0x5

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Lh/h0/i/m;->a(II)Lh/h0/i/m;

    iget-object v2, v0, Lh/h0/i/g;->p:Lh/h0/i/m;

    invoke-virtual {v2}, Lh/h0/i/m;->c()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lh/h0/i/g;->n:J

    iget-object v2, v1, Lh/h0/i/g$g;->a:Ljava/net/Socket;

    iput-object v2, v0, Lh/h0/i/g;->r:Ljava/net/Socket;

    new-instance v2, Lh/h0/i/j;

    iget-object v3, v1, Lh/h0/i/g$g;->d:Li/d;

    iget-boolean v4, v0, Lh/h0/i/g;->b:Z

    invoke-direct {v2, v3, v4}, Lh/h0/i/j;-><init>(Li/d;Z)V

    iput-object v2, v0, Lh/h0/i/g;->s:Lh/h0/i/j;

    new-instance v2, Lh/h0/i/g$j;

    new-instance v3, Lh/h0/i/h;

    iget-object v1, v1, Lh/h0/i/g$g;->c:Li/e;

    iget-boolean v4, v0, Lh/h0/i/g;->b:Z

    invoke-direct {v3, v1, v4}, Lh/h0/i/h;-><init>(Li/e;Z)V

    invoke-direct {v2, v0, v3}, Lh/h0/i/g$j;-><init>(Lh/h0/i/g;Lh/h0/i/h;)V

    iput-object v2, v0, Lh/h0/i/g;->t:Lh/h0/i/g$j;

    return-void
.end method

.method static synthetic a(Lh/h0/i/g;)V
    .registers 1

    invoke-direct {p0}, Lh/h0/i/g;->n()V

    return-void
.end method

.method static synthetic a(Lh/h0/i/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lh/h0/i/g;->l:Z

    return p1
.end method

.method private b(ILjava/util/List;Z)Lh/h0/i/i;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;Z)",
            "Lh/h0/i/i;"
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    monitor-enter v7

    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_78

    :try_start_7
    iget v0, p0, Lh/h0/i/g;->g:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_13

    sget-object v0, Lh/h0/i/b;->g:Lh/h0/i/b;

    invoke-virtual {p0, v0}, Lh/h0/i/g;->a(Lh/h0/i/b;)V

    :cond_13
    iget-boolean v0, p0, Lh/h0/i/g;->h:Z

    if-nez v0, :cond_6f

    iget v8, p0, Lh/h0/i/g;->g:I

    iget v0, p0, Lh/h0/i/g;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lh/h0/i/g;->g:I

    new-instance v9, Lh/h0/i/i;

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lh/h0/i/i;-><init>(ILh/h0/i/g;ZZLjava/util/List;)V

    if-eqz p3, :cond_3c

    iget-wide v0, p0, Lh/h0/i/g;->n:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_3c

    iget-wide v0, v9, Lh/h0/i/i;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_3a

    goto :goto_3c

    :cond_3a
    const/4 p3, 0x0

    goto :goto_3d

    :cond_3c
    :goto_3c
    const/4 p3, 0x1

    :goto_3d
    invoke-virtual {v9}, Lh/h0/i/i;->g()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_75

    if-nez p1, :cond_55

    :try_start_4f
    iget-object v0, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {v0, v6, v8, p1, p2}, Lh/h0/i/j;->a(ZIILjava/util/List;)V

    goto :goto_5e

    :cond_55
    iget-boolean v0, p0, Lh/h0/i/g;->b:Z

    if-nez v0, :cond_67

    iget-object v0, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {v0, p1, v8, p2}, Lh/h0/i/j;->a(IILjava/util/List;)V

    :goto_5e
    monitor-exit v7
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_78

    if-eqz p3, :cond_66

    iget-object p1, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {p1}, Lh/h0/i/j;->flush()V

    :cond_66
    return-object v9

    :cond_67
    :try_start_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_78

    :cond_6f
    :try_start_6f
    new-instance p1, Lh/h0/i/a;

    invoke-direct {p1}, Lh/h0/i/a;-><init>()V

    throw p1

    :catchall_75
    move-exception p1

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_75

    :try_start_77
    throw p1

    :catchall_78
    move-exception p1

    monitor-exit v7
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method static synthetic b(Lh/h0/i/g;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lh/h0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic m()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lh/h0/i/g;->v:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private n()V
    .registers 3

    :try_start_0
    sget-object v0, Lh/h0/i/b;->d:Lh/h0/i/b;

    sget-object v1, Lh/h0/i/b;->d:Lh/h0/i/b;

    invoke-virtual {p0, v0, v1}, Lh/h0/i/g;->a(Lh/h0/i/b;Lh/h0/i/b;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method


# virtual methods
.method declared-synchronized a(I)Lh/h0/i/i;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh/h0/i/i;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;Z)Lh/h0/i/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;Z)",
            "Lh/h0/i/i;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lh/h0/i/g;->b(ILjava/util/List;Z)Lh/h0/i/i;

    move-result-object p1

    return-object p1
.end method

.method a(IJ)V
    .registers 13

    :try_start_0
    iget-object v0, p0, Lh/h0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lh/h0/i/g$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lh/h0/i/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lh/h0/i/g$b;-><init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method a(ILh/h0/i/b;)V
    .registers 11

    iget-object v0, p0, Lh/h0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lh/h0/i/g$f;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lh/h0/i/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lh/h0/i/g$f;-><init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILh/h0/i/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(ILi/e;IZ)V
    .registers 14

    new-instance v5, Li/c;

    invoke-direct {v5}, Li/c;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Li/e;->e(J)V

    invoke-interface {p2, v5, v0, v1}, Li/s;->a(Li/c;J)J

    invoke-virtual {v5}, Li/c;->s()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_35

    iget-object p2, p0, Lh/h0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lh/h0/i/g$e;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lh/h0/i/g;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lh/h0/i/g$e;-><init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILi/c;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_35
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Li/c;->s()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/i/g;->u:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p2, Lh/h0/i/b;->d:Lh/h0/i/b;

    invoke-virtual {p0, p1, p2}, Lh/h0/i/g;->c(ILh/h0/i/b;)V

    monitor-exit p0

    return-void

    :cond_14
    iget-object v0, p0, Lh/h0/i/g;->u:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3e

    :try_start_1e
    iget-object v0, p0, Lh/h0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lh/h0/i/g$c;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lh/h0/i/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lh/h0/i/g$c;-><init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1e .. :try_end_3d} :catch_3d

    :catch_3d
    return-void

    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method a(ILjava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lh/h0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lh/h0/i/g$d;

    const-string v3, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lh/h0/i/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lh/h0/i/g$d;-><init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method

.method public a(IZLi/c;J)V
    .registers 14

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_d

    iget-object p4, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {p4, p2, p1, p3, v0}, Lh/h0/i/j;->a(ZILi/c;I)V

    return-void

    :cond_d
    :goto_d
    cmp-long v3, p4, v1

    if-lez v3, :cond_62

    monitor-enter p0

    :goto_12
    :try_start_12
    iget-wide v3, p0, Lh/h0/i/g;->n:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_30

    iget-object v3, p0, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    :cond_28
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_30} :catch_5a
    .catchall {:try_start_12 .. :try_end_30} :catchall_58

    :cond_30
    :try_start_30
    iget-wide v3, p0, Lh/h0/i/g;->n:J

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {v3}, Lh/h0/i/j;->k()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lh/h0/i/g;->n:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lh/h0/i/g;->n:J

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_58

    sub-long/2addr p4, v6

    iget-object v4, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    if-eqz p2, :cond_53

    cmp-long v5, p4, v1

    if-nez v5, :cond_53

    const/4 v5, 0x1

    goto :goto_54

    :cond_53
    const/4 v5, 0x0

    :goto_54
    invoke-virtual {v4, v5, p1, p3, v3}, Lh/h0/i/j;->a(ZILi/c;I)V

    goto :goto_d

    :catchall_58
    move-exception p1

    goto :goto_60

    :catch_5a
    :try_start_5a
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_58

    throw p1

    :cond_62
    return-void
.end method

.method public a(Lh/h0/i/b;)V
    .registers 6

    iget-object v0, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    monitor-enter v0

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    :try_start_4
    iget-boolean v1, p0, Lh/h0/i/g;->h:Z

    if-eqz v1, :cond_b

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    return-void

    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lh/h0/i/g;->h:Z

    iget v1, p0, Lh/h0/i/g;->f:I

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    :try_start_11
    iget-object v2, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    sget-object v3, Lh/h0/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lh/h0/i/j;->a(ILh/h0/i/b;[B)V

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p1

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method a(Lh/h0/i/b;Lh/h0/i/b;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lh/h0/i/g;->a(Lh/h0/i/b;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    move-object p1, v0

    goto :goto_7

    :catch_6
    move-exception p1

    :goto_7
    monitor-enter p0

    :try_start_8
    iget-object v1, p0, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v0, p0, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lh/h0/i/i;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/h0/i/i;

    iget-object v1, p0, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_5c

    if-eqz v0, :cond_3d

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_3d

    aget-object v3, v0, v2

    :try_start_32
    invoke-virtual {v3, p2}, Lh/h0/i/i;->a(Lh/h0/i/b;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v3

    if-eqz p1, :cond_3a

    move-object p1, v3

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3d
    :try_start_3d
    iget-object p2, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {p2}, Lh/h0/i/j;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p2

    if-nez p1, :cond_47

    move-object p1, p2

    :cond_47
    :goto_47
    :try_start_47
    iget-object p2, p0, Lh/h0/i/g;->r:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception p1

    :goto_4e
    iget-object p2, p0, Lh/h0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object p2, p0, Lh/h0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_5b

    return-void

    :cond_5b
    throw p1

    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    goto :goto_60

    :goto_5f
    throw p1

    :goto_60
    goto :goto_5f
.end method

.method a(Z)V
    .registers 7

    if-eqz p1, :cond_21

    iget-object p1, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {p1}, Lh/h0/i/j;->j()V

    iget-object p1, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    iget-object v0, p0, Lh/h0/i/g;->o:Lh/h0/i/m;

    invoke-virtual {p1, v0}, Lh/h0/i/j;->b(Lh/h0/i/m;)V

    iget-object p1, p0, Lh/h0/i/g;->o:Lh/h0/i/m;

    invoke-virtual {p1}, Lh/h0/i/m;->c()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_21

    iget-object v1, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lh/h0/i/j;->a(IJ)V

    :cond_21
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lh/h0/i/g;->t:Lh/h0/i/g$j;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(ZII)V
    .registers 6

    if-nez p1, :cond_12

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lh/h0/i/g;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh/h0/i/g;->l:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lh/h0/i/g;->n()V

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    :try_start_12
    iget-object v0, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {v0, p1, p2, p3}, Lh/h0/i/j;->a(ZII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_1b

    :catch_18
    invoke-direct {p0}, Lh/h0/i/g;->n()V

    :goto_1b
    return-void
.end method

.method b(ILh/h0/i/b;)V
    .registers 4

    iget-object v0, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {v0, p1, p2}, Lh/h0/i/j;->a(ILh/h0/i/b;)V

    return-void
.end method

.method b(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    and-int/2addr p1, v0

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method declared-synchronized c(I)Lh/h0/i/i;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh/h0/i/i;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c(ILh/h0/i/b;)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lh/h0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lh/h0/i/g$a;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lh/h0/i/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lh/h0/i/g$a;-><init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILh/h0/i/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method public close()V
    .registers 3

    sget-object v0, Lh/h0/i/b;->c:Lh/h0/i/b;

    sget-object v1, Lh/h0/i/b;->h:Lh/h0/i/b;

    invoke-virtual {p0, v0, v1}, Lh/h0/i/g;->a(Lh/h0/i/b;Lh/h0/i/b;)V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lh/h0/i/g;->s:Lh/h0/i/j;

    invoke-virtual {v0}, Lh/h0/i/j;->flush()V

    return-void
.end method

.method h(J)V
    .registers 6

    iget-wide v0, p0, Lh/h0/i/g;->n:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lh/h0/i/g;->n:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public declared-synchronized j()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/g;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/i/g;->p:Lh/h0/i/m;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lh/h0/i/m;->b(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh/h0/i/g;->a(Z)V

    return-void
.end method

###### Class h.h0.i.g.a (h.h0.i.g$a)
.class Lh/h0/i/g$a;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/i/g;->c(ILh/h0/i/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lh/h0/i/b;

.field final synthetic e:Lh/h0/i/g;


# direct methods
.method varargs constructor <init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILh/h0/i/b;)V
    .registers 6

    iput-object p1, p0, Lh/h0/i/g$a;->e:Lh/h0/i/g;

    iput p4, p0, Lh/h0/i/g$a;->c:I

    iput-object p5, p0, Lh/h0/i/g$a;->d:Lh/h0/i/b;

    invoke-direct {p0, p2, p3}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lh/h0/i/g$a;->e:Lh/h0/i/g;

    iget v1, p0, Lh/h0/i/g$a;->c:I

    iget-object v2, p0, Lh/h0/i/g$a;->d:Lh/h0/i/b;

    invoke-virtual {v0, v1, v2}, Lh/h0/i/g;->b(ILh/h0/i/b;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    iget-object v0, p0, Lh/h0/i/g$a;->e:Lh/h0/i/g;

    invoke-static {v0}, Lh/h0/i/g;->a(Lh/h0/i/g;)V

    :goto_f
    return-void
.end method

###### Class h.h0.i.g.b (h.h0.i.g$b)
.class Lh/h0/i/g$b;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/i/g;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Lh/h0/i/g;


# direct methods
.method varargs constructor <init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 7

    iput-object p1, p0, Lh/h0/i/g$b;->e:Lh/h0/i/g;

    iput p4, p0, Lh/h0/i/g$b;->c:I

    iput-wide p5, p0, Lh/h0/i/g$b;->d:J

    invoke-direct {p0, p2, p3}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lh/h0/i/g$b;->e:Lh/h0/i/g;

    iget-object v0, v0, Lh/h0/i/g;->s:Lh/h0/i/j;

    iget v1, p0, Lh/h0/i/g$b;->c:I

    iget-wide v2, p0, Lh/h0/i/g$b;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lh/h0/i/j;->a(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_11

    :catch_c
    iget-object v0, p0, Lh/h0/i/g$b;->e:Lh/h0/i/g;

    invoke-static {v0}, Lh/h0/i/g;->a(Lh/h0/i/g;)V

    :goto_11
    return-void
.end method

###### Class h.h0.i.g.c (h.h0.i.g$c)
.class Lh/h0/i/g$c;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/i/g;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lh/h0/i/g;


# direct methods
.method varargs constructor <init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    iput-object p1, p0, Lh/h0/i/g$c;->e:Lh/h0/i/g;

    iput p4, p0, Lh/h0/i/g$c;->c:I

    iput-object p5, p0, Lh/h0/i/g$c;->d:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    iget-object v0, p0, Lh/h0/i/g$c;->e:Lh/h0/i/g;

    iget-object v0, v0, Lh/h0/i/g;->k:Lh/h0/i/l;

    iget v1, p0, Lh/h0/i/g$c;->c:I

    iget-object v2, p0, Lh/h0/i/g$c;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lh/h0/i/l;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :try_start_e
    iget-object v0, p0, Lh/h0/i/g$c;->e:Lh/h0/i/g;

    iget-object v0, v0, Lh/h0/i/g;->s:Lh/h0/i/j;

    iget v1, p0, Lh/h0/i/g$c;->c:I

    sget-object v2, Lh/h0/i/b;->h:Lh/h0/i/b;

    invoke-virtual {v0, v1, v2}, Lh/h0/i/j;->a(ILh/h0/i/b;)V

    iget-object v0, p0, Lh/h0/i/g$c;->e:Lh/h0/i/g;

    monitor-enter v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_2e

    :try_start_1c
    iget-object v1, p0, Lh/h0/i/g$c;->e:Lh/h0/i/g;

    iget-object v1, v1, Lh/h0/i/g;->u:Ljava/util/Set;

    iget v2, p0, Lh/h0/i/g$c;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_2e

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    :goto_2e
    return-void
.end method

###### Class h.h0.i.g.d (h.h0.i.g$d)
.class Lh/h0/i/g$d;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/i/g;->a(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Z

.field final synthetic f:Lh/h0/i/g;


# direct methods
.method varargs constructor <init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7

    iput-object p1, p0, Lh/h0/i/g$d;->f:Lh/h0/i/g;

    iput p4, p0, Lh/h0/i/g$d;->c:I

    iput-object p5, p0, Lh/h0/i/g$d;->d:Ljava/util/List;

    iput-boolean p6, p0, Lh/h0/i/g$d;->e:Z

    invoke-direct {p0, p2, p3}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    iget-object v0, p0, Lh/h0/i/g$d;->f:Lh/h0/i/g;

    iget-object v0, v0, Lh/h0/i/g;->k:Lh/h0/i/l;

    iget v1, p0, Lh/h0/i/g$d;->c:I

    iget-object v2, p0, Lh/h0/i/g$d;->d:Ljava/util/List;

    iget-boolean v3, p0, Lh/h0/i/g$d;->e:Z

    invoke-interface {v0, v1, v2, v3}, Lh/h0/i/l;->a(ILjava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_10
    iget-object v1, p0, Lh/h0/i/g$d;->f:Lh/h0/i/g;

    iget-object v1, v1, Lh/h0/i/g;->s:Lh/h0/i/j;

    iget v2, p0, Lh/h0/i/g$d;->c:I

    sget-object v3, Lh/h0/i/b;->h:Lh/h0/i/b;

    invoke-virtual {v1, v2, v3}, Lh/h0/i/j;->a(ILh/h0/i/b;)V

    :cond_1b
    if-nez v0, :cond_21

    iget-boolean v0, p0, Lh/h0/i/g$d;->e:Z

    if-eqz v0, :cond_36

    :cond_21
    iget-object v0, p0, Lh/h0/i/g$d;->f:Lh/h0/i/g;

    monitor-enter v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_24} :catch_36

    :try_start_24
    iget-object v1, p0, Lh/h0/i/g$d;->f:Lh/h0/i/g;

    iget-object v1, v1, Lh/h0/i/g;->u:Ljava/util/Set;

    iget v2, p0, Lh/h0/i/g$d;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    :try_start_35
    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    :goto_36
    return-void
.end method

###### Class h.h0.i.g.e (h.h0.i.g$e)
.class Lh/h0/i/g$e;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/i/g;->a(ILi/e;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Li/c;

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lh/h0/i/g;


# direct methods
.method varargs constructor <init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILi/c;IZ)V
    .registers 8

    iput-object p1, p0, Lh/h0/i/g$e;->g:Lh/h0/i/g;

    iput p4, p0, Lh/h0/i/g$e;->c:I

    iput-object p5, p0, Lh/h0/i/g$e;->d:Li/c;

    iput p6, p0, Lh/h0/i/g$e;->e:I

    iput-boolean p7, p0, Lh/h0/i/g$e;->f:Z

    invoke-direct {p0, p2, p3}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lh/h0/i/g$e;->g:Lh/h0/i/g;

    iget-object v0, v0, Lh/h0/i/g;->k:Lh/h0/i/l;

    iget v1, p0, Lh/h0/i/g$e;->c:I

    iget-object v2, p0, Lh/h0/i/g$e;->d:Li/c;

    iget v3, p0, Lh/h0/i/g$e;->e:I

    iget-boolean v4, p0, Lh/h0/i/g$e;->f:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lh/h0/i/l;->a(ILi/e;IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lh/h0/i/g$e;->g:Lh/h0/i/g;

    iget-object v1, v1, Lh/h0/i/g;->s:Lh/h0/i/j;

    iget v2, p0, Lh/h0/i/g$e;->c:I

    sget-object v3, Lh/h0/i/b;->h:Lh/h0/i/b;

    invoke-virtual {v1, v2, v3}, Lh/h0/i/j;->a(ILh/h0/i/b;)V

    :cond_1d
    if-nez v0, :cond_23

    iget-boolean v0, p0, Lh/h0/i/g$e;->f:Z

    if-eqz v0, :cond_38

    :cond_23
    iget-object v0, p0, Lh/h0/i/g$e;->g:Lh/h0/i/g;

    monitor-enter v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_38

    :try_start_26
    iget-object v1, p0, Lh/h0/i/g$e;->g:Lh/h0/i/g;

    iget-object v1, v1, Lh/h0/i/g;->u:Ljava/util/Set;

    iget v2, p0, Lh/h0/i/g$e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_38

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    :goto_38
    return-void
.end method

###### Class h.h0.i.g.f (h.h0.i.g$f)
.class Lh/h0/i/g$f;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/i/g;->a(ILh/h0/i/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lh/h0/i/b;

.field final synthetic e:Lh/h0/i/g;


# direct methods
.method varargs constructor <init>(Lh/h0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILh/h0/i/b;)V
    .registers 6

    iput-object p1, p0, Lh/h0/i/g$f;->e:Lh/h0/i/g;

    iput p4, p0, Lh/h0/i/g$f;->c:I

    iput-object p5, p0, Lh/h0/i/g$f;->d:Lh/h0/i/b;

    invoke-direct {p0, p2, p3}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    iget-object v0, p0, Lh/h0/i/g$f;->e:Lh/h0/i/g;

    iget-object v0, v0, Lh/h0/i/g;->k:Lh/h0/i/l;

    iget v1, p0, Lh/h0/i/g$f;->c:I

    iget-object v2, p0, Lh/h0/i/g$f;->d:Lh/h0/i/b;

    invoke-interface {v0, v1, v2}, Lh/h0/i/l;->a(ILh/h0/i/b;)V

    iget-object v0, p0, Lh/h0/i/g$f;->e:Lh/h0/i/g;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lh/h0/i/g$f;->e:Lh/h0/i/g;

    iget-object v1, v1, Lh/h0/i/g;->u:Ljava/util/Set;

    iget v2, p0, Lh/h0/i/g$f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v1
.end method

###### Class h.h0.i.g.C0188g (h.h0.i.g$g)
.class public Lh/h0/i/g$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Li/e;

.field d:Li/d;

.field e:Lh/h0/i/g$h;

.field f:Lh/h0/i/l;

.field g:Z

.field h:I


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh/h0/i/g$h;->a:Lh/h0/i/g$h;

    iput-object v0, p0, Lh/h0/i/g$g;->e:Lh/h0/i/g$h;

    sget-object v0, Lh/h0/i/l;->a:Lh/h0/i/l;

    iput-object v0, p0, Lh/h0/i/g$g;->f:Lh/h0/i/l;

    iput-boolean p1, p0, Lh/h0/i/g$g;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)Lh/h0/i/g$g;
    .registers 2

    iput p1, p0, Lh/h0/i/g$g;->h:I

    return-object p0
.end method

.method public a(Lh/h0/i/g$h;)Lh/h0/i/g$g;
    .registers 2

    iput-object p1, p0, Lh/h0/i/g$g;->e:Lh/h0/i/g$h;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Li/e;Li/d;)Lh/h0/i/g$g;
    .registers 5

    iput-object p1, p0, Lh/h0/i/g$g;->a:Ljava/net/Socket;

    iput-object p2, p0, Lh/h0/i/g$g;->b:Ljava/lang/String;

    iput-object p3, p0, Lh/h0/i/g$g;->c:Li/e;

    iput-object p4, p0, Lh/h0/i/g$g;->d:Li/d;

    return-object p0
.end method

.method public a()Lh/h0/i/g;
    .registers 2

    new-instance v0, Lh/h0/i/g;

    invoke-direct {v0, p0}, Lh/h0/i/g;-><init>(Lh/h0/i/g$g;)V

    return-object v0
.end method

###### Class h.h0.i.g.h (h.h0.i.g$h)
.class public abstract Lh/h0/i/g$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# static fields
.field public static final a:Lh/h0/i/g$h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh/h0/i/g$h$a;

    invoke-direct {v0}, Lh/h0/i/g$h$a;-><init>()V

    sput-object v0, Lh/h0/i/g$h;->a:Lh/h0/i/g$h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/h0/i/g;)V
    .registers 2

    return-void
.end method

.method public abstract a(Lh/h0/i/i;)V
.end method

###### Class h.h0.i.g.h.a (h.h0.i.g$h$a)
.class final Lh/h0/i/g$h$a;
.super Lh/h0/i/g$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/g$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lh/h0/i/g$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/h0/i/i;)V
    .registers 3

    sget-object v0, Lh/h0/i/b;->g:Lh/h0/i/b;

    invoke-virtual {p1, v0}, Lh/h0/i/i;->a(Lh/h0/i/b;)V

    return-void
.end method

###### Class h.h0.i.g.i (h.h0.i.g$i)
.class final Lh/h0/i/g$i;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation


# instance fields
.field final c:Z

.field final d:I

.field final e:I

.field final synthetic f:Lh/h0/i/g;


# direct methods
.method constructor <init>(Lh/h0/i/g;ZII)V
    .registers 7

    iput-object p1, p0, Lh/h0/i/g$i;->f:Lh/h0/i/g;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lh/h0/i/g;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lh/h0/i/g$i;->c:Z

    iput p3, p0, Lh/h0/i/g$i;->d:I

    iput p4, p0, Lh/h0/i/g$i;->e:I

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    iget-object v0, p0, Lh/h0/i/g$i;->f:Lh/h0/i/g;

    iget-boolean v1, p0, Lh/h0/i/g$i;->c:Z

    iget v2, p0, Lh/h0/i/g$i;->d:I

    iget v3, p0, Lh/h0/i/g$i;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lh/h0/i/g;->a(ZII)V

    return-void
.end method

###### Class h.h0.i.g.j (h.h0.i.g$j)
.class Lh/h0/i/g$j;
.super Lh/h0/b;
.source ""

# interfaces
.implements Lh/h0/i/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final c:Lh/h0/i/h;

.field final synthetic d:Lh/h0/i/g;


# direct methods
.method constructor <init>(Lh/h0/i/g;Lh/h0/i/h;)V
    .registers 5

    iput-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lh/h0/i/g;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lh/h0/i/g$j;->c:Lh/h0/i/h;

    return-void
.end method

.method private a(Lh/h0/i/m;)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-static {v0}, Lh/h0/i/g;->b(Lh/h0/i/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lh/h0/i/g$j$c;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v5, v5, Lh/h0/i/g;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lh/h0/i/g$j$c;-><init>(Lh/h0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;Lh/h0/i/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(IIIZ)V
    .registers 5

    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {p1, p2, p3}, Lh/h0/i/g;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(IJ)V
    .registers 7

    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    if-nez p1, :cond_16

    monitor-enter v0

    :try_start_5
    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-wide v1, p1, Lh/h0/i/g;->n:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lh/h0/i/g;->n:J

    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_25

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p1

    :cond_16
    invoke-virtual {v0, p1}, Lh/h0/i/g;->a(I)Lh/h0/i/i;

    move-result-object p1

    if-eqz p1, :cond_25

    monitor-enter p1

    :try_start_1d
    invoke-virtual {p1, p2, p3}, Lh/h0/i/i;->a(J)V

    monitor-exit p1

    goto :goto_25

    :catchall_22
    move-exception p2

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p2

    :cond_25
    :goto_25
    return-void
.end method

.method public a(ILh/h0/i/b;)V
    .registers 4

    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v0, p1}, Lh/h0/i/g;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v0, p1, p2}, Lh/h0/i/g;->a(ILh/h0/i/b;)V

    return-void

    :cond_e
    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v0, p1}, Lh/h0/i/g;->c(I)Lh/h0/i/i;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1, p2}, Lh/h0/i/i;->c(Lh/h0/i/b;)V

    :cond_19
    return-void
.end method

.method public a(ILh/h0/i/b;Li/f;)V
    .registers 7

    invoke-virtual {p3}, Li/f;->e()I

    iget-object p2, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    monitor-enter p2

    :try_start_6
    iget-object p3, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object p3, p3, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v0, v0, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lh/h0/i/i;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lh/h0/i/i;

    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lh/h0/i/g;->h:Z

    monitor-exit p2
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_48

    array-length p2, p3

    const/4 v0, 0x0

    :goto_26
    if-ge v0, p2, :cond_47

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lh/h0/i/i;->c()I

    move-result v2

    if-le v2, p1, :cond_44

    invoke-virtual {v1}, Lh/h0/i/i;->f()Z

    move-result v2

    if-eqz v2, :cond_44

    sget-object v2, Lh/h0/i/b;->g:Lh/h0/i/b;

    invoke-virtual {v1, v2}, Lh/h0/i/i;->c(Lh/h0/i/b;)V

    iget-object v2, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v1}, Lh/h0/i/i;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Lh/h0/i/g;->c(I)Lh/h0/i/i;

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_47
    return-void

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    goto :goto_4c

    :goto_4b
    throw p1

    :goto_4c
    goto :goto_4b
.end method

.method public a(ZII)V
    .registers 7

    if-eqz p1, :cond_15

    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    monitor-enter p1

    :try_start_5
    iget-object p2, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lh/h0/i/g;->a(Lh/h0/i/g;Z)Z

    iget-object p2, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_26

    :catchall_12
    move-exception p2

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p2

    :cond_15
    :try_start_15
    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-static {p1}, Lh/h0/i/g;->b(Lh/h0/i/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lh/h0/i/g$i;

    iget-object v1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, Lh/h0/i/g$i;-><init>(Lh/h0/i/g;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_15 .. :try_end_26} :catch_26

    :catch_26
    :goto_26
    return-void
.end method

.method public a(ZIILjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {p3, p2}, Lh/h0/i/g;->b(I)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {p3, p2, p4, p1}, Lh/h0/i/g;->a(ILjava/util/List;Z)V

    return-void

    :cond_e
    iget-object p3, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    monitor-enter p3

    :try_start_11
    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v0, p2}, Lh/h0/i/g;->a(I)Lh/h0/i/i;

    move-result-object v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-boolean v0, v0, Lh/h0/i/g;->h:Z

    if-eqz v0, :cond_21

    monitor-exit p3

    return-void

    :cond_21
    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget v0, v0, Lh/h0/i/g;->f:I

    if-gt p2, v0, :cond_29

    monitor-exit p3

    return-void

    :cond_29
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget v1, v1, Lh/h0/i/g;->g:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_35

    monitor-exit p3

    return-void

    :cond_35
    new-instance v0, Lh/h0/i/i;

    iget-object v5, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    const/4 v6, 0x0

    move-object v3, v0

    move v4, p2

    move v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lh/h0/i/i;-><init>(ILh/h0/i/g;ZZLjava/util/List;)V

    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iput p2, p1, Lh/h0/i/g;->f:I

    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object p1, p1, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lh/h0/i/g;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p4, Lh/h0/i/g$j$a;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v4, v4, Lh/h0/i/g;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {p4, p0, v1, v2, v0}, Lh/h0/i/g$j$a;-><init>(Lh/h0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;Lh/h0/i/i;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit p3

    return-void

    :cond_70
    monitor-exit p3
    :try_end_71
    .catchall {:try_start_11 .. :try_end_71} :catchall_7a

    invoke-virtual {v0, p4}, Lh/h0/i/i;->a(Ljava/util/List;)V

    if-eqz p1, :cond_79

    invoke-virtual {v0}, Lh/h0/i/i;->i()V

    :cond_79
    return-void

    :catchall_7a
    move-exception p1

    :try_start_7b
    monitor-exit p3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method public a(ZILi/e;I)V
    .registers 6

    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v0, p2}, Lh/h0/i/g;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v0, p2, p3, p4, p1}, Lh/h0/i/g;->a(ILi/e;IZ)V

    return-void

    :cond_e
    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v0, p2}, Lh/h0/i/g;->a(I)Lh/h0/i/i;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    sget-object v0, Lh/h0/i/b;->d:Lh/h0/i/b;

    invoke-virtual {p1, p2, v0}, Lh/h0/i/g;->c(ILh/h0/i/b;)V

    int-to-long p1, p4

    invoke-interface {p3, p1, p2}, Li/e;->skip(J)V

    return-void

    :cond_22
    invoke-virtual {v0, p3, p4}, Lh/h0/i/i;->a(Li/e;I)V

    if-eqz p1, :cond_2a

    invoke-virtual {v0}, Lh/h0/i/i;->i()V

    :cond_2a
    return-void
.end method

.method public a(ZLh/h0/i/m;)V
    .registers 13

    iget-object v0, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v1, v1, Lh/h0/i/g;->p:Lh/h0/i/m;

    invoke-virtual {v1}, Lh/h0/i/m;->c()I

    move-result v1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object p1, p1, Lh/h0/i/g;->p:Lh/h0/i/m;

    invoke-virtual {p1}, Lh/h0/i/m;->a()V

    :cond_14
    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object p1, p1, Lh/h0/i/g;->p:Lh/h0/i/m;

    invoke-virtual {p1, p2}, Lh/h0/i/m;->a(Lh/h0/i/m;)V

    invoke-direct {p0, p2}, Lh/h0/i/g$j;->a(Lh/h0/i/m;)V

    iget-object p1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object p1, p1, Lh/h0/i/g;->p:Lh/h0/i/m;

    invoke-virtual {p1}, Lh/h0/i/m;->c()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p2, :cond_64

    if-eq p1, v1, :cond_64

    sub-int/2addr p1, v1

    int-to-long p1, p1

    iget-object v1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-boolean v1, v1, Lh/h0/i/g;->q:Z

    if-nez v1, :cond_40

    iget-object v1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v1, p1, p2}, Lh/h0/i/g;->h(J)V

    iget-object v1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iput-boolean v4, v1, Lh/h0/i/g;->q:Z

    :cond_40
    iget-object v1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v1, v1, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v1, v1, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v5, v5, Lh/h0/i/g;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lh/h0/i/i;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lh/h0/i/i;

    goto :goto_65

    :cond_64
    move-wide p1, v2

    :cond_65
    :goto_65
    invoke-static {}, Lh/h0/i/g;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v6, Lh/h0/i/g$j$b;

    const-string v7, "OkHttp %s settings"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v8, v8, Lh/h0/i/g;->e:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-direct {v6, p0, v7, v4}, Lh/h0/i/g$j$b;-><init>(Lh/h0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_94

    if-eqz v5, :cond_93

    cmp-long v0, p1, v2

    if-eqz v0, :cond_93

    array-length v0, v5

    :goto_84
    if-ge v9, v0, :cond_93

    aget-object v1, v5, v9

    monitor-enter v1

    :try_start_89
    invoke-virtual {v1, p1, p2}, Lh/h0/i/i;->a(J)V

    monitor-exit v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_84

    :catchall_90
    move-exception p1

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_90

    throw p1

    :cond_93
    return-void

    :catchall_94
    move-exception p1

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    goto :goto_98

    :goto_97
    throw p1

    :goto_98
    goto :goto_97
.end method

.method protected b()V
    .registers 5

    sget-object v0, Lh/h0/i/b;->e:Lh/h0/i/b;

    :try_start_2
    iget-object v1, p0, Lh/h0/i/g$j;->c:Lh/h0/i/h;

    invoke-virtual {v1, p0}, Lh/h0/i/h;->a(Lh/h0/i/h$b;)V

    :goto_7
    iget-object v1, p0, Lh/h0/i/g$j;->c:Lh/h0/i/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lh/h0/i/h;->a(ZLh/h0/i/h$b;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    :cond_11
    sget-object v1, Lh/h0/i/b;->c:Lh/h0/i/b;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1b
    .catchall {:try_start_2 .. :try_end_13} :catchall_18

    :try_start_13
    sget-object v0, Lh/h0/i/b;->h:Lh/h0/i/b;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_15} :catch_1c
    .catchall {:try_start_13 .. :try_end_15} :catchall_2b

    :try_start_15
    iget-object v2, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_17} :catch_25

    goto :goto_22

    :catchall_18
    move-exception v2

    move-object v1, v0

    goto :goto_2c

    :catch_1b
    move-object v1, v0

    :catch_1c
    :try_start_1c
    sget-object v1, Lh/h0/i/b;->d:Lh/h0/i/b;

    sget-object v0, Lh/h0/i/b;->d:Lh/h0/i/b;
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_2b

    :try_start_20
    iget-object v2, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    :goto_22
    invoke-virtual {v2, v1, v0}, Lh/h0/i/g;->a(Lh/h0/i/b;Lh/h0/i/b;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_25

    :catch_25
    iget-object v0, p0, Lh/h0/i/g$j;->c:Lh/h0/i/h;

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_2b
    move-exception v2

    :goto_2c
    :try_start_2c
    iget-object v3, p0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-virtual {v3, v1, v0}, Lh/h0/i/g;->a(Lh/h0/i/b;Lh/h0/i/b;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_31

    :catch_31
    iget-object v0, p0, Lh/h0/i/g$j;->c:Lh/h0/i/h;

    invoke-static {v0}, Lh/h0/c;->a(Ljava/io/Closeable;)V

    goto :goto_38

    :goto_37
    throw v2

    :goto_38
    goto :goto_37
.end method

###### Class h.h0.i.g.j.a (h.h0.i.g$j$a)
.class Lh/h0/i/g$j$a;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/i/g$j;->a(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lh/h0/i/i;

.field final synthetic d:Lh/h0/i/g$j;


# direct methods
.method varargs constructor <init>(Lh/h0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;Lh/h0/i/i;)V
    .registers 5

    iput-object p1, p0, Lh/h0/i/g$j$a;->d:Lh/h0/i/g$j;

    iput-object p4, p0, Lh/h0/i/g$j$a;->c:Lh/h0/i/i;

    invoke-direct {p0, p2, p3}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lh/h0/i/g$j$a;->d:Lh/h0/i/g$j;

    iget-object v0, v0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v0, v0, Lh/h0/i/g;->c:Lh/h0/i/g$h;

    iget-object v1, p0, Lh/h0/i/g$j$a;->c:Lh/h0/i/i;

    invoke-virtual {v0, v1}, Lh/h0/i/g$h;->a(Lh/h0/i/i;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_33

    :catch_c
    move-exception v0

    invoke-static {}, Lh/h0/j/f;->c()Lh/h0/j/f;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lh/h0/i/g$j$a;->d:Lh/h0/i/g$j;

    iget-object v4, v4, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v4, v4, Lh/h0/i/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lh/h0/j/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_2c
    iget-object v0, p0, Lh/h0/i/g$j$a;->c:Lh/h0/i/i;

    sget-object v1, Lh/h0/i/b;->d:Lh/h0/i/b;

    invoke-virtual {v0, v1}, Lh/h0/i/i;->a(Lh/h0/i/b;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_33

    :catch_33
    :goto_33
    return-void
.end method

###### Class h.h0.i.g.j.b (h.h0.i.g$j$b)
.class Lh/h0/i/g$j$b;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/i/g$j;->a(ZLh/h0/i/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lh/h0/i/g$j;


# direct methods
.method varargs constructor <init>(Lh/h0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lh/h0/i/g$j$b;->c:Lh/h0/i/g$j;

    invoke-direct {p0, p2, p3}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    iget-object v0, p0, Lh/h0/i/g$j$b;->c:Lh/h0/i/g$j;

    iget-object v0, v0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v1, v0, Lh/h0/i/g;->c:Lh/h0/i/g$h;

    invoke-virtual {v1, v0}, Lh/h0/i/g$h;->a(Lh/h0/i/g;)V

    return-void
.end method

###### Class h.h0.i.g.j.c (h.h0.i.g$j$c)
.class Lh/h0/i/g$j$c;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h0/i/g$j;->a(Lh/h0/i/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lh/h0/i/m;

.field final synthetic d:Lh/h0/i/g$j;


# direct methods
.method varargs constructor <init>(Lh/h0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;Lh/h0/i/m;)V
    .registers 5

    iput-object p1, p0, Lh/h0/i/g$j$c;->d:Lh/h0/i/g$j;

    iput-object p4, p0, Lh/h0/i/g$j$c;->c:Lh/h0/i/m;

    invoke-direct {p0, p2, p3}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lh/h0/i/g$j$c;->d:Lh/h0/i/g$j;

    iget-object v0, v0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    iget-object v0, v0, Lh/h0/i/g;->s:Lh/h0/i/j;

    iget-object v1, p0, Lh/h0/i/g$j$c;->c:Lh/h0/i/m;

    invoke-virtual {v0, v1}, Lh/h0/i/j;->a(Lh/h0/i/m;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    iget-object v0, p0, Lh/h0/i/g$j$c;->d:Lh/h0/i/g$j;

    iget-object v0, v0, Lh/h0/i/g$j;->d:Lh/h0/i/g;

    invoke-static {v0}, Lh/h0/i/g;->a(Lh/h0/i/g;)V

    :goto_13
    return-void
.end method
