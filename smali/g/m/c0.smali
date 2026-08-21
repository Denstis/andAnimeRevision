###### Class g.m.c0 (g.m.c0)
.class Lg/m/c0;
.super Lg/m/b0;
.source ""


# direct methods
.method public static final a(I)I
    .registers 2

    const/4 v0, 0x3

    if-ge p0, v0, :cond_6

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_e

    div-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    return p0

    :cond_e
    const p0, 0x7fffffff

    return p0
.end method

.method public static final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lg/m/w;->b:Lg/m/w;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lg/j;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {v0, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs a([Lg/f;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lg/f<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-lez v0, :cond_16

    new-instance v0, Ljava/util/LinkedHashMap;

    array-length v1, p0

    invoke-static {v1}, Lg/m/c0;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {p0, v0}, Lg/m/c0;->a([Lg/f;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_1a

    :cond_16
    invoke-static {}, Lg/m/c0;->a()Ljava/util/Map;

    move-result-object v0

    :goto_1a
    return-object v0
.end method

.method public static final a([Lg/f;Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TV;>;>([",
            "Lg/f<",
            "+TK;+TV;>;TM;)TM;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lg/m/c0;->a(Ljava/util/Map;[Lg/f;)V

    return-object p1
.end method

.method public static final a(Ljava/util/Map;[Lg/f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;[",
            "Lg/f<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1e

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lg/f;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lg/f;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method
