###### Class i.h (i.h)
.class public abstract Li/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li/s;


# instance fields
.field private final b:Li/s;


# direct methods
.method public constructor <init>(Li/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Li/h;->b:Li/s;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Li/c;J)J
    .registers 5

    iget-object v0, p0, Li/h;->b:Li/s;

    invoke-interface {v0, p1, p2, p3}, Li/s;->a(Li/c;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()Li/t;
    .registers 2

    iget-object v0, p0, Li/h;->b:Li/s;

    invoke-interface {v0}, Li/s;->b()Li/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Li/h;->b:Li/s;

    invoke-interface {v0}, Li/s;->close()V

    return-void
.end method

.method public final i()Li/s;
    .registers 2

    iget-object v0, p0, Li/h;->b:Li/s;

    return-object v0
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

    iget-object v1, p0, Li/h;->b:Li/s;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
