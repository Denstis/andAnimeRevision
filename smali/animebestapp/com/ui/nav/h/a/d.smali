###### Class animebestapp.com.ui.nav.h.a.d (animebestapp.com.ui.nav.h.a.d)
.class public final Lanimebestapp/com/ui/nav/h/a/d;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/nav/h/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/d/a;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/d;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/a/d;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method


# virtual methods
.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/nav/h/a/d;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rvList"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lanimebestapp/com/utils/h;->a:Lanimebestapp/com/utils/h;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p2, v1, v2}, Lanimebestapp/com/utils/h;->a(Landroidx/recyclerview/widget/RecyclerView;II)Le/a/h;

    move-result-object p2

    invoke-virtual {p2}, Le/a/h;->a()Le/a/h;

    move-result-object p2

    invoke-static {}, Le/a/b0/b;->a()Le/a/n;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/a/h;->a(Le/a/n;)Le/a/h;

    move-result-object p2

    new-instance v0, Lanimebestapp/com/ui/nav/h/a/d$b;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/ui/nav/h/a/d$b;-><init>(Lanimebestapp/com/ui/nav/h/a/d;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Le/a/h;->c(Le/a/x/e;)Le/a/h;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->d()Le/a/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/h;->a(Le/a/l;)Le/a/h;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/ui/nav/h/a/d$c;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/nav/h/a/d$c;-><init>(Lanimebestapp/com/ui/nav/h/a/d;)V

    sget-object v0, Lanimebestapp/com/ui/nav/h/a/d$d;->a:Lanimebestapp/com/ui/nav/h/a/d$d;

    invoke-virtual {p1, p2, v0}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void
.end method

.method public final e()Lanimebestapp/com/d/a;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/d;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()V
    .registers 3

    sget-object v0, Lanimebestapp/com/menu/a;->b:Lanimebestapp/com/menu/a;

    invoke-virtual {v0}, Lanimebestapp/com/menu/a;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/a/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/ui/nav/h/a/f;

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    sget-object v0, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v0}, Lanimebestapp/com/menu/b;->j()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v0

    :goto_17
    new-instance v1, Lanimebestapp/com/ui/nav/h/a/d$a;

    invoke-direct {v1, v0}, Lanimebestapp/com/ui/nav/h/a/d$a;-><init>(Lanimebestapp/com/ui/nav/h/a/f;)V

    invoke-virtual {p0, v1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public final g()V
    .registers 3

    sget-object v0, Lanimebestapp/com/menu/a;->b:Lanimebestapp/com/menu/a;

    invoke-virtual {v0}, Lanimebestapp/com/menu/a;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/a/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/ui/nav/h/a/f;

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    sget-object v0, Lanimebestapp/com/menu/b;->x:Lanimebestapp/com/menu/b;

    invoke-virtual {v0}, Lanimebestapp/com/menu/b;->j()Lanimebestapp/com/ui/nav/h/a/f;

    move-result-object v0

    :goto_17
    new-instance v1, Lanimebestapp/com/ui/nav/h/a/d$e;

    invoke-direct {v1, v0}, Lanimebestapp/com/ui/nav/h/a/d$e;-><init>(Lanimebestapp/com/ui/nav/h/a/f;)V

    invoke-virtual {p0, v1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.a.d.a (animebestapp.com.ui.nav.h.a.d$a)
.class final Lanimebestapp/com/ui/nav/h/a/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/d;->f()V
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
        "Lanimebestapp/com/ui/nav/h/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/a/f;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/a/f;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/d$a;->a:Lanimebestapp/com/ui/nav/h/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/a/g;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/d$a;->a:Lanimebestapp/com/ui/nav/h/a/f;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/a/f;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/a/d$a;->a:Lanimebestapp/com/ui/nav/h/a/f;

    invoke-virtual {v1}, Lanimebestapp/com/ui/nav/h/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lanimebestapp/com/ui/nav/h/a/g;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/a/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/a/d$a;->a(Lanimebestapp/com/ui/nav/h/a/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.a.d.b (animebestapp.com.ui.nav.h.a.d$b)
.class final Lanimebestapp/com/ui/nav/h/a/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/d;->a(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V
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
        "Le/a/k<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/a/d;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/a/d;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/d$b;->a:Lanimebestapp/com/ui/nav/h/a/d;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/h/a/d$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Le/a/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/h<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;>;"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/d$b;->a:Lanimebestapp/com/ui/nav/h/a/d;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/a/d;->e()Lanimebestapp/com/d/a;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/a/d$b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lanimebestapp/com/d/a;->a(Ljava/lang/String;I)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/a/d$b;->a(Ljava/lang/Integer;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.nav.h.a.d.c (animebestapp.com.ui.nav.h.a.d$c)
.class final Lanimebestapp/com/ui/nav/h/a/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/d;->a(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/a/d;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/a/d;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/d$c;->a:Lanimebestapp/com/ui/nav/h/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/a/d$c;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/d$c;->a:Lanimebestapp/com/ui/nav/h/a/d;

    new-instance v1, Lanimebestapp/com/ui/nav/h/a/d$c$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/h/a/d$c$a;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/a/d;->a(Lanimebestapp/com/ui/nav/h/a/d;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.a.d.c.a (animebestapp.com.ui.nav.h.a.d$c$a)
.class final Lanimebestapp/com/ui/nav/h/a/d$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/d$c;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/d$c$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/a/g;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/d$c$a;->a:Ljava/util/List;

    const-string v1, "items"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/a/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/a/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/a/d$c$a;->a(Lanimebestapp/com/ui/nav/h/a/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.a.d.C0069d (animebestapp.com.ui.nav.h.a.d$d)
.class final Lanimebestapp/com/ui/nav/h/a/d$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/d;->a(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V
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
.field public static final a:Lanimebestapp/com/ui/nav/h/a/d$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/a/d$d;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/a/d$d;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/a/d$d;->a:Lanimebestapp/com/ui/nav/h/a/d$d;

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

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/a/d$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.a.d.e (animebestapp.com.ui.nav.h.a.d$e)
.class final Lanimebestapp/com/ui/nav/h/a/d$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/a/d;->g()V
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
        "Lanimebestapp/com/ui/nav/h/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/a/f;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/a/f;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/a/d$e;->a:Lanimebestapp/com/ui/nav/h/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/a/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/a/d$e;->a:Lanimebestapp/com/ui/nav/h/a/f;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/a/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/a/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/a/d$e;->a(Lanimebestapp/com/ui/nav/h/a/g;)V

    return-void
.end method
