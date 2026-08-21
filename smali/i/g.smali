###### Class i.g (i.g)
.class public abstract Li/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/r;


# instance fields
.field private final b:Li/r;


# direct methods
.method public constructor <init>(Li/r;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Li/g;->b:Li/r;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/g;->b:Li/r;

    invoke-interface {v0}, Li/r;->b()Li/t;

    move-result-object v0

    return-object v0
.end method

.method public b(Li/c;J)V
    .registers 5

    iget-object v0, p0, Li/g;->b:Li/r;

    invoke-interface {v0, p1, p2, p3}, Li/r;->b(Li/c;J)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Li/g;->b:Li/r;

    invoke-interface {v0}, Li/r;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Li/g;->b:Li/r;

    invoke-interface {v0}, Li/r;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/g;->b:Li/r;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
