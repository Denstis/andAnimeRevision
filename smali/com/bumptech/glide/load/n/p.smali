###### Class com.bumptech.glide.load.n.p (com.bumptech.glide.load.n.p)
.class Lcom/bumptech/glide/load/n/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/v<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Lcom/bumptech/glide/load/n/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/load/n/p$a;

.field private f:Lcom/bumptech/glide/load/g;

.field private g:I

.field private h:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/v;ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/n/v;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/p;->d:Lcom/bumptech/glide/load/n/v;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/n/p;->b:Z

    iput-boolean p3, p0, Lcom/bumptech/glide/load/n/p;->c:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/n/p;->g:I

    if-gtz v0, :cond_1f

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/p;->h:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/p;->h:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/p;->c:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/load/n/p;->d:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->a()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_27

    :cond_15
    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p$a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/load/n/p;->f:Lcom/bumptech/glide/load/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/p;->e:Lcom/bumptech/glide/load/n/p$a;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/p;->d:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->b()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/p;->d:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/p;->h:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/bumptech/glide/load/n/p;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/n/p;->g:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()Lcom/bumptech/glide/load/n/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/p;->d:Lcom/bumptech/glide/load/n/v;

    return-object v0
.end method

.method f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/p;->b:Z

    return v0
.end method

.method g()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/n/p;->e:Lcom/bumptech/glide/load/n/p$a;

    monitor-enter v0

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_25

    :try_start_4
    iget v1, p0, Lcom/bumptech/glide/load/n/p;->g:I

    if-lez v1, :cond_1a

    iget v1, p0, Lcom/bumptech/glide/load/n/p;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/load/n/p;->g:I

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/bumptech/glide/load/n/p;->e:Lcom/bumptech/glide/load/n/p$a;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/p;->f:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, v2, p0}, Lcom/bumptech/glide/load/n/p$a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V

    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_22

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_25

    return-void

    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    :try_start_24
    throw v1

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/p;->d:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineResource{isCacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/load/n/p;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/p;->e:Lcom/bumptech/glide/load/n/p$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/p;->f:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/n/p;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/load/n/p;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/p;->d:Lcom/bumptech/glide/load/n/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-object v0

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.bumptech.glide.load.n.p.a (com.bumptech.glide.load.n.p$a)
.class interface abstract Lcom/bumptech/glide/load/n/p$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/p;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/n/p<",
            "*>;)V"
        }
    .end annotation
.end method
