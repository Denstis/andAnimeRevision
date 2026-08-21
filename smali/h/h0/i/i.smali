###### Class h.h0.i.i (h.h0.i.i)
.class public final Lh/h0/i/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h0/i/i$c;,
        Lh/h0/i/i$a;,
        Lh/h0/i/i$b;
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lh/h0/i/g;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Lh/h0/i/i$b;

.field final h:Lh/h0/i/i$a;

.field final i:Lh/h0/i/i$c;

.field final j:Lh/h0/i/i$c;

.field k:Lh/h0/i/b;


# direct methods
.method constructor <init>(ILh/h0/i/g;ZZLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lh/h0/i/g;",
            "ZZ",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh/h0/i/i;->a:J

    new-instance v0, Lh/h0/i/i$c;

    invoke-direct {v0, p0}, Lh/h0/i/i$c;-><init>(Lh/h0/i/i;)V

    iput-object v0, p0, Lh/h0/i/i;->i:Lh/h0/i/i$c;

    new-instance v0, Lh/h0/i/i$c;

    invoke-direct {v0, p0}, Lh/h0/i/i$c;-><init>(Lh/h0/i/i;)V

    iput-object v0, p0, Lh/h0/i/i;->j:Lh/h0/i/i$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lh/h0/i/i;->k:Lh/h0/i/b;

    if-eqz p2, :cond_4f

    if-eqz p5, :cond_47

    iput p1, p0, Lh/h0/i/i;->c:I

    iput-object p2, p0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget-object p1, p2, Lh/h0/i/g;->p:Lh/h0/i/m;

    invoke-virtual {p1}, Lh/h0/i/m;->c()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lh/h0/i/i;->b:J

    new-instance p1, Lh/h0/i/i$b;

    iget-object p2, p2, Lh/h0/i/g;->o:Lh/h0/i/m;

    invoke-virtual {p2}, Lh/h0/i/m;->c()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, p0, v0, v1}, Lh/h0/i/i$b;-><init>(Lh/h0/i/i;J)V

    iput-object p1, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    new-instance p1, Lh/h0/i/i$a;

    invoke-direct {p1, p0}, Lh/h0/i/i$a;-><init>(Lh/h0/i/i;)V

    iput-object p1, p0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    iget-object p1, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    iput-boolean p4, p1, Lh/h0/i/i$b;->f:Z

    iget-object p1, p0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    iput-boolean p3, p1, Lh/h0/i/i$a;->d:Z

    return-void

    :cond_47
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lh/h0/i/b;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/i/i;->k:Lh/h0/i/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    iget-object v0, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    iget-boolean v0, v0, Lh/h0/i/i$b;->f:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    iget-boolean v0, v0, Lh/h0/i/i$a;->d:Z

    if-eqz v0, :cond_16

    monitor-exit p0

    return v1

    :cond_16
    iput-object p1, p0, Lh/h0/i/i;->k:Lh/h0/i/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    iget-object p1, p0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget v0, p0, Lh/h0/i/i;->c:I

    invoke-virtual {p1, v0}, Lh/h0/i/g;->c(I)Lh/h0/i/i;

    const/4 p1, 0x1

    return p1

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method


# virtual methods
.method a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    iget-boolean v0, v0, Lh/h0/i/i$b;->f:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    iget-boolean v0, v0, Lh/h0/i/i$b;->e:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    iget-boolean v0, v0, Lh/h0/i/i$a;->d:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    iget-boolean v0, v0, Lh/h0/i/i$a;->c:Z

    if-eqz v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p0}, Lh/h0/i/i;->g()Z

    move-result v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_33

    if-eqz v0, :cond_29

    sget-object v0, Lh/h0/i/b;->h:Lh/h0/i/b;

    invoke-virtual {p0, v0}, Lh/h0/i/i;->a(Lh/h0/i/b;)V

    goto :goto_32

    :cond_29
    if-nez v1, :cond_32

    iget-object v0, p0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget v1, p0, Lh/h0/i/i;->c:I

    invoke-virtual {v0, v1}, Lh/h0/i/g;->c(I)Lh/h0/i/i;

    :cond_32
    :goto_32
    return-void

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method a(J)V
    .registers 6

    iget-wide v0, p0, Lh/h0/i/i;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lh/h0/i/i;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public a(Lh/h0/i/b;)V
    .registers 4

    invoke-direct {p0, p1}, Lh/h0/i/i;->d(Lh/h0/i/b;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget v1, p0, Lh/h0/i/i;->c:I

    invoke-virtual {v0, v1, p1}, Lh/h0/i/g;->b(ILh/h0/i/b;)V

    return-void
.end method

.method a(Li/e;I)V
    .registers 6

    iget-object v0, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lh/h0/i/i$b;->a(Li/e;J)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lh/h0/i/i;->f:Z

    iget-object v1, p0, Lh/h0/i/i;->e:Ljava/util/List;

    if-nez v1, :cond_12

    iput-object p1, p0, Lh/h0/i/i;->e:Ljava/util/List;

    invoke-virtual {p0}, Lh/h0/i/i;->g()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_25

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lh/h0/i/i;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lh/h0/i/i;->e:Ljava/util/List;

    :goto_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_30

    if-nez v0, :cond_2f

    iget-object p1, p0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget v0, p0, Lh/h0/i/i;->c:I

    invoke-virtual {p1, v0}, Lh/h0/i/g;->c(I)Lh/h0/i/i;

    :cond_2f
    return-void

    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method b()V
    .registers 3

    iget-object v0, p0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    iget-boolean v1, v0, Lh/h0/i/i$a;->c:Z

    if-nez v1, :cond_1d

    iget-boolean v0, v0, Lh/h0/i/i$a;->d:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lh/h0/i/i;->k:Lh/h0/i/b;

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v1, Lh/h0/i/n;

    invoke-direct {v1, v0}, Lh/h0/i/n;-><init>(Lh/h0/i/b;)V

    throw v1

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lh/h0/i/b;)V
    .registers 4

    invoke-direct {p0, p1}, Lh/h0/i/i;->d(Lh/h0/i/b;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget v1, p0, Lh/h0/i/i;->c:I

    invoke-virtual {v0, v1, p1}, Lh/h0/i/g;->c(ILh/h0/i/b;)V

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lh/h0/i/i;->c:I

    return v0
.end method

.method declared-synchronized c(Lh/h0/i/b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/i/i;->k:Lh/h0/i/b;

    if-nez v0, :cond_a

    iput-object p1, p0, Lh/h0/i/i;->k:Lh/h0/i/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Li/r;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/h0/i/i;->f:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lh/h0/i/i;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public e()Li/s;
    .registers 2

    iget-object v0, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    return-object v0
.end method

.method public f()Z
    .registers 5

    iget v0, p0, Lh/h0/i/i;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v3, p0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget-boolean v3, v3, Lh/h0/i/g;->b:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public declared-synchronized g()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/i/i;->k:Lh/h0/i/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    iget-boolean v0, v0, Lh/h0/i/i$b;->f:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    iget-boolean v0, v0, Lh/h0/i/i$b;->e:Z

    if-eqz v0, :cond_26

    :cond_14
    iget-object v0, p0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    iget-boolean v0, v0, Lh/h0/i/i$a;->d:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    iget-boolean v0, v0, Lh/h0/i/i$a;->c:Z

    if-eqz v0, :cond_26

    :cond_20
    iget-boolean v0, p0, Lh/h0/i/i;->f:Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    if-eqz v0, :cond_26

    monitor-exit p0

    return v1

    :cond_26
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Li/t;
    .registers 2

    iget-object v0, p0, Lh/h0/i/i;->i:Lh/h0/i/i$c;

    return-object v0
.end method

.method i()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/h0/i/i;->g:Lh/h0/i/i$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lh/h0/i/i$b;->f:Z

    invoke-virtual {p0}, Lh/h0/i/i;->g()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    if-nez v0, :cond_17

    iget-object v0, p0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget v1, p0, Lh/h0/i/i;->c:I

    invoke-virtual {v0, v1}, Lh/h0/i/g;->c(I)Lh/h0/i/i;

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized j()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lh/h0/i/i;->f()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lh/h0/i/i;->i:Lh/h0/i/i$c;

    invoke-virtual {v0}, Li/a;->g()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3d

    :goto_c
    :try_start_c
    iget-object v0, p0, Lh/h0/i/i;->e:Ljava/util/List;

    if-nez v0, :cond_18

    iget-object v0, p0, Lh/h0/i/i;->k:Lh/h0/i/b;

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lh/h0/i/i;->k()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_2e

    goto :goto_c

    :cond_18
    :try_start_18
    iget-object v0, p0, Lh/h0/i/i;->i:Lh/h0/i/i$c;

    invoke-virtual {v0}, Lh/h0/i/i$c;->k()V

    iget-object v0, p0, Lh/h0/i/i;->e:Ljava/util/List;

    if-eqz v0, :cond_26

    const/4 v1, 0x0

    iput-object v1, p0, Lh/h0/i/i;->e:Ljava/util/List;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_3d

    monitor-exit p0

    return-object v0

    :cond_26
    :try_start_26
    new-instance v0, Lh/h0/i/n;

    iget-object v1, p0, Lh/h0/i/i;->k:Lh/h0/i/b;

    invoke-direct {v0, v1}, Lh/h0/i/n;-><init>(Lh/h0/i/b;)V

    throw v0

    :catchall_2e
    move-exception v0

    iget-object v1, p0, Lh/h0/i/i;->i:Lh/h0/i/i$c;

    invoke-virtual {v1}, Lh/h0/i/i$c;->k()V

    throw v0

    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    monitor-exit p0

    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method

.method k()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public l()Li/t;
    .registers 2

    iget-object v0, p0, Lh/h0/i/i;->j:Lh/h0/i/i$c;

    return-object v0
.end method

###### Class h.h0.i.i.a (h.h0.i.i$a)
.class final Lh/h0/i/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final b:Li/c;

.field c:Z

.field d:Z

.field final synthetic e:Lh/h0/i/i;


# direct methods
.method constructor <init>(Lh/h0/i/i;)V
    .registers 2

    iput-object p1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Li/c;

    invoke-direct {p1}, Li/c;-><init>()V

    iput-object p1, p0, Lh/h0/i/i$a;->b:Li/c;

    return-void
.end method

.method private a(Z)V
    .registers 13

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v1, v1, Lh/h0/i/i;->j:Lh/h0/i/i$c;

    invoke-virtual {v1}, Li/a;->g()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_89

    :goto_a
    :try_start_a
    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-wide v1, v1, Lh/h0/i/i;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_28

    iget-boolean v1, p0, Lh/h0/i/i$a;->d:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Lh/h0/i/i$a;->c:Z

    if-nez v1, :cond_28

    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v1, v1, Lh/h0/i/i;->k:Lh/h0/i/b;

    if-nez v1, :cond_28

    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    invoke-virtual {v1}, Lh/h0/i/i;->k()V
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_80

    goto :goto_a

    :cond_28
    :try_start_28
    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v1, v1, Lh/h0/i/i;->j:Lh/h0/i/i$c;

    invoke-virtual {v1}, Lh/h0/i/i$c;->k()V

    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    invoke-virtual {v1}, Lh/h0/i/i;->b()V

    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-wide v1, v1, Lh/h0/i/i;->b:J

    iget-object v3, p0, Lh/h0/i/i$a;->b:Li/c;

    invoke-virtual {v3}, Li/c;->s()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-wide v2, v1, Lh/h0/i/i;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lh/h0/i/i;->b:J

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_89

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->j:Lh/h0/i/i$c;

    invoke-virtual {v0}, Li/a;->g()V

    :try_start_51
    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v5, v0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget v6, v0, Lh/h0/i/i;->c:I

    if-eqz p1, :cond_68

    iget-object p1, p0, Lh/h0/i/i$a;->b:Li/c;

    invoke-virtual {p1}, Li/c;->s()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_68

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_6a

    :cond_68
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_6a
    iget-object v8, p0, Lh/h0/i/i$a;->b:Li/c;

    invoke-virtual/range {v5 .. v10}, Lh/h0/i/g;->a(IZLi/c;J)V
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_77

    iget-object p1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object p1, p1, Lh/h0/i/i;->j:Lh/h0/i/i$c;

    invoke-virtual {p1}, Lh/h0/i/i$c;->k()V

    return-void

    :catchall_77
    move-exception p1

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->j:Lh/h0/i/i$c;

    invoke-virtual {v0}, Lh/h0/i/i$c;->k()V

    throw p1

    :catchall_80
    move-exception p1

    :try_start_81
    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v1, v1, Lh/h0/i/i;->j:Lh/h0/i/i$c;

    invoke-virtual {v1}, Lh/h0/i/i$c;->k()V

    throw p1

    :catchall_89
    move-exception p1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_89

    goto :goto_8d

    :goto_8c
    throw p1

    :goto_8d
    goto :goto_8c
.end method


# virtual methods
.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->j:Lh/h0/i/i$c;

    return-object v0
.end method

.method public b(Li/c;J)V
    .registers 6

    iget-object v0, p0, Lh/h0/i/i$a;->b:Li/c;

    invoke-virtual {v0, p1, p2, p3}, Li/c;->b(Li/c;J)V

    :goto_5
    iget-object p1, p0, Lh/h0/i/i$a;->b:Li/c;

    invoke-virtual {p1}, Li/c;->s()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_16

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lh/h0/i/i$a;->a(Z)V

    goto :goto_5

    :cond_16
    return-void
.end method

.method public close()V
    .registers 9

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lh/h0/i/i$a;->c:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_50

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->h:Lh/h0/i/i$a;

    iget-boolean v0, v0, Lh/h0/i/i$a;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    iget-object v0, p0, Lh/h0/i/i$a;->b:Li/c;

    invoke-virtual {v0}, Li/c;->s()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2d

    :goto_1f
    iget-object v0, p0, Lh/h0/i/i$a;->b:Li/c;

    invoke-virtual {v0}, Li/c;->s()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_3a

    invoke-direct {p0, v1}, Lh/h0/i/i$a;->a(Z)V

    goto :goto_1f

    :cond_2d
    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v2, v0, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget v3, v0, Lh/h0/i/i;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lh/h0/i/g;->a(IZLi/c;J)V

    :cond_3a
    iget-object v2, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    monitor-enter v2

    :try_start_3d
    iput-boolean v1, p0, Lh/h0/i/i$a;->c:Z

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4d

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->d:Lh/h0/i/g;

    invoke-virtual {v0}, Lh/h0/i/g;->flush()V

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    invoke-virtual {v0}, Lh/h0/i/i;->a()V

    return-void

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    goto :goto_54

    :goto_53
    throw v1

    :goto_54
    goto :goto_53
.end method

.method public flush()V
    .registers 6

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    invoke-virtual {v1}, Lh/h0/i/i;->b()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    :goto_9
    iget-object v0, p0, Lh/h0/i/i$a;->b:Li/c;

    invoke-virtual {v0}, Li/c;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh/h0/i/i$a;->a(Z)V

    iget-object v0, p0, Lh/h0/i/i$a;->e:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->d:Lh/h0/i/g;

    invoke-virtual {v0}, Lh/h0/i/g;->flush()V

    goto :goto_9

    :cond_21
    return-void

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    goto :goto_26

    :goto_25
    throw v1

    :goto_26
    goto :goto_25
.end method

###### Class h.h0.i.i.b (h.h0.i.i$b)
.class final Lh/h0/i/i$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final b:Li/c;

.field private final c:Li/c;

.field private final d:J

.field e:Z

.field f:Z

.field final synthetic g:Lh/h0/i/i;


# direct methods
.method constructor <init>(Lh/h0/i/i;J)V
    .registers 4

    iput-object p1, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Li/c;

    invoke-direct {p1}, Li/c;-><init>()V

    iput-object p1, p0, Lh/h0/i/i$b;->b:Li/c;

    new-instance p1, Li/c;

    invoke-direct {p1}, Li/c;-><init>()V

    iput-object p1, p0, Lh/h0/i/i$b;->c:Li/c;

    iput-wide p2, p0, Lh/h0/i/i$b;->d:J

    return-void
.end method

.method private i()V
    .registers 3

    iget-boolean v0, p0, Lh/h0/i/i$b;->e:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->k:Lh/h0/i/b;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Lh/h0/i/n;

    invoke-direct {v1, v0}, Lh/h0/i/n;-><init>(Lh/h0/i/b;)V

    throw v1

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .registers 6

    iget-object v0, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->i:Lh/h0/i/i$c;

    invoke-virtual {v0}, Li/a;->g()V

    :goto_7
    :try_start_7
    iget-object v0, p0, Lh/h0/i/i$b;->c:Li/c;

    invoke-virtual {v0}, Li/c;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_27

    iget-boolean v0, p0, Lh/h0/i/i$b;->f:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lh/h0/i/i$b;->e:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->k:Lh/h0/i/b;

    if-nez v0, :cond_27

    iget-object v0, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    invoke-virtual {v0}, Lh/h0/i/i;->k()V
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_2f

    goto :goto_7

    :cond_27
    iget-object v0, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->i:Lh/h0/i/i$c;

    invoke-virtual {v0}, Lh/h0/i/i$c;->k()V

    return-void

    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v1, v1, Lh/h0/i/i;->i:Lh/h0/i/i$c;

    invoke-virtual {v1}, Lh/h0/i/i$c;->k()V

    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9e

    iget-object v2, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    monitor-enter v2

    :try_start_9
    invoke-direct {p0}, Lh/h0/i/i$b;->j()V

    invoke-direct {p0}, Lh/h0/i/i$b;->i()V

    iget-object v3, p0, Lh/h0/i/i$b;->c:Li/c;

    invoke-virtual {v3}, Li/c;->s()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_1d

    const-wide/16 p1, -0x1

    monitor-exit v2

    return-wide p1

    :cond_1d
    iget-object v3, p0, Lh/h0/i/i$b;->c:Li/c;

    iget-object v4, p0, Lh/h0/i/i$b;->c:Li/c;

    invoke-virtual {v4}, Li/c;->s()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Li/c;->a(Li/c;J)J

    move-result-wide p1

    iget-object p3, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-wide v3, p3, Lh/h0/i/i;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lh/h0/i/i;->a:J

    iget-object p3, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-wide v3, p3, Lh/h0/i/i;->a:J

    iget-object p3, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object p3, p3, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget-object p3, p3, Lh/h0/i/g;->o:Lh/h0/i/m;

    invoke-virtual {p3}, Lh/h0/i/m;->c()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_5c

    iget-object p3, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object p3, p3, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget-object v3, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget v3, v3, Lh/h0/i/i;->c:I

    iget-object v4, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-wide v4, v4, Lh/h0/i/i;->a:J

    invoke-virtual {p3, v3, v4, v5}, Lh/h0/i/g;->a(IJ)V

    iget-object p3, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iput-wide v0, p3, Lh/h0/i/i;->a:J

    :cond_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_9 .. :try_end_5d} :catchall_9b

    iget-object p3, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object p3, p3, Lh/h0/i/i;->d:Lh/h0/i/g;

    monitor-enter p3

    :try_start_62
    iget-object v2, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v2, v2, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget-wide v3, v2, Lh/h0/i/g;->m:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lh/h0/i/g;->m:J

    iget-object v2, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v2, v2, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget-wide v2, v2, Lh/h0/i/g;->m:J

    iget-object v4, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v4, v4, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget-object v4, v4, Lh/h0/i/g;->o:Lh/h0/i/m;

    invoke-virtual {v4}, Lh/h0/i/m;->c()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_96

    iget-object v2, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v2, v2, Lh/h0/i/i;->d:Lh/h0/i/g;

    const/4 v3, 0x0

    iget-object v4, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v4, v4, Lh/h0/i/i;->d:Lh/h0/i/g;

    iget-wide v4, v4, Lh/h0/i/g;->m:J

    invoke-virtual {v2, v3, v4, v5}, Lh/h0/i/g;->a(IJ)V

    iget-object v2, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v2, v2, Lh/h0/i/i;->d:Lh/h0/i/g;

    iput-wide v0, v2, Lh/h0/i/g;->m:J

    :cond_96
    monitor-exit p3

    return-wide p1

    :catchall_98
    move-exception p1

    monitor-exit p3
    :try_end_9a
    .catchall {:try_start_62 .. :try_end_9a} :catchall_98

    throw p1

    :catchall_9b
    move-exception p1

    :try_start_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p1

    :cond_9e
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

.method a(Li/e;J)V
    .registers 15

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_69

    iget-object v2, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    monitor-enter v2

    :try_start_9
    iget-boolean v3, p0, Lh/h0/i/i$b;->f:Z

    iget-object v4, p0, Lh/h0/i/i$b;->c:Li/c;

    invoke-virtual {v4}, Li/c;->s()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lh/h0/i/i$b;->d:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_66

    if-eqz v4, :cond_2b

    invoke-interface {p1, p2, p3}, Li/e;->skip(J)V

    iget-object p1, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    sget-object p2, Lh/h0/i/b;->f:Lh/h0/i/b;

    invoke-virtual {p1, p2}, Lh/h0/i/i;->b(Lh/h0/i/b;)V

    return-void

    :cond_2b
    if-eqz v3, :cond_31

    invoke-interface {p1, p2, p3}, Li/e;->skip(J)V

    return-void

    :cond_31
    iget-object v2, p0, Lh/h0/i/i$b;->b:Li/c;

    invoke-interface {p1, v2, p2, p3}, Li/s;->a(Li/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_60

    sub-long/2addr p2, v2

    iget-object v2, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    monitor-enter v2

    :try_start_41
    iget-object v3, p0, Lh/h0/i/i$b;->c:Li/c;

    invoke-virtual {v3}, Li/c;->s()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v8, 0x0

    :goto_4d
    iget-object v0, p0, Lh/h0/i/i$b;->c:Li/c;

    iget-object v1, p0, Lh/h0/i/i$b;->b:Li/c;

    invoke-virtual {v0, v1}, Li/c;->a(Li/s;)J

    if-eqz v8, :cond_5b

    iget-object v0, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_5b
    monitor-exit v2

    goto :goto_0

    :catchall_5d
    move-exception p1

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_5d

    throw p1

    :cond_60
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_66
    move-exception p1

    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p1

    :cond_69
    return-void
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    iget-object v0, v0, Lh/h0/i/i;->i:Lh/h0/i/i$c;

    return-object v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lh/h0/i/i$b;->e:Z

    iget-object v1, p0, Lh/h0/i/i$b;->c:Li/c;

    invoke-virtual {v1}, Li/c;->l()V

    iget-object v1, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    iget-object v0, p0, Lh/h0/i/i$b;->g:Lh/h0/i/i;

    invoke-virtual {v0}, Lh/h0/i/i;->a()V

    return-void

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

###### Class h.h0.i.i.c (h.h0.i.i$c)
.class Lh/h0/i/i$c;
.super Li/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic k:Lh/h0/i/i;


# direct methods
.method constructor <init>(Lh/h0/i/i;)V
    .registers 2

    iput-object p1, p0, Lh/h0/i/i$c;->k:Lh/h0/i/i;

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

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected i()V
    .registers 3

    iget-object v0, p0, Lh/h0/i/i$c;->k:Lh/h0/i/i;

    sget-object v1, Lh/h0/i/b;->h:Lh/h0/i/b;

    invoke-virtual {v0, v1}, Lh/h0/i/i;->b(Lh/h0/i/b;)V

    return-void
.end method

.method public k()V
    .registers 2

    invoke-virtual {p0}, Li/a;->h()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh/h0/i/i$c;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
