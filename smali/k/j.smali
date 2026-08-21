###### Class k.j (k.j)
.class abstract Lk/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/j$c;,
        Lk/j$h;,
        Lk/j$m;,
        Lk/j$g;,
        Lk/j$e;,
        Lk/j$d;,
        Lk/j$k;,
        Lk/j$l;,
        Lk/j$j;,
        Lk/j$i;,
        Lk/j$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lk/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lk/j$b;

    invoke-direct {v0, p0}, Lk/j$b;-><init>(Lk/j;)V

    return-object v0
.end method

.method abstract a(Lk/l;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "TT;)V"
        }
    .end annotation
.end method

.method final b()Lk/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/j<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lk/j$a;

    invoke-direct {v0, p0}, Lk/j$a;-><init>(Lk/j;)V

    return-object v0
.end method

###### Class k.j.a (k.j$a)
.class Lk/j$a;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/j;->b()Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/j<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lk/j;


# direct methods
.method constructor <init>(Lk/j;)V
    .registers 2

    iput-object p1, p0, Lk/j$a;->a:Lk/j;

    invoke-direct {p0}, Lk/j;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lk/l;Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lk/j$a;->a:Lk/j;

    invoke-virtual {v1, p1, v0}, Lk/j;->a(Lk/l;Ljava/lang/Object;)V

    goto :goto_7

    :cond_17
    return-void
.end method

.method bridge synthetic a(Lk/l;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lk/j$a;->a(Lk/l;Ljava/lang/Iterable;)V

    return-void
.end method

###### Class k.j.b (k.j$b)
.class Lk/j$b;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/j;->a()Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/j<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lk/j;


# direct methods
.method constructor <init>(Lk/j;)V
    .registers 2

    iput-object p1, p0, Lk/j$b;->a:Lk/j;

    invoke-direct {p0}, Lk/j;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lk/l;Ljava/lang/Object;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Lk/j$b;->a:Lk/j;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lk/j;->a(Lk/l;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-void
.end method

###### Class k.j.c (k.j$c)
.class final Lk/j$c;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Lh/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lk/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/e<",
            "TT;",
            "Lh/b0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    iput-object p1, p0, Lk/j$c;->a:Lk/e;

    return-void
.end method


# virtual methods
.method a(Lk/l;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_2b

    :try_start_2
    iget-object v0, p0, Lk/j$c;->a:Lk/e;

    invoke-interface {v0, p2}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/b0;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_e

    invoke-virtual {p1, v0}, Lk/l;->a(Lh/b0;)V

    return-void

    :catch_e
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to RequestBody"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body parameter value must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class k.j.d (k.j$d)
.class final Lk/j$d;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lk/e;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Lk/p;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lk/j$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lk/j$d;->b:Lk/e;

    iput-boolean p3, p0, Lk/j$d;->c:Z

    return-void
.end method


# virtual methods
.method a(Lk/l;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lk/j$d;->b:Lk/e;

    invoke-interface {v0, p2}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lk/j$d;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lk/j$d;->c:Z

    invoke-virtual {p1, v0, p2, v1}, Lk/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

###### Class k.j.e (k.j$e)
.class final Lk/j$e;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method constructor <init>(Lk/e;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    iput-object p1, p0, Lk/j$e;->a:Lk/e;

    iput-boolean p2, p0, Lk/j$e;->b:Z

    return-void
.end method


# virtual methods
.method bridge synthetic a(Lk/l;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lk/j$e;->a(Lk/l;Ljava/util/Map;)V

    return-void
.end method

.method a(Lk/l;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_8d

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\'."

    if-eqz v0, :cond_6a

    iget-object v3, p0, Lk/j$e;->a:Lk/e;

    invoke-interface {v3, v0}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_36

    iget-boolean v0, p0, Lk/j$e;->b:Z

    invoke-virtual {p1, v1, v3, v0}, Lk/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field map value \'"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' converted to null by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk/j$e;->a:Lk/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for key \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field map contained null value for key \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field map contained null key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8c
    return-void

    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field map was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_96

    :goto_95
    throw p1

    :goto_96
    goto :goto_95
.end method

###### Class k.j.f (k.j$f)
.class final Lk/j$f;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lk/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Lk/p;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lk/j$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lk/j$f;->b:Lk/e;

    return-void
.end method


# virtual methods
.method a(Lk/l;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lk/j$f;->b:Lk/e;

    invoke-interface {v0, p2}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lk/j$f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class k.j.g (k.j$g)
.class final Lk/j$g;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lh/s;

.field private final b:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Lh/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lh/s;Lk/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/s;",
            "Lk/e<",
            "TT;",
            "Lh/b0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    iput-object p1, p0, Lk/j$g;->a:Lh/s;

    iput-object p2, p0, Lk/j$g;->b:Lk/e;

    return-void
.end method


# virtual methods
.method a(Lk/l;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lk/j$g;->b:Lk/e;

    invoke-interface {v0, p2}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/b0;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_11

    iget-object p2, p0, Lk/j$g;->a:Lh/s;

    invoke-virtual {p1, p2, v0}, Lk/l;->a(Lh/s;Lh/b0;)V

    return-void

    :catch_11
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to RequestBody"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class k.j.h (k.j$h)
.class final Lk/j$h;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Lh/b0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lk/e;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/e<",
            "TT;",
            "Lh/b0;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    iput-object p1, p0, Lk/j$h;->a:Lk/e;

    iput-object p2, p0, Lk/j$h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method bridge synthetic a(Lk/l;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lk/j$h;->a(Lk/l;Ljava/util/Map;)V

    return-void
.end method

.method a(Lk/l;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_84

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5f

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Content-Disposition"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v3, "Content-Transfer-Encoding"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lk/j$h;->b:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v2}, Lh/s;->a([Ljava/lang/String;)Lh/s;

    move-result-object v1

    iget-object v2, p0, Lk/j$h;->a:Lk/e;

    invoke-interface {v2, v0}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/b0;

    invoke-virtual {p1, v1, v0}, Lk/l;->a(Lh/s;Lh/b0;)V

    goto :goto_a

    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Part map contained null value for key \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Part map contained null key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_83
    return-void

    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Part map was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8d

    :goto_8c
    throw p1

    :goto_8d
    goto :goto_8c
.end method

###### Class k.j.i (k.j$i)
.class final Lk/j$i;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lk/e;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Lk/p;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lk/j$i;->a:Ljava/lang/String;

    iput-object p2, p0, Lk/j$i;->b:Lk/e;

    iput-boolean p3, p0, Lk/j$i;->c:Z

    return-void
.end method


# virtual methods
.method a(Lk/l;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_12

    iget-object v0, p0, Lk/j$i;->a:Ljava/lang/String;

    iget-object v1, p0, Lk/j$i;->b:Lk/e;

    invoke-interface {v1, p2}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-boolean v1, p0, Lk/j$i;->c:Z

    invoke-virtual {p1, v0, p2, v1}, Lk/l;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Path parameter \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk/j$i;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" value must not be null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class k.j.C0197j (k.j$j)
.class final Lk/j$j;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lk/e;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Lk/p;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lk/j$j;->a:Ljava/lang/String;

    iput-object p2, p0, Lk/j$j;->b:Lk/e;

    iput-boolean p3, p0, Lk/j$j;->c:Z

    return-void
.end method


# virtual methods
.method a(Lk/l;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lk/j$j;->b:Lk/e;

    invoke-interface {v0, p2}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lk/j$j;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lk/j$j;->c:Z

    invoke-virtual {p1, v0, p2, v1}, Lk/l;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

###### Class k.j.k (k.j$k)
.class final Lk/j$k;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method constructor <init>(Lk/e;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    iput-object p1, p0, Lk/j$k;->a:Lk/e;

    iput-boolean p2, p0, Lk/j$k;->b:Z

    return-void
.end method


# virtual methods
.method bridge synthetic a(Lk/l;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lk/j$k;->a(Lk/l;Ljava/util/Map;)V

    return-void
.end method

.method a(Lk/l;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_8d

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\'."

    if-eqz v0, :cond_6a

    iget-object v3, p0, Lk/j$k;->a:Lk/e;

    invoke-interface {v3, v0}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_36

    iget-boolean v0, p0, Lk/j$k;->b:Z

    invoke-virtual {p1, v1, v3, v0}, Lk/l;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query map value \'"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' converted to null by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk/j$k;->a:Lk/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for key \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Query map contained null value for key \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Query map contained null key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8c
    return-void

    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Query map was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_96

    :goto_95
    throw p1

    :goto_96
    goto :goto_95
.end method

###### Class k.j.l (k.j$l)
.class final Lk/j$l;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method constructor <init>(Lk/e;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lk/j;-><init>()V

    iput-object p1, p0, Lk/j$l;->a:Lk/e;

    iput-boolean p2, p0, Lk/j$l;->b:Z

    return-void
.end method


# virtual methods
.method a(Lk/l;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/l;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lk/j$l;->a:Lk/e;

    invoke-interface {v0, p2}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lk/j$l;->b:Z

    invoke-virtual {p1, p2, v0, v1}, Lk/l;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

###### Class k.j.m (k.j$m)
.class final Lk/j$m;
.super Lk/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/j<",
        "Lh/w$b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk/j$m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk/j$m;

    invoke-direct {v0}, Lk/j$m;-><init>()V

    sput-object v0, Lk/j$m;->a:Lk/j$m;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk/j;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lk/l;Lh/w$b;)V
    .registers 3

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Lk/l;->a(Lh/w$b;)V

    :cond_5
    return-void
.end method

.method bridge synthetic a(Lk/l;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lh/w$b;

    invoke-virtual {p0, p1, p2}, Lk/j$m;->a(Lk/l;Lh/w$b;)V

    return-void
.end method
