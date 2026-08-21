###### Class g.r.h (g.r.h)
.class public final Lg/r/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/r/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg/r/a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lg/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/r/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lg/p/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/p/a/b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/r/a;Lg/p/a/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/r/a<",
            "+TT;>;",
            "Lg/p/a/b<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/r/h;->a:Lg/r/a;

    iput-object p2, p0, Lg/r/h;->b:Lg/p/a/b;

    return-void
.end method

.method public static final synthetic a(Lg/r/h;)Lg/r/a;
    .registers 1

    iget-object p0, p0, Lg/r/h;->a:Lg/r/a;

    return-object p0
.end method

.method public static final synthetic b(Lg/r/h;)Lg/p/a/b;
    .registers 1

    iget-object p0, p0, Lg/r/h;->b:Lg/p/a/b;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lg/r/h$a;

    invoke-direct {v0, p0}, Lg/r/h$a;-><init>(Lg/r/h;)V

    return-object v0
.end method

###### Class g.r.h.a (g.r.h$a)
.class public final Lg/r/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lg/p/b/l/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/r/h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TR;>;",
        "Lg/p/b/l/a;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lg/r/h;


# direct methods
.method constructor <init>(Lg/r/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg/r/h$a;->c:Lg/r/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg/r/h;->a(Lg/r/h;)Lg/r/a;

    move-result-object p1

    invoke-interface {p1}, Lg/r/a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lg/r/h$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lg/r/h$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lg/r/h$a;->c:Lg/r/h;

    invoke-static {v0}, Lg/r/h;->b(Lg/r/h;)Lg/p/a/b;

    move-result-object v0

    iget-object v1, p0, Lg/r/h$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/p/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
