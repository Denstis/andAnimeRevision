###### Class b.f.a.i (b.f.a.i)
.class public Lb/f/a/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/f/a/i$a;
    }
.end annotation


# static fields
.field private static k:I = 0x1


# instance fields
.field private a:Ljava/lang/String;

.field public b:I

.field c:I

.field public d:I

.field public e:F

.field f:[F

.field g:Lb/f/a/i$a;

.field h:[Lb/f/a/b;

.field i:I

.field public j:I


# direct methods
.method public constructor <init>(Lb/f/a/i$a;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lb/f/a/i;->b:I

    iput p2, p0, Lb/f/a/i;->c:I

    const/4 p2, 0x0

    iput p2, p0, Lb/f/a/i;->d:I

    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Lb/f/a/i;->f:[F

    const/16 v0, 0x8

    new-array v0, v0, [Lb/f/a/b;

    iput-object v0, p0, Lb/f/a/i;->h:[Lb/f/a/b;

    iput p2, p0, Lb/f/a/i;->i:I

    iput p2, p0, Lb/f/a/i;->j:I

    iput-object p1, p0, Lb/f/a/i;->g:Lb/f/a/i$a;

    return-void
.end method

.method static b()V
    .registers 1

    sget v0, Lb/f/a/i;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lb/f/a/i;->k:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/a/i;->a:Ljava/lang/String;

    sget-object v0, Lb/f/a/i$a;->f:Lb/f/a/i$a;

    iput-object v0, p0, Lb/f/a/i;->g:Lb/f/a/i$a;

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/i;->d:I

    const/4 v1, -0x1

    iput v1, p0, Lb/f/a/i;->b:I

    iput v1, p0, Lb/f/a/i;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lb/f/a/i;->e:F

    iput v0, p0, Lb/f/a/i;->i:I

    iput v0, p0, Lb/f/a/i;->j:I

    return-void
.end method

.method public final a(Lb/f/a/b;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lb/f/a/i;->i:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lb/f/a/i;->h:[Lb/f/a/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lb/f/a/i;->h:[Lb/f/a/b;

    array-length v2, v0

    if-lt v1, v2, :cond_1f

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/f/a/b;

    iput-object v0, p0, Lb/f/a/i;->h:[Lb/f/a/b;

    :cond_1f
    iget-object v0, p0, Lb/f/a/i;->h:[Lb/f/a/b;

    iget v1, p0, Lb/f/a/i;->i:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/f/a/i;->i:I

    return-void
.end method

.method public a(Lb/f/a/i$a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lb/f/a/i;->g:Lb/f/a/i$a;

    return-void
.end method

.method public final b(Lb/f/a/b;)V
    .registers 7

    iget v0, p0, Lb/f/a/i;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_29

    iget-object v3, p0, Lb/f/a/i;->h:[Lb/f/a/b;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_26

    :goto_c
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_1f

    iget-object p1, p0, Lb/f/a/i;->h:[Lb/f/a/b;

    add-int v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, p1, v4

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1f
    iget p1, p0, Lb/f/a/i;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb/f/a/i;->i:I

    return-void

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_29
    return-void
.end method

.method public final c(Lb/f/a/b;)V
    .registers 7

    iget v0, p0, Lb/f/a/i;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_14

    iget-object v3, p0, Lb/f/a/i;->h:[Lb/f/a/b;

    aget-object v4, v3, v2

    iget-object v4, v4, Lb/f/a/b;->d:Lb/f/a/a;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3, p1, v1}, Lb/f/a/a;->a(Lb/f/a/b;Lb/f/a/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    iput v1, p0, Lb/f/a/i;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/f/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class b.f.a.i.a (b.f.a.i$a)
.class public final enum Lb/f/a/i$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/f/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/f/a/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/f/a/i$a;

.field public static final enum c:Lb/f/a/i$a;

.field public static final enum d:Lb/f/a/i$a;

.field public static final enum e:Lb/f/a/i$a;

.field public static final enum f:Lb/f/a/i$a;

.field private static final synthetic g:[Lb/f/a/i$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lb/f/a/i$a;

    const/4 v1, 0x0

    const-string v2, "UNRESTRICTED"

    invoke-direct {v0, v2, v1}, Lb/f/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/a/i$a;->b:Lb/f/a/i$a;

    new-instance v0, Lb/f/a/i$a;

    const/4 v2, 0x1

    const-string v3, "CONSTANT"

    invoke-direct {v0, v3, v2}, Lb/f/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/a/i$a;->c:Lb/f/a/i$a;

    new-instance v0, Lb/f/a/i$a;

    const/4 v3, 0x2

    const-string v4, "SLACK"

    invoke-direct {v0, v4, v3}, Lb/f/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/a/i$a;->d:Lb/f/a/i$a;

    new-instance v0, Lb/f/a/i$a;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lb/f/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/a/i$a;->e:Lb/f/a/i$a;

    new-instance v0, Lb/f/a/i$a;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lb/f/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/a/i$a;->f:Lb/f/a/i$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lb/f/a/i$a;

    sget-object v6, Lb/f/a/i$a;->b:Lb/f/a/i$a;

    aput-object v6, v0, v1

    sget-object v1, Lb/f/a/i$a;->c:Lb/f/a/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lb/f/a/i$a;->d:Lb/f/a/i$a;

    aput-object v1, v0, v3

    sget-object v1, Lb/f/a/i$a;->e:Lb/f/a/i$a;

    aput-object v1, v0, v4

    sget-object v1, Lb/f/a/i$a;->f:Lb/f/a/i$a;

    aput-object v1, v0, v5

    sput-object v0, Lb/f/a/i$a;->g:[Lb/f/a/i$a;

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

.method public static valueOf(Ljava/lang/String;)Lb/f/a/i$a;
    .registers 2

    const-class v0, Lb/f/a/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/f/a/i$a;

    return-object p0
.end method

.method public static values()[Lb/f/a/i$a;
    .registers 1

    sget-object v0, Lb/f/a/i$a;->g:[Lb/f/a/i$a;

    invoke-virtual {v0}, [Lb/f/a/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/f/a/i$a;

    return-object v0
.end method
