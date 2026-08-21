###### Class c.a.a.r.f (c.a.a.r.f)
.class public Lc/a/a/r/f;
.super Lc/a/a/r/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/r/a<",
        "Lc/a/a/r/f;",
        ">;"
    }
.end annotation


# static fields
.field private static B:Lc/a/a/r/f;

.field private static C:Lc/a/a/r/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc/a/a/r/a;-><init>()V

    return-void
.end method

.method public static J()Lc/a/a/r/f;
    .registers 1

    sget-object v0, Lc/a/a/r/f;->B:Lc/a/a/r/f;

    if-nez v0, :cond_16

    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0}, Lc/a/a/r/f;-><init>()V

    invoke-virtual {v0}, Lc/a/a/r/a;->b()Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/r/f;

    invoke-virtual {v0}, Lc/a/a/r/a;->a()Lc/a/a/r/a;

    check-cast v0, Lc/a/a/r/f;

    sput-object v0, Lc/a/a/r/f;->B:Lc/a/a/r/f;

    :cond_16
    sget-object v0, Lc/a/a/r/f;->B:Lc/a/a/r/f;

    return-object v0
.end method

.method public static K()Lc/a/a/r/f;
    .registers 1

    sget-object v0, Lc/a/a/r/f;->C:Lc/a/a/r/f;

    if-nez v0, :cond_16

    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0}, Lc/a/a/r/f;-><init>()V

    invoke-virtual {v0}, Lc/a/a/r/a;->c()Lc/a/a/r/a;

    move-result-object v0

    check-cast v0, Lc/a/a/r/f;

    invoke-virtual {v0}, Lc/a/a/r/a;->a()Lc/a/a/r/a;

    check-cast v0, Lc/a/a/r/f;

    sput-object v0, Lc/a/a/r/f;->C:Lc/a/a/r/f;

    :cond_16
    sget-object v0, Lc/a/a/r/f;->C:Lc/a/a/r/f;

    return-object v0
.end method

.method public static b(Lcom/bumptech/glide/load/g;)Lc/a/a/r/f;
    .registers 2

    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0}, Lc/a/a/r/f;-><init>()V

    invoke-virtual {v0, p0}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/g;)Lc/a/a/r/a;

    move-result-object p0

    check-cast p0, Lc/a/a/r/f;

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/load/l;)Lc/a/a/r/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/a/a/r/f;"
        }
    .end annotation

    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0}, Lc/a/a/r/f;-><init>()V

    invoke-virtual {v0, p0}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object p0

    check-cast p0, Lc/a/a/r/f;

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/load/n/j;)Lc/a/a/r/f;
    .registers 2

    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0}, Lc/a/a/r/f;-><init>()V

    invoke-virtual {v0, p0}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/n/j;)Lc/a/a/r/a;

    move-result-object p0

    check-cast p0, Lc/a/a/r/f;

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lc/a/a/r/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lc/a/a/r/f;"
        }
    .end annotation

    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0}, Lc/a/a/r/f;-><init>()V

    invoke-virtual {v0, p0}, Lc/a/a/r/a;->a(Ljava/lang/Class;)Lc/a/a/r/a;

    move-result-object p0

    check-cast p0, Lc/a/a/r/f;

    return-object p0
.end method
