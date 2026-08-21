###### Class b.q.b (b.q.b)
.class public Lb/q/b;
.super Lb/q/r;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/q/r;-><init>()V

    invoke-direct {p0}, Lb/q/b;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/q/r;->b(I)Lb/q/r;

    new-instance v1, Lb/q/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lb/q/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    new-instance v1, Lb/q/c;

    invoke-direct {v1}, Lb/q/c;-><init>()V

    invoke-virtual {p0, v1}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    new-instance v1, Lb/q/d;

    invoke-direct {v1, v0}, Lb/q/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/q/r;->a(Lb/q/n;)Lb/q/r;

    return-void
.end method
