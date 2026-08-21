###### Class animebestapp.com.ui.top.a (animebestapp.com.ui.top.a)
.class public final Lanimebestapp/com/ui/top/a;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/top/c;",
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

.method public static final synthetic a(Lanimebestapp/com/ui/top/a;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method


# virtual methods
.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/top/a;)V

    return-void
.end method

.method public final e()V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/top/a;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanimebestapp/com/d/a;->a(I)Le/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/top/a$a;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/top/a$a;-><init>(Lanimebestapp/com/ui/top/a;)V

    sget-object v2, Lanimebestapp/com/ui/top/a$b;->a:Lanimebestapp/com/ui/top/a$b;

    invoke-virtual {v0, v1, v2}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_1c
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

###### Class animebestapp.com.ui.top.a.C0089a (animebestapp.com.ui.top.a$a)
.class final Lanimebestapp/com/ui/top/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/top/a;->e()V
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
.field final synthetic a:Lanimebestapp/com/ui/top/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/top/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/top/a$a;->a:Lanimebestapp/com/ui/top/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/top/a$a;->a(Ljava/util/List;)V

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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/top/a$a;->a:Lanimebestapp/com/ui/top/a;

    new-instance v2, Lanimebestapp/com/ui/top/a$a$a;

    invoke-direct {v2, p1}, Lanimebestapp/com/ui/top/a$a$a;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lanimebestapp/com/ui/top/a;->a(Lanimebestapp/com/ui/top/a;Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/top/a$a;->a:Lanimebestapp/com/ui/top/a;

    new-instance v1, Lanimebestapp/com/ui/top/a$a$b;

    invoke-direct {v1, v0}, Lanimebestapp/com/ui/top/a$a$b;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lanimebestapp/com/ui/top/a;->a(Lanimebestapp/com/ui/top/a;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.top.a.C0089a.C0090a (animebestapp.com.ui.top.a$a$a)
.class final Lanimebestapp/com/ui/top/a$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/top/a$a;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/top/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/top/a$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/top/c;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/top/a$a$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/top/c;->b(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/top/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/top/a$a$a;->a(Lanimebestapp/com/ui/top/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.top.a.C0089a.b (animebestapp.com.ui.top.a$a$b)
.class final Lanimebestapp/com/ui/top/a$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/top/a$a;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/top/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/top/a$a$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/top/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/top/a$a$b;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/top/c;->e(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/top/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/top/a$a$b;->a(Lanimebestapp/com/ui/top/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.top.a.b (animebestapp.com.ui.top.a$b)
.class final Lanimebestapp/com/ui/top/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/top/a;->e()V
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
.field public static final a:Lanimebestapp/com/ui/top/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/top/a$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/top/a$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/top/a$b;->a:Lanimebestapp/com/ui/top/a$b;

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

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/top/a$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
