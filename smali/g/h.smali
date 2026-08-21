###### Class g.h (g.h)
.class public final Lg/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 2

    const-string v0, "exception"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/g$b;

    invoke-direct {v0, p0}, Lg/g$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
