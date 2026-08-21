###### Class animebestapp.com.ui.nav.h.b.b (animebestapp.com.ui.nav.h.b.b)
.class public final Lanimebestapp/com/ui/nav/h/b/b;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/d/a;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/b/b;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method


# virtual methods
.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/nav/h/b/b;)V

    return-void
.end method

.method public final a(Lanimebestapp/com/models/Anime;)V
    .registers 5

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lanimebestapp/com/ui/nav/h/b/b$e;->a:Lanimebestapp/com/ui/nav/h/b/b$e;

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lanimebestapp/com/d/a;->a(J)Le/a/o;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/b$f;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/h/b/b$f;-><init>(Lanimebestapp/com/ui/nav/h/b/b;)V

    new-instance v1, Lanimebestapp/com/ui/nav/h/b/b$g;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/b/b$g;-><init>(Lanimebestapp/com/ui/nav/h/b/b;)V

    invoke-virtual {p1, v0, v1}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_2c
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e()V
    .registers 5

    sget-object v0, Lanimebestapp/com/ui/nav/h/b/b$a;->a:Lanimebestapp/com/ui/nav/h/b/b$a;

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/b;->d:Lanimebestapp/com/d/a;

    const/4 v1, 0x0

    const-string v2, "mainIteractor"

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->f()Lanimebestapp/com/models/g;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v3, p0, Lanimebestapp/com/ui/nav/h/b/b;->d:Lanimebestapp/com/d/a;

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Lanimebestapp/com/models/g;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/b/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lanimebestapp/com/d/a;->b(Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/nav/h/b/b$b;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/b/b$b;-><init>(Lanimebestapp/com/ui/nav/h/b/b;)V

    new-instance v2, Lanimebestapp/com/ui/nav/h/b/b$c;

    invoke-direct {v2, p0}, Lanimebestapp/com/ui/nav/h/b/b$c;-><init>(Lanimebestapp/com/ui/nav/h/b/b;)V

    invoke-virtual {v0, v1, v2}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    goto :goto_43

    :cond_3a
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_3e
    sget-object v0, Lanimebestapp/com/ui/nav/h/b/b$d;->a:Lanimebestapp/com/ui/nav/h/b/b$d;

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    :goto_43
    return-void

    :cond_44
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1
.end method

###### Class animebestapp.com.ui.nav.h.b.b.a (animebestapp.com.ui.nav.h.b.b$a)
.class final Lanimebestapp/com/ui/nav/h/b/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b;->e()V
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
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/b$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/b/b$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/b/b$a;->a:Lanimebestapp/com/ui/nav/h/b/b$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/m/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/b/d;->f(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$a;->a(Lanimebestapp/com/ui/nav/h/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.C0071b (animebestapp.com.ui.nav.h.b.b$b)
.class final Lanimebestapp/com/ui/nav/h/b/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b;->e()V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/b$b;->a:Lanimebestapp/com/ui/nav/h/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$b;->a(Ljava/util/List;)V

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

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/b$b;->a:Lanimebestapp/com/ui/nav/h/b/b;

    new-instance v1, Lanimebestapp/com/ui/nav/h/b/b$b$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/h/b/b$b$a;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/ui/nav/h/b/b;Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/b$b;->a:Lanimebestapp/com/ui/nav/h/b/b;

    sget-object v0, Lanimebestapp/com/ui/nav/h/b/b$b$b;->a:Lanimebestapp/com/ui/nav/h/b/b$b$b;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/ui/nav/h/b/b;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.C0071b.a (animebestapp.com.ui.nav.h.b.b$b$a)
.class final Lanimebestapp/com/ui/nav/h/b/b$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b$b;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/b$b$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/b/d;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/b$b$a;->a:Ljava/util/List;

    const-string v1, "items"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/b/d;->f(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$b$a;->a(Lanimebestapp/com/ui/nav/h/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.C0071b.C0072b (animebestapp.com.ui.nav.h.b.b$b$b)
.class final Lanimebestapp/com/ui/nav/h/b/b$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b$b;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/b/b$b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/b$b$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/b/b$b$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/b/b$b$b;->a:Lanimebestapp/com/ui/nav/h/b/b$b$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/b/d;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$b$b;->a(Lanimebestapp/com/ui/nav/h/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.c (animebestapp.com.ui.nav.h.b.b$c)
.class final Lanimebestapp/com/ui/nav/h/b/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b;->e()V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/b$c;->a:Lanimebestapp/com/ui/nav/h/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/b$c;->a:Lanimebestapp/com/ui/nav/h/b/b;

    sget-object v1, Lanimebestapp/com/ui/nav/h/b/b$c$a;->a:Lanimebestapp/com/ui/nav/h/b/b$c$a;

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/ui/nav/h/b/b;Lc/b/a/c/d$a;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.c.a (animebestapp.com.ui.nav.h.b.b$c$a)
.class final Lanimebestapp/com/ui/nav/h/b/b$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b$c;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/b/b$c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/b$c$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/b/b$c$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/b/b$c$a;->a:Lanimebestapp/com/ui/nav/h/b/b$c$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/b/d;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$c$a;->a(Lanimebestapp/com/ui/nav/h/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.d (animebestapp.com.ui.nav.h.b.b$d)
.class final Lanimebestapp/com/ui/nav/h/b/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b;->e()V
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
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/b/b$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/b$d;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/b/b$d;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/b/b$d;->a:Lanimebestapp/com/ui/nav/h/b/b$d;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/b/d;->j()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$d;->a(Lanimebestapp/com/ui/nav/h/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.e (animebestapp.com.ui.nav.h.b.b$e)
.class final Lanimebestapp/com/ui/nav/h/b/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/models/Anime;)V
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
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/b/b$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/b$e;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/b/b$e;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/b/b$e;->a:Lanimebestapp/com/ui/nav/h/b/b$e;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/b/d;->a()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$e;->a(Lanimebestapp/com/ui/nav/h/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.f (animebestapp.com.ui.nav.h.b.b$f)
.class final Lanimebestapp/com/ui/nav/h/b/b$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/models/Anime;)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/b$f;->a:Lanimebestapp/com/ui/nav/h/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$f;->a(Ljava/util/List;)V

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

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/b$f;->a:Lanimebestapp/com/ui/nav/h/b/b;

    new-instance v1, Lanimebestapp/com/ui/nav/h/b/b$f$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/h/b/b$f$a;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/ui/nav/h/b/b;Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/b/b$f;->a:Lanimebestapp/com/ui/nav/h/b/b;

    sget-object v0, Lanimebestapp/com/ui/nav/h/b/b$f$b;->a:Lanimebestapp/com/ui/nav/h/b/b$f$b;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/ui/nav/h/b/b;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.f.a (animebestapp.com.ui.nav.h.b.b$f$a)
.class final Lanimebestapp/com/ui/nav/h/b/b$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b$f;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/b$f$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/b/d;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/b$f$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/models/Anime;

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/b/d;->a(Lanimebestapp/com/models/Anime;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$f$a;->a(Lanimebestapp/com/ui/nav/h/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.f.C0073b (animebestapp.com.ui.nav.h.b.b$f$b)
.class final Lanimebestapp/com/ui/nav/h/b/b$f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b$f;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/b/b$f$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/b$f$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/b/b$f$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/b/b$f$b;->a:Lanimebestapp/com/ui/nav/h/b/b$f$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/b/d;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$f$b;->a(Lanimebestapp/com/ui/nav/h/b/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.g (animebestapp.com.ui.nav.h.b.b$g)
.class final Lanimebestapp/com/ui/nav/h/b/b$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/models/Anime;)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/b/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/b/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/b/b$g;->a:Lanimebestapp/com/ui/nav/h/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/b/b$g;->a:Lanimebestapp/com/ui/nav/h/b/b;

    sget-object v1, Lanimebestapp/com/ui/nav/h/b/b$g$a;->a:Lanimebestapp/com/ui/nav/h/b/b$g$a;

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/b/b;->a(Lanimebestapp/com/ui/nav/h/b/b;Lc/b/a/c/d$a;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.b.b.g.a (animebestapp.com.ui.nav.h.b.b$g$a)
.class final Lanimebestapp/com/ui/nav/h/b/b$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/b/b$g;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/nav/h/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/b/b$g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/b/b$g$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/b/b$g$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/b/b$g$a;->a:Lanimebestapp/com/ui/nav/h/b/b$g$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/b/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/b/d;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/b/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/b/b$g$a;->a(Lanimebestapp/com/ui/nav/h/b/d;)V

    return-void
.end method
