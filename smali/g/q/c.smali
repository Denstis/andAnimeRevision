###### Class g.q.c (g.q.c)
.class public final Lg/q/c;
.super Lg/m/y;
.source ""


# instance fields
.field private final b:I

.field private c:Z

.field private d:I

.field private final e:I


# direct methods
.method public constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Lg/m/y;-><init>()V

    iput p3, p0, Lg/q/c;->e:I

    iput p2, p0, Lg/q/c;->b:I

    iget p3, p0, Lg/q/c;->e:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_10

    if-gt p1, p2, :cond_13

    goto :goto_14

    :cond_10
    if-lt p1, p2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Lg/q/c;->c:Z

    iget-boolean p2, p0, Lg/q/c;->c:Z

    if-eqz p2, :cond_1b

    goto :goto_1d

    :cond_1b
    iget p1, p0, Lg/q/c;->b:I

    :goto_1d
    iput p1, p0, Lg/q/c;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lg/q/c;->d:I

    iget v1, p0, Lg/q/c;->b:I

    if-ne v0, v1, :cond_14

    iget-boolean v1, p0, Lg/q/c;->c:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/q/c;->c:Z

    goto :goto_19

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_14
    iget v1, p0, Lg/q/c;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lg/q/c;->d:I

    :goto_19
    return v0
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lg/q/c;->c:Z

    return v0
.end method
