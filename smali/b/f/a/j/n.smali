###### Class b.f.a.j.n (b.f.a.j.n)
.class public Lb/f/a/j/n;
.super Lb/f/a/j/o;
.source ""


# instance fields
.field c:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb/f/a/j/o;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/n;->c:F

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget v0, p0, Lb/f/a/j/o;->b:I

    if-eqz v0, :cond_b

    iget v0, p0, Lb/f/a/j/n;->c:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    :cond_b
    int-to-float p1, p1

    iput p1, p0, Lb/f/a/j/n;->c:F

    iget p1, p0, Lb/f/a/j/o;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    invoke-virtual {p0}, Lb/f/a/j/o;->b()V

    :cond_16
    invoke-virtual {p0}, Lb/f/a/j/o;->a()V

    :cond_19
    return-void
.end method

.method public d()V
    .registers 2

    invoke-super {p0}, Lb/f/a/j/o;->d()V

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/j/n;->c:F

    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lb/f/a/j/o;->b:I

    return-void
.end method
