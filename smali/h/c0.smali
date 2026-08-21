###### Class h.c0 (h.c0)
.class public final Lh/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/c0$a;
    }
.end annotation


# instance fields
.field final b:Lh/a0;

.field final c:Lh/y;

.field final d:I

.field final e:Ljava/lang/String;

.field final f:Lh/r;

.field final g:Lh/s;

.field final h:Lh/d0;

.field final i:Lh/c0;

.field final j:Lh/c0;

.field final k:Lh/c0;

.field final l:J

.field final m:J

.field private volatile n:Lh/d;


# direct methods
.method constructor <init>(Lh/c0$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lh/c0$a;->a:Lh/a0;

    iput-object v0, p0, Lh/c0;->b:Lh/a0;

    iget-object v0, p1, Lh/c0$a;->b:Lh/y;

    iput-object v0, p0, Lh/c0;->c:Lh/y;

    iget v0, p1, Lh/c0$a;->c:I

    iput v0, p0, Lh/c0;->d:I

    iget-object v0, p1, Lh/c0$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lh/c0;->e:Ljava/lang/String;

    iget-object v0, p1, Lh/c0$a;->e:Lh/r;

    iput-object v0, p0, Lh/c0;->f:Lh/r;

    iget-object v0, p1, Lh/c0$a;->f:Lh/s$a;

    invoke-virtual {v0}, Lh/s$a;->a()Lh/s;

    move-result-object v0

    iput-object v0, p0, Lh/c0;->g:Lh/s;

    iget-object v0, p1, Lh/c0$a;->g:Lh/d0;

    iput-object v0, p0, Lh/c0;->h:Lh/d0;

    iget-object v0, p1, Lh/c0$a;->h:Lh/c0;

    iput-object v0, p0, Lh/c0;->i:Lh/c0;

    iget-object v0, p1, Lh/c0$a;->i:Lh/c0;

    iput-object v0, p0, Lh/c0;->j:Lh/c0;

    iget-object v0, p1, Lh/c0$a;->j:Lh/c0;

    iput-object v0, p0, Lh/c0;->k:Lh/c0;

    iget-wide v0, p1, Lh/c0$a;->k:J

    iput-wide v0, p0, Lh/c0;->l:J

    iget-wide v0, p1, Lh/c0$a;->l:J

    iput-wide v0, p0, Lh/c0;->m:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lh/c0;->g:Lh/s;

    invoke-virtual {v0, p1}, Lh/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    move-object p1, p2

    :goto_a
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lh/c0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lh/c0;->h:Lh/d0;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lh/d0;->close()V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Lh/d0;
    .registers 2

    iget-object v0, p0, Lh/c0;->h:Lh/d0;

    return-object v0
.end method

.method public k()Lh/d;
    .registers 2

    iget-object v0, p0, Lh/c0;->n:Lh/d;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lh/c0;->g:Lh/s;

    invoke-static {v0}, Lh/d;->a(Lh/s;)Lh/d;

    move-result-object v0

    iput-object v0, p0, Lh/c0;->n:Lh/d;

    :goto_d
    return-object v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lh/c0;->d:I

    return v0
.end method

.method public m()Lh/r;
    .registers 2

    iget-object v0, p0, Lh/c0;->f:Lh/r;

    return-object v0
.end method

.method public n()Lh/s;
    .registers 2

    iget-object v0, p0, Lh/c0;->g:Lh/s;

    return-object v0
.end method

.method public o()Z
    .registers 3

    iget v0, p0, Lh/c0;->d:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/c0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lh/c0$a;
    .registers 2

    new-instance v0, Lh/c0$a;

    invoke-direct {v0, p0}, Lh/c0$a;-><init>(Lh/c0;)V

    return-object v0
.end method

.method public r()Lh/c0;
    .registers 2

    iget-object v0, p0, Lh/c0;->k:Lh/c0;

    return-object v0
.end method

.method public s()J
    .registers 3

    iget-wide v0, p0, Lh/c0;->m:J

    return-wide v0
.end method

.method public t()Lh/a0;
    .registers 2

    iget-object v0, p0, Lh/c0;->b:Lh/a0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/c0;->c:Lh/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/c0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/c0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/c0;->b:Lh/a0;

    invoke-virtual {v1}, Lh/a0;->g()Lh/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .registers 3

    iget-wide v0, p0, Lh/c0;->l:J

    return-wide v0
.end method

###### Class h.c0.a (h.c0$a)
.class public Lh/c0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lh/a0;

.field b:Lh/y;

.field c:I

.field d:Ljava/lang/String;

.field e:Lh/r;

.field f:Lh/s$a;

.field g:Lh/d0;

.field h:Lh/c0;

.field i:Lh/c0;

.field j:Lh/c0;

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh/c0$a;->c:I

    new-instance v0, Lh/s$a;

    invoke-direct {v0}, Lh/s$a;-><init>()V

    iput-object v0, p0, Lh/c0$a;->f:Lh/s$a;

    return-void
.end method

.method constructor <init>(Lh/c0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh/c0$a;->c:I

    iget-object v0, p1, Lh/c0;->b:Lh/a0;

    iput-object v0, p0, Lh/c0$a;->a:Lh/a0;

    iget-object v0, p1, Lh/c0;->c:Lh/y;

    iput-object v0, p0, Lh/c0$a;->b:Lh/y;

    iget v0, p1, Lh/c0;->d:I

    iput v0, p0, Lh/c0$a;->c:I

    iget-object v0, p1, Lh/c0;->e:Ljava/lang/String;

    iput-object v0, p0, Lh/c0$a;->d:Ljava/lang/String;

    iget-object v0, p1, Lh/c0;->f:Lh/r;

    iput-object v0, p0, Lh/c0$a;->e:Lh/r;

    iget-object v0, p1, Lh/c0;->g:Lh/s;

    invoke-virtual {v0}, Lh/s;->a()Lh/s$a;

    move-result-object v0

    iput-object v0, p0, Lh/c0$a;->f:Lh/s$a;

    iget-object v0, p1, Lh/c0;->h:Lh/d0;

    iput-object v0, p0, Lh/c0$a;->g:Lh/d0;

    iget-object v0, p1, Lh/c0;->i:Lh/c0;

    iput-object v0, p0, Lh/c0$a;->h:Lh/c0;

    iget-object v0, p1, Lh/c0;->j:Lh/c0;

    iput-object v0, p0, Lh/c0$a;->i:Lh/c0;

    iget-object v0, p1, Lh/c0;->k:Lh/c0;

    iput-object v0, p0, Lh/c0$a;->j:Lh/c0;

    iget-wide v0, p1, Lh/c0;->l:J

    iput-wide v0, p0, Lh/c0$a;->k:J

    iget-wide v0, p1, Lh/c0;->m:J

    iput-wide v0, p0, Lh/c0$a;->l:J

    return-void
.end method

.method private a(Ljava/lang/String;Lh/c0;)V
    .registers 4

    iget-object v0, p2, Lh/c0;->h:Lh/d0;

    if-nez v0, :cond_56

    iget-object v0, p2, Lh/c0;->i:Lh/c0;

    if-nez v0, :cond_3f

    iget-object v0, p2, Lh/c0;->j:Lh/c0;

    if-nez v0, :cond_28

    iget-object p2, p2, Lh/c0;->k:Lh/c0;

    if-nez p2, :cond_11

    return-void

    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_28
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_56
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private d(Lh/c0;)V
    .registers 3

    iget-object p1, p1, Lh/c0;->h:Lh/d0;

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Lh/c0$a;
    .registers 2

    iput p1, p0, Lh/c0$a;->c:I

    return-object p0
.end method

.method public a(J)Lh/c0$a;
    .registers 3

    iput-wide p1, p0, Lh/c0$a;->l:J

    return-object p0
.end method

.method public a(Lh/a0;)Lh/c0$a;
    .registers 2

    iput-object p1, p0, Lh/c0$a;->a:Lh/a0;

    return-object p0
.end method

.method public a(Lh/c0;)Lh/c0$a;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lh/c0$a;->a(Ljava/lang/String;Lh/c0;)V

    :cond_7
    iput-object p1, p0, Lh/c0$a;->i:Lh/c0;

    return-object p0
.end method

.method public a(Lh/d0;)Lh/c0$a;
    .registers 2

    iput-object p1, p0, Lh/c0$a;->g:Lh/d0;

    return-object p0
.end method

.method public a(Lh/r;)Lh/c0$a;
    .registers 2

    iput-object p1, p0, Lh/c0$a;->e:Lh/r;

    return-object p0
.end method

.method public a(Lh/s;)Lh/c0$a;
    .registers 2

    invoke-virtual {p1}, Lh/s;->a()Lh/s$a;

    move-result-object p1

    iput-object p1, p0, Lh/c0$a;->f:Lh/s$a;

    return-object p0
.end method

.method public a(Lh/y;)Lh/c0$a;
    .registers 2

    iput-object p1, p0, Lh/c0$a;->b:Lh/y;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lh/c0$a;
    .registers 2

    iput-object p1, p0, Lh/c0$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lh/c0$a;
    .registers 4

    iget-object v0, p0, Lh/c0$a;->f:Lh/s$a;

    invoke-virtual {v0, p1, p2}, Lh/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lh/s$a;

    return-object p0
.end method

.method public a()Lh/c0;
    .registers 4

    iget-object v0, p0, Lh/c0$a;->a:Lh/a0;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lh/c0$a;->b:Lh/y;

    if-eqz v0, :cond_37

    iget v0, p0, Lh/c0$a;->c:I

    if-ltz v0, :cond_1e

    iget-object v0, p0, Lh/c0$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_16

    new-instance v0, Lh/c0;

    invoke-direct {v0, p0}, Lh/c0;-><init>(Lh/c0$a;)V

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lh/c0$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(J)Lh/c0$a;
    .registers 3

    iput-wide p1, p0, Lh/c0$a;->k:J

    return-object p0
.end method

.method public b(Lh/c0;)Lh/c0$a;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lh/c0$a;->a(Ljava/lang/String;Lh/c0;)V

    :cond_7
    iput-object p1, p0, Lh/c0$a;->h:Lh/c0;

    return-object p0
.end method

.method public c(Lh/c0;)Lh/c0$a;
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lh/c0$a;->d(Lh/c0;)V

    :cond_5
    iput-object p1, p0, Lh/c0$a;->j:Lh/c0;

    return-object p0
.end method
