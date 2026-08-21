###### Class e.a.e (e.a.e)
.class public abstract Le/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj/a/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Le/a/e;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()I
    .registers 1

    sget v0, Le/a/e;->a:I

    return v0
.end method


# virtual methods
.method public final a()Le/a/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/e<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Le/a/e;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Le/a/e;->a(IZZ)Le/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(IZZ)Le/a/e;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Le/a/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(ILjava/lang/String;)I

    new-instance v0, Le/a/y/e/a/c;

    sget-object v6, Le/a/y/b/a;->c:Le/a/x/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Le/a/y/e/a/c;-><init>(Le/a/e;IZZLe/a/x/a;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/e;)Le/a/e;

    move-result-object p1

    return-object p1
.end method

.method public final b()Le/a/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Le/a/y/e/a/d;

    invoke-direct {v0, p0}, Le/a/y/e/a/d;-><init>(Le/a/e;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/e;)Le/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final c()Le/a/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Le/a/y/e/a/f;

    invoke-direct {v0, p0}, Le/a/y/e/a/f;-><init>(Le/a/e;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/e;)Le/a/e;

    move-result-object v0

    return-object v0
.end method
