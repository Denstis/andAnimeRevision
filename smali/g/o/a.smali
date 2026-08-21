###### Class g.o.a (g.o.a)
.class public final Lg/o/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .registers 2

    if-nez p0, :cond_3

    goto :goto_11

    :cond_3
    if-nez p1, :cond_9

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_11

    :cond_9
    :try_start_9
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception p0

    invoke-static {p1, p0}, Lg/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_11
    return-void
.end method
