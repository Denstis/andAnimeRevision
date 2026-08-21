###### Class k.q.a.e (k.q.a.e)
.class public final Lk/q/a/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lk/m;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/m<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lk/q/a/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lk/q/a/e<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_9

    new-instance v0, Lk/q/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lk/q/a/e;-><init>(Lk/m;Ljava/lang/Throwable;)V

    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "error == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lk/m;)Lk/q/a/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/m<",
            "TT;>;)",
            "Lk/q/a/e<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_9

    new-instance v0, Lk/q/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk/q/a/e;-><init>(Lk/m;Ljava/lang/Throwable;)V

    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "response == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
