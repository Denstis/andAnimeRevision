###### Class animebestapp.com.ui.nav.h.d.c (animebestapp.com.ui.nav.h.d.c)
.class public final Lanimebestapp/com/ui/nav/h/d/c;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/nav/h/d/e;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/d/a;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/models/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lanimebestapp/com/models/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/c;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/c;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/d/c;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/d/c;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/d/c;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/models/e;

    invoke-virtual {p1}, Lanimebestapp/com/models/e;->a()J

    move-result-wide v0

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/d/c;->e:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_21

    new-instance p1, Lanimebestapp/com/ui/nav/h/d/c$a;

    invoke-direct {p1, p0, v0, v1}, Lanimebestapp/com/ui/nav/h/d/c$a;-><init>(Lanimebestapp/com/ui/nav/h/d/c;J)V

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    goto :goto_43

    :cond_21
    sget-object p1, Lanimebestapp/com/ui/nav/h/d/c$b;->a:Lanimebestapp/com/ui/nav/h/d/c$b;

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/d/c;->d:Lanimebestapp/com/d/a;

    if-eqz p1, :cond_44

    invoke-virtual {p1, v0, v1}, Lanimebestapp/com/d/a;->a(J)Le/a/o;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v2

    invoke-virtual {p1, v2}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object p1

    new-instance v2, Lanimebestapp/com/ui/nav/h/d/c$c;

    invoke-direct {v2, p0, v0, v1}, Lanimebestapp/com/ui/nav/h/d/c$c;-><init>(Lanimebestapp/com/ui/nav/h/d/c;J)V

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/c$d;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/h/d/c$d;-><init>(Lanimebestapp/com/ui/nav/h/d/c;)V

    invoke-virtual {p1, v2, v0}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    :goto_43
    return-void

    :cond_44
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/nav/h/d/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.c.a (animebestapp.com.ui.nav.h.d.c$a)
.class final Lanimebestapp/com/ui/nav/h/d/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/c;->a(I)V
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
        "Lanimebestapp/com/ui/nav/h/d/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/d/c;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/d/c;J)V
    .registers 4

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/c$a;->a:Lanimebestapp/com/ui/nav/h/d/c;

    iput-wide p2, p0, Lanimebestapp/com/ui/nav/h/d/c$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/d/e;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/c$a;->a:Lanimebestapp/com/ui/nav/h/d/c;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/d/c;->a(Lanimebestapp/com/ui/nav/h/d/c;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lanimebestapp/com/ui/nav/h/d/c$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "map[id]!!"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lanimebestapp/com/models/Anime;

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/d/e;->a(Lanimebestapp/com/models/Anime;)V

    return-void

    :cond_22
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/d/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/c$a;->a(Lanimebestapp/com/ui/nav/h/d/e;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.c.b (animebestapp.com.ui.nav.h.d.c$b)
.class final Lanimebestapp/com/ui/nav/h/d/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/c;->a(I)V
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
        "Lanimebestapp/com/ui/nav/h/d/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/d/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/c$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/d/c$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/d/c$b;->a:Lanimebestapp/com/ui/nav/h/d/c$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/d/e;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/d/e;->a()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/d/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/c$b;->a(Lanimebestapp/com/ui/nav/h/d/e;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.c.C0082c (animebestapp.com.ui.nav.h.d.c$c)
.class final Lanimebestapp/com/ui/nav/h/d/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/c;->a(I)V
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
        "Ljava/util/List<",
        "+",
        "Lanimebestapp/com/models/Anime;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/d/c;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/d/c;J)V
    .registers 4

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/c$c;->a:Lanimebestapp/com/ui/nav/h/d/c;

    iput-wide p2, p0, Lanimebestapp/com/ui/nav/h/d/c$c;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/c$c;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/c$c;->a:Lanimebestapp/com/ui/nav/h/d/c;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/d/c;->a(Lanimebestapp/com/ui/nav/h/d/c;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lanimebestapp/com/ui/nav/h/d/c$c;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/c$c;->a:Lanimebestapp/com/ui/nav/h/d/c;

    new-instance v1, Lanimebestapp/com/ui/nav/h/d/c$c$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/h/d/c$c$a;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/d/c;->a(Lanimebestapp/com/ui/nav/h/d/c;Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/d/c$c;->a:Lanimebestapp/com/ui/nav/h/d/c;

    sget-object v0, Lanimebestapp/com/ui/nav/h/d/c$c$b;->a:Lanimebestapp/com/ui/nav/h/d/c$c$b;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/d/c;->a(Lanimebestapp/com/ui/nav/h/d/c;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.c.C0082c.a (animebestapp.com.ui.nav.h.d.c$c$a)
.class final Lanimebestapp/com/ui/nav/h/d/c$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/c$c;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/d/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/c$c$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/d/e;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/c$c$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/models/Anime;

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/d/e;->a(Lanimebestapp/com/models/Anime;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/d/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/c$c$a;->a(Lanimebestapp/com/ui/nav/h/d/e;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.c.C0082c.b (animebestapp.com.ui.nav.h.d.c$c$b)
.class final Lanimebestapp/com/ui/nav/h/d/c$c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/c$c;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/d/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/d/c$c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/c$c$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/d/c$c$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/d/c$c$b;->a:Lanimebestapp/com/ui/nav/h/d/c$c$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/d/e;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/d/e;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/d/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/c$c$b;->a(Lanimebestapp/com/ui/nav/h/d/e;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.c.d (animebestapp.com.ui.nav.h.d.c$d)
.class final Lanimebestapp/com/ui/nav/h/d/c$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/c;->a(I)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/d/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/d/c;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/c$d;->a:Lanimebestapp/com/ui/nav/h/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/c$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/c$d;->a:Lanimebestapp/com/ui/nav/h/d/c;

    sget-object v1, Lanimebestapp/com/ui/nav/h/d/c$d$a;->a:Lanimebestapp/com/ui/nav/h/d/c$d$a;

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/d/c;->a(Lanimebestapp/com/ui/nav/h/d/c;Lc/b/a/c/d$a;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.c.d.a (animebestapp.com.ui.nav.h.d.c$d$a)
.class final Lanimebestapp/com/ui/nav/h/d/c$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/c$d;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/nav/h/d/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/d/c$d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/c$d$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/d/c$d$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/d/c$d$a;->a:Lanimebestapp/com/ui/nav/h/d/c$d$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/d/e;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/d/e;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/d/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/c$d$a;->a(Lanimebestapp/com/ui/nav/h/d/e;)V

    return-void
.end method
