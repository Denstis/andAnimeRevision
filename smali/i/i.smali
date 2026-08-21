###### Class i.i (i.i)
.class public Li/i;
.super Li/t;
.source ""


# instance fields
.field private e:Li/t;


# direct methods
.method public constructor <init>(Li/t;)V
    .registers 3

    invoke-direct {p0}, Li/t;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Li/i;->e:Li/t;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Li/t;)Li/i;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Li/i;->e:Li/t;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Li/t;
    .registers 2

    iget-object v0, p0, Li/i;->e:Li/t;

    invoke-virtual {v0}, Li/t;->a()Li/t;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Li/t;
    .registers 4

    iget-object v0, p0, Li/i;->e:Li/t;

    invoke-virtual {v0, p1, p2}, Li/t;->a(J)Li/t;

    move-result-object p1

    return-object p1
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Li/t;
    .registers 5

    iget-object v0, p0, Li/i;->e:Li/t;

    invoke-virtual {v0, p1, p2, p3}, Li/t;->a(JLjava/util/concurrent/TimeUnit;)Li/t;

    move-result-object p1

    return-object p1
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/i;->e:Li/t;

    invoke-virtual {v0}, Li/t;->b()Li/t;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Li/i;->e:Li/t;

    invoke-virtual {v0}, Li/t;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Li/i;->e:Li/t;

    invoke-virtual {v0}, Li/t;->d()Z

    move-result v0

    return v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Li/i;->e:Li/t;

    invoke-virtual {v0}, Li/t;->e()V

    return-void
.end method

.method public final g()Li/t;
    .registers 2

    iget-object v0, p0, Li/i;->e:Li/t;

    return-object v0
.end method
