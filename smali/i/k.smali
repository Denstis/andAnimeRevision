###### Class i.k (i.k)
.class public final Li/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/s;


# instance fields
.field private final b:Li/e;

.field private final c:Ljava/util/zip/Inflater;

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Li/e;Ljava/util/zip/Inflater;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Li/k;->b:Li/e;

    iput-object p2, p0, Li/k;->c:Ljava/util/zip/Inflater;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j()V
    .registers 5

    iget v0, p0, Li/k;->d:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Li/k;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Li/k;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Li/k;->d:I

    iget-object v1, p0, Li/k;->b:Li/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Li/e;->skip(J)V

    return-void
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7a

    iget-boolean v2, p0, Li/k;->e:Z

    if-nez v2, :cond_72

    cmp-long v2, p2, v0

    if-nez v2, :cond_f

    return-wide v0

    :cond_f
    :goto_f
    invoke-virtual {p0}, Li/k;->i()Z

    move-result v0

    const/4 v1, 0x1

    :try_start_14
    invoke-virtual {p1, v1}, Li/c;->b(I)Li/o;

    move-result-object v1

    iget v2, v1, Li/o;->c:I

    rsub-int v2, v2, 0x2000

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    iget-object v2, p0, Li/k;->c:Ljava/util/zip/Inflater;

    iget-object v4, v1, Li/o;->a:[B

    iget v5, v1, Li/o;->c:I

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-lez v2, :cond_3a

    iget p2, v1, Li/o;->c:I

    add-int/2addr p2, v2

    iput p2, v1, Li/o;->c:I

    iget-wide p2, p1, Li/c;->c:J

    int-to-long v0, v2

    add-long/2addr p2, v0

    iput-wide p2, p1, Li/c;->c:J

    return-wide v0

    :cond_3a
    iget-object v2, p0, Li/k;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Li/k;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_56

    :cond_4b
    if-nez v0, :cond_4e

    goto :goto_f

    :cond_4e
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    :goto_56
    invoke-direct {p0}, Li/k;->j()V

    iget p2, v1, Li/o;->b:I

    iget p3, v1, Li/o;->c:I

    if-ne p2, p3, :cond_68

    invoke-virtual {v1}, Li/o;->b()Li/o;

    move-result-object p2

    iput-object p2, p1, Li/c;->b:Li/o;

    invoke-static {v1}, Li/p;->a(Li/o;)V
    :try_end_68
    .catch Ljava/util/zip/DataFormatException; {:try_start_14 .. :try_end_68} :catch_6b

    :cond_68
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_6b
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_72
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_92

    :goto_91
    throw p1

    :goto_92
    goto :goto_91
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/k;->b:Li/e;

    invoke-interface {v0}, Li/s;->b()Li/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Li/k;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Li/k;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/k;->e:Z

    iget-object v0, p0, Li/k;->b:Li/e;

    invoke-interface {v0}, Li/s;->close()V

    return-void
.end method

.method public i()Z
    .registers 6

    iget-object v0, p0, Li/k;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Li/k;->j()V

    iget-object v0, p0, Li/k;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Li/k;->b:Li/e;

    invoke-interface {v0}, Li/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    iget-object v0, p0, Li/k;->b:Li/e;

    invoke-interface {v0}, Li/e;->a()Li/c;

    move-result-object v0

    iget-object v0, v0, Li/c;->b:Li/o;

    iget v2, v0, Li/o;->c:I

    iget v3, v0, Li/o;->b:I

    sub-int/2addr v2, v3

    iput v2, p0, Li/k;->d:I

    iget-object v2, p0, Li/k;->c:Ljava/util/zip/Inflater;

    iget-object v0, v0, Li/o;->a:[B

    iget v4, p0, Li/k;->d:I

    invoke-virtual {v2, v0, v3, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
