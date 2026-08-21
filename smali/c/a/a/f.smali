###### Class c.a.a.f (c.a.a.f)
.class public final enum Lc/a/a/f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc/a/a/f;

.field public static final enum c:Lc/a/a/f;

.field public static final enum d:Lc/a/a/f;

.field private static final synthetic e:[Lc/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lc/a/a/f;

    const/4 v1, 0x0

    const-string v2, "LOW"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v1, v3}, Lc/a/a/f;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lc/a/a/f;->b:Lc/a/a/f;

    new-instance v0, Lc/a/a/f;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v2, v4}, Lc/a/a/f;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lc/a/a/f;->c:Lc/a/a/f;

    new-instance v0, Lc/a/a/f;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v0, v4, v3, v5}, Lc/a/a/f;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lc/a/a/f;->d:Lc/a/a/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lc/a/a/f;

    sget-object v4, Lc/a/a/f;->b:Lc/a/a/f;

    aput-object v4, v0, v1

    sget-object v1, Lc/a/a/f;->c:Lc/a/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/a/f;->d:Lc/a/a/f;

    aput-object v1, v0, v3

    sput-object v0, Lc/a/a/f;->e:[Lc/a/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/f;
    .registers 2

    const-class v0, Lc/a/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/a/f;

    return-object p0
.end method

.method public static values()[Lc/a/a/f;
    .registers 1

    sget-object v0, Lc/a/a/f;->e:[Lc/a/a/f;

    invoke-virtual {v0}, [Lc/a/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/f;

    return-object v0
.end method
