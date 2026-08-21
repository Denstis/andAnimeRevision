###### Class com.bumptech.glide.load.i (com.bumptech.glide.load.i)
.class public final Lcom/bumptech/glide/load/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/g;


# instance fields
.field private final b:Lb/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/a<",
            "Lcom/bumptech/glide/load/h<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/t/b;

    invoke-direct {v0}, Lc/a/a/t/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/h;->a(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/load/i;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v0, p1, p2}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Lcom/bumptech/glide/load/h;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/i;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    iget-object p1, p1, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->a(Lb/e/g;)V

    return-void
.end method

.method public a(Ljava/security/MessageDigest;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v1}, Lb/e/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v1, v0}, Lb/e/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/h;

    iget-object v2, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v2, v0}, Lb/e/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/bumptech/glide/load/i;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/bumptech/glide/load/i;

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    iget-object p1, p1, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v0}, Lb/e/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Options{values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/i;->b:Lb/e/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
