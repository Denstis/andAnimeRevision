###### Class e.a.v.c (e.a.v.c)
.class public final Le/a/v/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()Le/a/v/b;
    .registers 1

    sget-object v0, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)Le/a/v/b;
    .registers 2

    const-string v0, "run is null"

    invoke-static {p0, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le/a/v/e;

    invoke-direct {v0, p0}, Le/a/v/e;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
