###### Class animebestapp.com.ui.info.a (animebestapp.com.ui.info.a)
.class public final Lanimebestapp/com/ui/info/a;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/info/c;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/b/b/a;

.field public e:Lanimebestapp/com/d/a;

.field private f:Lanimebestapp/com/models/g;

.field private g:Ljava/lang/String;

.field private final h:Lanimebestapp/com/models/Anime;


# direct methods
.method public constructor <init>(Lanimebestapp/com/models/Anime;)V
    .registers 3

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/info/a;->h:Lanimebestapp/com/models/Anime;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/a;)Lanimebestapp/com/models/Anime;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/a;->h:Lanimebestapp/com/models/Anime;

    return-object p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/a;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/a;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/info/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 9

    const-string v0, "type"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/info/a;->e:Lanimebestapp/com/d/a;

    const/4 v0, 0x0

    if-eqz v1, :cond_37

    iget-object v2, p0, Lanimebestapp/com/ui/info/a;->h:Lanimebestapp/com/models/Anime;

    invoke-virtual {v2}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lanimebestapp/com/ui/info/a;->f:Lanimebestapp/com/models/g;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lanimebestapp/com/models/g;->c()J

    move-result-wide v4

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lanimebestapp/com/d/a;->a(JJLjava/lang/String;)Le/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/info/a$c;

    invoke-direct {v1, p0, p1}, Lanimebestapp/com/ui/info/a$c;-><init>(Lanimebestapp/com/ui/info/a;Ljava/lang/String;)V

    new-instance p1, Lanimebestapp/com/ui/info/a$d;

    invoke-direct {p1, p0}, Lanimebestapp/com/ui/info/a$d;-><init>(Lanimebestapp/com/ui/info/a;)V

    invoke-virtual {v0, v1, p1}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_33
    invoke-static {}, Lg/p/b/f;->a()V

    throw v0

    :cond_37
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/info/a$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/a$a;-><init>(Lanimebestapp/com/ui/info/a;)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/a;->f:Lanimebestapp/com/models/g;

    if-nez v0, :cond_9

    sget-object v0, Lanimebestapp/com/ui/info/a$b;->a:Lanimebestapp/com/ui/info/a$b;

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    :cond_9
    return-void
.end method

.method public final g()Lanimebestapp/com/b/b/a;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/info/a;->d:Lanimebestapp/com/b/b/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mRepository"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()V
    .registers 2

    new-instance v0, Lanimebestapp/com/ui/info/a$e;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/a$e;-><init>(Lanimebestapp/com/ui/info/a;)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public final i()V
    .registers 6

    iget-object v0, p0, Lanimebestapp/com/ui/info/a;->e:Lanimebestapp/com/d/a;

    const-string v1, "mainIteractor"

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->f()Lanimebestapp/com/models/g;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/ui/info/a;->f:Lanimebestapp/com/models/g;

    new-instance v0, Lanimebestapp/com/ui/info/a$g;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/a$g;-><init>(Lanimebestapp/com/ui/info/a;)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/a;->f:Lanimebestapp/com/models/g;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lanimebestapp/com/ui/info/a;->e:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_46

    iget-object v1, p0, Lanimebestapp/com/ui/info/a;->h:Lanimebestapp/com/models/Anime;

    invoke-virtual {v1}, Lanimebestapp/com/models/Anime;->getId()J

    move-result-wide v3

    iget-object v1, p0, Lanimebestapp/com/ui/info/a;->f:Lanimebestapp/com/models/g;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lanimebestapp/com/models/g;->c()J

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lanimebestapp/com/d/a;->a(JJ)Le/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/info/a$f;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/a$f;-><init>(Lanimebestapp/com/ui/info/a;)V

    sget-object v2, Lanimebestapp/com/ui/info/a$h;->a:Lanimebestapp/com/ui/info/a$h;

    invoke-virtual {v0, v1, v2}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    goto :goto_4a

    :cond_42
    invoke-static {}, Lg/p/b/f;->a()V

    throw v2

    :cond_46
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v2
.end method

###### Class animebestapp.com.ui.info.a.C0048a (animebestapp.com.ui.info.a$a)
.class final Lanimebestapp/com/ui/info/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a;->e()V
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
        "Lanimebestapp/com/ui/info/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/a$a;->a:Lanimebestapp/com/ui/info/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/c;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$a;->a:Lanimebestapp/com/ui/info/a;

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/a;->g()Lanimebestapp/com/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/info/a$a;->a:Lanimebestapp/com/ui/info/a;

    invoke-static {v1}, Lanimebestapp/com/ui/info/a;->a(Lanimebestapp/com/ui/info/a;)Lanimebestapp/com/models/Anime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanimebestapp/com/b/b/a;->a(Lanimebestapp/com/models/Anime;)Z

    move-result v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/c;->a(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$a;->a(Lanimebestapp/com/ui/info/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.b (animebestapp.com.ui.info.a$b)
.class final Lanimebestapp/com/ui/info/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a;->f()V
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
        "Lanimebestapp/com/ui/info/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/info/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/a$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/a$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/a$b;->a:Lanimebestapp/com/ui/info/a$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/info/c;->d()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$b;->a(Lanimebestapp/com/ui/info/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.c (animebestapp.com.ui.info.a$c)
.class final Lanimebestapp/com/ui/info/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a;->a(Ljava/lang/String;)V
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
        "Lg/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lanimebestapp/com/ui/info/a$c;->a:Lanimebestapp/com/ui/info/a;

    iput-object p2, p0, Lanimebestapp/com/ui/info/a$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/l;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/info/a$c;->a:Lanimebestapp/com/ui/info/a;

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$c;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/a;->a(Lanimebestapp/com/ui/info/a;Ljava/lang/String;)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/a$c;->a:Lanimebestapp/com/ui/info/a;

    new-instance v0, Lanimebestapp/com/ui/info/a$c$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/a$c$a;-><init>(Lanimebestapp/com/ui/info/a$c;)V

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/a;->a(Lanimebestapp/com/ui/info/a;Lc/b/a/c/d$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lg/l;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$c;->a(Lg/l;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.c.C0049a (animebestapp.com.ui.info.a$c$a)
.class final Lanimebestapp/com/ui/info/a$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a$c;->a(Lg/l;)V
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
        "Lanimebestapp/com/ui/info/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/a$c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/a$c;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/a$c$a;->a:Lanimebestapp/com/ui/info/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$c$a;->a:Lanimebestapp/com/ui/info/a$c;

    iget-object v0, v0, Lanimebestapp/com/ui/info/a$c;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$c$a;->a(Lanimebestapp/com/ui/info/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.d (animebestapp.com.ui.info.a$d)
.class final Lanimebestapp/com/ui/info/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a;->a(Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/info/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/a$d;->a:Lanimebestapp/com/ui/info/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    instance-of v0, p1, Lanimebestapp/com/utils/i;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$d;->a:Lanimebestapp/com/ui/info/a;

    new-instance v1, Lanimebestapp/com/ui/info/a$d$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/info/a$d$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/info/a;->a(Lanimebestapp/com/ui/info/a;Lc/b/a/c/d$a;)V

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.d.C0050a (animebestapp.com.ui.info.a$d$a)
.class final Lanimebestapp/com/ui/info/a$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a$d;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/info/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/a$d$a;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$d$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/a/f/a;->a(Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$d$a;->a(Lanimebestapp/com/ui/info/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.e (animebestapp.com.ui.info.a$e)
.class final Lanimebestapp/com/ui/info/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a;->h()V
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
        "Lanimebestapp/com/ui/info/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/a$e;->a:Lanimebestapp/com/ui/info/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$e;->a:Lanimebestapp/com/ui/info/a;

    invoke-static {v0}, Lanimebestapp/com/ui/info/a;->a(Lanimebestapp/com/ui/info/a;)Lanimebestapp/com/models/Anime;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/c;->d(Lanimebestapp/com/models/Anime;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$e;->a(Lanimebestapp/com/ui/info/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.f (animebestapp.com.ui.info.a$f)
.class final Lanimebestapp/com/ui/info/a$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a;->i()V
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
        "Lanimebestapp/com/models/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/a$f;->a:Lanimebestapp/com/ui/info/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/b;)V
    .registers 4

    if-eqz p1, :cond_19

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$f;->a:Lanimebestapp/com/ui/info/a;

    invoke-virtual {p1}, Lanimebestapp/com/models/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanimebestapp/com/ui/info/a;->a(Lanimebestapp/com/ui/info/a;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$f;->a:Lanimebestapp/com/ui/info/a;

    new-instance v1, Lanimebestapp/com/ui/info/a$f$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/info/a$f$a;-><init>(Lanimebestapp/com/models/b;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/info/a;->a(Lanimebestapp/com/ui/info/a;Lc/b/a/c/d$a;)V

    :cond_19
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/models/b;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$f;->a(Lanimebestapp/com/models/b;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.f.C0051a (animebestapp.com.ui.info.a$f$a)
.class final Lanimebestapp/com/ui/info/a$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a$f;->a(Lanimebestapp/com/models/b;)V
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
        "Lanimebestapp/com/ui/info/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/models/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/models/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/a$f$a;->a:Lanimebestapp/com/models/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$f$a;->a:Lanimebestapp/com/models/b;

    invoke-virtual {v0}, Lanimebestapp/com/models/b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$f$a;->a(Lanimebestapp/com/ui/info/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.g (animebestapp.com.ui.info.a$g)
.class final Lanimebestapp/com/ui/info/a$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a;->i()V
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
        "Lanimebestapp/com/ui/info/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/a$g;->a:Lanimebestapp/com/ui/info/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/info/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/a$g;->a:Lanimebestapp/com/ui/info/a;

    invoke-static {v0}, Lanimebestapp/com/ui/info/a;->a(Lanimebestapp/com/ui/info/a;)Lanimebestapp/com/models/Anime;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/info/c;->b(Lanimebestapp/com/models/Anime;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/info/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$g;->a(Lanimebestapp/com/ui/info/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.a.h (animebestapp.com.ui.info.a$h)
.class final Lanimebestapp/com/ui/info/a$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/a;->i()V
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
.field public static final a:Lanimebestapp/com/ui/info/a$h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/a$h;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/a$h;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/a$h;->a:Lanimebestapp/com/ui/info/a$h;

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

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/a$h;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
