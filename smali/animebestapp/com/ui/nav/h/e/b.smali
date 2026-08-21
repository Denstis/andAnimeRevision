###### Class animebestapp.com.ui.nav.h.e.b (animebestapp.com.ui.nav.h.e.b)
.class public final Lanimebestapp/com/ui/nav/h/e/b;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/nav/h/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/d/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/e/b;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .registers 6

    const-string v0, "rvList"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lanimebestapp/com/utils/h;->a:Lanimebestapp/com/utils/h;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Lanimebestapp/com/utils/h;->a(Landroidx/recyclerview/widget/RecyclerView;II)Le/a/h;

    move-result-object p1

    invoke-virtual {p1}, Le/a/h;->a()Le/a/h;

    move-result-object p1

    invoke-static {}, Le/a/b0/b;->a()Le/a/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/h;->a(Le/a/n;)Le/a/h;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/nav/h/e/b$a;

    invoke-direct {v0, p0, p2}, Lanimebestapp/com/ui/nav/h/e/b$a;-><init>(Lanimebestapp/com/ui/nav/h/e/b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/h;->c(Le/a/x/e;)Le/a/h;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->d()Le/a/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/h;->a(Le/a/l;)Le/a/h;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/ui/nav/h/e/b$b;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/nav/h/e/b$b;-><init>(Lanimebestapp/com/ui/nav/h/e/b;)V

    sget-object v0, Lanimebestapp/com/ui/nav/h/e/b$c;->a:Lanimebestapp/com/ui/nav/h/e/b$c;

    invoke-virtual {p1, p2, v0}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void
.end method

.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/nav/h/e/b;)V

    return-void
.end method

.method public final e()Lanimebestapp/com/d/a;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

###### Class animebestapp.com.ui.nav.h.e.b.a (animebestapp.com.ui.nav.h.e.b$a)
.class final Lanimebestapp/com/ui/nav/h/e/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/e/b;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/e/b;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/e/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/e/b$a;->a:Lanimebestapp/com/ui/nav/h/e/b;

    iput-object p2, p0, Lanimebestapp/com/ui/nav/h/e/b$a;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/b$a;->a:Lanimebestapp/com/ui/nav/h/e/b;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/e/b;->e()Lanimebestapp/com/d/a;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/e/b$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lanimebestapp/com/d/a;->d(Ljava/lang/String;I)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/e/b$a;->a(Ljava/lang/Integer;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.nav.h.e.b.C0087b (animebestapp.com.ui.nav.h.e.b$b)
.class final Lanimebestapp/com/ui/nav/h/e/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/e/b;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/e/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/e/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/e/b$b;->a:Lanimebestapp/com/ui/nav/h/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/e/b$b;->a(Ljava/util/List;)V

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

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/b$b;->a:Lanimebestapp/com/ui/nav/h/e/b;

    new-instance v1, Lanimebestapp/com/ui/nav/h/e/b$b$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/h/e/b$b$a;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/e/b;->a(Lanimebestapp/com/ui/nav/h/e/b;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.e.b.C0087b.a (animebestapp.com.ui.nav.h.e.b$b$a)
.class final Lanimebestapp/com/ui/nav/h/e/b$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/e/b$b;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/e/b$b$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/e/d;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/e/b$b$a;->a:Ljava/util/List;

    const-string v1, "items"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/e/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/e/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/e/b$b$a;->a(Lanimebestapp/com/ui/nav/h/e/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.e.b.c (animebestapp.com.ui.nav.h.e.b$c)
.class final Lanimebestapp/com/ui/nav/h/e/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/e/b;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
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
.field public static final a:Lanimebestapp/com/ui/nav/h/e/b$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/e/b$c;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/e/b$c;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/e/b$c;->a:Lanimebestapp/com/ui/nav/h/e/b$c;

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

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/e/b$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
