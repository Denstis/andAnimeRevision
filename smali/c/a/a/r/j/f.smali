###### Class c.a.a.r.j.f (c.a.a.r.j.f)
.class public abstract Lc/a/a/r/j/f;
.super Lc/a/a/r/j/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lc/a/a/r/j/a<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, v0}, Lc/a/a/r/j/f;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lc/a/a/r/j/a;-><init>()V

    iput p1, p0, Lc/a/a/r/j/f;->c:I

    iput p2, p0, Lc/a/a/r/j/f;->d:I

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/r/j/g;)V
    .registers 2

    return-void
.end method

.method public final b(Lc/a/a/r/j/g;)V
    .registers 4

    iget v0, p0, Lc/a/a/r/j/f;->c:I

    iget v1, p0, Lc/a/a/r/j/f;->d:I

    invoke-static {v0, v1}, Lc/a/a/t/k;->b(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lc/a/a/r/j/f;->c:I

    iget v1, p0, Lc/a/a/r/j/f;->d:I

    invoke-interface {p1, v0, v1}, Lc/a/a/r/j/g;->a(II)V

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/a/a/r/j/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/a/a/r/j/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", either provide dimensions in the constructor or call override()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
