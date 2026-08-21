###### Class b.e.a (b.e.a)
.class public Lb/e/a;
.super Lb/e/g;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/e/g<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field i:Lb/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/e/g;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/e/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lb/e/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/e/g;-><init>(Lb/e/g;)V

    return-void
.end method

.method private b()Lb/e/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/e/f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/e/a;->i:Lb/e/f;

    if-nez v0, :cond_b

    new-instance v0, Lb/e/a$a;

    invoke-direct {v0, p0}, Lb/e/a$a;-><init>(Lb/e/a;)V

    iput-object v0, p0, Lb/e/a;->i:Lb/e/f;

    :cond_b
    iget-object v0, p0, Lb/e/a;->i:Lb/e/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lb/e/f;->c(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lb/e/a;->b()Lb/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/e/f;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lb/e/a;->b()Lb/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/e/f;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lb/e/g;->d:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lb/e/g;->a(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2a
    return-void
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lb/e/a;->b()Lb/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/e/f;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

###### Class b.e.a.C0098a (b.e.a$a)
.class Lb/e/a$a;
.super Lb/e/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/e/a;->b()Lb/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/e/f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lb/e/a;


# direct methods
.method constructor <init>(Lb/e/a;)V
    .registers 2

    iput-object p1, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-direct {p0}, Lb/e/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected a(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    iget-object v0, v0, Lb/e/g;->c:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0, p1, p2}, Lb/e/g;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .registers 2

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0}, Lb/e/g;->clear()V

    return-void
.end method

.method protected a(I)V
    .registers 3

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->c(I)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0, p1, p2}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    return-object v0
.end method

.method protected c()I
    .registers 2

    iget-object v0, p0, Lb/e/a$a;->d:Lb/e/a;

    iget v0, v0, Lb/e/g;->d:I

    return v0
.end method
