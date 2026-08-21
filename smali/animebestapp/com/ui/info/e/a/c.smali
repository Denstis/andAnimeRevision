###### Class animebestapp.com.ui.info.e.a.c (animebestapp.com.ui.info.e.a.c)
.class public final Lanimebestapp/com/ui/info/e/a/c;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/info/e/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/d/a;

.field private final e:Lanimebestapp/com/models/Anime;


# direct methods
.method public constructor <init>(Lanimebestapp/com/models/Anime;)V
    .registers 3

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/c;->e:Lanimebestapp/com/models/Anime;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/e/a/c;)Lanimebestapp/com/models/Anime;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/e/a/c;->e:Lanimebestapp/com/models/Anime;

    return-object p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/e/a/c;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 4

    sget-object v0, Lanimebestapp/com/ui/info/e/a/c$a;->a:Lanimebestapp/com/ui/info/e/a/c$a;

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/c;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/d/a;->a(J)Le/a/o;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/ui/info/e/a/c$b;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/info/e/a/c$b;-><init>(Lanimebestapp/com/ui/info/e/a/c;)V

    new-instance v0, Lanimebestapp/com/ui/info/e/a/c$c;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/a/c$c;-><init>(Lanimebestapp/com/ui/info/e/a/c;)V

    invoke-virtual {p1, p2, v0}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_23
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/info/e/a/c;)V

    return-void
.end method

.method public final e()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/info/e/a/c$d;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/e/a/c$d;-><init>(Lanimebestapp/com/ui/info/e/a/c;)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.c.a (animebestapp.com.ui.info.e.a.c$a)
.class final Lanimebestapp/com/ui/info/e/a/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/c;->a(J)V
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
        "Lanimebestapp/com/ui/info/e/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/info/e/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/e/a/c$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/a/c$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/e/a/c$a;->a:Lanimebestapp/com/ui/info/e/a/c$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/a/e;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/info/e/a/e;->a()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/a/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/a/c$a;->a(Lanimebestapp/com/ui/info/e/a/e;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.c.b (animebestapp.com.ui.info.e.a.c$b)
.class final Lanimebestapp/com/ui/info/e/a/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/c;->a(J)V
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
.field final synthetic a:Lanimebestapp/com/ui/info/e/a/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/a/c;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/c$b;->a:Lanimebestapp/com/ui/info/e/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/a/c$b;->a(Ljava/util/List;)V

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

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/c$b;->a:Lanimebestapp/com/ui/info/e/a/c;

    new-instance v1, Lanimebestapp/com/ui/info/e/a/c$b$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/info/e/a/c$b$a;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/info/e/a/c;->a(Lanimebestapp/com/ui/info/e/a/c;Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/e/a/c$b;->a:Lanimebestapp/com/ui/info/e/a/c;

    sget-object v0, Lanimebestapp/com/ui/info/e/a/c$b$b;->a:Lanimebestapp/com/ui/info/e/a/c$b$b;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/e/a/c;->a(Lanimebestapp/com/ui/info/e/a/c;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.c.b.a (animebestapp.com.ui.info.e.a.c$b$a)
.class final Lanimebestapp/com/ui/info/e/a/c$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/c$b;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/info/e/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/c$b$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/a/e;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/c$b$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/models/Anime;

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/e/a/e;->a(Lanimebestapp/com/models/Anime;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/a/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/a/c$b$a;->a(Lanimebestapp/com/ui/info/e/a/e;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.c.b.C0054b (animebestapp.com.ui.info.e.a.c$b$b)
.class final Lanimebestapp/com/ui/info/e/a/c$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/c$b;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/info/e/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/info/e/a/c$b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/e/a/c$b$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/a/c$b$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/e/a/c$b$b;->a:Lanimebestapp/com/ui/info/e/a/c$b$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/a/e;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/info/e/a/e;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/a/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/a/c$b$b;->a(Lanimebestapp/com/ui/info/e/a/e;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.c.C0055c (animebestapp.com.ui.info.e.a.c$c)
.class final Lanimebestapp/com/ui/info/e/a/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/c;->a(J)V
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
.field final synthetic a:Lanimebestapp/com/ui/info/e/a/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/a/c;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/c$c;->a:Lanimebestapp/com/ui/info/e/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/a/c$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/c$c;->a:Lanimebestapp/com/ui/info/e/a/c;

    sget-object v1, Lanimebestapp/com/ui/info/e/a/c$c$a;->a:Lanimebestapp/com/ui/info/e/a/c$c$a;

    invoke-static {v0, v1}, Lanimebestapp/com/ui/info/e/a/c;->a(Lanimebestapp/com/ui/info/e/a/c;Lc/b/a/c/d$a;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.c.C0055c.a (animebestapp.com.ui.info.e.a.c$c$a)
.class final Lanimebestapp/com/ui/info/e/a/c$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/c$c;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/info/e/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/info/e/a/c$c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/e/a/c$c$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/e/a/c$c$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/e/a/c$c$a;->a:Lanimebestapp/com/ui/info/e/a/c$c$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/a/e;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/info/e/a/e;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/a/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/a/c$c$a;->a(Lanimebestapp/com/ui/info/e/a/e;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.e.a.c.d (animebestapp.com.ui.info.e.a.c$d)
.class final Lanimebestapp/com/ui/info/e/a/c$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/e/a/c;->e()V
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
        "Lanimebestapp/com/ui/info/e/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/e/a/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/e/a/c;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/e/a/c$d;->a:Lanimebestapp/com/ui/info/e/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/e/a/e;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/e/a/c$d;->a:Lanimebestapp/com/ui/info/e/a/c;

    invoke-static {v0}, Lanimebestapp/com/ui/info/e/a/c;->a(Lanimebestapp/com/ui/info/e/a/c;)Lanimebestapp/com/models/Anime;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/e/a/e;->c(Lanimebestapp/com/models/Anime;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/e/a/e;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/e/a/c$d;->a(Lanimebestapp/com/ui/info/e/a/e;)V

    return-void
.end method
