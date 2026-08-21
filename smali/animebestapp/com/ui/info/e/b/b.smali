###### Class animebestapp.com.ui.info.e.b.b (animebestapp.com.ui.info.e.b.b)
.class public final Lanimebestapp/com/ui/info/e/b/b;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/b/b/a;

.field public e:Lanimebestapp/com/d/a;

.field private final f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lanimebestapp/com/ui/info/e/b/d$a;

.field private final h:Lanimebestapp/com/models/Anime;


# direct methods
.method public constructor <init>(Lanimebestapp/com/models/Anime;)V
    .registers 13

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b;->h:Lanimebestapp/com/models/Anime;

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/b/b;->h:Lanimebestapp/com/models/Anime;

    invoke-virtual {p1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lanimebestapp/com/models/XFields;->getSeries_list()Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p1, :cond_19

    goto :goto_1e

    :cond_19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1e
    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b;->f:Ljava/util/LinkedHashMap;

    new-instance p1, Lanimebestapp/com/ui/info/e/b/d$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->h:Lanimebestapp/com/models/Anime;

    invoke-virtual {v0}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getBazon()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_35
    move-object v0, v6

    :goto_36
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_3c

    const/4 v9, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v9, 0x0

    :goto_3d
    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->h:Lanimebestapp/com/models/Anime;

    invoke-virtual {v0}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getKodik()Ljava/lang/String;

    move-result-object v6

    :cond_49
    if-eqz v6, :cond_4d

    const/4 v6, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    :goto_4e
    const/16 v8, 0x1f

    const/4 v10, 0x0

    move-object v0, p1

    move v7, v9

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lanimebestapp/com/ui/info/e/b/d$a;-><init>(IZILjava/lang/String;ZZZILg/p/b/d;)V

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b;->g:Lanimebestapp/com/ui/info/e/b/d$a;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/models/Anime;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/e/b/b;->h:Lanimebestapp/com/models/Anime;

    return-object p0
.end method

.method public static synthetic a(Lanimebestapp/com/ui/info/e/b/b;IZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/ui/info/e/b/b;->a(IZ)V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/e/b/b;Lg/p/a/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/ui/info/e/b/b;->a(Lg/p/a/b;)V

    return-void
.end method

.method private final a(Lg/p/a/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/p/a/b<",
            "-",
            "Lanimebestapp/com/ui/info/e/b/d$a;",
            "Lanimebestapp/com/ui/info/e/b/d$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->g:Lanimebestapp/com/ui/info/e/b/d$a;

    invoke-interface {p1, v0}, Lg/p/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d$a;

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b;->g:Lanimebestapp/com/ui/info/e/b/d$a;

    new-instance p1, Lanimebestapp/com/ui/info/e/b/b$r;

    invoke-direct {p1, p0}, Lanimebestapp/com/ui/info/e/b/b$r;-><init>(Lanimebestapp/com/ui/info/e/b/b;)V

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/info/e/b/b;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/e/b/b;->f:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic c(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/d$a;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/e/b/b;->g:Lanimebestapp/com/ui/info/e/b/d$a;

    return-object p0
.end method

.method private final h()V
    .registers 2

    sget-object v0, Lanimebestapp/com/e/c/f;->INSTANCE:Lanimebestapp/com/e/c/f;

    invoke-virtual {v0}, Lanimebestapp/com/e/c/f;->check()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/b/b$a;-><init>(Lanimebestapp/com/ui/info/e/b/b;)V

    goto :goto_1b

    :cond_e
    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->g:Lanimebestapp/com/ui/info/e/b/d$a;

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/e/b/d$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/b/b$b;-><init>(Lanimebestapp/com/ui/info/e/b/b;)V

    :goto_1b
    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    goto :goto_22

    :cond_1f
    invoke-virtual {p0}, Lanimebestapp/com/ui/info/e/b/b;->g()V

    :goto_22
    return-void
.end method

.method private final i()V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->d:Lanimebestapp/com/b/b/a;

    const/4 v1, 0x0

    const-string v2, "mRepository"

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lanimebestapp/com/b/b/a;->a()I

    move-result v0

    new-instance v3, Lanimebestapp/com/ui/info/e/b/b$c;

    invoke-direct {v3, v0}, Lanimebestapp/com/ui/info/e/b/b$c;-><init>(I)V

    invoke-direct {p0, v3}, Lanimebestapp/com/ui/info/e/b/b;->a(Lg/p/a/b;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->d:Lanimebestapp/com/b/b/a;

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/b/b;->h:Lanimebestapp/com/models/Anime;

    invoke-virtual {v1}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lanimebestapp/com/b/b/a;->a(J)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    new-instance v1, Lanimebestapp/com/ui/info/e/b/b$d;

    invoke-direct {v1, p0, v0}, Lanimebestapp/com/ui/info/e/b/b$d;-><init>(Lanimebestapp/com/ui/info/e/b/b;I)V

    invoke-virtual {p0, v1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    new-instance v1, Lanimebestapp/com/ui/info/e/b/b$e;

    invoke-direct {v1, v0}, Lanimebestapp/com/ui/info/e/b/b$e;-><init>(I)V

    invoke-virtual {p0, v1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void

    :cond_3a
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_3e
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1
.end method

.method private final j()V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->e:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->a()Le/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/info/e/b/b$f;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/e/b/b$f;-><init>(Lanimebestapp/com/ui/info/e/b/b;)V

    sget-object v2, Lanimebestapp/com/ui/info/e/b/b$g;->a:Lanimebestapp/com/ui/info/e/b/b$g;

    invoke-virtual {v0, v1, v2}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_1b
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$h;

    invoke-direct {v0, p1}, Lanimebestapp/com/ui/info/e/b/b$h;-><init>(I)V

    invoke-direct {p0, v0}, Lanimebestapp/com/ui/info/e/b/b;->a(Lg/p/a/b;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->d:Lanimebestapp/com/b/b/a;

    const/4 v1, 0x0

    const-string v2, "mRepository"

    if-eqz v0, :cond_31

    iget-object v3, p0, Lanimebestapp/com/ui/info/e/b/b;->h:Lanimebestapp/com/models/Anime;

    invoke-virtual {v3}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, p1}, Lanimebestapp/com/b/b/a;->a(JI)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/b/b;->d:Lanimebestapp/com/b/b/a;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lanimebestapp/com/b/b/a;->a()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_29

    sget-object p1, Lanimebestapp/com/ui/info/e/b/b$i;->a:Lanimebestapp/com/ui/info/e/b/b$i;

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    goto :goto_2c

    :cond_29
    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/b/b;->h()V

    :goto_2c
    return-void

    :cond_2d
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_31
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(IZ)V
    .registers 3

    if-eqz p2, :cond_11

    iget-object p2, p0, Lanimebestapp/com/ui/info/e/b/b;->d:Lanimebestapp/com/b/b/a;

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Lanimebestapp/com/b/b/a;->a(I)V

    goto :goto_11

    :cond_a
    const-string p1, "mRepository"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_11
    :goto_11
    new-instance p2, Lanimebestapp/com/ui/info/e/b/b$q;

    invoke-direct {p2, p1}, Lanimebestapp/com/ui/info/e/b/b$q;-><init>(I)V

    invoke-direct {p0, p2}, Lanimebestapp/com/ui/info/e/b/b;->a(Lg/p/a/b;)V

    return-void
.end method

.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/info/e/b/b;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/b/b;->i()V

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/b/b;->j()V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 9

    const-string v0, "text"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lg/s/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->h:Lanimebestapp/com/models/Anime;

    invoke-virtual {v0}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getSeries_list()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "anime.xfields!!.series_list!!.keys"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_50

    check-cast v4, Ljava/lang/String;

    const-string v6, "item"

    invoke-static {v4, v6}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-static {v4, p1, v2, v6, v1}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    new-instance p1, Lanimebestapp/com/ui/info/e/b/b$p;

    invoke-direct {p1, v3}, Lanimebestapp/com/ui/info/e/b/b$p;-><init>(I)V

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void

    :cond_4e
    move v3, v5

    goto :goto_29

    :cond_50
    invoke-static {}, Lg/m/j;->b()V

    throw v1

    :cond_54
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_58
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_5c
    return-void
.end method

.method public final a(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lanimebestapp/com/ui/info/e/b/b;->a(IZ)V

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/b/b;->h()V

    return-void
.end method

.method public final b(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lanimebestapp/com/ui/info/e/b/b;->a(IZ)V

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/b/b;->h()V

    return-void
.end method

.method public final e()V
    .registers 2

    sget-object v0, Lanimebestapp/com/ui/info/e/b/b$j;->b:Lanimebestapp/com/ui/info/e/b/b$j;

    invoke-direct {p0, v0}, Lanimebestapp/com/ui/info/e/b/b;->a(Lg/p/a/b;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/b/b;->h()V

    return-void
.end method

.method public final f()V
    .registers 2

    sget-object v0, Lanimebestapp/com/ui/info/e/b/b$k;->b:Lanimebestapp/com/ui/info/e/b/b$k;

    invoke-direct {p0, v0}, Lanimebestapp/com/ui/info/e/b/b;->a(Lg/p/a/b;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/info/e/b/b;->h()V

    return-void
.end method

.method public final g()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b;->g:Lanimebestapp/com/ui/info/e/b/d$a;

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/e/b/d$a;->b()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    goto :goto_2c

    :cond_12
    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$o;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/b/b$o;-><init>(Lanimebestapp/com/ui/info/e/b/b;)V

    goto :goto_29

    :cond_18
    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$n;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/b/b$n;-><init>(Lanimebestapp/com/ui/info/e/b/b;)V

    goto :goto_29

    :cond_1e
    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$m;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/b/b$m;-><init>(Lanimebestapp/com/ui/info/e/b/b;)V

    goto :goto_29

    :cond_24
    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$l;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/b/b$l;-><init>(Lanimebestapp/com/ui/info/e/b/b;)V

    :goto_29
    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    :goto_2c
    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.a (animebestapp.com.ui.info.e.b.b$a)
.class final Lanimebestapp/com/ui/info/e/b/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$a;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$a;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/b/b;->c(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/e/b/d$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/e/b/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$a;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.C0058b (animebestapp.com.ui.info.e.b.b$b)
.class final Lanimebestapp/com/ui/info/e/b/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$b;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$b;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/b/b;->c(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/e/b/d$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/e/b/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$b;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.c (animebestapp.com.ui.info.e.b.b$c)
.class final Lanimebestapp/com/ui/info/e/b/b$c;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/b<",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/info/e/b/b$c;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;
    .registers 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lanimebestapp/com/ui/info/e/b/b$c;->b:I

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_e
    iget v2, p0, Lanimebestapp/com/ui/info/e/b/b$c;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lanimebestapp/com/ui/info/e/b/d$a;->a(Lanimebestapp/com/ui/info/e/b/d$a;IZILjava/lang/String;ZZZILjava/lang/Object;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d$a;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$c;->a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.info.e.b.b.d (animebestapp.com.ui.info.e.b.b$d)
.class final Lanimebestapp/com/ui/info/e/b/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/b;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/b;I)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$d;->a:Lanimebestapp/com/ui/info/e/b/b;

    iput p2, p0, Lanimebestapp/com/ui/info/e/b/b$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$d;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/b/b;->b(Lanimebestapp/com/ui/info/e/b/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget v1, p0, Lanimebestapp/com/ui/info/e/b/b$d;->b:I

    invoke-interface {p1, v0, v1}, Lanimebestapp/com/ui/info/e/b/d;->a(Ljava/util/LinkedHashMap;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$d;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.e (animebestapp.com.ui.info.e.b.b$e)
.class final Lanimebestapp/com/ui/info/e/b/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/info/e/b/b$e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lanimebestapp/com/ui/info/e/b/b$e;->a:I

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/e/b/d;->e(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$e;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.f (animebestapp.com.ui.info.e.b.b$f)
.class final Lanimebestapp/com/ui/info/e/b/b$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->j()V
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
        "Lanimebestapp/com/models/AdBanner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$f;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/AdBanner;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$f;->a:Lanimebestapp/com/ui/info/e/b/b;

    new-instance v1, Lanimebestapp/com/ui/info/e/b/b$f$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/info/e/b/b$f$a;-><init>(Lanimebestapp/com/models/AdBanner;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/info/e/b/b;->a(Lanimebestapp/com/ui/info/e/b/b;Lg/p/a/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/models/AdBanner;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$f;->a(Lanimebestapp/com/models/AdBanner;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.f.a (animebestapp.com.ui.info.e.b.b$f$a)
.class final Lanimebestapp/com/ui/info/e/b/b$f$a;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b$f;->a(Lanimebestapp/com/models/AdBanner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/b<",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/models/AdBanner;


# direct methods
.method constructor <init>(Lanimebestapp/com/models/AdBanner;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$f$a;->b:Lanimebestapp/com/models/AdBanner;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;
    .registers 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$f$a;->b:Lanimebestapp/com/models/AdBanner;

    invoke-virtual {v0}, Lanimebestapp/com/models/AdBanner;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_18

    const-string v0, "https://animebestapp.org/donate.html"

    :cond_18
    move-object v5, v0

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$f$a;->b:Lanimebestapp/com/models/AdBanner;

    invoke-virtual {v0}, Lanimebestapp/com/models/AdBanner;->isEnabled()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x67

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lanimebestapp/com/ui/info/e/b/d$a;->a(Lanimebestapp/com/ui/info/e/b/d$a;IZILjava/lang/String;ZZZILjava/lang/Object;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d$a;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$f$a;->a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.info.e.b.b.g (animebestapp.com.ui.info.e.b.b$g)
.class final Lanimebestapp/com/ui/info/e/b/b$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->j()V
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


# static fields
.field public static final a:Lanimebestapp/com/ui/info/e/b/b$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$g;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/b/b$g;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/e/b/b$g;->a:Lanimebestapp/com/ui/info/e/b/b$g;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.h (animebestapp.com.ui.info.e.b.b$h)
.class final Lanimebestapp/com/ui/info/e/b/b$h;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/b<",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/info/e/b/b$h;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;
    .registers 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, p0, Lanimebestapp/com/ui/info/e/b/b$h;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7b

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lanimebestapp/com/ui/info/e/b/d$a;->a(Lanimebestapp/com/ui/info/e/b/d$a;IZILjava/lang/String;ZZZILjava/lang/Object;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d$a;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$h;->a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.info.e.b.b.i (animebestapp.com.ui.info.e.b.b$i)
.class final Lanimebestapp/com/ui/info/e/b/b$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/info/e/b/b$i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$i;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/b/b$i;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/e/b/b$i;->a:Lanimebestapp/com/ui/info/e/b/b$i;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/info/e/b/d;->i()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$i;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.j (animebestapp.com.ui.info.e.b.b$j)
.class final Lanimebestapp/com/ui/info/e/b/b$j;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/b<",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lanimebestapp/com/ui/info/e/b/b$j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$j;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/b/b$j;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/e/b/b$j;->b:Lanimebestapp/com/ui/info/e/b/b$j;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;
    .registers 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lanimebestapp/com/ui/info/e/b/d$a;->a(Lanimebestapp/com/ui/info/e/b/d$a;IZILjava/lang/String;ZZZILjava/lang/Object;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d$a;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$j;->a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.info.e.b.b.k (animebestapp.com.ui.info.e.b.b$k)
.class final Lanimebestapp/com/ui/info/e/b/b$k;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/b<",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lanimebestapp/com/ui/info/e/b/b$k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/e/b/b$k;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/b/b$k;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/e/b/b$k;->b:Lanimebestapp/com/ui/info/e/b/b$k;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;
    .registers 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lanimebestapp/com/ui/info/e/b/d$a;->a(Lanimebestapp/com/ui/info/e/b/d$a;IZILjava/lang/String;ZZZILjava/lang/Object;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d$a;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$k;->a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.info.e.b.b.l (animebestapp.com.ui.info.e.b.b$l)
.class final Lanimebestapp/com/ui/info/e/b/b$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$l;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$l;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/b/b;->c(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/e/b/d$a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/b/b$l;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v1}, Lanimebestapp/com/ui/info/e/b/b;->a(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/models/Anime;

    move-result-object v1

    iget-object v2, p0, Lanimebestapp/com/ui/info/e/b/b$l;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v2}, Lanimebestapp/com/ui/info/e/b/b;->c(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lanimebestapp/com/ui/info/e/b/d$a;->c()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lanimebestapp/com/ui/info/e/b/d;->a(Ljava/lang/String;Lanimebestapp/com/models/Anime;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$l;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.m (animebestapp.com.ui.info.e.b.b$m)
.class final Lanimebestapp/com/ui/info/e/b/b$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$m;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/b/b$m;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v1}, Lanimebestapp/com/ui/info/e/b/b;->b(Lanimebestapp/com/ui/info/e/b/b;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p0, Lanimebestapp/com/ui/info/e/b/b$m;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v2}, Lanimebestapp/com/ui/info/e/b/b;->b(Lanimebestapp/com/ui/info/e/b/b;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "list.keys"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lanimebestapp/com/ui/info/e/b/b$m;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v3}, Lanimebestapp/com/ui/info/e/b/b;->c(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lanimebestapp/com/ui/info/e/b/d$a;->c()I

    move-result v3

    invoke-static {v2, v3}, Lg/m/j;->b(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/e/b/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$m;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.n (animebestapp.com.ui.info.e.b.b$n)
.class final Lanimebestapp/com/ui/info/e/b/b$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$n;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$n;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/b/b;->c(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/e/b/d$a;->f()Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/ui/info/e/b/b$n;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v1}, Lanimebestapp/com/ui/info/e/b/b;->a(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/models/Anime;

    move-result-object v1

    invoke-virtual {v1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lanimebestapp/com/models/XFields;->getKodik()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lanimebestapp/com/ui/info/e/b/d;->a(Ljava/lang/String;Z)V

    goto :goto_42

    :cond_3a
    invoke-static {}, Lg/p/b/f;->a()V

    throw v2

    :cond_3e
    invoke-static {}, Lg/p/b/f;->a()V

    throw v2

    :cond_42
    :goto_42
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$n;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.o (animebestapp.com.ui.info.e.b.b$o)
.class final Lanimebestapp/com/ui/info/e/b/b$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$o;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$o;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/b/b;->c(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/e/b/d$a;->e()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$o;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/b/b;->a(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/models/Anime;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getBazon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lanimebestapp/com/ui/info/e/b/d;->a(Ljava/lang/String;Z)V

    goto :goto_31

    :cond_29
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_2d
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1

    :cond_31
    :goto_31
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$o;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.p (animebestapp.com.ui.info.e.b.b$p)
.class final Lanimebestapp/com/ui/info/e/b/b$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->a(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/info/e/b/b$p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lanimebestapp/com/ui/info/e/b/b$p;->a:I

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/e/b/d;->e(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$p;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.b.b.q (animebestapp.com.ui.info.e.b.b$q)
.class final Lanimebestapp/com/ui/info/e/b/b$q;
.super Lg/p/b/g;
.source ""

# interfaces
.implements Lg/p/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/p/b/g;",
        "Lg/p/a/b<",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        "Lanimebestapp/com/ui/info/e/b/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/info/e/b/b$q;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/p/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;
    .registers 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lanimebestapp/com/ui/info/e/b/b$q;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lanimebestapp/com/ui/info/e/b/d$a;->a(Lanimebestapp/com/ui/info/e/b/d$a;IZILjava/lang/String;ZZZILjava/lang/Object;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d$a;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$q;->a(Lanimebestapp/com/ui/info/e/b/d$a;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.info.e.b.b.r (animebestapp.com.ui.info.e.b.b$r)
.class final Lanimebestapp/com/ui/info/e/b/b$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/b/b;->a(Lg/p/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d$a<",
        "Lanimebestapp/com/ui/info/e/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/b/b$r;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/b/b$r;->a:Lanimebestapp/com/ui/info/e/b/b;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/b/b;->c(Lanimebestapp/com/ui/info/e/b/b;)Lanimebestapp/com/ui/info/e/b/d$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/e/b/d;->a(Lanimebestapp/com/ui/info/e/b/d$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/b/b$r;->a(Lanimebestapp/com/ui/info/e/b/d;)V

    return-void
.end method
