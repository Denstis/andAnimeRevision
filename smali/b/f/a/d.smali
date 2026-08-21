###### Class b.f.a.d (b.f.a.d)
.class public Lb/f/a/d;
.super Lb/f/a/b;
.source ""


# direct methods
.method public constructor <init>(Lb/f/a/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/f/a/b;-><init>(Lb/f/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Lb/f/a/i;)V
    .registers 3

    invoke-super {p0, p1}, Lb/f/a/b;->a(Lb/f/a/i;)V

    iget v0, p1, Lb/f/a/i;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lb/f/a/i;->j:I

    return-void
.end method
