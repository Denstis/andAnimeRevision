###### Class e.a.y.h.b (e.a.y.h.b)
.class public final Le/a/y/h/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/h/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Le/a/y/h/b$a;

    invoke-direct {v0}, Le/a/y/h/b$a;-><init>()V

    sput-object v0, Le/a/y/h/b;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2

    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_11

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_11
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Le/a/y/h/b;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_11

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    :cond_11
    return-object v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Le/a/y/h/b;->a:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x1

    if-nez v0, :cond_11

    move-object v3, p1

    goto :goto_1d

    :cond_11
    new-instance v3, Le/a/w/a;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    invoke-direct {v3, v4}, Le/a/w/a;-><init>([Ljava/lang/Throwable;)V

    :goto_1d
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

###### Class e.a.y.h.b.a (e.a.y.h.b$a)
.class final Le/a/y/h/b$a;
.super Ljava/lang/Throwable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "No further exceptions"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    return-object p0
.end method
