###### Class g.e (g.e)
.class public final Lg/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lg/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lg/e;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lg/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/e$a;-><init>(Lg/p/b/d;)V

    new-instance v0, Lg/e;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lg/e;-><init>(III)V

    sput-object v0, Lg/e;->f:Lg/e;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/e;->c:I

    iput p2, p0, Lg/e;->d:I

    iput p3, p0, Lg/e;->e:I

    iget p1, p0, Lg/e;->c:I

    iget p2, p0, Lg/e;->d:I

    iget p3, p0, Lg/e;->e:I

    invoke-direct {p0, p1, p2, p3}, Lg/e;->a(III)I

    move-result p1

    iput p1, p0, Lg/e;->b:I

    return-void
.end method

.method private final a(III)I
    .registers 6

    if-gez p1, :cond_3

    goto :goto_13

    :cond_3
    const/16 v0, 0xff

    if-lt v0, p1, :cond_13

    if-gez p2, :cond_a

    goto :goto_13

    :cond_a
    if-lt v0, p2, :cond_13

    if-gez p3, :cond_f

    goto :goto_13

    :cond_f
    if-lt v0, p3, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1d

    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    return p1

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version components are out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Lg/e;)I
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lg/e;->b:I

    iget p1, p1, Lg/e;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lg/e;

    invoke-virtual {p0, p1}, Lg/e;->a(Lg/e;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lg/e;

    if-nez v1, :cond_9

    const/4 p1, 0x0

    :cond_9
    check-cast p1, Lg/e;

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    iget v2, p0, Lg/e;->b:I

    iget p1, p1, Lg/e;->b:I

    if-ne v2, p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lg/e;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lg/e;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class g.e.a (g.e$a)
.class public final Lg/e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e;
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

    invoke-direct {p0}, Lg/e$a;-><init>()V

    return-void
.end method
