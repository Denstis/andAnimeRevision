###### Class k.i (k.i)
.class final Lk/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/i$b;,
        Lk/i$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lk/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/o<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private final c:[Ljava/lang/Object;

.field private volatile d:Z

.field private e:Lh/e;

.field private f:Ljava/lang/Throwable;

.field private g:Z


# direct methods
.method constructor <init>(Lk/o;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/o<",
            "TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/i;->b:Lk/o;

    iput-object p2, p0, Lk/i;->c:[Ljava/lang/Object;

    return-void
.end method

.method private a()Lh/e;
    .registers 3

    iget-object v0, p0, Lk/i;->b:Lk/o;

    iget-object v1, p0, Lk/i;->c:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lk/o;->a([Ljava/lang/Object;)Lh/e;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Lh/c0;)Lk/m;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c0;",
            ")",
            "Lk/m<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lh/c0;->j()Lh/d0;

    move-result-object v0

    invoke-virtual {p1}, Lh/c0;->q()Lh/c0$a;

    move-result-object p1

    new-instance v1, Lk/i$c;

    invoke-virtual {v0}, Lh/d0;->l()Lh/v;

    move-result-object v2

    invoke-virtual {v0}, Lh/d0;->k()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lk/i$c;-><init>(Lh/v;J)V

    invoke-virtual {p1, v1}, Lh/c0$a;->a(Lh/d0;)Lh/c0$a;

    invoke-virtual {p1}, Lh/c0$a;->a()Lh/c0;

    move-result-object p1

    invoke-virtual {p1}, Lh/c0;->l()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_50

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_29

    goto :goto_50

    :cond_29
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_47

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_32

    goto :goto_47

    :cond_32
    new-instance v1, Lk/i$b;

    invoke-direct {v1, v0}, Lk/i$b;-><init>(Lh/d0;)V

    :try_start_37
    iget-object v0, p0, Lk/i;->b:Lk/o;

    invoke-virtual {v0, v1}, Lk/o;->a(Lh/d0;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lk/m;->a(Ljava/lang/Object;Lh/c0;)Lk/m;

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_41} :catch_42

    return-object p1

    :catch_42
    move-exception p1

    invoke-virtual {v1}, Lk/i$b;->o()V

    throw p1

    :cond_47
    :goto_47
    invoke-virtual {v0}, Lh/d0;->close()V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lk/m;->a(Ljava/lang/Object;Lh/c0;)Lk/m;

    move-result-object p1

    return-object p1

    :cond_50
    :goto_50
    :try_start_50
    invoke-static {v0}, Lk/p;->a(Lh/d0;)Lh/d0;

    move-result-object v1

    invoke-static {v1, p1}, Lk/m;->a(Lh/d0;Lh/c0;)Lk/m;

    move-result-object p1
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_5c

    invoke-virtual {v0}, Lh/d0;->close()V

    return-object p1

    :catchall_5c
    move-exception p1

    invoke-virtual {v0}, Lh/d0;->close()V

    throw p1
.end method

.method public a(Lk/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lk/p;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Lk/i;->g:Z

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/i;->g:Z

    iget-object v0, p0, Lk/i;->e:Lh/e;

    iget-object v1, p0, Lk/i;->f:Ljava/lang/Throwable;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_42

    if-nez v0, :cond_23

    if-nez v1, :cond_23

    :try_start_15
    invoke-direct {p0}, Lk/i;->a()Lh/e;

    move-result-object v2

    iput-object v2, p0, Lk/i;->e:Lh/e;
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1d

    move-object v0, v2

    goto :goto_23

    :catchall_1d
    move-exception v1

    :try_start_1e
    invoke-static {v1}, Lk/p;->a(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lk/i;->f:Ljava/lang/Throwable;

    :cond_23
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_42

    if-eqz v1, :cond_2a

    invoke-interface {p1, p0, v1}, Lk/d;->a(Lk/b;Ljava/lang/Throwable;)V

    return-void

    :cond_2a
    iget-boolean v1, p0, Lk/i;->d:Z

    if-eqz v1, :cond_31

    invoke-interface {v0}, Lh/e;->cancel()V

    :cond_31
    new-instance v1, Lk/i$a;

    invoke-direct {v1, p0, p1}, Lk/i$a;-><init>(Lk/i;Lk/d;)V

    invoke-interface {v0, v1}, Lh/e;->a(Lh/f;)V

    return-void

    :cond_3a
    :try_start_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_42
    move-exception p1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw p1
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/i;->d:Z

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lk/i;->e:Lh/e;

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lh/e;->cancel()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lk/i;->clone()Lk/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lk/b;
    .registers 2

    invoke-virtual {p0}, Lk/i;->clone()Lk/i;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lk/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lk/i;

    iget-object v1, p0, Lk/i;->b:Lk/o;

    iget-object v2, p0, Lk/i;->c:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lk/i;-><init>(Lk/o;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public j()Z
    .registers 3

    iget-boolean v0, p0, Lk/i;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lk/i;->e:Lh/e;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lk/i;->e:Lh/e;

    invoke-interface {v0}, Lh/e;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    monitor-exit p0

    return v1

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public k()Lk/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/m<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lk/i;->g:Z

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/i;->g:Z

    iget-object v0, p0, Lk/i;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lk/i;->f:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-nez v0, :cond_22

    iget-object v0, p0, Lk/i;->f:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lk/i;->f:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1d
    iget-object v0, p0, Lk/i;->f:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_22
    iget-object v0, p0, Lk/i;->f:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_27
    iget-object v0, p0, Lk/i;->e:Lh/e;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_56

    if-nez v0, :cond_3d

    :try_start_2b
    invoke-direct {p0}, Lk/i;->a()Lh/e;

    move-result-object v0

    iput-object v0, p0, Lk/i;->e:Lh/e;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_31} :catch_34
    .catch Ljava/lang/Error; {:try_start_2b .. :try_end_31} :catch_32
    .catchall {:try_start_2b .. :try_end_31} :catchall_56

    goto :goto_3d

    :catch_32
    move-exception v0

    goto :goto_37

    :catch_34
    move-exception v0

    goto :goto_37

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    invoke-static {v0}, Lk/p;->a(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lk/i;->f:Ljava/lang/Throwable;

    throw v0

    :cond_3d
    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_56

    iget-boolean v1, p0, Lk/i;->d:Z

    if-eqz v1, :cond_45

    invoke-interface {v0}, Lh/e;->cancel()V

    :cond_45
    invoke-interface {v0}, Lh/e;->k()Lh/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/i;->a(Lh/c0;)Lk/m;

    move-result-object v0

    return-object v0

    :cond_4e
    :try_start_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v0
.end method

###### Class k.i.a (k.i$a)
.class Lk/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/i;->a(Lk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk/d;

.field final synthetic b:Lk/i;


# direct methods
.method constructor <init>(Lk/i;Lk/d;)V
    .registers 3

    iput-object p1, p0, Lk/i$a;->b:Lk/i;

    iput-object p2, p0, Lk/i$a;->a:Lk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lk/i$a;->a:Lk/d;

    iget-object v1, p0, Lk/i$a;->b:Lk/i;

    invoke-interface {v0, v1, p1}, Lk/d;->a(Lk/b;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    return-void
.end method


# virtual methods
.method public a(Lh/e;Lh/c0;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lk/i$a;->b:Lk/i;

    invoke-virtual {p1, p2}, Lk/i;->a(Lh/c0;)Lk/m;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_13

    :try_start_6
    iget-object p2, p0, Lk/i$a;->a:Lk/d;

    iget-object v0, p0, Lk/i$a;->b:Lk/i;

    invoke-interface {p2, v0, p1}, Lk/d;->a(Lk/b;Lk/m;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_12
    return-void

    :catchall_13
    move-exception p1

    invoke-direct {p0, p1}, Lk/i$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lh/e;Ljava/io/IOException;)V
    .registers 3

    invoke-direct {p0, p2}, Lk/i$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class k.i.b (k.i$b)
.class final Lk/i$b;
.super Lh/d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final c:Lh/d0;

.field d:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lh/d0;)V
    .registers 2

    invoke-direct {p0}, Lh/d0;-><init>()V

    iput-object p1, p0, Lk/i$b;->c:Lh/d0;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lk/i$b;->c:Lh/d0;

    invoke-virtual {v0}, Lh/d0;->close()V

    return-void
.end method

.method public k()J
    .registers 3

    iget-object v0, p0, Lk/i$b;->c:Lh/d0;

    invoke-virtual {v0}, Lh/d0;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()Lh/v;
    .registers 2

    iget-object v0, p0, Lk/i$b;->c:Lh/d0;

    invoke-virtual {v0}, Lh/d0;->l()Lh/v;

    move-result-object v0

    return-object v0
.end method

.method public m()Li/e;
    .registers 3

    new-instance v0, Lk/i$b$a;

    iget-object v1, p0, Lk/i$b;->c:Lh/d0;

    invoke-virtual {v1}, Lh/d0;->m()Li/e;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lk/i$b$a;-><init>(Lk/i$b;Li/s;)V

    invoke-static {v0}, Li/l;->a(Li/s;)Li/e;

    move-result-object v0

    return-object v0
.end method

.method o()V
    .registers 2

    iget-object v0, p0, Lk/i$b;->d:Ljava/io/IOException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    throw v0
.end method

###### Class k.i.b.a (k.i$b$a)
.class Lk/i$b$a;
.super Li/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/i$b;->m()Li/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lk/i$b;


# direct methods
.method constructor <init>(Lk/i$b;Li/s;)V
    .registers 3

    iput-object p1, p0, Lk/i$b$a;->c:Lk/i$b;

    invoke-direct {p0, p2}, Li/h;-><init>(Li/s;)V

    return-void
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 4

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Li/h;->a(Li/c;J)J

    move-result-wide p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p1

    :catch_5
    move-exception p1

    iget-object p2, p0, Lk/i$b$a;->c:Lk/i$b;

    iput-object p1, p2, Lk/i$b;->d:Ljava/io/IOException;

    throw p1
.end method

###### Class k.i.c (k.i$c)
.class final Lk/i$c;
.super Lh/d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final c:Lh/v;

.field private final d:J


# direct methods
.method constructor <init>(Lh/v;J)V
    .registers 4

    invoke-direct {p0}, Lh/d0;-><init>()V

    iput-object p1, p0, Lk/i$c;->c:Lh/v;

    iput-wide p2, p0, Lk/i$c;->d:J

    return-void
.end method


# virtual methods
.method public k()J
    .registers 3

    iget-wide v0, p0, Lk/i$c;->d:J

    return-wide v0
.end method

.method public l()Lh/v;
    .registers 2

    iget-object v0, p0, Lk/i$c;->c:Lh/v;

    return-object v0
.end method

.method public m()Li/e;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
