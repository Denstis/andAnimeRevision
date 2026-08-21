###### Class animebestapp.com.ui.info.player.a (animebestapp.com.ui.info.player.a)
.class public final Lanimebestapp/com/ui/info/player/a;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/info/player/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lanimebestapp/com/b/b/a;

.field public f:Lh/x;

.field public g:Lanimebestapp/com/d/a;

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lanimebestapp/com/models/Anime;

.field private j:I


# direct methods
.method public constructor <init>(Lanimebestapp/com/models/Anime;I)V
    .registers 4

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/a;->i:Lanimebestapp/com/models/Anime;

    iput p2, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/a;->i:Lanimebestapp/com/models/Anime;

    invoke-virtual {p1}, Lanimebestapp/com/models/Anime;->getXfields()Lanimebestapp/com/models/XFields;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lanimebestapp/com/models/XFields;->getSeries_list()Ljava/util/LinkedHashMap;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    move-object p1, p2

    :goto_1b
    if-eqz p1, :cond_27

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/a;->d:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/a;->h:Ljava/util/HashMap;

    return-void

    :cond_27
    invoke-static {}, Lg/p/b/f;->a()V

    throw p2
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/player/a;)Lanimebestapp/com/models/Anime;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/player/a;->i:Lanimebestapp/com/models/Anime;

    return-object p0
.end method

.method public static synthetic a(Lanimebestapp/com/ui/info/player/a;IILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget p1, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    :cond_6
    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/a;->a(I)V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/player/a;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/info/player/a;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/player/a;->h:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic c(Lanimebestapp/com/ui/info/player/a;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/player/a;->d:Ljava/util/LinkedHashMap;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lanimebestapp/com/ui/info/player/a$b;

    invoke-direct {v0, p1}, Lanimebestapp/com/ui/info/player/a$b;-><init>(I)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    new-instance v0, Lanimebestapp/com/ui/info/player/a$c;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/ui/info/player/a$c;-><init>(Lanimebestapp/com/ui/info/player/a;I)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    new-instance v0, Lanimebestapp/com/ui/info/player/a$d;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/player/a$d;-><init>(Lanimebestapp/com/ui/info/player/a;)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    new-instance v0, Lanimebestapp/com/ui/info/player/a$e;

    invoke-direct {v0, p1}, Lanimebestapp/com/ui/info/player/a$e;-><init>(I)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a;->e:Lanimebestapp/com/b/b/a;

    if-eqz v0, :cond_82

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/a;->i:Lanimebestapp/com/models/Anime;

    invoke-virtual {v1}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lanimebestapp/com/b/b/a;->a(JI)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_58

    new-instance v0, Lanimebestapp/com/ui/info/player/a$f;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/ui/info/player/a$f;-><init>(Lanimebestapp/com/ui/info/player/a;I)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    goto :goto_81

    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "series.keys"

    invoke-static {v2, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lg/m/j;->b(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lanimebestapp/com/ui/info/player/a;->a(Ljava/lang/String;I)V

    :goto_81
    return-void

    :cond_82
    const-string p1, "mRepository"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(J)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePositionPlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lanimebestapp/com/ui/info/player/a;->e:Lanimebestapp/com/b/b/a;

    if-eqz v2, :cond_31

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a;->i:Lanimebestapp/com/models/Anime;

    invoke-virtual {v0}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v3

    iget v5, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Lanimebestapp/com/b/b/a;->a(JIJ)V

    return-void

    :cond_31
    const-string p1, "mRepository"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/info/player/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/p/b/i;

    invoke-direct {v0}, Lg/p/b/i;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lg/p/b/i;->b:Ljava/lang/Object;

    new-instance v1, Lh/a0$a;

    invoke-direct {v1}, Lh/a0$a;-><init>()V

    invoke-virtual {v1, p1}, Lh/a0$a;->b(Ljava/lang/String;)Lh/a0$a;

    invoke-virtual {v1}, Lh/a0$a;->a()Lh/a0;

    move-result-object p1

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/a;->f:Lh/x;

    if-eqz v1, :cond_2b

    invoke-virtual {v1, p1}, Lh/x;->a(Lh/a0;)Lh/e;

    move-result-object p1

    new-instance v1, Lanimebestapp/com/ui/info/player/a$a;

    invoke-direct {v1, p0, v0, p2}, Lanimebestapp/com/ui/info/player/a$a;-><init>(Lanimebestapp/com/ui/info/player/a;Lg/p/b/i;I)V

    invoke-interface {p1, v1}, Lh/e;->a(Lh/f;)V

    return-void

    :cond_2b
    const-string p1, "client"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e()V
    .registers 7

    iget v0, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    iget v0, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    const/4 v1, 0x0

    if-gez v0, :cond_d

    iput v1, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    :cond_d
    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a;->e:Lanimebestapp/com/b/b/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    iget-object v3, p0, Lanimebestapp/com/ui/info/player/a;->i:Lanimebestapp/com/models/Anime;

    invoke-virtual {v3}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v3

    iget v5, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    invoke-virtual {v0, v3, v4, v5}, Lanimebestapp/com/b/b/a;->a(JI)V

    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v2}, Lanimebestapp/com/ui/info/player/a;->a(Lanimebestapp/com/ui/info/player/a;IILjava/lang/Object;)V

    return-void

    :cond_22
    const-string v0, "mRepository"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final f()Lanimebestapp/com/b/b/a;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a;->e:Lanimebestapp/com/b/b/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mRepository"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()Lanimebestapp/com/models/g;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a;->g:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->f()Lanimebestapp/com/models/g;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()V
    .registers 7

    iget v0, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    iget v0, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    iget-object v2, p0, Lanimebestapp/com/ui/info/player/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_22

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    :cond_22
    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a;->e:Lanimebestapp/com/b/b/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    iget-object v3, p0, Lanimebestapp/com/ui/info/player/a;->i:Lanimebestapp/com/models/Anime;

    invoke-virtual {v3}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v3

    iget v5, p0, Lanimebestapp/com/ui/info/player/a;->j:I

    invoke-virtual {v0, v3, v4, v5}, Lanimebestapp/com/b/b/a;->a(JI)V

    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v2}, Lanimebestapp/com/ui/info/player/a;->a(Lanimebestapp/com/ui/info/player/a;IILjava/lang/Object;)V

    return-void

    :cond_37
    const-string v0, "mRepository"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2
.end method

###### Class animebestapp.com.ui.info.player.a.C0060a (animebestapp.com.ui.info.player.a$a)
.class public final Lanimebestapp/com/ui/info/player/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/a;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/player/a;

.field final synthetic b:Lg/p/b/i;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/a;Lg/p/b/i;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/p/b/i;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/a$a;->a:Lanimebestapp/com/ui/info/player/a;

    iput-object p2, p0, Lanimebestapp/com/ui/info/player/a$a;->b:Lg/p/b/i;

    iput p3, p0, Lanimebestapp/com/ui/info/player/a$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/e;Lh/c0;)V
    .registers 9

    const-string v0, "call"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/a$a;->b:Lg/p/b/i;

    invoke-virtual {p2}, Lh/c0;->j()Lh/d0;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lh/d0;->n()Ljava/lang/String;

    move-result-object p2

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    :goto_18
    iput-object p2, p1, Lg/p/b/i;->b:Ljava/lang/Object;

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/a$a;->b:Lg/p/b/i;

    iget-object p1, p1, Lg/p/b/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "file:\""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lg/s/e;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x6

    const-string v1, "file:\""

    invoke-static/range {v0 .. v5}, Lg/s/e;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v2, v0, 0x6

    const/4 v4, 0x4

    const-string v1, "\""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-eqz p1, :cond_76

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lanimebestapp/com/ui/info/player/a$a;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {p2}, Lanimebestapp/com/ui/info/player/a;->b(Lanimebestapp/com/ui/info/player/a;)Ljava/util/HashMap;

    move-result-object p2

    iget v0, p0, Lanimebestapp/com/ui/info/player/a$a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/a$a;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/a;->b(Lanimebestapp/com/ui/info/player/a;)Ljava/util/HashMap;

    move-result-object p1

    iget p2, p0, Lanimebestapp/com/ui/info/player/a$a;->c:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/a$a;->a:Lanimebestapp/com/ui/info/player/a;

    new-instance p2, Lanimebestapp/com/ui/info/player/a$a$a;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/info/player/a$a$a;-><init>(Lanimebestapp/com/ui/info/player/a$a;)V

    invoke-static {p1, p2}, Lanimebestapp/com/ui/info/player/a;->a(Lanimebestapp/com/ui/info/player/a;Lc/b/a/c/d$a;)V

    goto :goto_7e

    :cond_76
    new-instance p1, Lg/j;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    :goto_7e
    return-void
.end method

.method public a(Lh/e;Ljava/io/IOException;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.a.C0060a.C0061a (animebestapp.com.ui.info.player.a$a$a)
.class final Lanimebestapp/com/ui/info/player/a$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/a$a;->a(Lh/e;Lh/c0;)V
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
        "Lanimebestapp/com/ui/info/player/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/player/a$a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/a$a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/a$a$a;->a:Lanimebestapp/com/ui/info/player/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/player/c;)V
    .registers 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a$a$a;->a:Lanimebestapp/com/ui/info/player/a$a;

    iget-object v0, v0, Lanimebestapp/com/ui/info/player/a$a;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/a;->b(Lanimebestapp/com/ui/info/player/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/a$a$a;->a:Lanimebestapp/com/ui/info/player/a$a;

    iget v1, v1, Lanimebestapp/com/ui/info/player/a$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_61

    const-string v1, "it1"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/a$a$a;->a:Lanimebestapp/com/ui/info/player/a$a;

    iget-object v1, v1, Lanimebestapp/com/ui/info/player/a$a;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {v1}, Lanimebestapp/com/ui/info/player/a;->c(Lanimebestapp/com/ui/info/player/a;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "series.keys"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lanimebestapp/com/ui/info/player/a$a$a;->a:Lanimebestapp/com/ui/info/player/a$a;

    iget v2, v2, Lanimebestapp/com/ui/info/player/a$a;->c:I

    invoke-static {v1, v2}, Lg/m/j;->b(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "series.keys.elementAt(index)"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lanimebestapp/com/ui/info/player/a$a$a;->a:Lanimebestapp/com/ui/info/player/a$a;

    iget-object v2, v2, Lanimebestapp/com/ui/info/player/a$a;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-virtual {v2}, Lanimebestapp/com/ui/info/player/a;->f()Lanimebestapp/com/b/b/a;

    move-result-object v2

    iget-object v3, p0, Lanimebestapp/com/ui/info/player/a$a$a;->a:Lanimebestapp/com/ui/info/player/a$a;

    iget-object v3, v3, Lanimebestapp/com/ui/info/player/a$a;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {v3}, Lanimebestapp/com/ui/info/player/a;->a(Lanimebestapp/com/ui/info/player/a;)Lanimebestapp/com/models/Anime;

    move-result-object v3

    invoke-virtual {v3}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lanimebestapp/com/ui/info/player/a$a$a;->a:Lanimebestapp/com/ui/info/player/a$a;

    iget v5, v5, Lanimebestapp/com/ui/info/player/a$a;->c:I

    invoke-virtual {v2, v3, v4, v5}, Lanimebestapp/com/b/b/a;->b(JI)J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lanimebestapp/com/ui/info/player/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_61
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/player/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/a$a$a;->a(Lanimebestapp/com/ui/info/player/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.a.b (animebestapp.com.ui.info.player.a$b)
.class final Lanimebestapp/com/ui/info/player/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/a;->a(I)V
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
        "Lanimebestapp/com/ui/info/player/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/info/player/a$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/player/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lanimebestapp/com/ui/info/player/a$b;->a:I

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/player/c;->c(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/player/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/a$b;->a(Lanimebestapp/com/ui/info/player/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.a.c (animebestapp.com.ui.info.player.a$c)
.class final Lanimebestapp/com/ui/info/player/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/a;->a(I)V
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
        "Lanimebestapp/com/ui/info/player/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/player/a;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/a;I)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/a$c;->a:Lanimebestapp/com/ui/info/player/a;

    iput p2, p0, Lanimebestapp/com/ui/info/player/a$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/player/c;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lanimebestapp/com/ui/info/player/a$c;->b:I

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/a$c;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {v1}, Lanimebestapp/com/ui/info/player/a;->c(Lanimebestapp/com/ui/info/player/a;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-interface {p1, v2}, Lanimebestapp/com/ui/info/player/c;->b(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/player/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/a$c;->a(Lanimebestapp/com/ui/info/player/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.a.d (animebestapp.com.ui.info.player.a$d)
.class final Lanimebestapp/com/ui/info/player/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/a;->a(I)V
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
        "Lanimebestapp/com/ui/info/player/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/player/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/a$d;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/player/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a$d;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/a;->c(Lanimebestapp/com/ui/info/player/a;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/player/c;->a(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/player/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/a$d;->a(Lanimebestapp/com/ui/info/player/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.a.e (animebestapp.com.ui.info.player.a$e)
.class final Lanimebestapp/com/ui/info/player/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/a;->a(I)V
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
        "Lanimebestapp/com/ui/info/player/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/info/player/a$e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/player/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lanimebestapp/com/ui/info/player/a$e;->a:I

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/player/c;->d(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/player/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/a$e;->a(Lanimebestapp/com/ui/info/player/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.a.f (animebestapp.com.ui.info.player.a$f)
.class final Lanimebestapp/com/ui/info/player/a$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/a;->a(I)V
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
        "Lanimebestapp/com/ui/info/player/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/player/a;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/a;I)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/a$f;->a:Lanimebestapp/com/ui/info/player/a;

    iput p2, p0, Lanimebestapp/com/ui/info/player/a$f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/player/c;)V
    .registers 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/a$f;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/a;->b(Lanimebestapp/com/ui/info/player/a;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lanimebestapp/com/ui/info/player/a$f;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_53

    const-string v1, "it1"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/a$f;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {v1}, Lanimebestapp/com/ui/info/player/a;->c(Lanimebestapp/com/ui/info/player/a;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "series.keys"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lanimebestapp/com/ui/info/player/a$f;->b:I

    invoke-static {v1, v2}, Lg/m/j;->b(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "series.keys.elementAt(index)"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lanimebestapp/com/ui/info/player/a$f;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-virtual {v2}, Lanimebestapp/com/ui/info/player/a;->f()Lanimebestapp/com/b/b/a;

    move-result-object v2

    iget-object v3, p0, Lanimebestapp/com/ui/info/player/a$f;->a:Lanimebestapp/com/ui/info/player/a;

    invoke-static {v3}, Lanimebestapp/com/ui/info/player/a;->a(Lanimebestapp/com/ui/info/player/a;)Lanimebestapp/com/models/Anime;

    move-result-object v3

    invoke-virtual {v3}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v3

    iget v5, p0, Lanimebestapp/com/ui/info/player/a$f;->b:I

    invoke-virtual {v2, v3, v4, v5}, Lanimebestapp/com/b/b/a;->b(JI)J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lanimebestapp/com/ui/info/player/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_53
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/player/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/a$f;->a(Lanimebestapp/com/ui/info/player/c;)V

    return-void
.end method
