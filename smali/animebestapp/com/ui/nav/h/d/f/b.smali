###### Class animebestapp.com.ui.nav.h.d.f.b (animebestapp.com.ui.nav.h.d.f.b)
.class public final Lanimebestapp/com/ui/nav/h/d/f/b;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/nav/h/d/f/d;",
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

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/d/f/b;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method


# virtual methods
.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/nav/h/d/f/b;)V

    return-void
.end method

.method public final e()V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->d()Le/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/nav/h/d/f/b$a;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/d/f/b$a;-><init>(Lanimebestapp/com/ui/nav/h/d/f/b;)V

    sget-object v2, Lanimebestapp/com/ui/nav/h/d/f/b$b;->a:Lanimebestapp/com/ui/nav/h/d/f/b$b;

    invoke-virtual {v0, v1, v2}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_1b
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

###### Class animebestapp.com.ui.nav.h.d.f.b.a (animebestapp.com.ui.nav.h.d.f.b$a)
.class final Lanimebestapp/com/ui/nav/h/d/f/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/f/b;->e()V
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
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Lanimebestapp/com/models/e;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/d/f/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/d/f/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/f/b$a;->a:Lanimebestapp/com/ui/nav/h/d/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/f/b$a;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/e;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/b$a;->a:Lanimebestapp/com/ui/nav/h/d/f/b;

    new-instance v1, Lanimebestapp/com/ui/nav/h/d/f/b$a$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/h/d/f/b$a$a;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/d/f/b;->a(Lanimebestapp/com/ui/nav/h/d/f/b;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.f.b.a.C0084a (animebestapp.com.ui.nav.h.d.f.b$a$a)
.class final Lanimebestapp/com/ui/nav/h/d/f/b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/f/b$a;->a(Ljava/util/HashMap;)V
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
        "Lanimebestapp/com/ui/nav/h/d/f/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/d/f/b$a$a;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/d/f/d;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/d/f/b$a$a;->a:Ljava/util/HashMap;

    const-string v1, "items"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/d/f/d;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/d/f/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/f/b$a$a;->a(Lanimebestapp/com/ui/nav/h/d/f/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.d.f.b.C0085b (animebestapp.com.ui.nav.h.d.f.b$b)
.class final Lanimebestapp/com/ui/nav/h/d/f/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/d/f/b;->e()V
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
.field public static final a:Lanimebestapp/com/ui/nav/h/d/f/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/d/f/b$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/d/f/b$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/d/f/b$b;->a:Lanimebestapp/com/ui/nav/h/d/f/b$b;

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

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/d/f/b$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
