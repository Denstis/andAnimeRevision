###### Class h.z (h.z)
.class final Lh/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/z$a;
    }
.end annotation


# instance fields
.field final b:Lh/x;

.field final c:Lh/h0/g/j;

.field private d:Lh/p;

.field final e:Lh/a0;

.field final f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Lh/x;Lh/a0;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/z;->b:Lh/x;

    iput-object p2, p0, Lh/z;->e:Lh/a0;

    iput-boolean p3, p0, Lh/z;->f:Z

    new-instance p2, Lh/h0/g/j;

    invoke-direct {p2, p1, p3}, Lh/h0/g/j;-><init>(Lh/x;Z)V

    iput-object p2, p0, Lh/z;->c:Lh/h0/g/j;

    return-void
.end method

.method static synthetic a(Lh/z;)Lh/p;
    .registers 1

    iget-object p0, p0, Lh/z;->d:Lh/p;

    return-object p0
.end method

.method static a(Lh/x;Lh/a0;Z)Lh/z;
    .registers 4

    new-instance v0, Lh/z;

    invoke-direct {v0, p0, p1, p2}, Lh/z;-><init>(Lh/x;Lh/a0;Z)V

    invoke-virtual {p0}, Lh/x;->i()Lh/p$c;

    move-result-object p0

    invoke-interface {p0, v0}, Lh/p$c;->a(Lh/e;)Lh/p;

    move-result-object p0

    iput-object p0, v0, Lh/z;->d:Lh/p;

    return-object v0
.end method

.method private d()V
    .registers 3

    invoke-static {}, Lh/h0/j/f;->c()Lh/h0/j/f;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lh/h0/j/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lh/z;->c:Lh/h0/g/j;

    invoke-virtual {v1, v0}, Lh/h0/g/j;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a()Lh/c0;
    .registers 14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v0}, Lh/x;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lh/z;->c:Lh/h0/g/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh/h0/g/a;

    iget-object v2, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v2}, Lh/x;->f()Lh/m;

    move-result-object v2

    invoke-direct {v0, v2}, Lh/h0/g/a;-><init>(Lh/m;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh/h0/e/a;

    iget-object v2, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v2}, Lh/x;->p()Lh/h0/e/d;

    move-result-object v2

    invoke-direct {v0, v2}, Lh/h0/e/a;-><init>(Lh/h0/e/d;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh/h0/f/a;

    iget-object v2, p0, Lh/z;->b:Lh/x;

    invoke-direct {v0, v2}, Lh/h0/f/a;-><init>(Lh/x;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lh/z;->f:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v0}, Lh/x;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_46
    new-instance v0, Lh/h0/g/b;

    iget-boolean v2, p0, Lh/z;->f:Z

    invoke-direct {v0, v2}, Lh/h0/g/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lh/h0/g/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lh/z;->e:Lh/a0;

    iget-object v8, p0, Lh/z;->d:Lh/p;

    iget-object v0, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v0}, Lh/x;->c()I

    move-result v9

    iget-object v0, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v0}, Lh/x;->w()I

    move-result v10

    iget-object v0, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v0}, Lh/x;->A()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lh/h0/g/g;-><init>(Ljava/util/List;Lh/h0/f/g;Lh/h0/g/c;Lh/h0/f/c;ILh/a0;Lh/e;Lh/p;III)V

    iget-object v0, p0, Lh/z;->e:Lh/a0;

    invoke-interface {v12, v0}, Lh/u$a;->a(Lh/a0;)Lh/c0;

    move-result-object v0

    return-object v0
.end method

.method public a(Lh/f;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/z;->g:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/z;->g:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_28

    invoke-direct {p0}, Lh/z;->d()V

    iget-object v0, p0, Lh/z;->d:Lh/p;

    invoke-virtual {v0, p0}, Lh/p;->b(Lh/e;)V

    iget-object v0, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v0}, Lh/x;->g()Lh/n;

    move-result-object v0

    new-instance v1, Lh/z$a;

    invoke-direct {v1, p0, p1}, Lh/z$a;-><init>(Lh/z;Lh/f;)V

    invoke-virtual {v0, v1}, Lh/n;->a(Lh/z$a;)V

    return-void

    :cond_20
    :try_start_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/z;->e:Lh/a0;

    invoke-virtual {v0}, Lh/a0;->g()Lh/t;

    move-result-object v0

    invoke-virtual {v0}, Lh/t;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lh/z;->j()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lh/z;->f:Z

    if-eqz v1, :cond_1a

    const-string v1, "web socket"

    goto :goto_1c

    :cond_1a
    const-string v1, "call"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lh/z;->c:Lh/h0/g/j;

    invoke-virtual {v0}, Lh/h0/g/j;->a()V

    return-void
.end method

.method public clone()Lh/z;
    .registers 4

    iget-object v0, p0, Lh/z;->b:Lh/x;

    iget-object v1, p0, Lh/z;->e:Lh/a0;

    iget-boolean v2, p0, Lh/z;->f:Z

    invoke-static {v0, v1, v2}, Lh/z;->a(Lh/x;Lh/a0;Z)Lh/z;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lh/z;->clone()Lh/z;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lh/z;->c:Lh/h0/g/j;

    invoke-virtual {v0}, Lh/h0/g/j;->b()Z

    move-result v0

    return v0
.end method

.method public k()Lh/c0;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lh/z;->g:Z

    if-nez v0, :cond_45

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/z;->g:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4d

    invoke-direct {p0}, Lh/z;->d()V

    iget-object v0, p0, Lh/z;->d:Lh/p;

    invoke-virtual {v0, p0}, Lh/p;->b(Lh/e;)V

    :try_start_11
    iget-object v0, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v0}, Lh/x;->g()Lh/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh/n;->a(Lh/z;)V

    invoke-virtual {p0}, Lh/z;->a()Lh/c0;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1e} :catch_34
    .catchall {:try_start_11 .. :try_end_1e} :catchall_32

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v1}, Lh/x;->g()Lh/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lh/n;->b(Lh/z;)V

    return-object v0

    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_34
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    goto :goto_3b

    :catch_34
    move-exception v0

    :try_start_35
    iget-object v1, p0, Lh/z;->d:Lh/p;

    invoke-virtual {v1, p0, v0}, Lh/p;->a(Lh/e;Ljava/io/IOException;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32

    :goto_3b
    iget-object v1, p0, Lh/z;->b:Lh/x;

    invoke-virtual {v1}, Lh/x;->g()Lh/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lh/n;->b(Lh/z;)V

    throw v0

    :cond_45
    :try_start_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    throw v0
.end method

###### Class h.z.a (h.z$a)
.class final Lh/z$a;
.super Lh/h0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final c:Lh/f;

.field final synthetic d:Lh/z;


# direct methods
.method constructor <init>(Lh/z;Lh/f;)V
    .registers 5

    iput-object p1, p0, Lh/z$a;->d:Lh/z;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lh/z;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lh/h0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lh/z$a;->c:Lh/f;

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lh/z$a;->d:Lh/z;

    invoke-virtual {v2}, Lh/z;->a()Lh/c0;

    move-result-object v2

    iget-object v3, p0, Lh/z$a;->d:Lh/z;

    iget-object v3, v3, Lh/z;->c:Lh/h0/g/j;

    invoke-virtual {v3}, Lh/h0/g/j;->b()Z

    move-result v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_38
    .catchall {:try_start_2 .. :try_end_10} :catchall_36

    if-eqz v1, :cond_21

    :try_start_12
    iget-object v1, p0, Lh/z$a;->c:Lh/f;

    iget-object v2, p0, Lh/z$a;->d:Lh/z;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lh/f;->a(Lh/e;Ljava/io/IOException;)V

    goto :goto_28

    :cond_21
    iget-object v1, p0, Lh/z$a;->c:Lh/f;

    iget-object v3, p0, Lh/z$a;->d:Lh/z;

    invoke-interface {v1, v3, v2}, Lh/f;->a(Lh/e;Lh/c0;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_28} :catch_34
    .catchall {:try_start_12 .. :try_end_28} :catchall_36

    :goto_28
    iget-object v0, p0, Lh/z$a;->d:Lh/z;

    iget-object v0, v0, Lh/z;->b:Lh/x;

    invoke-virtual {v0}, Lh/x;->g()Lh/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh/n;->b(Lh/z$a;)V

    goto :goto_70

    :catch_34
    move-exception v1

    goto :goto_3b

    :catchall_36
    move-exception v0

    goto :goto_71

    :catch_38
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_3b
    if-eqz v0, :cond_5d

    :try_start_3d
    invoke-static {}, Lh/h0/j/f;->c()Lh/h0/j/f;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lh/z$a;->d:Lh/z;

    invoke-virtual {v4}, Lh/z;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lh/h0/j/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_5d
    iget-object v0, p0, Lh/z$a;->d:Lh/z;

    invoke-static {v0}, Lh/z;->a(Lh/z;)Lh/p;

    move-result-object v0

    iget-object v2, p0, Lh/z$a;->d:Lh/z;

    invoke-virtual {v0, v2, v1}, Lh/p;->a(Lh/e;Ljava/io/IOException;)V

    iget-object v0, p0, Lh/z$a;->c:Lh/f;

    iget-object v2, p0, Lh/z$a;->d:Lh/z;

    invoke-interface {v0, v2, v1}, Lh/f;->a(Lh/e;Ljava/io/IOException;)V
    :try_end_6f
    .catchall {:try_start_3d .. :try_end_6f} :catchall_36

    goto :goto_28

    :goto_70
    return-void

    :goto_71
    iget-object v1, p0, Lh/z$a;->d:Lh/z;

    iget-object v1, v1, Lh/z;->b:Lh/x;

    invoke-virtual {v1}, Lh/x;->g()Lh/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lh/n;->b(Lh/z$a;)V

    goto :goto_7e

    :goto_7d
    throw v0

    :goto_7e
    goto :goto_7d
.end method

.method c()Lh/z;
    .registers 2

    iget-object v0, p0, Lh/z$a;->d:Lh/z;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/z$a;->d:Lh/z;

    iget-object v0, v0, Lh/z;->e:Lh/a0;

    invoke-virtual {v0}, Lh/a0;->g()Lh/t;

    move-result-object v0

    invoke-virtual {v0}, Lh/t;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
