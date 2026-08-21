###### Class g.q.d (g.q.d)
.class public final Lg/q/d;
.super Lg/q/b;
.source ""

# interfaces
.implements Lg/q/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/q/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/q/b;",
        "Lg/q/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Lg/q/d;

.field public static final g:Lg/q/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lg/q/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/q/d$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lg/q/d;->g:Lg/q/d$a;

    new-instance v0, Lg/q/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/q/d;-><init>(II)V

    sput-object v0, Lg/q/d;->f:Lg/q/d;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lg/q/b;-><init>(III)V

    return-void
.end method

.method public static final synthetic f()Lg/q/d;
    .registers 1

    sget-object v0, Lg/q/d;->f:Lg/q/d;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lg/q/b;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lg/q/b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lg/q/d;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lg/q/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lg/q/d;

    invoke-virtual {v0}, Lg/q/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_13
    invoke-virtual {p0}, Lg/q/b;->a()I

    move-result v0

    check-cast p1, Lg/q/d;

    invoke-virtual {p1}, Lg/q/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lg/q/b;->b()I

    move-result v0

    invoke-virtual {p1}, Lg/q/b;->b()I

    move-result p1

    if-ne v0, p1, :cond_2b

    :cond_29
    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    return p1
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lg/q/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_13

    :cond_8
    invoke-virtual {p0}, Lg/q/b;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lg/q/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    :goto_13
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Lg/q/b;->a()I

    move-result v0

    invoke-virtual {p0}, Lg/q/b;->b()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg/q/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/q/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class g.q.d.a (g.q.d$a)
.class public final Lg/q/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/q/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/p/b/d;)V
    .registers 2

    invoke-direct {p0}, Lg/q/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lg/q/d;
    .registers 2

    invoke-static {}, Lg/q/d;->f()Lg/q/d;

    move-result-object v0

    return-object v0
.end method
