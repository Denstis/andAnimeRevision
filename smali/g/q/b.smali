###### Class g.q.b (g.q.b)
.class public Lg/q/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lg/p/b/l/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/q/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;",
        "Lg/p/b/l/a;"
    }
.end annotation


# static fields
.field public static final e:Lg/q/b$a;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lg/q/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/q/b$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lg/q/b;->e:Lg/q/b$a;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1c

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_14

    iput p1, p0, Lg/q/b;->b:I

    invoke-static {p1, p2, p3}, Lg/n/c;->b(III)I

    move-result p1

    iput p1, p0, Lg/q/b;->c:I

    iput p3, p0, Lg/q/b;->d:I

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lg/q/b;->b:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lg/q/b;->c:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lg/q/b;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lg/q/b;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lg/q/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lg/q/b;

    invoke-virtual {v0}, Lg/q/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_13
    iget v0, p0, Lg/q/b;->b:I

    check-cast p1, Lg/q/b;

    iget v1, p1, Lg/q/b;->b:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Lg/q/b;->c:I

    iget v1, p1, Lg/q/b;->c:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Lg/q/b;->d:I

    iget p1, p1, Lg/q/b;->d:I

    if-ne v0, p1, :cond_29

    :cond_27
    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lg/q/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_14

    :cond_8
    iget v0, p0, Lg/q/b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/q/b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/q/b;->d:I

    add-int/2addr v0, v1

    :goto_14
    return v0
.end method

.method public isEmpty()Z
    .registers 5

    iget v0, p0, Lg/q/b;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_d

    iget v0, p0, Lg/q/b;->b:I

    iget v3, p0, Lg/q/b;->c:I

    if-le v0, v3, :cond_14

    goto :goto_15

    :cond_d
    iget v0, p0, Lg/q/b;->b:I

    iget v3, p0, Lg/q/b;->c:I

    if-ge v0, v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public iterator()Lg/m/y;
    .registers 5

    new-instance v0, Lg/q/c;

    iget v1, p0, Lg/q/b;->b:I

    iget v2, p0, Lg/q/b;->c:I

    iget v3, p0, Lg/q/b;->d:I

    invoke-direct {v0, v1, v2, v3}, Lg/q/c;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lg/q/b;->iterator()Lg/m/y;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lg/q/b;->d:I

    const-string v1, " step "

    if-lez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lg/q/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lg/q/b;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/q/b;->d:I

    goto :goto_3a

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lg/q/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lg/q/b;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/q/b;->d:I

    neg-int v1, v1

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class g.q.b.a (g.q.b$a)
.class public final Lg/q/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/q/b;
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

    invoke-direct {p0}, Lg/q/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lg/q/b;
    .registers 5

    new-instance v0, Lg/q/b;

    invoke-direct {v0, p1, p2, p3}, Lg/q/b;-><init>(III)V

    return-object v0
.end method
