###### Class g.m.d (g.m.d)
.class public final Lg/m/d;
.super Lg/m/h;
.source ""


# direct methods
.method public static bridge synthetic a([C)C
    .registers 1

    invoke-static {p0}, Lg/m/h;->a([C)C

    move-result p0

    return p0
.end method

.method public static bridge synthetic a([BLg/q/d;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lg/q/d;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lg/m/h;->a([BLg/q/d;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lg/m/g;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
