###### Class e.a.v.a (e.a.v.a)
.class public final Le/a/v/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/v/b;
.implements Le/a/y/a/a;


# instance fields
.field b:Le/a/y/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/h/c<",
            "Le/a/v/b;",
            ">;"
        }
    .end annotation
.end field

.field volatile c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Le/a/y/h/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/y/h/c<",
            "Le/a/v/b;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1}, Le/a/y/h/c;->a()[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_2b

    aget-object v4, p1, v0

    instance-of v5, v4, Le/a/v/b;

    if-eqz v5, :cond_28

    :try_start_14
    check-cast v4, Le/a/v/b;

    invoke-interface {v4}, Le/a/v/b;->b()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_28

    :catchall_1a
    move-exception v4

    invoke-static {v4}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    if-nez v3, :cond_25

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2b
    if-eqz v3, :cond_45

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3f

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Le/a/y/h/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3f
    new-instance p1, Le/a/w/a;

    invoke-direct {p1, v3}, Le/a/w/a;-><init>(Ljava/lang/Iterable;)V

    throw p1

    :cond_45
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Le/a/v/a;->c:Z

    return v0
.end method

.method public a(Le/a/v/b;)Z
    .registers 3

    invoke-virtual {p0, p1}, Le/a/v/a;->c(Le/a/v/b;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Le/a/v/b;->b()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .registers 3

    iget-boolean v0, p0, Le/a/v/a;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Le/a/v/a;->c:Z

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/v/a;->c:Z

    iget-object v0, p0, Le/a/v/a;->b:Le/a/y/h/c;

    const/4 v1, 0x0

    iput-object v1, p0, Le/a/v/a;->b:Le/a/y/h/c;

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    invoke-virtual {p0, v0}, Le/a/v/a;->a(Le/a/y/h/c;)V

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public b(Le/a/v/b;)Z
    .registers 3

    const-string v0, "d is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Le/a/v/a;->c:Z

    if-nez v0, :cond_24

    monitor-enter p0

    :try_start_a
    iget-boolean v0, p0, Le/a/v/a;->c:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Le/a/v/a;->b:Le/a/y/h/c;

    if-nez v0, :cond_19

    new-instance v0, Le/a/y/h/c;

    invoke-direct {v0}, Le/a/y/h/c;-><init>()V

    iput-object v0, p0, Le/a/v/a;->b:Le/a/y/h/c;

    :cond_19
    invoke-virtual {v0, p1}, Le/a/y/h/c;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1f
    monitor-exit p0

    goto :goto_24

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Le/a/v/b;->b()V

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Le/a/v/a;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Le/a/v/a;->c:Z

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    iget-object v0, p0, Le/a/v/a;->b:Le/a/y/h/c;

    const/4 v1, 0x0

    iput-object v1, p0, Le/a/v/a;->b:Le/a/y/h/c;

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    invoke-virtual {p0, v0}, Le/a/v/a;->a(Le/a/y/h/c;)V

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public c(Le/a/v/b;)Z
    .registers 4

    const-string v0, "Disposable item is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Le/a/v/a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-boolean v0, p0, Le/a/v/a;->c:Z

    if-eqz v0, :cond_12

    monitor-exit p0

    return v1

    :cond_12
    iget-object v0, p0, Le/a/v/a;->b:Le/a/y/h/c;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Le/a/y/h/c;->b(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_20

    :cond_1d
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_20
    :goto_20
    monitor-exit p0

    return v1

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw p1
.end method
