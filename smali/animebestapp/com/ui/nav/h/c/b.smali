###### Class animebestapp.com.ui.nav.h.c.b (animebestapp.com.ui.nav.h.c.b)
.class public final Lanimebestapp/com/ui/nav/h/c/b;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/nav/h/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/d/a;

.field private e:Z

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/c/b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/c/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/c/b;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/c/b;Z)V
    .registers 2

    iput-boolean p1, p0, Lanimebestapp/com/ui/nav/h/c/b;->e:Z

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/nav/h/c/b;)Z
    .registers 1

    iget-boolean p0, p0, Lanimebestapp/com/ui/nav/h/c/b;->e:Z

    return p0
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    const-string v0, "rvList"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->c()V

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

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/b$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/h/c/b$a;-><init>(Lanimebestapp/com/ui/nav/h/c/b;)V

    invoke-virtual {p1, v0}, Le/a/h;->c(Le/a/x/e;)Le/a/h;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->d()Le/a/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/h;->a(Le/a/l;)Le/a/h;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/b$b;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/h/c/b$b;-><init>(Lanimebestapp/com/ui/nav/h/c/b;)V

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/b$c;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/c/b$c;-><init>(Lanimebestapp/com/ui/nav/h/c/b;)V

    invoke-virtual {p1, v0, v1}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void
.end method

.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/nav/h/c/b;)V

    return-void
.end method

.method public final e()Lanimebestapp/com/d/a;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

###### Class animebestapp.com.ui.nav.h.c.b.a (animebestapp.com.ui.nav.h.c.b$a)
.class final Lanimebestapp/com/ui/nav/h/c/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/b$a;->a:Lanimebestapp/com/ui/nav/h/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Le/a/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/h<",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/d;",
            ">;>;"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/b$a;->a:Lanimebestapp/com/ui/nav/h/c/b;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-static {v0, v2}, Lanimebestapp/com/ui/nav/h/c/b;->a(Lanimebestapp/com/ui/nav/h/c/b;Z)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/b$a;->a:Lanimebestapp/com/ui/nav/h/c/b;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/c/b;->e()Lanimebestapp/com/d/a;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/b$a;->a:Lanimebestapp/com/ui/nav/h/c/b;

    invoke-static {v1}, Lanimebestapp/com/ui/nav/h/c/b;->a(Lanimebestapp/com/ui/nav/h/c/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lanimebestapp/com/d/a;->c(Ljava/lang/String;I)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/b$a;->a(Ljava/lang/Integer;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.nav.h.c.b.C0076b (animebestapp.com.ui.nav.h.c.b$b)
.class final Lanimebestapp/com/ui/nav/h/c/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V
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
        "Lanimebestapp/com/models/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/b$b;->a:Lanimebestapp/com/ui/nav/h/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/b$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lanimebestapp/com/models/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/b$b;->a:Lanimebestapp/com/ui/nav/h/c/b;

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/b$b$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/h/c/b$b$a;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/c/b;->a(Lanimebestapp/com/ui/nav/h/c/b;Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/b$b;->a:Lanimebestapp/com/ui/nav/h/c/b;

    invoke-static {p1}, Lanimebestapp/com/ui/nav/h/c/b;->b(Lanimebestapp/com/ui/nav/h/c/b;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/b$b;->a:Lanimebestapp/com/ui/nav/h/c/b;

    sget-object v0, Lanimebestapp/com/ui/nav/h/c/b$b$b;->a:Lanimebestapp/com/ui/nav/h/c/b$b$b;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/c/b;->a(Lanimebestapp/com/ui/nav/h/c/b;Lc/b/a/c/d$a;)V

    :cond_19
    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.b.C0076b.a (animebestapp.com.ui.nav.h.c.b$b$a)
.class final Lanimebestapp/com/ui/nav/h/c/b$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/b$b;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/b$b$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/c/d;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/b$b$a;->a:Ljava/util/List;

    const-string v1, "items"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/c/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/b$b$a;->a(Lanimebestapp/com/ui/nav/h/c/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.b.C0076b.C0077b (animebestapp.com.ui.nav.h.c.b$b$b)
.class final Lanimebestapp/com/ui/nav/h/c/b$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/b$b;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/c/b$b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/b$b$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/c/b$b$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/c/b$b$b;->a:Lanimebestapp/com/ui/nav/h/c/b$b$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/c/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/c/d;->f()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/b$b$b;->a(Lanimebestapp/com/ui/nav/h/c/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.b.c (animebestapp.com.ui.nav.h.c.b$c)
.class final Lanimebestapp/com/ui/nav/h/c/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/b$c;->a:Lanimebestapp/com/ui/nav/h/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/b$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanimebestapp/com/ui/nav/h/c/b$c;->a:Lanimebestapp/com/ui/nav/h/c/b;

    invoke-static {v1}, Lanimebestapp/com/ui/nav/h/c/b;->a(Lanimebestapp/com/ui/nav/h/c/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
