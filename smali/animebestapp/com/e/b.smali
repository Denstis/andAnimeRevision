###### Class animebestapp.com.e.b (animebestapp.com.e.b)
.class public final Lanimebestapp/com/e/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lanimebestapp/com/models/AdBanner;

.field private final b:Lanimebestapp/com/e/a;


# direct methods
.method public constructor <init>(Lanimebestapp/com/e/a;)V
    .registers 3

    const-string v0, "api"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/e/b;)Lanimebestapp/com/models/AdBanner;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/e/b;->a:Lanimebestapp/com/models/AdBanner;

    return-object p0
.end method

.method public static final synthetic a(Lanimebestapp/com/e/b;Lanimebestapp/com/models/AdBanner;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/e/b;->a:Lanimebestapp/com/models/AdBanner;

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/e/b;)Lanimebestapp/com/e/a;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    return-object p0
.end method


# virtual methods
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

    iget-object v0, p0, Lanimebestapp/com/e/b;->a:Lanimebestapp/com/models/AdBanner;

    if-eqz v0, :cond_13

    new-instance v0, Lanimebestapp/com/e/b$e;

    invoke-direct {v0, p0}, Lanimebestapp/com/e/b$e;-><init>(Lanimebestapp/com/e/b;)V

    invoke-static {v0}, Le/a/o;->a(Le/a/r;)Le/a/o;

    move-result-object v0

    const-string v1, "Single.create { it.onSuccess(adBanner!!) }"

    :goto_f
    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_13
    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    invoke-interface {v0}, Lanimebestapp/com/e/a;->b()Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/e/b$f;

    invoke-direct {v1, p0}, Lanimebestapp/com/e/b$f;-><init>(Lanimebestapp/com/e/b;)V

    invoke-virtual {v0, v1}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object v0

    const-string v1, "api.getBannerAd().map {\n\u2026\n            it\n        }"

    goto :goto_f
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

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "category regexp \'[[:<:]](4)[[:>:]]\'"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    invoke-interface {p1}, Lanimebestapp/com/e/a;->c()Le/a/o;

    move-result-object p1

    sget-object v0, Lanimebestapp/com/e/b$l;->a:Lanimebestapp/com/e/b$l;

    invoke-virtual {p1, v0}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string v0, "api.getTopAnime(\n//     \u2026      ).map { it.result }"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(J)Le/a/o;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/o<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/m/j;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4d

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_45

    move-object v9, p1

    check-cast v9, [Ljava/lang/String;

    const/16 v10, 0x7f

    const/4 v11, 0x0

    new-instance p1, Lanimebestapp/com/e/c/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lanimebestapp/com/e/c/q;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;ILg/p/b/d;)V

    invoke-interface {v0, p1}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/q;)Le/a/o;

    move-result-object p1

    sget-object p2, Lanimebestapp/com/e/b$n;->a:Lanimebestapp/com/e/b$n;

    invoke-virtual {p1, p2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string p2, "api.search(SearchRequest\u2026       .map { it.result }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_45
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(JJ)Le/a/o;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Le/a/o<",
            "Lanimebestapp/com/models/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    new-instance v1, Lanimebestapp/com/e/c/d;

    invoke-direct {v1, p1, p2, p3, p4}, Lanimebestapp/com/e/c/d;-><init>(JJ)V

    invoke-interface {v0, v1}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/d;)Le/a/o;

    move-result-object p1

    sget-object p2, Lanimebestapp/com/e/b$c;->a:Lanimebestapp/com/e/b$c;

    invoke-virtual {p1, p2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(JJLjava/lang/String;)Le/a/o;
    .registers 14
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

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    new-instance v7, Lanimebestapp/com/e/c/i;

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lanimebestapp/com/e/c/i;-><init>(JJLjava/lang/String;)V

    invoke-interface {v0, v7}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/i;)Le/a/o;

    move-result-object p1

    sget-object p2, Lanimebestapp/com/e/b$d;->a:Lanimebestapp/com/e/b$d;

    invoke-virtual {p1, p2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string p2, "api.setElement(ElementRe\u2026it.message)\n            }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Le/a/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/o<",
            "Lanimebestapp/com/models/g;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    new-instance v1, Lanimebestapp/com/e/c/r;

    invoke-direct {v1, p1}, Lanimebestapp/com/e/c/r;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/r;)Le/a/o;

    move-result-object p1

    sget-object v0, Lanimebestapp/com/e/b$m;->a:Lanimebestapp/com/e/b$m;

    invoke-virtual {p1, v0}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string v0, "api.getUserInfo2(UserInf\u2026       .map { it.result }"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)Le/a/o;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Le/a/o<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    add-int/lit8 p2, p2, -0x1

    mul-int/lit8 v4, p2, 0x5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category regexp \'[[:<:]]("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")[[:>:]]\' AND category not regexp \'[[:<:]](5|64|7|8|56)[[:>:]]\' AND approve=1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/m/j;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_55

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4d

    move-object v9, p1

    check-cast v9, [Ljava/lang/String;

    const/16 v10, 0x7b

    const/4 v11, 0x0

    new-instance p1, Lanimebestapp/com/e/c/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lanimebestapp/com/e/c/q;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;ILg/p/b/d;)V

    invoke-interface {v0, p1}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/q;)Le/a/o;

    move-result-object p1

    sget-object p2, Lanimebestapp/com/e/b$g;->a:Lanimebestapp/com/e/b$g;

    invoke-virtual {p1, p2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string p2, "api.search(\n            \u2026       .map { it.result }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_4d
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Le/a/o;
    .registers 13
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v9, Lanimebestapp/com/e/c/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lanimebestapp/com/e/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILg/p/b/d;)V

    invoke-virtual {v1, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    new-instance v8, Lanimebestapp/com/e/c/a;

    const/4 v4, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lanimebestapp/com/e/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILg/p/b/d;)V

    invoke-interface {v0, v8}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/a;)Le/a/o;

    move-result-object p2

    new-instance v0, Lanimebestapp/com/e/b$a;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/e/b$a;-><init>(Lanimebestapp/com/e/b;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Le/a/o;->a(Le/a/x/e;)Le/a/o;

    move-result-object p1

    sget-object p2, Lanimebestapp/com/e/b$b;->a:Lanimebestapp/com/e/b$b;

    invoke-virtual {p1, p2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string p2, "api.auth(AuthRequest(log\u2026       .map { it.result }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;
    .registers 6
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

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    new-instance v1, Lanimebestapp/com/e/c/p;

    invoke-direct {v1, p1, p3, p2}, Lanimebestapp/com/e/c/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/p;)Le/a/o;

    move-result-object p2

    new-instance p3, Lanimebestapp/com/e/b$o;

    invoke-direct {p3, p0, p1}, Lanimebestapp/com/e/b$o;-><init>(Lanimebestapp/com/e/b;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Le/a/o;->a(Le/a/x/e;)Le/a/o;

    move-result-object p1

    sget-object p2, Lanimebestapp/com/e/b$p;->a:Lanimebestapp/com/e/b$p;

    invoke-virtual {p1, p2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string p2, "api.reg(RegRequest(login\u2026       .map { it.result }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    const-string v0, "userId"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipv4HostAddress"

    invoke-static {p4, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    invoke-interface {p4}, Lanimebestapp/com/e/a;->e()Le/a/o;

    move-result-object p4

    new-instance v0, Lanimebestapp/com/e/b$r;

    invoke-direct {v0, p0, p3, p1, p2}, Lanimebestapp/com/e/b$r;-><init>(Lanimebestapp/com/e/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Le/a/o;->a(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string p2, "api.getIp().flatMap { ip\u2026p.query).map { Unit } } }"

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

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    invoke-interface {v0, p1, p2}, Lanimebestapp/com/e/a;->a(Ljava/lang/String;I)Le/a/h;

    move-result-object p1

    sget-object p2, Lanimebestapp/com/e/b$h;->a:Lanimebestapp/com/e/b$h;

    invoke-virtual {p1, p2}, Le/a/h;->b(Le/a/x/e;)Le/a/h;

    move-result-object p1

    const-string p2, "api.geComments(id, start).map { it.result }"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    invoke-interface {v0}, Lanimebestapp/com/e/a;->f()Le/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Le/a/o;
    .registers 5
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

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    new-instance v1, Lanimebestapp/com/e/c/k;

    invoke-direct {v1, p1, p2}, Lanimebestapp/com/e/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/k;)Le/a/o;

    move-result-object p1

    sget-object p2, Lanimebestapp/com/e/b$i;->a:Lanimebestapp/com/e/b$i;

    invoke-virtual {p1, p2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    const-string p2, "api.getFavorites(GetFavo\u2026       .map { it.result }"

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

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    invoke-interface {v0}, Lanimebestapp/com/e/a;->d()Le/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;I)Le/a/o;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Le/a/o<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/d;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "8"

    const-string v3, "7"

    const-string v4, "5"

    const-string v5, "approve=1"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v1, :cond_1e

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    const-string v5, "category not regexp \'[[:<:]](5|7|64|8|56|277)[[:>:]]\'"

    aput-object v5, v6, v7

    invoke-static {v6}, Lg/m/j;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_74

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x35

    if-eq v9, v10, :cond_55

    const/16 v10, 0x37

    if-eq v9, v10, :cond_42

    const/16 v10, 0x38

    if-eq v9, v10, :cond_2f

    goto :goto_68

    :cond_2f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    const-string v5, "category not regexp \'[[:<:]](5|64|7|56)[[:>:]]\'"

    aput-object v5, v6, v7

    invoke-static {v6}, Lg/m/j;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_74

    :cond_42
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    const-string v5, "category not regexp \'[[:<:]](5|64|8|56)[[:>:]]\'"

    aput-object v5, v6, v7

    invoke-static {v6}, Lg/m/j;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_74

    :cond_55
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    const-string v5, "category not regexp \'[[:<:]](64|7|8|56)[[:>:]]\'"

    aput-object v5, v6, v7

    invoke-static {v6}, Lg/m/j;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_74

    :cond_68
    :goto_68
    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    const-string v5, "category not regexp \'[[:<:]](5|64|7|8|56)[[:>:]]\'"

    aput-object v5, v6, v7

    invoke-static {v6}, Lg/m/j;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_74
    if-eqz v1, :cond_a0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "category regexp \'[[:<:]]("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")[[:>:]]\'"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_a0
    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    const-string v9, "null cannot be cast to non-null type java.util.Collection<T>"

    if-nez v3, :cond_fb

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    invoke-static {v1, v4}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    goto :goto_fb

    :cond_b7
    iget-object v1, v0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    add-int/lit8 v2, p2, -0x1

    mul-int/lit8 v13, v2, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v5, :cond_f5

    new-array v2, v8, [Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_ef

    move-object/from16 v19, v2

    check-cast v19, [Ljava/lang/String;

    const/16 v20, 0xfb

    const/16 v21, 0x0

    new-instance v2, Lanimebestapp/com/e/c/m;

    move-object v10, v2

    invoke-direct/range {v10 .. v21}, Lanimebestapp/com/e/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;ILg/p/b/d;)V

    invoke-interface {v1, v2}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/m;)Le/a/o;

    move-result-object v1

    sget-object v2, Lanimebestapp/com/e/b$k;->a:Lanimebestapp/com/e/b$k;

    invoke-virtual {v1, v2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object v1

    const-string v2, "api.getPostList(\n       \u2026lt.toList()\n            }"

    :goto_eb
    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_ef
    new-instance v1, Lg/j;

    invoke-direct {v1, v6}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f5
    new-instance v1, Lg/j;

    invoke-direct {v1, v9}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_fb
    :goto_fb
    iget-object v1, v0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    add-int/lit8 v2, p2, -0x1

    mul-int/lit8 v13, v2, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v5, :cond_136

    new-array v2, v8, [Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_130

    move-object/from16 v19, v2

    check-cast v19, [Ljava/lang/String;

    const/16 v20, 0xfb

    const/16 v21, 0x0

    new-instance v2, Lanimebestapp/com/e/c/m;

    move-object v10, v2

    invoke-direct/range {v10 .. v21}, Lanimebestapp/com/e/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;ILg/p/b/d;)V

    invoke-interface {v1, v2}, Lanimebestapp/com/e/a;->b(Lanimebestapp/com/e/c/m;)Le/a/o;

    move-result-object v1

    sget-object v2, Lanimebestapp/com/e/b$j;->a:Lanimebestapp/com/e/b$j;

    invoke-virtual {v1, v2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object v1

    const-string v2, "api.getNewsList(\n       \u2026oList()\n                }"

    goto :goto_eb

    :cond_130
    new-instance v1, Lg/j;

    invoke-direct {v1, v6}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_136
    new-instance v1, Lg/j;

    invoke-direct {v1, v9}, Lg/j;-><init>(Ljava/lang/String;)V

    goto :goto_13d

    :goto_13c
    throw v1

    :goto_13d
    goto :goto_13c
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

    iget-object v0, p0, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    invoke-interface {v0}, Lanimebestapp/com/e/a;->a()Le/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;I)Le/a/o;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Le/a/o<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;>;"
        }
    .end annotation

    const-string v0, "query"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v3, " "

    aput-object v3, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lg/s/e;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_34

    const/4 v3, 0x1

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "((SUBSTRING_INDEX(SUBSTRING_INDEX(xfields, \'names|\', -1), \'||\', 1) LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%\') OR title like (\'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\')) AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_59
    const-string v1, "approve = 1 AND category not in (\'5\',\'7\',\'8\',\'56\',\'64\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    iget-object v2, v1, Lanimebestapp/com/e/b;->b:Lanimebestapp/com/e/a;

    const/4 v10, 0x0

    const/4 v11, 0x0

    add-int/lit8 v3, p2, -0x1

    mul-int/lit8 v12, v3, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/m/j;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a5

    new-array v3, v8, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9d

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    const/16 v18, 0x7b

    const/16 v19, 0x0

    new-instance v0, Lanimebestapp/com/e/c/q;

    move-object v9, v0

    invoke-direct/range {v9 .. v19}, Lanimebestapp/com/e/c/q;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;ILg/p/b/d;)V

    invoke-interface {v2, v0}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/q;)Le/a/o;

    move-result-object v0

    sget-object v2, Lanimebestapp/com/e/b$q;->a:Lanimebestapp/com/e/b$q;

    invoke-virtual {v0, v2}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object v0

    const-string v2, "api.search(\n            \u2026       .map { it.result }"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_9d
    new-instance v0, Lg/j;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    new-instance v0, Lg/j;

    const-string v2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v2}, Lg/j;-><init>(Ljava/lang/String;)V

    goto :goto_ae

    :goto_ad
    throw v0

    :goto_ae
    goto :goto_ad
.end method

###### Class animebestapp.com.e.b.a (animebestapp.com.e.b$a)
.class final Lanimebestapp/com/e/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/o;
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
        "TT;",
        "Le/a/s<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/e/b;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanimebestapp/com/e/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/e/b$a;->a:Lanimebestapp/com/e/b;

    iput-object p2, p0, Lanimebestapp/com/e/b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/c;)Le/a/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/c;",
            ")",
            "Le/a/o<",
            "Lanimebestapp/com/e/c/t;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/c;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p1, p0, Lanimebestapp/com/e/b$a;->a:Lanimebestapp/com/e/b;

    invoke-static {p1}, Lanimebestapp/com/e/b;->b(Lanimebestapp/com/e/b;)Lanimebestapp/com/e/a;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/e/c/s;

    iget-object v1, p0, Lanimebestapp/com/e/b$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lanimebestapp/com/e/c/s;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/s;)Le/a/o;

    move-result-object p1

    return-object p1

    :cond_23
    invoke-virtual {p1}, Lanimebestapp/com/e/c/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0410\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u044f \u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance p1, Lanimebestapp/com/utils/i;

    const-string v0, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u0441\u0432\u043e\u0439 \u043b\u043e\u0433\u0438\u043d, \u0447\u0442\u043e\u0431\u044b \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u043e\u0432\u0430\u0442\u0441\u044f"

    invoke-direct {p1, v0}, Lanimebestapp/com/utils/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance v0, Lanimebestapp/com/utils/i;

    invoke-virtual {p1}, Lanimebestapp/com/e/c/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lanimebestapp/com/utils/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$a;->a(Lanimebestapp/com/e/c/c;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.C0030b (animebestapp.com.e.b$b)
.class final Lanimebestapp/com/e/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$b;

    invoke-direct {v0}, Lanimebestapp/com/e/b$b;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$b;->a:Lanimebestapp/com/e/b$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/t;)Lanimebestapp/com/models/g;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/t;->getResult()Lanimebestapp/com/models/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/t;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$b;->a(Lanimebestapp/com/e/c/t;)Lanimebestapp/com/models/g;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.c (animebestapp.com.e.b$c)
.class final Lanimebestapp/com/e/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(JJ)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$c;

    invoke-direct {v0}, Lanimebestapp/com/e/b$c;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$c;->a:Lanimebestapp/com/e/b$c;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/e;)Lanimebestapp/com/models/b;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/e;->getResult()Lanimebestapp/com/models/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$c;->a(Lanimebestapp/com/e/c/e;)Lanimebestapp/com/models/b;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.d (animebestapp.com.e.b$d)
.class final Lanimebestapp/com/e/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(JJLjava/lang/String;)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$d;

    invoke-direct {v0}, Lanimebestapp/com/e/b$d;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$d;->a:Lanimebestapp/com/e/b$d;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/c;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/c;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    new-instance v0, Lanimebestapp/com/utils/i;

    invoke-virtual {p1}, Lanimebestapp/com/e/c/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lanimebestapp/com/utils/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$d;->a(Lanimebestapp/com/e/c/c;)V

    sget-object p1, Lg/l;->a:Lg/l;

    return-object p1
.end method

###### Class animebestapp.com.e.b.e (animebestapp.com.e.b$e)
.class final Lanimebestapp/com/e/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a()Le/a/o;
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
        "Le/a/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/e/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/e/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/e/b$e;->a:Lanimebestapp/com/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/a/p;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p<",
            "Lanimebestapp/com/models/AdBanner;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/e/b$e;->a:Lanimebestapp/com/e/b;

    invoke-static {v0}, Lanimebestapp/com/e/b;->a(Lanimebestapp/com/e/b;)Lanimebestapp/com/models/AdBanner;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {p1, v0}, Le/a/p;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_11
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

###### Class animebestapp.com.e.b.f (animebestapp.com.e.b$f)
.class final Lanimebestapp/com/e/b$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a()Le/a/o;
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
.field final synthetic a:Lanimebestapp/com/e/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/e/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/e/b$f;->a:Lanimebestapp/com/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/AdBanner;)Lanimebestapp/com/models/AdBanner;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/e/b$f;->a:Lanimebestapp/com/e/b;

    invoke-static {v0, p1}, Lanimebestapp/com/e/b;->a(Lanimebestapp/com/e/b;Lanimebestapp/com/models/AdBanner;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/models/AdBanner;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$f;->a(Lanimebestapp/com/models/AdBanner;)Lanimebestapp/com/models/AdBanner;

    return-object p1
.end method

###### Class animebestapp.com.e.b.g (animebestapp.com.e.b$g)
.class final Lanimebestapp/com/e/b$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(Ljava/lang/String;I)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$g;

    invoke-direct {v0}, Lanimebestapp/com/e/b$g;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$g;->a:Lanimebestapp/com/e/b$g;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/o;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/o;",
            ")",
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/o;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/o;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$g;->a(Lanimebestapp/com/e/c/o;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.h (animebestapp.com.e.b$h)
.class final Lanimebestapp/com/e/b$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->b(Ljava/lang/String;I)Le/a/h;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$h;

    invoke-direct {v0}, Lanimebestapp/com/e/b$h;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$h;->a:Lanimebestapp/com/e/b$h;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/g;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/g;",
            ")",
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/models/Comment;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/g;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$h;->a(Lanimebestapp/com/e/c/g;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.i (animebestapp.com.e.b$i)
.class final Lanimebestapp/com/e/b$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->b(Ljava/lang/String;Ljava/lang/String;)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$i;

    invoke-direct {v0}, Lanimebestapp/com/e/b$i;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$i;->a:Lanimebestapp/com/e/b$i;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/l;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/l;",
            ")",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/l;->getResult()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/l;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$i;->a(Lanimebestapp/com/e/c/l;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.j (animebestapp.com.e.b$j)
.class final Lanimebestapp/com/e/b$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->c(Ljava/lang/String;I)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$j;

    invoke-direct {v0}, Lanimebestapp/com/e/b$j;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$j;->a:Lanimebestapp/com/e/b$j;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/n;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/n;",
            ")",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/News;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/n;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lg/m/j;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/n;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$j;->a(Lanimebestapp/com/e/c/n;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.k (animebestapp.com.e.b$k)
.class final Lanimebestapp/com/e/b$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->c(Ljava/lang/String;I)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$k;

    invoke-direct {v0}, Lanimebestapp/com/e/b$k;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$k;->a:Lanimebestapp/com/e/b$k;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/o;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/o;",
            ")",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/o;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lg/m/j;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/o;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$k;->a(Lanimebestapp/com/e/c/o;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.l (animebestapp.com.e.b$l)
.class final Lanimebestapp/com/e/b$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(I)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$l;

    invoke-direct {v0}, Lanimebestapp/com/e/b$l;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$l;->a:Lanimebestapp/com/e/b$l;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/o;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/o;",
            ")",
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/o;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/o;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$l;->a(Lanimebestapp/com/e/c/o;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.m (animebestapp.com.e.b$m)
.class final Lanimebestapp/com/e/b$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(Ljava/lang/String;)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$m;

    invoke-direct {v0}, Lanimebestapp/com/e/b$m;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$m;->a:Lanimebestapp/com/e/b$m;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/t;)Lanimebestapp/com/models/g;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/t;->getResult()Lanimebestapp/com/models/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/t;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$m;->a(Lanimebestapp/com/e/c/t;)Lanimebestapp/com/models/g;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.n (animebestapp.com.e.b$n)
.class final Lanimebestapp/com/e/b$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(J)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$n;

    invoke-direct {v0}, Lanimebestapp/com/e/b$n;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$n;->a:Lanimebestapp/com/e/b$n;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/o;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/o;",
            ")",
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/o;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/o;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$n;->a(Lanimebestapp/com/e/c/o;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.o (animebestapp.com.e.b$o)
.class final Lanimebestapp/com/e/b$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;
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
        "TT;",
        "Le/a/s<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/e/b;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanimebestapp/com/e/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/e/b$o;->a:Lanimebestapp/com/e/b;

    iput-object p2, p0, Lanimebestapp/com/e/b$o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/c;)Le/a/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/c;",
            ")",
            "Le/a/o<",
            "Lanimebestapp/com/e/c/t;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/c;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p1, p0, Lanimebestapp/com/e/b$o;->a:Lanimebestapp/com/e/b;

    invoke-static {p1}, Lanimebestapp/com/e/b;->b(Lanimebestapp/com/e/b;)Lanimebestapp/com/e/a;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/e/c/s;

    iget-object v1, p0, Lanimebestapp/com/e/b$o;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lanimebestapp/com/e/c/s;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/e/a;->a(Lanimebestapp/com/e/c/s;)Le/a/o;

    move-result-object p1

    return-object p1

    :cond_23
    new-instance v0, Lanimebestapp/com/utils/i;

    invoke-virtual {p1}, Lanimebestapp/com/e/c/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lanimebestapp/com/utils/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$o;->a(Lanimebestapp/com/e/c/c;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.p (animebestapp.com.e.b$p)
.class final Lanimebestapp/com/e/b$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$p;

    invoke-direct {v0}, Lanimebestapp/com/e/b$p;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$p;->a:Lanimebestapp/com/e/b$p;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/t;)Lanimebestapp/com/models/g;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/t;->getResult()Lanimebestapp/com/models/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/t;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$p;->a(Lanimebestapp/com/e/c/t;)Lanimebestapp/com/models/g;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.q (animebestapp.com.e.b$q)
.class final Lanimebestapp/com/e/b$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->d(Ljava/lang/String;I)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$q;

    invoke-direct {v0}, Lanimebestapp/com/e/b$q;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$q;->a:Lanimebestapp/com/e/b$q;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/o;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/e/c/o;",
            ")",
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lanimebestapp/com/e/c/o;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/o;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$q;->a(Lanimebestapp/com/e/c/o;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.r (animebestapp.com.e.b$r)
.class final Lanimebestapp/com/e/b$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;
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
        "TT;",
        "Le/a/s<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/e/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanimebestapp/com/e/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lanimebestapp/com/e/b$r;->a:Lanimebestapp/com/e/b;

    iput-object p2, p0, Lanimebestapp/com/e/b$r;->b:Ljava/lang/String;

    iput-object p3, p0, Lanimebestapp/com/e/b$r;->c:Ljava/lang/String;

    iput-object p4, p0, Lanimebestapp/com/e/b$r;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/c;)Le/a/o;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/models/c;",
            ")",
            "Le/a/o<",
            "Lg/l;",
            ">;"
        }
    .end annotation

    const-string v0, "ip"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/e/b$r;->a:Lanimebestapp/com/e/b;

    invoke-static {v0}, Lanimebestapp/com/e/b;->b(Lanimebestapp/com/e/b;)Lanimebestapp/com/e/a;

    move-result-object v0

    invoke-virtual {p1}, Lanimebestapp/com/models/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanimebestapp/com/e/b$r;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lanimebestapp/com/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/e/b$r$a;

    invoke-direct {v1, p0, p1}, Lanimebestapp/com/e/b$r$a;-><init>(Lanimebestapp/com/e/b$r;Lanimebestapp/com/models/c;)V

    invoke-virtual {v0, v1}, Le/a/o;->a(Le/a/x/e;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/models/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$r;->a(Lanimebestapp/com/models/c;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.r.a (animebestapp.com.e.b$r$a)
.class final Lanimebestapp/com/e/b$r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b$r;->a(Lanimebestapp/com/models/c;)Le/a/o;
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
        "TT;",
        "Le/a/s<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/e/b$r;

.field final synthetic b:Lanimebestapp/com/models/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/e/b$r;Lanimebestapp/com/models/c;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/e/b$r$a;->a:Lanimebestapp/com/e/b$r;

    iput-object p2, p0, Lanimebestapp/com/e/b$r$a;->b:Lanimebestapp/com/models/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/UserHash;)Le/a/o;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/models/UserHash;",
            ")",
            "Le/a/o<",
            "Lg/l;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/e/b$r$a;->a:Lanimebestapp/com/e/b$r;

    iget-object v0, v0, Lanimebestapp/com/e/b$r;->a:Lanimebestapp/com/e/b;

    invoke-static {v0}, Lanimebestapp/com/e/b;->b(Lanimebestapp/com/e/b;)Lanimebestapp/com/e/a;

    move-result-object v1

    iget-object v0, p0, Lanimebestapp/com/e/b$r$a;->a:Lanimebestapp/com/e/b$r;

    iget-object v2, v0, Lanimebestapp/com/e/b$r;->c:Ljava/lang/String;

    iget-object v3, v0, Lanimebestapp/com/e/b$r;->d:Ljava/lang/String;

    iget-object v4, v0, Lanimebestapp/com/e/b$r;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lanimebestapp/com/models/UserHash;->getHash()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lanimebestapp/com/e/b$r$a;->b:Lanimebestapp/com/models/c;

    invoke-virtual {p1}, Lanimebestapp/com/models/c;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lanimebestapp/com/e/a$a;->a(Lanimebestapp/com/e/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Le/a/o;

    move-result-object p1

    sget-object v0, Lanimebestapp/com/e/b$r$a$a;->a:Lanimebestapp/com/e/b$r$a$a;

    invoke-virtual {p1, v0}, Le/a/o;->b(Le/a/x/e;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/models/UserHash;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$r$a;->a(Lanimebestapp/com/models/UserHash;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.e.b.r.a.C0031a (animebestapp.com.e.b$r$a$a)
.class final Lanimebestapp/com/e/b$r$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/e/b$r$a;->a(Lanimebestapp/com/models/UserHash;)Le/a/o;
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


# static fields
.field public static final a:Lanimebestapp/com/e/b$r$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/e/b$r$a$a;

    invoke-direct {v0}, Lanimebestapp/com/e/b$r$a$a;-><init>()V

    sput-object v0, Lanimebestapp/com/e/b$r$a$a;->a:Lanimebestapp/com/e/b$r$a$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/e/c/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/e/c/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/e/b$r$a$a;->a(Lanimebestapp/com/e/c/c;)V

    sget-object p1, Lg/l;->a:Lg/l;

    return-object p1
.end method
