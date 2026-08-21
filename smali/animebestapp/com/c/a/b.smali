###### Class animebestapp.com.c.a.b (animebestapp.com.c.a.b)
.class public final Lanimebestapp/com/c/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/c/a/b$d;,
        Lanimebestapp/com/c/a/b$c;,
        Lanimebestapp/com/c/a/b$b;
    }
.end annotation


# instance fields
.field private a:Lanimebestapp/com/c/b/a;

.field private b:Lanimebestapp/com/c/a/b$c;

.field private c:Lanimebestapp/com/c/a/b$d;

.field private d:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lanimebestapp/com/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lanimebestapp/com/c/a/b$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->a(Lanimebestapp/com/c/a/b$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lanimebestapp/com/c/a/b$b;Lanimebestapp/com/c/a/b$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;-><init>(Lanimebestapp/com/c/a/b$b;)V

    return-void
.end method

.method public static a()Lanimebestapp/com/c/a/a$a;
    .registers 2

    new-instance v0, Lanimebestapp/com/c/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/c/a/b$b;-><init>(Lanimebestapp/com/c/a/b$a;)V

    return-object v0
.end method

.method private a(Lanimebestapp/com/c/a/b$b;)V
    .registers 4

    invoke-static {p1}, Lanimebestapp/com/c/a/b$b;->a(Lanimebestapp/com/c/a/b$b;)Lanimebestapp/com/c/b/a;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/c/a/b;->a:Lanimebestapp/com/c/b/a;

    new-instance v0, Lanimebestapp/com/c/a/b$c;

    invoke-static {p1}, Lanimebestapp/com/c/a/b$b;->a(Lanimebestapp/com/c/a/b$b;)Lanimebestapp/com/c/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lanimebestapp/com/c/a/b$c;-><init>(Lanimebestapp/com/c/b/a;)V

    iput-object v0, p0, Lanimebestapp/com/c/a/b;->b:Lanimebestapp/com/c/a/b$c;

    new-instance v0, Lanimebestapp/com/c/a/b$d;

    invoke-static {p1}, Lanimebestapp/com/c/a/b$b;->a(Lanimebestapp/com/c/a/b$b;)Lanimebestapp/com/c/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lanimebestapp/com/c/a/b$d;-><init>(Lanimebestapp/com/c/b/a;)V

    iput-object v0, p0, Lanimebestapp/com/c/a/b;->c:Lanimebestapp/com/c/a/b$d;

    invoke-static {p1}, Lanimebestapp/com/c/a/b$b;->b(Lanimebestapp/com/c/a/b$b;)Lanimebestapp/com/c/a/c;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->b:Lanimebestapp/com/c/a/b$c;

    iget-object v1, p0, Lanimebestapp/com/c/a/b;->c:Lanimebestapp/com/c/a/b$d;

    invoke-static {p1, v0, v1}, Lanimebestapp/com/c/a/d;->a(Lanimebestapp/com/c/a/c;Lf/a/a;Lf/a/a;)Lanimebestapp/com/c/a/d;

    move-result-object p1

    invoke-static {p1}, Ld/c/a;->a(Lf/a/a;)Lf/a/a;

    move-result-object p1

    iput-object p1, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    return-void
.end method

.method private b(Lanimebestapp/com/ui/auth/a;)Lanimebestapp/com/ui/auth/a;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/auth/b;->a(Lanimebestapp/com/ui/auth/a;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/comments/b;)Lanimebestapp/com/ui/comments/b;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/comments/c;->a(Lanimebestapp/com/ui/comments/b;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/info/a;)Lanimebestapp/com/ui/info/a;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->a:Lanimebestapp/com/c/b/a;

    invoke-interface {v0}, Lanimebestapp/com/c/b/a;->c()Lanimebestapp/com/b/b/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lanimebestapp/com/b/b/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/b;->a(Lanimebestapp/com/ui/info/a;Lanimebestapp/com/b/b/a;)V

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/b;->a(Lanimebestapp/com/ui/info/a;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/info/e/a/c;)Lanimebestapp/com/ui/info/e/a/c;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/e/a/d;->a(Lanimebestapp/com/ui/info/e/a/c;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/b;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->a:Lanimebestapp/com/c/b/a;

    invoke-interface {v0}, Lanimebestapp/com/c/b/a;->c()Lanimebestapp/com/b/b/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lanimebestapp/com/b/b/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/e/b/c;->a(Lanimebestapp/com/ui/info/e/b/b;Lanimebestapp/com/b/b/a;)V

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/e/b/c;->a(Lanimebestapp/com/ui/info/e/b/b;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/info/player/a;)Lanimebestapp/com/ui/info/player/a;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->a:Lanimebestapp/com/c/b/a;

    invoke-interface {v0}, Lanimebestapp/com/c/b/a;->c()Lanimebestapp/com/b/b/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lanimebestapp/com/b/b/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/player/b;->a(Lanimebestapp/com/ui/info/player/a;Lanimebestapp/com/b/b/a;)V

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->a:Lanimebestapp/com/c/b/a;

    invoke-interface {v0}, Lanimebestapp/com/c/b/a;->b()Lh/x;

    move-result-object v0

    invoke-static {v0, v1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lh/x;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/player/b;->a(Lanimebestapp/com/ui/info/player/a;Lh/x;)V

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/player/b;->a(Lanimebestapp/com/ui/info/player/a;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/nav/e;)Lanimebestapp/com/ui/nav/e;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->a:Lanimebestapp/com/c/b/a;

    invoke-interface {v0}, Lanimebestapp/com/c/b/a;->c()Lanimebestapp/com/b/b/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lanimebestapp/com/b/b/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/f;->a(Lanimebestapp/com/ui/nav/e;Lanimebestapp/com/b/b/a;)V

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/f;->a(Lanimebestapp/com/ui/nav/e;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/nav/h/a/d;)Lanimebestapp/com/ui/nav/h/a/d;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/a/e;->a(Lanimebestapp/com/ui/nav/h/a/d;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/nav/h/b/b;)Lanimebestapp/com/ui/nav/h/b/b;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/b/c;->a(Lanimebestapp/com/ui/nav/h/b/b;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/nav/h/c/b;)Lanimebestapp/com/ui/nav/h/c/b;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/c/c;->a(Lanimebestapp/com/ui/nav/h/c/b;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/nav/h/c/e/b;)Lanimebestapp/com/ui/nav/h/c/e/b;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/c/e/c;->a(Lanimebestapp/com/ui/nav/h/c/e/b;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/nav/h/d/c;)Lanimebestapp/com/ui/nav/h/d/c;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/d/d;->a(Lanimebestapp/com/ui/nav/h/d/c;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/nav/h/d/f/b;)Lanimebestapp/com/ui/nav/h/d/f/b;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/d/f/c;->a(Lanimebestapp/com/ui/nav/h/d/f/b;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/nav/h/e/b;)Lanimebestapp/com/ui/nav/h/e/b;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/e/c;->a(Lanimebestapp/com/ui/nav/h/e/b;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/presentation/b;)Lanimebestapp/com/ui/presentation/b;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/presentation/c;->a(Lanimebestapp/com/ui/presentation/b;Lanimebestapp/com/d/a;)V

    return-object p1
.end method

.method private b(Lanimebestapp/com/ui/top/a;)Lanimebestapp/com/ui/top/a;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/d/a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/top/b;->a(Lanimebestapp/com/ui/top/a;Lanimebestapp/com/d/a;)V

    return-object p1
.end method


# virtual methods
.method public a(Lanimebestapp/com/ui/auth/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/auth/a;)Lanimebestapp/com/ui/auth/a;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/comments/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/comments/b;)Lanimebestapp/com/ui/comments/b;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/dubbers/a;)V
    .registers 2

    return-void
.end method

.method public a(Lanimebestapp/com/ui/info/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/info/a;)Lanimebestapp/com/ui/info/a;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/info/e/a/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/info/e/a/c;)Lanimebestapp/com/ui/info/e/a/c;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/info/e/b/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/b;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/info/player/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/info/player/a;)Lanimebestapp/com/ui/info/player/a;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/nav/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/nav/e;)Lanimebestapp/com/ui/nav/e;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/nav/h/a/d;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/nav/h/a/d;)Lanimebestapp/com/ui/nav/h/a/d;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/nav/h/b/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/nav/h/b/b;)Lanimebestapp/com/ui/nav/h/b/b;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/nav/h/c/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/nav/h/c/b;)Lanimebestapp/com/ui/nav/h/c/b;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/nav/h/c/e/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/nav/h/c/e/b;)Lanimebestapp/com/ui/nav/h/c/e/b;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/nav/h/d/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/nav/h/d/c;)Lanimebestapp/com/ui/nav/h/d/c;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/nav/h/d/f/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/nav/h/d/f/b;)Lanimebestapp/com/ui/nav/h/d/f/b;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/nav/h/e/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/nav/h/e/b;)Lanimebestapp/com/ui/nav/h/e/b;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/news/a;)V
    .registers 2

    return-void
.end method

.method public a(Lanimebestapp/com/ui/presentation/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/presentation/b;)Lanimebestapp/com/ui/presentation/b;

    return-void
.end method

.method public a(Lanimebestapp/com/ui/reviews/a;)V
    .registers 2

    return-void
.end method

.method public a(Lanimebestapp/com/ui/top/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/c/a/b;->b(Lanimebestapp/com/ui/top/a;)Lanimebestapp/com/ui/top/a;

    return-void
.end method

###### Class animebestapp.com.c.a.b.a (animebestapp.com.c.a.b$a)
.class synthetic Lanimebestapp/com/c/a/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class animebestapp.com.c.a.b.C0026b (animebestapp.com.c.a.b$b)
.class final Lanimebestapp/com/c/a/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/c/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lanimebestapp/com/c/a/c;

.field private b:Lanimebestapp/com/c/b/a;

.field private c:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lanimebestapp/com/c/a/b$a;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/c/a/b$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lanimebestapp/com/c/a/b$b;)Lanimebestapp/com/c/b/a;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/c/a/b$b;->b:Lanimebestapp/com/c/b/a;

    return-object p0
.end method

.method static synthetic b(Lanimebestapp/com/c/a/b$b;)Lanimebestapp/com/c/a/c;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/c/a/b$b;->a:Lanimebestapp/com/c/a/c;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)Lanimebestapp/com/c/a/a$a;
    .registers 2

    invoke-virtual {p0, p1}, Lanimebestapp/com/c/a/b$b;->a(Landroid/app/Activity;)Lanimebestapp/com/c/a/b$b;

    return-object p0
.end method

.method public bridge synthetic a(Lanimebestapp/com/c/b/a;)Lanimebestapp/com/c/a/a$a;
    .registers 2

    invoke-virtual {p0, p1}, Lanimebestapp/com/c/a/b$b;->a(Lanimebestapp/com/c/b/a;)Lanimebestapp/com/c/a/b$b;

    return-object p0
.end method

.method public a()Lanimebestapp/com/c/a/a;
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/c/a/b$b;->a:Lanimebestapp/com/c/a/c;

    if-nez v0, :cond_b

    new-instance v0, Lanimebestapp/com/c/a/c;

    invoke-direct {v0}, Lanimebestapp/com/c/a/c;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/c/a/b$b;->a:Lanimebestapp/com/c/a/c;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/c/a/b$b;->b:Lanimebestapp/com/c/b/a;

    const-string v1, " must be set"

    if-eqz v0, :cond_37

    iget-object v0, p0, Lanimebestapp/com/c/a/b$b;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1c

    new-instance v0, Lanimebestapp/com/c/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lanimebestapp/com/c/a/b;-><init>(Lanimebestapp/com/c/a/b$b;Lanimebestapp/com/c/a/b$a;)V

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lanimebestapp/com/c/b/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/app/Activity;)Lanimebestapp/com/c/a/b$b;
    .registers 2

    invoke-static {p1}, Ld/c/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lanimebestapp/com/c/a/b$b;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public a(Lanimebestapp/com/c/b/a;)Lanimebestapp/com/c/a/b$b;
    .registers 2

    invoke-static {p1}, Ld/c/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lanimebestapp/com/c/b/a;

    iput-object p1, p0, Lanimebestapp/com/c/a/b$b;->b:Lanimebestapp/com/c/b/a;

    return-object p0
.end method

###### Class animebestapp.com.c.a.b.c (animebestapp.com.c.a.b$c)
.class Lanimebestapp/com/c/a/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/a/a<",
        "Lanimebestapp/com/b/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lanimebestapp/com/c/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/c/b/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/c/a/b$c;->a:Lanimebestapp/com/c/b/a;

    return-void
.end method


# virtual methods
.method public get()Lanimebestapp/com/b/b/a;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b$c;->a:Lanimebestapp/com/c/b/a;

    invoke-interface {v0}, Lanimebestapp/com/c/b/a;->c()Lanimebestapp/com/b/b/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lanimebestapp/com/b/b/a;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/a/b$c;->get()Lanimebestapp/com/b/b/a;

    move-result-object v0

    return-object v0
.end method

###### Class animebestapp.com.c.a.b.d (animebestapp.com.c.a.b$d)
.class Lanimebestapp/com/c/a/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/a/a<",
        "Lanimebestapp/com/e/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lanimebestapp/com/c/b/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/c/b/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/c/a/b$d;->a:Lanimebestapp/com/c/b/a;

    return-void
.end method


# virtual methods
.method public get()Lanimebestapp/com/e/b;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/a/b$d;->a:Lanimebestapp/com/c/b/a;

    invoke-interface {v0}, Lanimebestapp/com/c/b/a;->a()Lanimebestapp/com/e/b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lanimebestapp/com/e/b;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/a/b$d;->get()Lanimebestapp/com/e/b;

    move-result-object v0

    return-object v0
.end method
