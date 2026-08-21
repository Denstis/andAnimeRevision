###### Class animebestapp.com.d.a (animebestapp.com.d.a)
.class public final Lanimebestapp/com/d/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lanimebestapp/com/b/b/a;

.field private final b:Lanimebestapp/com/e/b;


# direct methods
.method public constructor <init>(Lanimebestapp/com/b/b/a;Lanimebestapp/com/e/b;)V
    .registers 4

    const-string v0, "localRepository"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRepository"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    iput-object p2, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/d/a;)Lanimebestapp/com/b/b/a;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Le/a/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Le/a/h<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;>;"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/e/b;->a(Ljava/lang/String;I)Le/a/o;

    move-result-object p1

    invoke-virtual {p1}, Le/a/o;->a()Le/a/h;

    move-result-object p1

    const-string p2, "networkRepository.getCat\u2026ory, page).toObservable()"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a()Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/o<",
            "Lanimebestapp/com/models/AdBanner;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0}, Lanimebestapp/com/e/b;->a()Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/d/a$b;

    invoke-direct {v1, p0}, Lanimebestapp/com/d/a$b;-><init>(Lanimebestapp/com/d/a;)V

    invoke-virtual {v0, v1}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object v0

    const-string v1, "networkRepository.getAdB\u2026 ?: \"\").not() )\n        }"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(I)Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/o<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1}, Lanimebestapp/com/e/b;->a(I)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Le/a/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/o<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/e/b;->a(J)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(JJ)Le/a/o;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Le/a/o<",
            "Lanimebestapp/com/models/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lanimebestapp/com/e/b;->a(JJ)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(JJLjava/lang/String;)Le/a/o;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Le/a/o<",
            "Lg/l;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p5, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lanimebestapp/com/e/b;->a(JJLjava/lang/String;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Le/a/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/o<",
            "Lanimebestapp/com/models/g;",
            ">;"
        }
    .end annotation

    const-string v0, "login"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/d/a$a;

    invoke-direct {p2, p0}, Lanimebestapp/com/d/a$a;-><init>(Lanimebestapp/com/d/a;)V

    invoke-virtual {p1, p2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string p2, "networkRepository.auth(l\u2026lRepository.setUser(it) }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/o<",
            "Lanimebestapp/com/models/g;",
            ">;"
        }
    .end annotation

    const-string v0, "login"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1, p2, p3}, Lanimebestapp/com/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/d/a$e;

    invoke-direct {p2, p0}, Lanimebestapp/com/d/a$e;-><init>(Lanimebestapp/com/d/a;)V

    invoke-virtual {p1, p2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string p2, "networkRepository.reg(lo\u2026lRepository.setUser(it) }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;I)Le/a/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Le/a/h<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Comment;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/e/b;->b(Ljava/lang/String;I)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public final b()Le/a/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/o<",
            "Lanimebestapp/com/models/BannerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0}, Lanimebestapp/com/e/b;->b()Le/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Le/a/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/o<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;>;"
        }
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/e/b;->b(Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/o<",
            "Lg/l;",
            ">;"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postId"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipv4HostAddress"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    iget-object v1, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    invoke-virtual {v1}, Lanimebestapp/com/b/b/a;->c()Lanimebestapp/com/models/g;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lanimebestapp/com/models/g;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const-string v1, "0"

    :goto_26
    invoke-virtual {v0, p1, p2, v1, p3}, Lanimebestapp/com/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/b/a;->b(I)V

    return-void
.end method

.method public final c(Ljava/lang/String;I)Le/a/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Le/a/h<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/d;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/e/b;->c(Ljava/lang/String;I)Le/a/o;

    move-result-object v0

    invoke-virtual {v0}, Le/a/o;->a()Le/a/h;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/d/a$c;

    invoke-direct {v1, p1, p2}, Lanimebestapp/com/d/a$c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Le/a/h;->a(Le/a/x/d;)Le/a/h;

    move-result-object p1

    const-string p2, "networkRepository.getLas\u2026$category page: $page\") }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c()Le/a/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/o<",
            "Lanimebestapp/com/ui/nav/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0}, Lanimebestapp/com/e/b;->c()Le/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;I)Le/a/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Le/a/h<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;>;"
        }
    .end annotation

    const-string v0, "search"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/e/b;->d(Ljava/lang/String;I)Le/a/o;

    move-result-object p1

    invoke-virtual {p1}, Le/a/o;->a()Le/a/h;

    move-result-object p1

    const-string p2, "networkRepository.search\u2026rch, page).toObservable()"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Le/a/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/o<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/e;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-virtual {v0}, Lanimebestapp/com/e/b;->d()Le/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    invoke-virtual {v0}, Lanimebestapp/com/b/b/a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Lanimebestapp/com/models/g;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    invoke-virtual {v0}, Lanimebestapp/com/b/b/a;->c()Lanimebestapp/com/models/g;

    move-result-object v0

    return-object v0
.end method

.method public final g()Le/a/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/o<",
            "Lanimebestapp/com/models/g;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lanimebestapp/com/d/a;->f()Lanimebestapp/com/models/g;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lanimebestapp/com/models/g;->c()J

    move-result-wide v0

    iget-object v2, p0, Lanimebestapp/com/d/a;->b:Lanimebestapp/com/e/b;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lanimebestapp/com/e/b;->a(Ljava/lang/String;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/d/a$d;

    invoke-direct {v1, p0}, Lanimebestapp/com/d/a$d;-><init>(Lanimebestapp/com/d/a;)V

    invoke-virtual {v0, v1}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object v0

    const-string v1, "networkRepository.getUse\u2026lRepository.setUser(it) }"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_23
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    invoke-virtual {v0}, Lanimebestapp/com/b/b/a;->d()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    invoke-virtual {v0}, Lanimebestapp/com/b/b/a;->e()V

    return-void
.end method

.method public final j()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    invoke-virtual {v0}, Lanimebestapp/com/b/b/a;->f()V

    return-void
.end method

.method public final k()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/d/a;->a:Lanimebestapp/com/b/b/a;

    invoke-virtual {v0}, Lanimebestapp/com/b/b/a;->g()V

    return-void
.end method

###### Class animebestapp.com.d.a.C0028a (animebestapp.com.d.a$a)
.class final Lanimebestapp/com/d/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/x/e<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/d/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/d/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/d/a$a;->a:Lanimebestapp/com/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a$a;->a:Lanimebestapp/com/d/a;

    invoke-static {v0}, Lanimebestapp/com/d/a;->a(Lanimebestapp/com/d/a;)Lanimebestapp/com/b/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/b/a;->a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/models/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/d/a$a;->a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;

    return-object p1
.end method

###### Class animebestapp.com.d.a.b (animebestapp.com.d.a$b)
.class final Lanimebestapp/com/d/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/d/a;->a()Le/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/x/e<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/d/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/d/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/d/a$b;->a:Lanimebestapp/com/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/AdBanner;)Lanimebestapp/com/models/AdBanner;
    .registers 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a$b;->a:Lanimebestapp/com/d/a;

    invoke-static {v0}, Lanimebestapp/com/d/a;->a(Lanimebestapp/com/d/a;)Lanimebestapp/com/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/b/b/a;->c()Lanimebestapp/com/models/g;

    move-result-object v0

    sget-object v1, Lanimebestapp/com/e/c/f;->INSTANCE:Lanimebestapp/com/e/c/f;

    invoke-virtual {v1}, Lanimebestapp/com/e/c/f;->check()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    :goto_19
    const/4 v2, 0x1

    goto :goto_36

    :cond_1b
    invoke-virtual {p1}, Lanimebestapp/com/models/AdBanner;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_36

    :cond_22
    sget-object v1, Lanimebestapp/com/external/a;->b:Lanimebestapp/com/external/a;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lanimebestapp/com/models/g;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const-string v0, ""

    :goto_2f
    invoke-virtual {v1, v0}, Lanimebestapp/com/external/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_19

    :cond_36
    :goto_36
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v2, v1, v0, v1}, Lanimebestapp/com/models/AdBanner;->copy$default(Lanimebestapp/com/models/AdBanner;ZLjava/lang/String;ILjava/lang/Object;)Lanimebestapp/com/models/AdBanner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/models/AdBanner;

    invoke-virtual {p0, p1}, Lanimebestapp/com/d/a$b;->a(Lanimebestapp/com/models/AdBanner;)Lanimebestapp/com/models/AdBanner;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.d.a.c (animebestapp.com.d.a$c)
.class final Lanimebestapp/com/d/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/d/a;->c(Ljava/lang/String;I)Le/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/x/d<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/d/a$c;->a:Ljava/lang/String;

    iput p2, p0, Lanimebestapp/com/d/a$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/d/a$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "category: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lanimebestapp/com/d/a$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " page: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lanimebestapp/com/d/a$c;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOGS"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class animebestapp.com.d.a.d (animebestapp.com.d.a$d)
.class final Lanimebestapp/com/d/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/d/a;->g()Le/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/x/e<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/d/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/d/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/d/a$d;->a:Lanimebestapp/com/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a$d;->a:Lanimebestapp/com/d/a;

    invoke-static {v0}, Lanimebestapp/com/d/a;->a(Lanimebestapp/com/d/a;)Lanimebestapp/com/b/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/b/a;->a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/models/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/d/a$d;->a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;

    return-object p1
.end method

###### Class animebestapp.com.d.a.e (animebestapp.com.d.a$e)
.class final Lanimebestapp/com/d/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/x/e<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/d/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/d/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/d/a$e;->a:Lanimebestapp/com/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/d/a$e;->a:Lanimebestapp/com/d/a;

    invoke-static {v0}, Lanimebestapp/com/d/a;->a(Lanimebestapp/com/d/a;)Lanimebestapp/com/b/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/b/a;->a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/models/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/d/a$e;->a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;

    return-object p1
.end method
