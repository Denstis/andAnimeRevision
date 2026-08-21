###### Class e.a.y.a.b (e.a.y.a.b)
.class public final enum Le/a/y/a/b;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/y/a/b;",
        ">;",
        "Le/a/v/b;"
    }
.end annotation


# static fields
.field public static final enum b:Le/a/y/a/b;

.field private static final synthetic c:[Le/a/y/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Le/a/y/a/b;

    const/4 v1, 0x0

    const-string v2, "DISPOSED"

    invoke-direct {v0, v2, v1}, Le/a/y/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/y/a/b;->b:Le/a/y/a/b;

    const/4 v0, 0x1

    new-array v0, v0, [Le/a/y/a/b;

    sget-object v2, Le/a/y/a/b;->b:Le/a/y/a/b;

    aput-object v2, v0, v1

    sput-object v0, Le/a/y/a/b;->c:[Le/a/y/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Le/a/v/b;)Z
    .registers 2

    sget-object v0, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static a(Le/a/v/b;Le/a/v/b;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_e

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "next is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    return v0

    :cond_e
    if-eqz p0, :cond_17

    invoke-interface {p1}, Le/a/v/b;->b()V

    invoke-static {}, Le/a/y/a/b;->c()V

    return v0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/v/b;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v/b;

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-eq v0, v1, :cond_19

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/v/b;

    if-eq p0, v1, :cond_19

    if-eqz p0, :cond_17

    invoke-interface {p0}, Le/a/v/b;->b()V

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/v/b;",
            ">;",
            "Le/a/v/b;",
            ")Z"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v/b;

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-ne v0, v1, :cond_11

    if-eqz p1, :cond_f

    invoke-interface {p1}, Le/a/v/b;->b()V

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/v/b;",
            ">;",
            "Le/a/v/b;",
            ")Z"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v/b;

    sget-object v1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-ne v0, v1, :cond_11

    if-eqz p1, :cond_f

    invoke-interface {p1}, Le/a/v/b;->b()V

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Le/a/v/b;->b()V

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static c()V
    .registers 2

    new-instance v0, Le/a/w/d;

    const-string v1, "Disposable already set!"

    invoke-direct {v0, v1}, Le/a/w/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/util/concurrent/atomic/AtomicReference;Le/a/v/b;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/v/b;",
            ">;",
            "Le/a/v/b;",
            ")Z"
        }
    .end annotation

    const-string v0, "d is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {p1}, Le/a/v/b;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Le/a/y/a/b;->b:Le/a/y/a/b;

    if-eq p0, p1, :cond_1a

    invoke-static {}, Le/a/y/a/b;->c()V

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/y/a/b;
    .registers 2

    const-class v0, Le/a/y/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/y/a/b;

    return-object p0
.end method

.method public static values()[Le/a/y/a/b;
    .registers 1

    sget-object v0, Le/a/y/a/b;->c:[Le/a/y/a/b;

    invoke-virtual {v0}, [Le/a/y/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/y/a/b;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method
