###### Class com.bumptech.glide.load.n.h (com.bumptech.glide.load.n.h)
.class Lcom/bumptech/glide/load/n/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/f$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lc/a/a/t/l/a$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/h$h;,
        Lcom/bumptech/glide/load/n/h$g;,
        Lcom/bumptech/glide/load/n/h$e;,
        Lcom/bumptech/glide/load/n/h$b;,
        Lcom/bumptech/glide/load/n/h$d;,
        Lcom/bumptech/glide/load/n/h$f;,
        Lcom/bumptech/glide/load/n/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/f$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/n/h<",
        "*>;>;",
        "Lc/a/a/t/l/a$f;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Lcom/bumptech/glide/load/a;

.field private C:Lcom/bumptech/glide/load/m/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m/d<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile D:Lcom/bumptech/glide/load/n/f;

.field private volatile E:Z

.field private volatile F:Z

.field private final b:Lcom/bumptech/glide/load/n/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lc/a/a/t/l/c;

.field private final e:Lcom/bumptech/glide/load/n/h$e;

.field private final f:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Lcom/bumptech/glide/load/n/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/bumptech/glide/load/n/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/h$d<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/n/h$f;

.field private i:Lc/a/a/e;

.field private j:Lcom/bumptech/glide/load/g;

.field private k:Lc/a/a/h;

.field private l:Lcom/bumptech/glide/load/n/n;

.field private m:I

.field private n:I

.field private o:Lcom/bumptech/glide/load/n/j;

.field private p:Lcom/bumptech/glide/load/i;

.field private q:Lcom/bumptech/glide/load/n/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/h$b<",
            "TR;>;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Lcom/bumptech/glide/load/n/h$h;

.field private t:Lcom/bumptech/glide/load/n/h$g;

.field private u:J

.field private v:Z

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Thread;

.field private y:Lcom/bumptech/glide/load/g;

.field private z:Lcom/bumptech/glide/load/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/h$e;Lb/h/n/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/h$e;",
            "Lb/h/n/d<",
            "Lcom/bumptech/glide/load/n/h<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/n/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h;->c:Ljava/util/List;

    invoke-static {}, Lc/a/a/t/l/c;->b()Lc/a/a/t/l/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h;->d:Lc/a/a/t/l/c;

    new-instance v0, Lcom/bumptech/glide/load/n/h$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/h$d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h;->g:Lcom/bumptech/glide/load/n/h$d;

    new-instance v0, Lcom/bumptech/glide/load/n/h$f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/h$f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h;->h:Lcom/bumptech/glide/load/n/h$f;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/h;->e:Lcom/bumptech/glide/load/n/h$e;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/h;->f:Lb/h/n/d;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/i;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->p:Lcom/bumptech/glide/load/i;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_9

    return-object v0

    :cond_9
    sget-object v1, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    if-eq p1, v1, :cond_18

    iget-object p1, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/g;->o()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    :goto_19
    sget-object v1, Lcom/bumptech/glide/load/p/c/l;->h:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_2c

    :cond_2b
    return-object v0

    :cond_2c
    new-instance v0, Lcom/bumptech/glide/load/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/i;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->p:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/i;)V

    sget-object v1, Lcom/bumptech/glide/load/p/c/l;->h:Lcom/bumptech/glide/load/h;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/n/h$h;)Lcom/bumptech/glide/load/n/h$h;
    .registers 5

    sget-object v0, Lcom/bumptech/glide/load/n/h$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_43

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    const/4 v1, 0x4

    if-eq v0, v1, :cond_40

    const/4 v1, 0x5

    if-ne v0, v1, :cond_29

    iget-object p1, p0, Lcom/bumptech/glide/load/n/h;->o:Lcom/bumptech/glide/load/n/j;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/j;->b()Z

    move-result p1

    if-eqz p1, :cond_22

    sget-object p1, Lcom/bumptech/glide/load/n/h$h;->c:Lcom/bumptech/glide/load/n/h$h;

    goto :goto_28

    :cond_22
    sget-object p1, Lcom/bumptech/glide/load/n/h$h;->c:Lcom/bumptech/glide/load/n/h$h;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/n/h$h;)Lcom/bumptech/glide/load/n/h$h;

    move-result-object p1

    :goto_28
    return-object p1

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    sget-object p1, Lcom/bumptech/glide/load/n/h$h;->g:Lcom/bumptech/glide/load/n/h$h;

    return-object p1

    :cond_43
    iget-boolean p1, p0, Lcom/bumptech/glide/load/n/h;->v:Z

    if-eqz p1, :cond_4a

    sget-object p1, Lcom/bumptech/glide/load/n/h$h;->g:Lcom/bumptech/glide/load/n/h$h;

    goto :goto_4c

    :cond_4a
    sget-object p1, Lcom/bumptech/glide/load/n/h$h;->e:Lcom/bumptech/glide/load/n/h$h;

    :goto_4c
    return-object p1

    :cond_4d
    iget-object p1, p0, Lcom/bumptech/glide/load/n/h;->o:Lcom/bumptech/glide/load/n/j;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/j;->a()Z

    move-result p1

    if-eqz p1, :cond_58

    sget-object p1, Lcom/bumptech/glide/load/n/h$h;->d:Lcom/bumptech/glide/load/n/h$h;

    goto :goto_5e

    :cond_58
    sget-object p1, Lcom/bumptech/glide/load/n/h$h;->d:Lcom/bumptech/glide/load/n/h$h;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/n/h$h;)Lcom/bumptech/glide/load/n/h$h;

    move-result-object p1

    :goto_5e
    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/m/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/n/v;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/m/d<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;"
        }
    .end annotation

    if-nez p2, :cond_7

    const/4 p2, 0x0

    invoke-interface {p1}, Lcom/bumptech/glide/load/m/d;->b()V

    return-object p2

    :cond_7
    :try_start_7
    invoke-static {}, Lc/a/a/t/f;->a()J

    move-result-wide v0

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/n/h;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/n/v;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0, v1}, Lcom/bumptech/glide/load/n/h;->a(Ljava/lang/String;J)V
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_30

    :cond_2c
    invoke-interface {p1}, Lcom/bumptech/glide/load/m/d;->b()V

    return-object p2

    :catchall_30
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/m/d;->b()V

    throw p2
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/n/v;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/n/g;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/n/t;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/n/h;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/n/t;)Lcom/bumptech/glide/load/n/v;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/n/t;)Lcom/bumptech/glide/load/n/v;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/n/t<",
            "TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/i;

    move-result-object v2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->i:Lc/a/a/e;

    invoke-virtual {v0}, Lc/a/a/e;->f()Lc/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/i;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/m/e;

    move-result-object p1

    :try_start_e
    iget v3, p0, Lcom/bumptech/glide/load/n/h;->m:I

    iget v4, p0, Lcom/bumptech/glide/load/n/h;->n:I

    new-instance v5, Lcom/bumptech/glide/load/n/h$c;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/n/h$c;-><init>(Lcom/bumptech/glide/load/n/h;Lcom/bumptech/glide/load/a;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/n/t;->a(Lcom/bumptech/glide/load/m/e;Lcom/bumptech/glide/load/i;IILcom/bumptech/glide/load/n/i$a;)Lcom/bumptech/glide/load/n/v;

    move-result-object p2
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    invoke-interface {p1}, Lcom/bumptech/glide/load/m/e;->b()V

    return-object p2

    :catchall_21
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/m/e;->b()V

    throw p2
.end method

.method private a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->n()V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->q:Lcom/bumptech/glide/load/n/h$b;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/n/h$b;->a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/n/h;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lc/a/a/t/f;->a(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/load/n/h;->l:Lcom/bumptech/glide/load/n/n;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_32

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    :cond_32
    const-string p1, ""

    :goto_34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/n/r;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/n/r;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/r;->initialize()V

    :cond_a
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->g:Lcom/bumptech/glide/load/n/h$d;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/n/h$d;->b()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p1}, Lcom/bumptech/glide/load/n/u;->b(Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/u;

    move-result-object p1

    move-object v0, p1

    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V

    sget-object p1, Lcom/bumptech/glide/load/n/h$h;->f:Lcom/bumptech/glide/load/n/h$h;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    :try_start_1f
    iget-object p1, p0, Lcom/bumptech/glide/load/n/h;->g:Lcom/bumptech/glide/load/n/h$d;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/h$d;->b()Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/bumptech/glide/load/n/h;->g:Lcom/bumptech/glide/load/n/h$d;

    iget-object p2, p0, Lcom/bumptech/glide/load/n/h;->e:Lcom/bumptech/glide/load/n/h$e;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->p:Lcom/bumptech/glide/load/i;

    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/load/n/h$d;->a(Lcom/bumptech/glide/load/n/h$e;Lcom/bumptech/glide/load/i;)V
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_39

    :cond_30
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/u;->e()V

    :cond_35
    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->i()V

    return-void

    :catchall_39
    move-exception p1

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/u;->e()V

    :cond_3f
    throw p1
.end method

.method private e()V
    .registers 5

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-wide v0, p0, Lcom/bumptech/glide/load/n/h;->u:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/h;->A:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/h;->y:Lcom/bumptech/glide/load/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/h;->C:Lcom/bumptech/glide/load/m/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/n/h;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_37
    const/4 v0, 0x0

    :try_start_38
    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->C:Lcom/bumptech/glide/load/m/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/h;->A:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/h;->B:Lcom/bumptech/glide/load/a;

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/m/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/n/v;

    move-result-object v0
    :try_end_42
    .catch Lcom/bumptech/glide/load/n/q; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_50

    :catch_43
    move-exception v1

    iget-object v2, p0, Lcom/bumptech/glide/load/n/h;->z:Lcom/bumptech/glide/load/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/h;->B:Lcom/bumptech/glide/load/a;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/n/q;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/n/h;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_50
    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->B:Lcom/bumptech/glide/load/a;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/n/h;->b(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V

    goto :goto_5b

    :cond_58
    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->l()V

    :goto_5b
    return-void
.end method

.method private f()Lcom/bumptech/glide/load/n/f;
    .registers 4

    sget-object v0, Lcom/bumptech/glide/load/n/h$a;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Lcom/bumptech/glide/load/n/z;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/n/z;-><init>(Lcom/bumptech/glide/load/n/g;Lcom/bumptech/glide/load/n/f$a;)V

    return-object v0

    :cond_39
    new-instance v0, Lcom/bumptech/glide/load/n/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/n/c;-><init>(Lcom/bumptech/glide/load/n/g;Lcom/bumptech/glide/load/n/f$a;)V

    return-object v0

    :cond_41
    new-instance v0, Lcom/bumptech/glide/load/n/w;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/n/w;-><init>(Lcom/bumptech/glide/load/n/g;Lcom/bumptech/glide/load/n/f$a;)V

    return-object v0
.end method

.method private g()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->k:Lc/a/a/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private h()V
    .registers 4

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->n()V

    new-instance v0, Lcom/bumptech/glide/load/n/q;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/h;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/n/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->q:Lcom/bumptech/glide/load/n/h$b;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/n/h$b;->a(Lcom/bumptech/glide/load/n/q;)V

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->j()V

    return-void
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->h:Lcom/bumptech/glide/load/n/h$f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/h$f;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->k()V

    :cond_b
    return-void
.end method

.method private j()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->h:Lcom/bumptech/glide/load/n/h$f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/h$f;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->k()V

    :cond_b
    return-void
.end method

.method private k()V
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->h:Lcom/bumptech/glide/load/n/h$f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/h$f;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->g:Lcom/bumptech/glide/load/n/h$d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/h$d;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/g;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/h;->E:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->i:Lc/a/a/e;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->j:Lcom/bumptech/glide/load/g;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->p:Lcom/bumptech/glide/load/i;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->k:Lc/a/a/h;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->l:Lcom/bumptech/glide/load/n/n;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->q:Lcom/bumptech/glide/load/n/h$b;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->D:Lcom/bumptech/glide/load/n/f;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->x:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->y:Lcom/bumptech/glide/load/g;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->A:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->B:Lcom/bumptech/glide/load/a;

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->C:Lcom/bumptech/glide/load/m/d;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bumptech/glide/load/n/h;->u:J

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/h;->F:Z

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->w:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->f:Lb/h/n/d;

    invoke-interface {v0, p0}, Lb/h/n/d;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method private l()V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h;->x:Ljava/lang/Thread;

    invoke-static {}, Lc/a/a/t/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/n/h;->u:J

    const/4 v0, 0x0

    :cond_d
    iget-boolean v1, p0, Lcom/bumptech/glide/load/n/h;->F:Z

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->D:Lcom/bumptech/glide/load/n/f;

    if-eqz v1, :cond_35

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->D:Lcom/bumptech/glide/load/n/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/f;->a()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/n/h$h;)Lcom/bumptech/glide/load/n/h$h;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->f()Lcom/bumptech/glide/load/n/f;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/n/h;->D:Lcom/bumptech/glide/load/n/f;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    sget-object v2, Lcom/bumptech/glide/load/n/h$h;->e:Lcom/bumptech/glide/load/n/h$h;

    if-ne v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/h;->b()V

    return-void

    :cond_35
    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    sget-object v2, Lcom/bumptech/glide/load/n/h$h;->g:Lcom/bumptech/glide/load/n/h$h;

    if-eq v1, v2, :cond_3f

    iget-boolean v1, p0, Lcom/bumptech/glide/load/n/h;->F:Z

    if-eqz v1, :cond_44

    :cond_3f
    if-nez v0, :cond_44

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->h()V

    :cond_44
    return-void
.end method

.method private m()V
    .registers 4

    sget-object v0, Lcom/bumptech/glide/load/n/h$a;->a:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->t:Lcom/bumptech/glide/load/n/h$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->e()V

    goto :goto_41

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/h;->t:Lcom/bumptech/glide/load/n/h$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    sget-object v0, Lcom/bumptech/glide/load/n/h$h;->b:Lcom/bumptech/glide/load/n/h$h;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/n/h$h;)Lcom/bumptech/glide/load/n/h$h;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->f()Lcom/bumptech/glide/load/n/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h;->D:Lcom/bumptech/glide/load/n/f;

    :cond_3e
    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->l()V

    :goto_41
    return-void
.end method

.method private n()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->d:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/h;->E:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_21

    :cond_14
    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_29
    iput-boolean v1, p0, Lcom/bumptech/glide/load/n/h;->E:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/n/h;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/h<",
            "*>;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->g()I

    move-result v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/n/h;->g()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_10

    iget v0, p0, Lcom/bumptech/glide/load/n/h;->r:I

    iget p1, p1, Lcom/bumptech/glide/load/n/h;->r:I

    sub-int/2addr v0, p1

    :cond_10
    return v0
.end method

.method a(Lc/a/a/e;Ljava/lang/Object;Lcom/bumptech/glide/load/n/n;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/load/n/j;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/n/h$b;I)Lcom/bumptech/glide/load/n/h;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/n/n;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/a/a/h;",
            "Lcom/bumptech/glide/load/n/j;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/l<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/i;",
            "Lcom/bumptech/glide/load/n/h$b<",
            "TR;>;I)",
            "Lcom/bumptech/glide/load/n/h<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    iget-object v15, v0, Lcom/bumptech/glide/load/n/h;->e:Lcom/bumptech/glide/load/n/h$e;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/bumptech/glide/load/n/g;->a(Lc/a/a/e;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/n/j;Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/load/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/n/h$e;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/bumptech/glide/load/n/h;->i:Lc/a/a/e;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/bumptech/glide/load/n/h;->j:Lcom/bumptech/glide/load/g;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/bumptech/glide/load/n/h;->k:Lc/a/a/h;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/bumptech/glide/load/n/h;->l:Lcom/bumptech/glide/load/n/n;

    move/from16 v1, p5

    iput v1, v0, Lcom/bumptech/glide/load/n/h;->m:I

    move/from16 v1, p6

    iput v1, v0, Lcom/bumptech/glide/load/n/h;->n:I

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/bumptech/glide/load/n/h;->o:Lcom/bumptech/glide/load/n/j;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/bumptech/glide/load/n/h;->v:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/bumptech/glide/load/n/h;->p:Lcom/bumptech/glide/load/i;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/bumptech/glide/load/n/h;->q:Lcom/bumptech/glide/load/n/h$b;

    move/from16 v1, p17

    iput v1, v0, Lcom/bumptech/glide/load/n/h;->r:I

    sget-object v1, Lcom/bumptech/glide/load/n/h$g;->b:Lcom/bumptech/glide/load/n/h$g;

    iput-object v1, v0, Lcom/bumptech/glide/load/n/h;->t:Lcom/bumptech/glide/load/n/h$g;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/bumptech/glide/load/n/h;->w:Ljava/lang/Object;

    return-object v0
.end method

.method a(Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/v;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v0, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/n/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/n/h;->i:Lc/a/a/e;

    iget v3, p0, Lcom/bumptech/glide/load/n/h;->m:I

    iget v4, p0, Lcom/bumptech/glide/load/n/h;->n:I

    invoke-interface {v0, v2, p2, v3, v4}, Lcom/bumptech/glide/load/l;->a(Landroid/content/Context;Lcom/bumptech/glide/load/n/v;II)Lcom/bumptech/glide/load/n/v;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_22

    :cond_20
    move-object v0, p2

    move-object v7, v1

    :goto_22
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-interface {p2}, Lcom/bumptech/glide/load/n/v;->a()V

    :cond_2b
    iget-object p2, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/n/g;->b(Lcom/bumptech/glide/load/n/v;)Z

    move-result p2

    if-eqz p2, :cond_40

    iget-object p2, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/n/g;->a(Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/k;

    move-result-object v1

    iget-object p2, p0, Lcom/bumptech/glide/load/n/h;->p:Lcom/bumptech/glide/load/i;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/k;->a(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c;

    move-result-object p2

    goto :goto_42

    :cond_40
    sget-object p2, Lcom/bumptech/glide/load/c;->d:Lcom/bumptech/glide/load/c;

    :goto_42
    move-object v10, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/h;->y:Lcom/bumptech/glide/load/g;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/n/g;->a(Lcom/bumptech/glide/load/g;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/bumptech/glide/load/n/h;->o:Lcom/bumptech/glide/load/n/j;

    invoke-virtual {v3, v1, p1, p2}, Lcom/bumptech/glide/load/n/j;->a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z

    move-result p1

    if-eqz p1, :cond_b3

    if-eqz v10, :cond_a5

    sget-object p1, Lcom/bumptech/glide/load/n/h$a;->c:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_92

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7b

    new-instance p1, Lcom/bumptech/glide/load/n/x;

    iget-object p2, p0, Lcom/bumptech/glide/load/n/h;->b:Lcom/bumptech/glide/load/n/g;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/n/g;->b()Lcom/bumptech/glide/load/n/a0/b;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/n/h;->y:Lcom/bumptech/glide/load/g;

    iget-object v4, p0, Lcom/bumptech/glide/load/n/h;->j:Lcom/bumptech/glide/load/g;

    iget v5, p0, Lcom/bumptech/glide/load/n/h;->m:I

    iget v6, p0, Lcom/bumptech/glide/load/n/h;->n:I

    iget-object v9, p0, Lcom/bumptech/glide/load/n/h;->p:Lcom/bumptech/glide/load/i;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/n/x;-><init>(Lcom/bumptech/glide/load/n/a0/b;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/l;Ljava/lang/Class;Lcom/bumptech/glide/load/i;)V

    goto :goto_9b

    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_92
    new-instance p1, Lcom/bumptech/glide/load/n/d;

    iget-object p2, p0, Lcom/bumptech/glide/load/n/h;->y:Lcom/bumptech/glide/load/g;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->j:Lcom/bumptech/glide/load/g;

    invoke-direct {p1, p2, v1}, Lcom/bumptech/glide/load/n/d;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    :goto_9b
    invoke-static {v0}, Lcom/bumptech/glide/load/n/u;->b(Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/u;

    move-result-object v0

    iget-object p2, p0, Lcom/bumptech/glide/load/n/h;->g:Lcom/bumptech/glide/load/n/h$d;

    invoke-virtual {p2, p1, v10, v0}, Lcom/bumptech/glide/load/n/h$d;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/k;Lcom/bumptech/glide/load/n/u;)V

    goto :goto_b3

    :cond_a5
    new-instance p1, Lc/a/a/i$d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/a/a/i$d;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_b3
    :goto_b3
    return-object v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/h;->F:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->D:Lcom/bumptech/glide/load/n/f;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/bumptech/glide/load/n/f;->cancel()V

    :cond_a
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/m/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lcom/bumptech/glide/load/m/d;->b()V

    new-instance v0, Lcom/bumptech/glide/load/n/q;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/n/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lcom/bumptech/glide/load/m/d;->a()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/n/q;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/n/h;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/n/h;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_28

    sget-object p1, Lcom/bumptech/glide/load/n/h$g;->c:Lcom/bumptech/glide/load/n/h$g;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/h;->t:Lcom/bumptech/glide/load/n/h$g;

    iget-object p1, p0, Lcom/bumptech/glide/load/n/h;->q:Lcom/bumptech/glide/load/n/h$b;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/n/h$b;->a(Lcom/bumptech/glide/load/n/h;)V

    goto :goto_2b

    :cond_28
    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->l()V

    :goto_2b
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/m/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/m/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/n/h;->y:Lcom/bumptech/glide/load/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/h;->A:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/n/h;->C:Lcom/bumptech/glide/load/m/d;

    iput-object p4, p0, Lcom/bumptech/glide/load/n/h;->B:Lcom/bumptech/glide/load/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/n/h;->z:Lcom/bumptech/glide/load/g;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/n/h;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1c

    sget-object p1, Lcom/bumptech/glide/load/n/h$g;->d:Lcom/bumptech/glide/load/n/h$g;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/h;->t:Lcom/bumptech/glide/load/n/h$g;

    iget-object p1, p0, Lcom/bumptech/glide/load/n/h;->q:Lcom/bumptech/glide/load/n/h$b;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/n/h$b;->a(Lcom/bumptech/glide/load/n/h;)V

    goto :goto_27

    :cond_1c
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    invoke-static {p1}, Lc/a/a/t/l/b;->a(Ljava/lang/String;)V

    :try_start_21
    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->e()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    invoke-static {}, Lc/a/a/t/l/b;->a()V

    :goto_27
    return-void

    :catchall_28
    move-exception p1

    invoke-static {}, Lc/a/a/t/l/b;->a()V

    throw p1
.end method

.method a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->h:Lcom/bumptech/glide/load/n/h$f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/n/h$f;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->k()V

    :cond_b
    return-void
.end method

.method public b()V
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/n/h$g;->c:Lcom/bumptech/glide/load/n/h$g;

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h;->t:Lcom/bumptech/glide/load/n/h$g;

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->q:Lcom/bumptech/glide/load/n/h$b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/n/h$b;->a(Lcom/bumptech/glide/load/n/h;)V

    return-void
.end method

.method c()Z
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/n/h$h;->b:Lcom/bumptech/glide/load/n/h$h;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/n/h$h;)Lcom/bumptech/glide/load/n/h$h;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/n/h$h;->c:Lcom/bumptech/glide/load/n/h$h;

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/bumptech/glide/load/n/h$h;->d:Lcom/bumptech/glide/load/n/h$h;

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/bumptech/glide/load/n/h;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/n/h;)I

    move-result p1

    return p1
.end method

.method public d()Lc/a/a/t/l/c;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->d:Lc/a/a/t/l/c;

    return-object v0
.end method

.method public run()V
    .registers 6

    const-string v0, "DecodeJob"

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->w:Ljava/lang/Object;

    const-string v2, "DecodeJob#run(model=%s)"

    invoke-static {v2, v1}, Lc/a/a/t/l/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h;->C:Lcom/bumptech/glide/load/m/d;

    :try_start_b
    iget-boolean v2, p0, Lcom/bumptech/glide/load/n/h;->F:Z

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->h()V
    :try_end_12
    .catch Lcom/bumptech/glide/load/n/b; {:try_start_b .. :try_end_12} :catch_63
    .catchall {:try_start_b .. :try_end_12} :catchall_27

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/bumptech/glide/load/m/d;->b()V

    :cond_17
    invoke-static {}, Lc/a/a/t/l/b;->a()V

    return-void

    :cond_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->m()V
    :try_end_1e
    .catch Lcom/bumptech/glide/load/n/b; {:try_start_1b .. :try_end_1e} :catch_63
    .catchall {:try_start_1b .. :try_end_1e} :catchall_27

    if-eqz v1, :cond_23

    invoke-interface {v1}, Lcom/bumptech/glide/load/m/d;->b()V

    :cond_23
    invoke-static {}, Lc/a/a/t/l/b;->a()V

    return-void

    :catchall_27
    move-exception v2

    const/4 v3, 0x3

    :try_start_29
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/bumptech/glide/load/n/h;->F:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->s:Lcom/bumptech/glide/load/n/h$h;

    sget-object v3, Lcom/bumptech/glide/load/n/h$h;->f:Lcom/bumptech/glide/load/n/h$h;

    if-eq v0, v3, :cond_5d

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/h;->h()V

    :cond_5d
    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/h;->F:Z

    if-nez v0, :cond_62

    throw v2

    :cond_62
    throw v2

    :catch_63
    move-exception v0

    throw v0
    :try_end_65
    .catchall {:try_start_29 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v0

    if-eqz v1, :cond_6b

    invoke-interface {v1}, Lcom/bumptech/glide/load/m/d;->b()V

    :cond_6b
    invoke-static {}, Lc/a/a/t/l/b;->a()V

    throw v0
.end method

###### Class com.bumptech.glide.load.n.h.a (com.bumptech.glide.load.n.h$a)
.class synthetic Lcom/bumptech/glide/load/n/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/bumptech/glide/load/c;->values()[Lcom/bumptech/glide/load/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bumptech/glide/load/n/h$a;->c:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/bumptech/glide/load/n/h$a;->c:[I

    sget-object v2, Lcom/bumptech/glide/load/c;->b:Lcom/bumptech/glide/load/c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/bumptech/glide/load/n/h$a;->c:[I

    sget-object v3, Lcom/bumptech/glide/load/c;->c:Lcom/bumptech/glide/load/c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    invoke-static {}, Lcom/bumptech/glide/load/n/h$h;->values()[Lcom/bumptech/glide/load/n/h$h;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/bumptech/glide/load/n/h$a;->b:[I

    :try_start_28
    sget-object v2, Lcom/bumptech/glide/load/n/h$a;->b:[I

    sget-object v3, Lcom/bumptech/glide/load/n/h$h;->c:Lcom/bumptech/glide/load/n/h$h;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v2, Lcom/bumptech/glide/load/n/h$a;->b:[I

    sget-object v3, Lcom/bumptech/glide/load/n/h$h;->d:Lcom/bumptech/glide/load/n/h$h;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    const/4 v2, 0x3

    :try_start_3d
    sget-object v3, Lcom/bumptech/glide/load/n/h$a;->b:[I

    sget-object v4, Lcom/bumptech/glide/load/n/h$h;->e:Lcom/bumptech/glide/load/n/h$h;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    :catch_47
    :try_start_47
    sget-object v3, Lcom/bumptech/glide/load/n/h$a;->b:[I

    sget-object v4, Lcom/bumptech/glide/load/n/h$h;->g:Lcom/bumptech/glide/load/n/h$h;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v3, Lcom/bumptech/glide/load/n/h$a;->b:[I

    sget-object v4, Lcom/bumptech/glide/load/n/h$h;->b:Lcom/bumptech/glide/load/n/h$h;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5d} :catch_5d

    :catch_5d
    invoke-static {}, Lcom/bumptech/glide/load/n/h$g;->values()[Lcom/bumptech/glide/load/n/h$g;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/bumptech/glide/load/n/h$a;->a:[I

    :try_start_66
    sget-object v3, Lcom/bumptech/glide/load/n/h$a;->a:[I

    sget-object v4, Lcom/bumptech/glide/load/n/h$g;->b:Lcom/bumptech/glide/load/n/h$g;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_70

    :catch_70
    :try_start_70
    sget-object v0, Lcom/bumptech/glide/load/n/h$a;->a:[I

    sget-object v3, Lcom/bumptech/glide/load/n/h$g;->c:Lcom/bumptech/glide/load/n/h$g;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v0, Lcom/bumptech/glide/load/n/h$a;->a:[I

    sget-object v1, Lcom/bumptech/glide/load/n/h$g;->d:Lcom/bumptech/glide/load/n/h$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_84

    :catch_84
    return-void
.end method

###### Class com.bumptech.glide.load.n.h.b (com.bumptech.glide.load.n.h$b)
.class interface abstract Lcom/bumptech/glide/load/n/h$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/bumptech/glide/load/n/h;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/h<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/bumptech/glide/load/n/q;)V
.end method

.method public abstract a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation
.end method

###### Class com.bumptech.glide.load.n.h.c (com.bumptech.glide.load.n.h$c)
.class final Lcom/bumptech/glide/load/n/h$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/n/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/n/i$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/a;

.field final synthetic b:Lcom/bumptech/glide/load/n/h;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/h;Lcom/bumptech/glide/load/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/load/n/h$c;->b:Lcom/bumptech/glide/load/n/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/n/h$c;->a:Lcom/bumptech/glide/load/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/v;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/n/v<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h$c;->b:Lcom/bumptech/glide/load/n/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/n/h$c;->a:Lcom/bumptech/glide/load/a;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/n/h;->a(Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/n/v;)Lcom/bumptech/glide/load/n/v;

    move-result-object p1

    return-object p1
.end method

###### Class com.bumptech.glide.load.n.h.d (com.bumptech.glide.load.n.h$d)
.class Lcom/bumptech/glide/load/n/h$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/g;

.field private b:Lcom/bumptech/glide/load/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/k<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Lcom/bumptech/glide/load/n/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/u<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h$d;->a:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h$d;->b:Lcom/bumptech/glide/load/k;

    iput-object v0, p0, Lcom/bumptech/glide/load/n/h$d;->c:Lcom/bumptech/glide/load/n/u;

    return-void
.end method

.method a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/k;Lcom/bumptech/glide/load/n/u;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/k<",
            "TX;>;",
            "Lcom/bumptech/glide/load/n/u<",
            "TX;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/n/h$d;->a:Lcom/bumptech/glide/load/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/n/h$d;->b:Lcom/bumptech/glide/load/k;

    iput-object p3, p0, Lcom/bumptech/glide/load/n/h$d;->c:Lcom/bumptech/glide/load/n/u;

    return-void
.end method

.method a(Lcom/bumptech/glide/load/n/h$e;Lcom/bumptech/glide/load/i;)V
    .registers 7

    const-string v0, "DecodeJob.encode"

    invoke-static {v0}, Lc/a/a/t/l/b;->a(Ljava/lang/String;)V

    :try_start_5
    invoke-interface {p1}, Lcom/bumptech/glide/load/n/h$e;->a()Lcom/bumptech/glide/load/n/b0/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h$d;->a:Lcom/bumptech/glide/load/g;

    new-instance v1, Lcom/bumptech/glide/load/n/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/n/h$d;->b:Lcom/bumptech/glide/load/k;

    iget-object v3, p0, Lcom/bumptech/glide/load/n/h$d;->c:Lcom/bumptech/glide/load/n/u;

    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/n/e;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/i;)V

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/n/b0/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/n/b0/a$b;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_20

    iget-object p1, p0, Lcom/bumptech/glide/load/n/h$d;->c:Lcom/bumptech/glide/load/n/u;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/n/u;->e()V

    invoke-static {}, Lc/a/a/t/l/b;->a()V

    return-void

    :catchall_20
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/n/h$d;->c:Lcom/bumptech/glide/load/n/u;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/n/u;->e()V

    invoke-static {}, Lc/a/a/t/l/b;->a()V

    throw p1
.end method

.method b()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/h$d;->c:Lcom/bumptech/glide/load/n/u;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class com.bumptech.glide.load.n.h.e (com.bumptech.glide.load.n.h$e)
.class interface abstract Lcom/bumptech/glide/load/n/h$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "e"
.end annotation


# virtual methods
.method public abstract a()Lcom/bumptech/glide/load/n/b0/a;
.end method

###### Class com.bumptech.glide.load.n.h.f (com.bumptech.glide.load.n.h$f)
.class Lcom/bumptech/glide/load/n/h$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Z)Z
    .registers 3

    iget-boolean v0, p0, Lcom/bumptech/glide/load/n/h$f;->c:Z

    if-nez v0, :cond_a

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/bumptech/glide/load/n/h$f;->b:Z

    if-eqz p1, :cond_10

    :cond_a
    iget-boolean p1, p0, Lcom/bumptech/glide/load/n/h$f;->a:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method


# virtual methods
.method declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/h$f;->b:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/n/h$f;->b(Z)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)Z
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/h$f;->a:Z

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/n/h$f;->b(Z)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/h$f;->c:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/n/h$f;->b(Z)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/h$f;->b:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/h$f;->a:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/load/n/h$f;->c:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.bumptech.glide.load.n.h.g (com.bumptech.glide.load.n.h$g)
.class final enum Lcom/bumptech/glide/load/n/h$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/n/h$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/bumptech/glide/load/n/h$g;

.field public static final enum c:Lcom/bumptech/glide/load/n/h$g;

.field public static final enum d:Lcom/bumptech/glide/load/n/h$g;

.field private static final synthetic e:[Lcom/bumptech/glide/load/n/h$g;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/bumptech/glide/load/n/h$g;

    const/4 v1, 0x0

    const-string v2, "INITIALIZE"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/n/h$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/n/h$g;->b:Lcom/bumptech/glide/load/n/h$g;

    new-instance v0, Lcom/bumptech/glide/load/n/h$g;

    const/4 v2, 0x1

    const-string v3, "SWITCH_TO_SOURCE_SERVICE"

    invoke-direct {v0, v3, v2}, Lcom/bumptech/glide/load/n/h$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/n/h$g;->c:Lcom/bumptech/glide/load/n/h$g;

    new-instance v0, Lcom/bumptech/glide/load/n/h$g;

    const/4 v3, 0x2

    const-string v4, "DECODE_DATA"

    invoke-direct {v0, v4, v3}, Lcom/bumptech/glide/load/n/h$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/n/h$g;->d:Lcom/bumptech/glide/load/n/h$g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bumptech/glide/load/n/h$g;

    sget-object v4, Lcom/bumptech/glide/load/n/h$g;->b:Lcom/bumptech/glide/load/n/h$g;

    aput-object v4, v0, v1

    sget-object v1, Lcom/bumptech/glide/load/n/h$g;->c:Lcom/bumptech/glide/load/n/h$g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/n/h$g;->d:Lcom/bumptech/glide/load/n/h$g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bumptech/glide/load/n/h$g;->e:[Lcom/bumptech/glide/load/n/h$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/n/h$g;
    .registers 2

    const-class v0, Lcom/bumptech/glide/load/n/h$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/n/h$g;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/n/h$g;
    .registers 1

    sget-object v0, Lcom/bumptech/glide/load/n/h$g;->e:[Lcom/bumptech/glide/load/n/h$g;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/n/h$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/n/h$g;

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.h.EnumC0142h (com.bumptech.glide.load.n.h$h)
.class final enum Lcom/bumptech/glide/load/n/h$h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/n/h$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/bumptech/glide/load/n/h$h;

.field public static final enum c:Lcom/bumptech/glide/load/n/h$h;

.field public static final enum d:Lcom/bumptech/glide/load/n/h$h;

.field public static final enum e:Lcom/bumptech/glide/load/n/h$h;

.field public static final enum f:Lcom/bumptech/glide/load/n/h$h;

.field public static final enum g:Lcom/bumptech/glide/load/n/h$h;

.field private static final synthetic h:[Lcom/bumptech/glide/load/n/h$h;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/bumptech/glide/load/n/h$h;

    const/4 v1, 0x0

    const-string v2, "INITIALIZE"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/n/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/n/h$h;->b:Lcom/bumptech/glide/load/n/h$h;

    new-instance v0, Lcom/bumptech/glide/load/n/h$h;

    const/4 v2, 0x1

    const-string v3, "RESOURCE_CACHE"

    invoke-direct {v0, v3, v2}, Lcom/bumptech/glide/load/n/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/n/h$h;->c:Lcom/bumptech/glide/load/n/h$h;

    new-instance v0, Lcom/bumptech/glide/load/n/h$h;

    const/4 v3, 0x2

    const-string v4, "DATA_CACHE"

    invoke-direct {v0, v4, v3}, Lcom/bumptech/glide/load/n/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/n/h$h;->d:Lcom/bumptech/glide/load/n/h$h;

    new-instance v0, Lcom/bumptech/glide/load/n/h$h;

    const/4 v4, 0x3

    const-string v5, "SOURCE"

    invoke-direct {v0, v5, v4}, Lcom/bumptech/glide/load/n/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/n/h$h;->e:Lcom/bumptech/glide/load/n/h$h;

    new-instance v0, Lcom/bumptech/glide/load/n/h$h;

    const/4 v5, 0x4

    const-string v6, "ENCODE"

    invoke-direct {v0, v6, v5}, Lcom/bumptech/glide/load/n/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/n/h$h;->f:Lcom/bumptech/glide/load/n/h$h;

    new-instance v0, Lcom/bumptech/glide/load/n/h$h;

    const/4 v6, 0x5

    const-string v7, "FINISHED"

    invoke-direct {v0, v7, v6}, Lcom/bumptech/glide/load/n/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/n/h$h;->g:Lcom/bumptech/glide/load/n/h$h;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bumptech/glide/load/n/h$h;

    sget-object v7, Lcom/bumptech/glide/load/n/h$h;->b:Lcom/bumptech/glide/load/n/h$h;

    aput-object v7, v0, v1

    sget-object v1, Lcom/bumptech/glide/load/n/h$h;->c:Lcom/bumptech/glide/load/n/h$h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/n/h$h;->d:Lcom/bumptech/glide/load/n/h$h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/n/h$h;->e:Lcom/bumptech/glide/load/n/h$h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/load/n/h$h;->f:Lcom/bumptech/glide/load/n/h$h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/load/n/h$h;->g:Lcom/bumptech/glide/load/n/h$h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bumptech/glide/load/n/h$h;->h:[Lcom/bumptech/glide/load/n/h$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/n/h$h;
    .registers 2

    const-class v0, Lcom/bumptech/glide/load/n/h$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/n/h$h;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/n/h$h;
    .registers 1

    sget-object v0, Lcom/bumptech/glide/load/n/h$h;->h:[Lcom/bumptech/glide/load/n/h$h;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/n/h$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/n/h$h;

    return-object v0
.end method
