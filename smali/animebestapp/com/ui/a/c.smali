###### Class animebestapp.com.ui.a.c (animebestapp.com.ui.a.c)
.class public abstract Lanimebestapp/com/ui/a/c;
.super Lc/b/a/c/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lanimebestapp/com/ui/a/f/a;",
        ">",
        "Lc/b/a/c/d<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private c:Le/a/v/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lc/b/a/c/d;-><init>()V

    new-instance v0, Le/a/v/a;

    invoke-direct {v0}, Le/a/v/a;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/a/c;->c:Le/a/v/a;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/a/c;Le/a/v/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lanimebestapp/com/ui/a/c;->a(Le/a/v/b;)V

    return-void
.end method

.method private final a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/a/c;->c:Le/a/v/a;

    invoke-virtual {v0, p1}, Le/a/v/a;->b(Le/a/v/b;)Z

    return-void
.end method


# virtual methods
.method public abstract a(Lanimebestapp/com/c/a/a;)V
.end method

.method public final b()Le/a/t;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Le/a/t<",
            "TT;TT;>;"
        }
    .end annotation

    new-instance v0, Lanimebestapp/com/ui/a/c$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/a/c$a;-><init>(Lanimebestapp/com/ui/a/c;)V

    return-object v0
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/a/c;->c:Le/a/v/a;

    invoke-virtual {v0}, Le/a/v/a;->c()V

    return-void
.end method

.method public final d()Le/a/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Le/a/l<",
            "TT;TT;>;"
        }
    .end annotation

    new-instance v0, Lanimebestapp/com/ui/a/c$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/a/c$b;-><init>(Lanimebestapp/com/ui/a/c;)V

    return-object v0
.end method

###### Class animebestapp.com.ui.a.c.a (animebestapp.com.ui.a.c$a)
.class final Lanimebestapp/com/ui/a/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/a/c;->b()Le/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Upstream:",
        "Ljava/lang/Object;",
        "Downstream:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/t<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/a/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/a/c;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/a/c$a;->a:Lanimebestapp/com/ui/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/a/o;)Le/a/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o<",
            "TT;>;)",
            "Le/a/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Le/a/b0/b;->a()Le/a/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/o;->b(Le/a/n;)Le/a/o;

    move-result-object p1

    invoke-static {}, Le/a/u/b/a;->a()Le/a/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/o;->a(Le/a/n;)Le/a/o;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/a/c$a$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/a/c$a$a;-><init>(Lanimebestapp/com/ui/a/c$a;)V

    invoke-virtual {p1, v0}, Le/a/o;->a(Le/a/x/d;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Le/a/o;)Le/a/s;
    .registers 2

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/c$a;->a(Le/a/o;)Le/a/o;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.a.c.a.C0037a (animebestapp.com.ui.a.c$a$a)
.class final Lanimebestapp/com/ui/a/c$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/a/c$a;->a(Le/a/o;)Le/a/o;
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
        "Le/a/v/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/a/c$a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/a/c$a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/a/c$a$a;->a:Lanimebestapp/com/ui/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/a/v/b;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/a/c$a$a;->a:Lanimebestapp/com/ui/a/c$a;

    iget-object v0, v0, Lanimebestapp/com/ui/a/c$a;->a:Lanimebestapp/com/ui/a/c;

    const-string v1, "it"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lanimebestapp/com/ui/a/c;->a(Lanimebestapp/com/ui/a/c;Le/a/v/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Le/a/v/b;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/c$a$a;->a(Le/a/v/b;)V

    return-void
.end method

###### Class animebestapp.com.ui.a.c.b (animebestapp.com.ui.a.c$b)
.class final Lanimebestapp/com/ui/a/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/a/c;->d()Le/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Upstream:",
        "Ljava/lang/Object;",
        "Downstream:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/l<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/a/c;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/a/c;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/a/c$b;->a:Lanimebestapp/com/ui/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/a/h;)Le/a/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h<",
            "TT;>;)",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Le/a/b0/b;->a()Le/a/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/h;->b(Le/a/n;)Le/a/h;

    move-result-object p1

    invoke-static {}, Le/a/u/b/a;->a()Le/a/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/h;->a(Le/a/n;)Le/a/h;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/a/c$b$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/a/c$b$a;-><init>(Lanimebestapp/com/ui/a/c$b;)V

    invoke-virtual {p1, v0}, Le/a/h;->b(Le/a/x/d;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Le/a/h;)Le/a/k;
    .registers 2

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/c$b;->a(Le/a/h;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.a.c.b.a (animebestapp.com.ui.a.c$b$a)
.class final Lanimebestapp/com/ui/a/c$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/a/c$b;->a(Le/a/h;)Le/a/h;
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
        "Le/a/v/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/a/c$b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/a/c$b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/a/c$b$a;->a:Lanimebestapp/com/ui/a/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/a/v/b;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/a/c$b$a;->a:Lanimebestapp/com/ui/a/c$b;

    iget-object v0, v0, Lanimebestapp/com/ui/a/c$b;->a:Lanimebestapp/com/ui/a/c;

    const-string v1, "it"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lanimebestapp/com/ui/a/c;->a(Lanimebestapp/com/ui/a/c;Le/a/v/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Le/a/v/b;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/c$b$a;->a(Le/a/v/b;)V

    return-void
.end method
