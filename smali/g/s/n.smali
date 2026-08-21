###### Class g.s.n (g.s.n)
.class Lg/s/n;
.super Lg/s/m;
.source ""


# direct methods
.method public static final a(Ljava/lang/CharSequence;CIZ)I
    .registers 6

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_13

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_c

    goto :goto_13

    :cond_c
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_1d

    :cond_13
    :goto_13
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lg/s/n;->a(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_1d
    return p0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lg/s/n;->a(Ljava/lang/CharSequence;CIZ)I

    move-result p0

    return p0
.end method

.method private static final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .registers 12

    const/4 v0, 0x0

    if-nez p5, :cond_15

    invoke-static {p2, v0}, Lg/q/e;->a(II)I

    move-result p2

    new-instance p5, Lg/q/d;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, v0}, Lg/q/e;->b(II)I

    move-result p3

    invoke-direct {p5, p2, p3}, Lg/q/d;-><init>(II)V

    goto :goto_25

    :cond_15
    invoke-static {p0}, Lg/s/n;->c(Ljava/lang/CharSequence;)I

    move-result p5

    invoke-static {p2, p5}, Lg/q/e;->b(II)I

    move-result p2

    invoke-static {p3, v0}, Lg/q/e;->a(II)I

    move-result p3

    invoke-static {p2, p3}, Lg/q/e;->c(II)Lg/q/b;

    move-result-object p5

    :goto_25
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_58

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_58

    invoke-virtual {p5}, Lg/q/b;->a()I

    move-result p2

    invoke-virtual {p5}, Lg/q/b;->b()I

    move-result p3

    invoke-virtual {p5}, Lg/q/b;->c()I

    move-result p5

    if-lez p5, :cond_3e

    if-gt p2, p3, :cond_7f

    goto :goto_40

    :cond_3e
    if-lt p2, p3, :cond_7f

    :goto_40
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lg/s/m;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_54

    return p2

    :cond_54
    if-eq p2, p3, :cond_7f

    add-int/2addr p2, p5

    goto :goto_40

    :cond_58
    invoke-virtual {p5}, Lg/q/b;->a()I

    move-result p2

    invoke-virtual {p5}, Lg/q/b;->b()I

    move-result p3

    invoke-virtual {p5}, Lg/q/b;->c()I

    move-result p5

    if-lez p5, :cond_69

    if-gt p2, p3, :cond_7f

    goto :goto_6b

    :cond_69
    if-lt p2, p3, :cond_7f

    :goto_6b
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p1

    move-object v2, p0

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lg/s/n;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_7b

    return p2

    :cond_7b
    if-eq p2, p3, :cond_7f

    add-int/2addr p2, p5

    goto :goto_6b

    :cond_7f
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_7

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_8

    :cond_7
    move v5, p5

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lg/s/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .registers 12

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_18

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_18

    :cond_11
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_28

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lg/s/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result p0

    :goto_28
    return p0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lg/s/n;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/CharSequence;[CIZ)I
    .registers 11

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_1f

    array-length v1, p1

    if-ne v1, v0, :cond_1f

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1f

    invoke-static {p1}, Lg/m/d;->a([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    :cond_1f
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lg/q/e;->a(II)I

    move-result p2

    invoke-static {p0}, Lg/s/n;->c(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt p2, v2, :cond_48

    :goto_2a
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    array-length v4, p1

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v4, :cond_3f

    aget-char v6, p1, v5

    invoke-static {v6, v3, p3}, Lg/s/b;->a(CCZ)Z

    move-result v6

    if-eqz v6, :cond_3c

    const/4 v3, 0x1

    goto :goto_40

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    if-eqz v3, :cond_43

    return p2

    :cond_43
    if-eq p2, v2, :cond_48

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    :cond_48
    const/4 p0, -0x1

    return p0
.end method

.method public static final synthetic a(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lg/f;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lg/s/n;->b(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lg/f;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lg/r/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "IZI)",
            "Lg/r/a<",
            "Lg/q/d;",
            ">;"
        }
    .end annotation

    if-ltz p4, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_16

    invoke-static {p1}, Lg/m/d;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lg/s/d;

    new-instance v1, Lg/s/n$a;

    invoke-direct {v1, p1, p3}, Lg/s/n$a;-><init>(Ljava/util/List;Z)V

    invoke-direct {v0, p0, p2, p4, v1}, Lg/s/d;-><init>(Ljava/lang/CharSequence;IILg/p/a/c;)V

    return-object v0

    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Limit must be non-negative, but was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lg/r/a;
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    const/4 p3, 0x0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/4 p4, 0x0

    :cond_10
    invoke-static {p0, p1, p2, p3, p4}, Lg/s/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lg/r/a;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/CharSequence;Lg/q/d;)Ljava/lang/String;
    .registers 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/q/d;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lg/q/d;->d()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p3, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_5f

    invoke-static {p0, p1, v0, p2}, Lg/s/n;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_56

    if-ne p3, v1, :cond_13

    goto :goto_56

    :cond_13
    if-lez p3, :cond_17

    const/4 v4, 0x1

    goto :goto_18

    :cond_17
    const/4 v4, 0x0

    :goto_18
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    if-eqz v4, :cond_22

    invoke-static {p3, v6}, Lg/q/e;->b(II)I

    move-result v6

    :cond_22
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_25
    invoke-interface {p0, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    if-eqz v4, :cond_40

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v6, p3, -0x1

    if-ne v2, v6, :cond_40

    goto :goto_46

    :cond_40
    invoke-static {p0, p1, v0, p2}, Lg/s/n;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v2

    if-ne v2, v3, :cond_25

    :goto_46
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_56
    :goto_56
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/m/j;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Limit must be non-negative, but was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_80

    :goto_7f
    throw p1

    :goto_80
    goto :goto_7f
.end method

.method public static final a(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_18

    const/4 v0, 0x1

    :cond_18
    if-nez v0, :cond_1f

    invoke-static {p0, v2, p2, p3}, Lg/s/n;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1f
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lg/s/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lg/r/a;

    move-result-object p1

    invoke-static {p1}, Lg/r/b;->a(Lg/r/a;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lg/m/j;->a(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/q/d;

    invoke-static {p0, p3}, Lg/s/n;->a(Ljava/lang/CharSequence;Lg/q/d;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_51
    return-object p2
.end method

.method public static synthetic a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lg/s/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .registers 10

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p3, :cond_39

    if-ltz p1, :cond_39

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_39

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_1e

    goto :goto_39

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, p4, :cond_37

    add-int v2, p1, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Lg/s/b;->a(CCZ)Z

    move-result v2

    if-nez v2, :cond_34

    return v0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_37
    const/4 p0, 0x1

    return p0

    :cond_39
    :goto_39
    return v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 14

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p2

    invoke-static/range {v3 .. v8}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_32

    goto :goto_33

    :cond_1f
    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-static/range {v3 .. v10}, Lg/s/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    return v1
.end method

.method public static synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .registers 10

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_18

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_18

    :cond_11
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_22

    :cond_18
    :goto_18
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lg/s/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    :goto_22
    return p0
.end method

.method public static synthetic b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_8

    invoke-static {p0}, Lg/s/n;->c(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_8
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    const/4 p3, 0x0

    :cond_d
    invoke-static {p0, p1, p2, p3}, Lg/s/n;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method private static final b(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lg/f;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;IZZ)",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_2d

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    invoke-static {p1}, Lg/m/j;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    if-nez p4, :cond_1d

    invoke-static/range {v1 .. v6}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    goto :goto_21

    :cond_1d
    invoke-static/range {v1 .. v6}, Lg/s/e;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    :goto_21
    if-gez p0, :cond_24

    goto :goto_2c

    :cond_24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Lg/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lg/f;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v1, 0x0

    if-nez p4, :cond_3e

    invoke-static {p2, v1}, Lg/q/e;->a(II)I

    move-result p2

    new-instance p4, Lg/q/d;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p4, p2, v1}, Lg/q/d;-><init>(II)V

    goto :goto_4a

    :cond_3e
    invoke-static {p0}, Lg/s/n;->c(Ljava/lang/CharSequence;)I

    move-result p4

    invoke-static {p2, p4}, Lg/q/e;->b(II)I

    move-result p2

    invoke-static {p2, v1}, Lg/q/e;->c(II)Lg/q/b;

    move-result-object p4

    :goto_4a
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_95

    invoke-virtual {p4}, Lg/q/b;->a()I

    move-result p2

    invoke-virtual {p4}, Lg/q/b;->b()I

    move-result v1

    invoke-virtual {p4}, Lg/q/b;->c()I

    move-result p4

    if-lez p4, :cond_5f

    if-gt p2, v1, :cond_d2

    goto :goto_61

    :cond_5f
    if-lt p2, v1, :cond_d2

    :goto_61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_65
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lg/s/m;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_65

    goto :goto_84

    :cond_83
    move-object v9, v0

    :goto_84
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_91

    :goto_88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v9}, Lg/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lg/f;

    move-result-object p0

    return-object p0

    :cond_91
    if-eq p2, v1, :cond_d2

    add-int/2addr p2, p4

    goto :goto_61

    :cond_95
    invoke-virtual {p4}, Lg/q/b;->a()I

    move-result p2

    invoke-virtual {p4}, Lg/q/b;->b()I

    move-result v1

    invoke-virtual {p4}, Lg/q/b;->c()I

    move-result p4

    if-lez p4, :cond_a6

    if-gt p2, v1, :cond_d2

    goto :goto_a8

    :cond_a6
    if-lt p2, v1, :cond_d2

    :goto_a8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_ac
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move-object v4, p0

    move v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lg/s/n;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_ac

    goto :goto_c9

    :cond_c8
    move-object v9, v0

    :goto_c9
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_ce

    goto :goto_88

    :cond_ce
    if-eq p2, v1, :cond_d2

    add-int/2addr p2, p4

    goto :goto_a8

    :cond_d2
    return-object v0
.end method

.method public static final b(Ljava/lang/CharSequence;)Lg/q/d;
    .registers 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/q/d;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lg/q/d;-><init>(II)V

    return-object v0
.end method

.method public static final b(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lg/r/a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Lg/r/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Lg/s/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lg/r/a;

    move-result-object p1

    new-instance p2, Lg/s/n$b;

    invoke-direct {p2, p0}, Lg/s/n$b;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2}, Lg/r/b;->a(Lg/r/a;Lg/p/a/b;)Lg/r/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Lg/r/a;
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lg/s/n;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lg/r/a;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/CharSequence;)I
    .registers 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-gt v2, v0, :cond_2b

    if-nez v3, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v0

    :goto_14
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lg/s/a;->a(C)Z

    move-result v4

    if-nez v3, :cond_25

    if-nez v4, :cond_22

    const/4 v3, 0x1

    goto :goto_d

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    if-nez v4, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_2b
    :goto_2b
    add-int/2addr v0, v1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

###### Class g.s.n.a (g.s.n$a)
.class final Lg/s/n$a;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/s/n;->a(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lg/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/c<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lg/f<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .registers 3

    iput-object p1, p0, Lg/s/n$a;->b:Ljava/util/List;

    iput-boolean p2, p0, Lg/s/n$a;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)Lg/f;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/s/n$a;->b:Ljava/util/List;

    iget-boolean v1, p0, Lg/s/n$a;->c:Z

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Lg/s/n;->a(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lg/f;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lg/f;->c()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lg/f;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lg/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lg/f;

    move-result-object p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lg/s/n$a;->a(Ljava/lang/CharSequence;I)Lg/f;

    move-result-object p1

    return-object p1
.end method

###### Class g.s.n.b (g.s.n$b)
.class final Lg/s/n$b;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/s/n;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lg/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/b<",
        "Lg/q/d;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lg/s/n$b;->b:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lg/q/d;

    invoke-virtual {p0, p1}, Lg/s/n$b;->a(Lg/q/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lg/q/d;)Ljava/lang/String;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/s/n$b;->b:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lg/s/n;->a(Ljava/lang/CharSequence;Lg/q/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
