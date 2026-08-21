###### Class e.a.y.a.c (e.a.y.a.c)
.class public final enum Le/a/y/a/c;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Le/a/y/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/y/a/c;",
        ">;",
        "Le/a/y/c/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/a/y/a/c;

.field public static final enum c:Le/a/y/a/c;

.field private static final synthetic d:[Le/a/y/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Le/a/y/a/c;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Le/a/y/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/y/a/c;->b:Le/a/y/a/c;

    new-instance v0, Le/a/y/a/c;

    const/4 v2, 0x1

    const-string v3, "NEVER"

    invoke-direct {v0, v3, v2}, Le/a/y/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/y/a/c;->c:Le/a/y/a/c;

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/y/a/c;

    sget-object v3, Le/a/y/a/c;->b:Le/a/y/a/c;

    aput-object v3, v0, v1

    sget-object v1, Le/a/y/a/c;->c:Le/a/y/a/c;

    aput-object v1, v0, v2

    sput-object v0, Le/a/y/a/c;->d:[Le/a/y/a/c;

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

.method public static a(Le/a/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Le/a/y/a/c;->b:Le/a/y/a/c;

    invoke-interface {p0, v0}, Le/a/m;->a(Le/a/v/b;)V

    invoke-interface {p0}, Le/a/m;->onComplete()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Le/a/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Le/a/m<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Le/a/y/a/c;->b:Le/a/y/a/c;

    invoke-interface {p1, v0}, Le/a/m;->a(Le/a/v/b;)V

    invoke-interface {p1, p0}, Le/a/m;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Le/a/q;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Le/a/q<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Le/a/y/a/c;->b:Le/a/y/a/c;

    invoke-interface {p1, v0}, Le/a/q;->a(Le/a/v/b;)V

    invoke-interface {p1, p0}, Le/a/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/y/a/c;
    .registers 2

    const-class v0, Le/a/y/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/y/a/c;

    return-object p0
.end method

.method public static values()[Le/a/y/a/c;
    .registers 1

    sget-object v0, Le/a/y/a/c;->d:[Le/a/y/a/c;

    invoke-virtual {v0}, [Le/a/y/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/y/a/c;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public a()Z
    .registers 2

    sget-object v0, Le/a/y/a/c;->b:Le/a/y/a/c;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .registers 1

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
