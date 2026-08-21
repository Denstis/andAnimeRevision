###### Class g.b (g.b)
.class Lg/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/n/b;->a:Lg/n/a;

    invoke-virtual {v0, p0, p1}, Lg/n/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
