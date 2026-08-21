###### Class b.b.a.b.b (b.b.a.b.b)
.class public Lb/b/a/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/b/b$c;,
        Lb/b/a/b/b$f;,
        Lb/b/a/b/b$d;,
        Lb/b/a/b/b$b;,
        Lb/b/a/b/b$a;,
        Lb/b/a/b/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field b:Lb/b/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Lb/b/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lb/b/a/b/b$f<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lb/b/a/b/b;->d:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/b/b;->e:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Lb/b/a/b/b$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/b;->b:Lb/b/a/b/b$c;

    :goto_2
    if-eqz v0, :cond_10

    iget-object v1, v0, Lb/b/a/b/b$c;->b:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_10

    :cond_d
    iget-object v0, v0, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    goto :goto_2

    :cond_10
    :goto_10
    return-object v0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Lb/b/a/b/b$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lb/b/a/b/b$c;

    invoke-direct {v0, p1, p2}, Lb/b/a/b/b$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lb/b/a/b/b;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/a/b/b;->e:I

    iget-object p1, p0, Lb/b/a/b/b;->c:Lb/b/a/b/b$c;

    if-nez p1, :cond_16

    iput-object v0, p0, Lb/b/a/b/b;->b:Lb/b/a/b/b$c;

    iget-object p1, p0, Lb/b/a/b/b;->b:Lb/b/a/b/b$c;

    iput-object p1, p0, Lb/b/a/b/b;->c:Lb/b/a/b/b$c;

    return-object v0

    :cond_16
    iput-object v0, p1, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    iput-object p1, v0, Lb/b/a/b/b$c;->e:Lb/b/a/b/b$c;

    iput-object v0, p0, Lb/b/a/b/b;->c:Lb/b/a/b/b$c;

    return-object v0
.end method

.method public a()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lb/b/a/b/b$b;

    iget-object v1, p0, Lb/b/a/b/b;->c:Lb/b/a/b/b$c;

    iget-object v2, p0, Lb/b/a/b/b;->b:Lb/b/a/b/b$c;

    invoke-direct {v0, v1, v2}, Lb/b/a/b/b$b;-><init>(Lb/b/a/b/b$c;Lb/b/a/b/b$c;)V

    iget-object v1, p0, Lb/b/a/b/b;->d:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lb/b/a/b/b;->a(Ljava/lang/Object;)Lb/b/a/b/b$c;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object p1, v0, Lb/b/a/b/b$c;->c:Ljava/lang/Object;

    return-object p1

    :cond_9
    invoke-virtual {p0, p1, p2}, Lb/b/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/b/a/b/b$c;

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/b;->b:Lb/b/a/b/b$c;

    return-object v0
.end method

.method public c()Lb/b/a/b/b$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/b/a/b/b<",
            "TK;TV;>.d;"
        }
    .end annotation

    new-instance v0, Lb/b/a/b/b$d;

    invoke-direct {v0, p0}, Lb/b/a/b/b$d;-><init>(Lb/b/a/b/b;)V

    iget-object v1, p0, Lb/b/a/b/b;->d:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/b;->c:Lb/b/a/b/b$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lb/b/a/b/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lb/b/a/b/b;

    invoke-virtual {p0}, Lb/b/a/b/b;->size()I

    move-result v1

    invoke-virtual {p1}, Lb/b/a/b/b;->size()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lb/b/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_39

    if-nez v4, :cond_41

    :cond_39
    if-eqz v3, :cond_1f

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_41
    return v2

    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    return v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lb/b/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_17
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lb/b/a/b/b$a;

    iget-object v1, p0, Lb/b/a/b/b;->b:Lb/b/a/b/b$c;

    iget-object v2, p0, Lb/b/a/b/b;->c:Lb/b/a/b/b$c;

    invoke-direct {v0, v1, v2}, Lb/b/a/b/b$a;-><init>(Lb/b/a/b/b$c;Lb/b/a/b/b$c;)V

    iget-object v1, p0, Lb/b/a/b/b;->d:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lb/b/a/b/b;->a(Ljava/lang/Object;)Lb/b/a/b/b$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    iget v1, p0, Lb/b/a/b/b;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/b/a/b/b;->e:I

    iget-object v1, p0, Lb/b/a/b/b;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lb/b/a/b/b;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/b/b$f;

    invoke-interface {v2, p1}, Lb/b/a/b/b$f;->a(Lb/b/a/b/b$c;)V

    goto :goto_20

    :cond_30
    iget-object v1, p1, Lb/b/a/b/b$c;->e:Lb/b/a/b/b$c;

    if-eqz v1, :cond_39

    iget-object v2, p1, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    iput-object v2, v1, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    goto :goto_3d

    :cond_39
    iget-object v1, p1, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    iput-object v1, p0, Lb/b/a/b/b;->b:Lb/b/a/b/b$c;

    :goto_3d
    iget-object v1, p1, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    if-eqz v1, :cond_46

    iget-object v2, p1, Lb/b/a/b/b$c;->e:Lb/b/a/b/b$c;

    iput-object v2, v1, Lb/b/a/b/b$c;->e:Lb/b/a/b/b$c;

    goto :goto_4a

    :cond_46
    iget-object v1, p1, Lb/b/a/b/b$c;->e:Lb/b/a/b/b$c;

    iput-object v1, p0, Lb/b/a/b/b;->c:Lb/b/a/b/b$c;

    :goto_4a
    iput-object v0, p1, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    iput-object v0, p1, Lb/b/a/b/b$c;->e:Lb/b/a/b/b$c;

    iget-object p1, p1, Lb/b/a/b/b$c;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lb/b/a/b/b;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_2d
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class b.b.a.b.b.a (b.b.a.b.b$a)
.class Lb/b/a/b/b$a;
.super Lb/b/a/b/b$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/b/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lb/b/a/b/b$c;Lb/b/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lb/b/a/b/b$e;-><init>(Lb/b/a/b/b$c;Lb/b/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method b(Lb/b/a/b/b$c;)Lb/b/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Lb/b/a/b/b$c;->e:Lb/b/a/b/b$c;

    return-object p1
.end method

.method c(Lb/b/a/b/b$c;)Lb/b/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    return-object p1
.end method

###### Class b.b.a.b.b.C0096b (b.b.a.b.b$b)
.class Lb/b/a/b/b$b;
.super Lb/b/a/b/b$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/b/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lb/b/a/b/b$c;Lb/b/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lb/b/a/b/b$e;-><init>(Lb/b/a/b/b$c;Lb/b/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method b(Lb/b/a/b/b$c;)Lb/b/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    return-object p1
.end method

.method c(Lb/b/a/b/b$c;)Lb/b/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Lb/b/a/b/b$c;->e:Lb/b/a/b/b$c;

    return-object p1
.end method

###### Class b.b.a.b.b.c (b.b.a.b.b$c)
.class Lb/b/a/b/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field d:Lb/b/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lb/b/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/b/b$c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lb/b/a/b/b$c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lb/b/a/b/b$c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lb/b/a/b/b$c;

    iget-object v1, p0, Lb/b/a/b/b$c;->b:Ljava/lang/Object;

    iget-object v3, p1, Lb/b/a/b/b$c;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lb/b/a/b/b$c;->c:Ljava/lang/Object;

    iget-object p1, p1, Lb/b/a/b/b$c;->c:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/b$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/b$c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lb/b/a/b/b$c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lb/b/a/b/b$c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "An entry modification is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/a/b/b$c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/b/b$c;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class b.b.a.b.b.d (b.b.a.b.b$d)
.class Lb/b/a/b/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lb/b/a/b/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lb/b/a/b/b$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private b:Lb/b/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Z

.field final synthetic d:Lb/b/a/b/b;


# direct methods
.method constructor <init>(Lb/b/a/b/b;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/b/b$d;->d:Lb/b/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/a/b/b$d;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/b$d;->b:Lb/b/a/b/b$c;

    if-ne p1, v0, :cond_11

    iget-object p1, v0, Lb/b/a/b/b$c;->e:Lb/b/a/b/b$c;

    iput-object p1, p0, Lb/b/a/b/b$d;->b:Lb/b/a/b/b$c;

    iget-object p1, p0, Lb/b/a/b/b$d;->b:Lb/b/a/b/b$c;

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-boolean p1, p0, Lb/b/a/b/b$d;->c:Z

    :cond_11
    return-void
.end method

.method public hasNext()Z
    .registers 4

    iget-boolean v0, p0, Lb/b/a/b/b$d;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lb/b/a/b/b$d;->d:Lb/b/a/b/b;

    iget-object v0, v0, Lb/b/a/b/b;->b:Lb/b/a/b/b$c;

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    :cond_f
    iget-object v0, p0, Lb/b/a/b/b$d;->b:Lb/b/a/b/b$c;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lb/b/a/b/b$d;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/b/b$d;->c:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/b/b$d;->c:Z

    iget-object v0, p0, Lb/b/a/b/b$d;->d:Lb/b/a/b/b;

    iget-object v0, v0, Lb/b/a/b/b;->b:Lb/b/a/b/b$c;

    :goto_b
    iput-object v0, p0, Lb/b/a/b/b$d;->b:Lb/b/a/b/b$c;

    goto :goto_17

    :cond_e
    iget-object v0, p0, Lb/b/a/b/b$d;->b:Lb/b/a/b/b$c;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lb/b/a/b/b$c;->d:Lb/b/a/b/b$c;

    goto :goto_b

    :cond_15
    const/4 v0, 0x0

    goto :goto_b

    :goto_17
    iget-object v0, p0, Lb/b/a/b/b$d;->b:Lb/b/a/b/b$c;

    return-object v0
.end method

###### Class b.b.a.b.b.e (b.b.a.b.b$e)
.class abstract Lb/b/a/b/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lb/b/a/b/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lb/b/a/b/b$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field b:Lb/b/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lb/b/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lb/b/a/b/b$c;Lb/b/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/a/b/b$e;->b:Lb/b/a/b/b$c;

    iput-object p1, p0, Lb/b/a/b/b$e;->c:Lb/b/a/b/b$c;

    return-void
.end method

.method private a()Lb/b/a/b/b$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/b$e;->c:Lb/b/a/b/b$c;

    iget-object v1, p0, Lb/b/a/b/b$e;->b:Lb/b/a/b/b$c;

    if-eq v0, v1, :cond_e

    if-nez v1, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p0, v0}, Lb/b/a/b/b$e;->c(Lb/b/a/b/b$c;)Lb/b/a/b/b$c;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Lb/b/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/b$e;->b:Lb/b/a/b/b$c;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lb/b/a/b/b$e;->c:Lb/b/a/b/b$c;

    if-ne p1, v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/a/b/b$e;->c:Lb/b/a/b/b$c;

    iput-object v0, p0, Lb/b/a/b/b$e;->b:Lb/b/a/b/b$c;

    :cond_d
    iget-object v0, p0, Lb/b/a/b/b$e;->b:Lb/b/a/b/b$c;

    if-ne v0, p1, :cond_17

    invoke-virtual {p0, v0}, Lb/b/a/b/b$e;->b(Lb/b/a/b/b$c;)Lb/b/a/b/b$c;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/b/b$e;->b:Lb/b/a/b/b$c;

    :cond_17
    iget-object v0, p0, Lb/b/a/b/b$e;->c:Lb/b/a/b/b$c;

    if-ne v0, p1, :cond_21

    invoke-direct {p0}, Lb/b/a/b/b$e;->a()Lb/b/a/b/b$c;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/b/b$e;->c:Lb/b/a/b/b$c;

    :cond_21
    return-void
.end method

.method abstract b(Lb/b/a/b/b$c;)Lb/b/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract c(Lb/b/a/b/b$c;)Lb/b/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lb/b/a/b/b$e;->c:Lb/b/a/b/b$c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lb/b/a/b/b$e;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/b$e;->c:Lb/b/a/b/b$c;

    invoke-direct {p0}, Lb/b/a/b/b$e;->a()Lb/b/a/b/b$c;

    move-result-object v1

    iput-object v1, p0, Lb/b/a/b/b$e;->c:Lb/b/a/b/b$c;

    return-object v0
.end method

###### Class b.b.a.b.b.f (b.b.a.b.b$f)
.class interface abstract Lb/b/a/b/b$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lb/b/a/b/b$c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method
