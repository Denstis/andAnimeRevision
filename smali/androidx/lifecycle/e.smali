###### Class androidx.lifecycle.e (androidx.lifecycle.e)
.class public abstract Landroidx/lifecycle/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/e$b;,
        Landroidx/lifecycle/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/lifecycle/e$b;
.end method

.method public abstract a(Landroidx/lifecycle/f;)V
.end method

.method public abstract b(Landroidx/lifecycle/f;)V
.end method

###### Class androidx.lifecycle.e.a (androidx.lifecycle.e$a)
.class public final enum Landroidx/lifecycle/e$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/lifecycle/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/lifecycle/e$a;

.field public static final enum ON_ANY:Landroidx/lifecycle/e$a;

.field public static final enum ON_CREATE:Landroidx/lifecycle/e$a;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/e$a;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/e$a;

.field public static final enum ON_RESUME:Landroidx/lifecycle/e$a;

.field public static final enum ON_START:Landroidx/lifecycle/e$a;

.field public static final enum ON_STOP:Landroidx/lifecycle/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroidx/lifecycle/e$a;

    const/4 v1, 0x0

    const-string v2, "ON_CREATE"

    invoke-direct {v0, v2, v1}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    new-instance v0, Landroidx/lifecycle/e$a;

    const/4 v2, 0x1

    const-string v3, "ON_START"

    invoke-direct {v0, v3, v2}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    new-instance v0, Landroidx/lifecycle/e$a;

    const/4 v3, 0x2

    const-string v4, "ON_RESUME"

    invoke-direct {v0, v4, v3}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    new-instance v0, Landroidx/lifecycle/e$a;

    const/4 v4, 0x3

    const-string v5, "ON_PAUSE"

    invoke-direct {v0, v5, v4}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    new-instance v0, Landroidx/lifecycle/e$a;

    const/4 v5, 0x4

    const-string v6, "ON_STOP"

    invoke-direct {v0, v6, v5}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    new-instance v0, Landroidx/lifecycle/e$a;

    const/4 v6, 0x5

    const-string v7, "ON_DESTROY"

    invoke-direct {v0, v7, v6}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    new-instance v0, Landroidx/lifecycle/e$a;

    const/4 v7, 0x6

    const-string v8, "ON_ANY"

    invoke-direct {v0, v8, v7}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_ANY:Landroidx/lifecycle/e$a;

    const/4 v0, 0x7

    new-array v0, v0, [Landroidx/lifecycle/e$a;

    sget-object v8, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    aput-object v8, v0, v1

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/lifecycle/e$a;->ON_ANY:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v7

    sput-object v0, Landroidx/lifecycle/e$a;->$VALUES:[Landroidx/lifecycle/e$a;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/e$a;
    .registers 2

    const-class v0, Landroidx/lifecycle/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/e$a;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/e$a;
    .registers 1

    sget-object v0, Landroidx/lifecycle/e$a;->$VALUES:[Landroidx/lifecycle/e$a;

    invoke-virtual {v0}, [Landroidx/lifecycle/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/e$a;

    return-object v0
.end method

###### Class androidx.lifecycle.e.b (androidx.lifecycle.e$b)
.class public final enum Landroidx/lifecycle/e$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/lifecycle/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Landroidx/lifecycle/e$b;

.field public static final enum c:Landroidx/lifecycle/e$b;

.field public static final enum d:Landroidx/lifecycle/e$b;

.field public static final enum e:Landroidx/lifecycle/e$b;

.field public static final enum f:Landroidx/lifecycle/e$b;

.field private static final synthetic g:[Landroidx/lifecycle/e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroidx/lifecycle/e$b;

    const/4 v1, 0x0

    const-string v2, "DESTROYED"

    invoke-direct {v0, v2, v1}, Landroidx/lifecycle/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$b;->b:Landroidx/lifecycle/e$b;

    new-instance v0, Landroidx/lifecycle/e$b;

    const/4 v2, 0x1

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2}, Landroidx/lifecycle/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    new-instance v0, Landroidx/lifecycle/e$b;

    const/4 v3, 0x2

    const-string v4, "CREATED"

    invoke-direct {v0, v4, v3}, Landroidx/lifecycle/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    new-instance v0, Landroidx/lifecycle/e$b;

    const/4 v4, 0x3

    const-string v5, "STARTED"

    invoke-direct {v0, v5, v4}, Landroidx/lifecycle/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    new-instance v0, Landroidx/lifecycle/e$b;

    const/4 v5, 0x4

    const-string v6, "RESUMED"

    invoke-direct {v0, v6, v5}, Landroidx/lifecycle/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$b;->f:Landroidx/lifecycle/e$b;

    const/4 v0, 0x5

    new-array v0, v0, [Landroidx/lifecycle/e$b;

    sget-object v6, Landroidx/lifecycle/e$b;->b:Landroidx/lifecycle/e$b;

    aput-object v6, v0, v1

    sget-object v1, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/lifecycle/e$b;->f:Landroidx/lifecycle/e$b;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/lifecycle/e$b;->g:[Landroidx/lifecycle/e$b;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/e$b;
    .registers 2

    const-class v0, Landroidx/lifecycle/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/e$b;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/e$b;
    .registers 1

    sget-object v0, Landroidx/lifecycle/e$b;->g:[Landroidx/lifecycle/e$b;

    invoke-virtual {v0}, [Landroidx/lifecycle/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/e$b;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/e$b;)Z
    .registers 2

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
