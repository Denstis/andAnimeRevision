###### Class b.f.a.j.j (b.f.a.j.j)
.class public Lb/f/a/j/j;
.super Lb/f/a/j/f;
.source ""


# instance fields
.field protected k0:[Lb/f/a/j/f;

.field protected l0:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb/f/a/j/f;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lb/f/a/j/f;

    iput-object v0, p0, Lb/f/a/j/j;->k0:[Lb/f/a/j/f;

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/j;->l0:I

    return-void
.end method


# virtual methods
.method public J()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/j;->l0:I

    return-void
.end method

.method public b(Lb/f/a/j/f;)V
    .registers 5

    iget v0, p0, Lb/f/a/j/j;->l0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/f/a/j/j;->k0:[Lb/f/a/j/f;

    array-length v2, v1

    if-le v0, v2, :cond_14

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/f/a/j/f;

    iput-object v0, p0, Lb/f/a/j/j;->k0:[Lb/f/a/j/f;

    :cond_14
    iget-object v0, p0, Lb/f/a/j/j;->k0:[Lb/f/a/j/f;

    iget v1, p0, Lb/f/a/j/j;->l0:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/f/a/j/j;->l0:I

    return-void
.end method
