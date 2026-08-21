###### Class com.bumptech.glide.load.n.u (com.bumptech.glide.load.n.u)
.class final Lcom/bumptech/glide/load/n/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/v;
.implements Lc/a/a/t/l/a$f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/v<",
        "TZ;>;",
        "Lc/a/a/t/l/a$f;"
    }
.end annotation


# static fields
.field private static final f:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Lcom/bumptech/glide/load/n/u<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lc/a/a/t/l/c;

.field private c:Lcom/bumptech/glide/load/n/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/n/u$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/u$a;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lc/a/a/t/l/a;->a(ILc/a/a/t/l/a$d;)Lb/h/n/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/n/u;->f:Lb/h/n/d;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lc/a/a/t/l/c;->b()Lc/a/a/t/l/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/u;->b:Lc/a/a/t/l/c;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/n/v;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/u;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/u;->d:Z

    iput-object p1, p0, Lcom/bumptech/glide/load/n/u;->c:Lcom/bumptech/glide/load/n/v;

    return-void
.end method

.method static b(Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/n/u<",
            "TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/n/u;->f:Lb/h/n/d;

    invoke-interface {v0}, Lb/h/n/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/n/u;

    invoke-static {v0}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/n/u;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/n/u;->a(Lcom/bumptech/glide/load/n/v;)V

    return-object v0
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/u;->c:Lcom/bumptech/glide/load/n/v;

    sget-object v0, Lcom/bumptech/glide/load/n/u;->f:Lb/h/n/d;

    invoke-interface {v0, p0}, Lb/h/n/d;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/u;->b:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/u;->e:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/u;->d:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/load/n/u;->c:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->a()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/u;->f()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/u;->c:Lcom/bumptech/glide/load/n/v;

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

    iget-object v0, p0, Lcom/bumptech/glide/load/n/u;->c:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public d()Lc/a/a/t/l/c;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/u;->b:Lc/a/a/t/l/c;

    return-object v0
.end method

.method declared-synchronized e()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/n/u;->b:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/u;->d:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/u;->d:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/u;->e:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/u;->a()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1e

    :cond_14
    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/u;->c:Lcom/bumptech/glide/load/n/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.u.a (com.bumptech.glide.load.n.u$a)
.class Lcom/bumptech/glide/load/n/u$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/t/l/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/t/l/a$d<",
        "Lcom/bumptech/glide/load/n/u<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/n/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/n/u<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/n/u;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/u;-><init>()V

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/u$a;->a()Lcom/bumptech/glide/load/n/u;

    move-result-object v0

    return-object v0
.end method
