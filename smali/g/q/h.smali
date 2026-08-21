###### Class g.q.h (g.q.h)
.class Lg/q/h;
.super Lg/q/g;
.source ""


# direct methods
.method public static a(II)I
    .registers 2

    if-ge p0, p1, :cond_3

    move p0, p1

    :cond_3
    return p0
.end method

.method public static a(III)I
    .registers 5

    if-gt p1, p2, :cond_9

    if-ge p0, p1, :cond_5

    return p1

    :cond_5
    if-le p0, p2, :cond_8

    return p2

    :cond_8
    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(II)I
    .registers 2

    if-le p0, p1, :cond_3

    move p0, p1

    :cond_3
    return p0
.end method

.method public static c(II)Lg/q/b;
    .registers 4

    sget-object v0, Lg/q/b;->e:Lg/q/b$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lg/q/b$a;->a(III)Lg/q/b;

    move-result-object p0

    return-object p0
.end method

.method public static d(II)Lg/q/d;
    .registers 3

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_b

    sget-object p0, Lg/q/d;->g:Lg/q/d$a;

    invoke-virtual {p0}, Lg/q/d$a;->a()Lg/q/d;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Lg/q/d;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lg/q/d;-><init>(II)V

    return-object v0
.end method
