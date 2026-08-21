###### Class c.b.a.a (c.b.a.a)
.class Lc/b/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lc/b/a/a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/a$a;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    invoke-static {p1}, Lc/b/a/a$a;->a(Lc/b/a/a$a;)Lc/b/a/c/c;

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lc/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(Ljava/lang/String;Lc/b/a/c/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/b/a/c/c<",
            "+",
            "Lc/b/a/c/e;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    if-eqz p2, :cond_20

    iget-object v0, p0, Lc/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a$a;

    if-nez v0, :cond_1c

    new-instance v0, Lc/b/a/a$a;

    invoke-direct {v0}, Lc/b/a/a$a;-><init>()V

    invoke-static {v0, p2}, Lc/b/a/a$a;->a(Lc/b/a/a$a;Lc/b/a/c/c;)Lc/b/a/c/c;

    iget-object p2, p0, Lc/b/a/a;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_1c
    invoke-static {v0, p2}, Lc/b/a/a$a;->a(Lc/b/a/a$a;Lc/b/a/c/c;)Lc/b/a/c/c;

    :goto_1f
    return-void

    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Presenter is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ViewId is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lc/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "View Id is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class c.b.a.a.C0134a (c.b.a.a$a)
.class final Lc/b/a/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lc/b/a/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lc/b/a/a$a;)Lc/b/a/c/c;
    .registers 1

    iget-object p0, p0, Lc/b/a/a$a;->a:Lc/b/a/c/c;

    return-object p0
.end method

.method static synthetic a(Lc/b/a/a$a;Lc/b/a/c/c;)Lc/b/a/c/c;
    .registers 2

    iput-object p1, p0, Lc/b/a/a$a;->a:Lc/b/a/c/c;

    return-object p1
.end method
