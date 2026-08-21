###### Class animebestapp.com.ui.comments.b (animebestapp.com.ui.comments.b)
.class public final Lanimebestapp/com/ui/comments/b;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/comments/d;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/d/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b;->g:Ljava/lang/String;

    invoke-static {}, Lg/m/j;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b;->e:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lanimebestapp/com/ui/comments/b;->f:Z

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/comments/b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/comments/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/comments/b;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/comments/b;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/comments/b;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/comments/b;->e:Ljava/util/List;

    return-object p0
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

    new-instance v0, Lanimebestapp/com/ui/comments/b$c;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/comments/b$c;-><init>(Lanimebestapp/com/ui/comments/b;)V

    invoke-virtual {p1, v0}, Le/a/h;->c(Le/a/x/e;)Le/a/h;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->d()Le/a/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/h;->a(Le/a/l;)Le/a/h;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/comments/b$d;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/comments/b$d;-><init>(Lanimebestapp/com/ui/comments/b;)V

    new-instance v1, Lanimebestapp/com/ui/comments/b$e;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/comments/b$e;-><init>(Lanimebestapp/com/ui/comments/b;)V

    invoke-virtual {p1, v0, v1}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void
.end method

.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/comments/b;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipv4HostAddress"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_18

    sget-object p1, Lanimebestapp/com/ui/comments/b$f;->a:Lanimebestapp/com/ui/comments/b$f;

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    goto :goto_37

    :cond_18
    iget-object v0, p0, Lanimebestapp/com/ui/comments/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_38

    iget-object v1, p0, Lanimebestapp/com/ui/comments/b;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lanimebestapp/com/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/ui/comments/b$g;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/comments/b$g;-><init>(Lanimebestapp/com/ui/comments/b;)V

    new-instance v0, Lanimebestapp/com/ui/comments/b$h;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/comments/b$h;-><init>(Lanimebestapp/com/ui/comments/b;)V

    invoke-virtual {p1, p2, v0}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    :goto_37
    return-void

    :cond_38
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lanimebestapp/com/ui/comments/b;->f:Z

    return-void
.end method

.method public final e()Lanimebestapp/com/d/a;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/ui/comments/b;->f:Z

    return v0
.end method

.method public final g()V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lanimebestapp/com/ui/comments/b;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lanimebestapp/com/d/a;->b(Ljava/lang/String;I)Le/a/h;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->d()Le/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/h;->a(Le/a/l;)Le/a/h;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/comments/b$a;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/comments/b$a;-><init>(Lanimebestapp/com/ui/comments/b;)V

    new-instance v2, Lanimebestapp/com/ui/comments/b$b;

    invoke-direct {v2, p0}, Lanimebestapp/com/ui/comments/b$b;-><init>(Lanimebestapp/com/ui/comments/b;)V

    invoke-virtual {v0, v1, v2}, Le/a/h;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_21
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

###### Class animebestapp.com.ui.comments.b.a (animebestapp.com.ui.comments.b$a)
.class final Lanimebestapp/com/ui/comments/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b;->g()V
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
        "Lanimebestapp/com/models/Comment;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/comments/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$a;->a:Lanimebestapp/com/ui/comments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Comment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$a;->a:Lanimebestapp/com/ui/comments/b;

    const-string v1, "items"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lanimebestapp/com/ui/comments/b$a;->a:Lanimebestapp/com/ui/comments/b;

    invoke-static {v1}, Lanimebestapp/com/ui/comments/b;->b(Lanimebestapp/com/ui/comments/b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lg/m/j;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;Ljava/util/List;)V

    iget-object p1, p0, Lanimebestapp/com/ui/comments/b$a;->a:Lanimebestapp/com/ui/comments/b;

    new-instance v0, Lanimebestapp/com/ui/comments/b$a$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/comments/b$a$a;-><init>(Lanimebestapp/com/ui/comments/b$a;)V

    invoke-static {p1, v0}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/comments/b$a;->a:Lanimebestapp/com/ui/comments/b;

    sget-object v0, Lanimebestapp/com/ui/comments/b$a$b;->a:Lanimebestapp/com/ui/comments/b$a$b;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.a.C0044a (animebestapp.com.ui.comments.b$a$a)
.class final Lanimebestapp/com/ui/comments/b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b$a;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/comments/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/comments/b$a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/b$a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$a$a;->a:Lanimebestapp/com/ui/comments/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/comments/d;)V
    .registers 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$a$a;->a:Lanimebestapp/com/ui/comments/b$a;

    iget-object v0, v0, Lanimebestapp/com/ui/comments/b$a;->a:Lanimebestapp/com/ui/comments/b;

    invoke-static {v0}, Lanimebestapp/com/ui/comments/b;->b(Lanimebestapp/com/ui/comments/b;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lanimebestapp/com/models/Comment;

    invoke-virtual {v4}, Lanimebestapp/com/models/Comment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_36
    invoke-interface {p1, v2}, Lanimebestapp/com/ui/comments/d;->d(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/comments/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$a$a;->a(Lanimebestapp/com/ui/comments/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.a.C0045b (animebestapp.com.ui.comments.b$a$b)
.class final Lanimebestapp/com/ui/comments/b$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b$a;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/comments/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/comments/b$a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/comments/b$a$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/comments/b$a$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/comments/b$a$b;->a:Lanimebestapp/com/ui/comments/b$a$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/comments/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/comments/d;->h()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/comments/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$a$b;->a(Lanimebestapp/com/ui/comments/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.C0046b (animebestapp.com.ui.comments.b$b)
.class final Lanimebestapp/com/ui/comments/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b;->g()V
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
.field final synthetic a:Lanimebestapp/com/ui/comments/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$b;->a:Lanimebestapp/com/ui/comments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$b;->a:Lanimebestapp/com/ui/comments/b;

    invoke-virtual {v0}, Lanimebestapp/com/ui/comments/b;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$b;->a:Lanimebestapp/com/ui/comments/b;

    sget-object v1, Lanimebestapp/com/ui/comments/b$b$a;->a:Lanimebestapp/com/ui/comments/b$b$a;

    invoke-static {v0, v1}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;Lc/b/a/c/d$a;)V

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.C0046b.a (animebestapp.com.ui.comments.b$b$a)
.class final Lanimebestapp/com/ui/comments/b$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b$b;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/comments/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/comments/b$b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/comments/b$b$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/comments/b$b$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/comments/b$b$a;->a:Lanimebestapp/com/ui/comments/b$b$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/comments/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/m/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/comments/d;->d(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/comments/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$b$a;->a(Lanimebestapp/com/ui/comments/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.c (animebestapp.com.ui.comments.b$c)
.class final Lanimebestapp/com/ui/comments/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V
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
.field final synthetic a:Lanimebestapp/com/ui/comments/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$c;->a:Lanimebestapp/com/ui/comments/b;

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
            "Lanimebestapp/com/models/Comment;",
            ">;>;"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$c;->a:Lanimebestapp/com/ui/comments/b;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/comments/b;->a(Z)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$c;->a:Lanimebestapp/com/ui/comments/b;

    invoke-virtual {v0}, Lanimebestapp/com/ui/comments/b;->e()Lanimebestapp/com/d/a;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/comments/b$c;->a:Lanimebestapp/com/ui/comments/b;

    invoke-static {v1}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x5

    invoke-virtual {v0, v1, p1}, Lanimebestapp/com/d/a;->b(Ljava/lang/String;I)Le/a/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$c;->a(Ljava/lang/Integer;)Le/a/h;

    move-result-object p1

    return-object p1
.end method

###### Class animebestapp.com.ui.comments.b.d (animebestapp.com.ui.comments.b$d)
.class final Lanimebestapp/com/ui/comments/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V
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
        "Lanimebestapp/com/models/Comment;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/comments/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$d;->a:Lanimebestapp/com/ui/comments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$d;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Comment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$d;->a:Lanimebestapp/com/ui/comments/b;

    invoke-static {v0}, Lanimebestapp/com/ui/comments/b;->b(Lanimebestapp/com/ui/comments/b;)Ljava/util/List;

    move-result-object v1

    const-string v2, "items"

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lg/m/j;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;Ljava/util/List;)V

    iget-object p1, p0, Lanimebestapp/com/ui/comments/b$d;->a:Lanimebestapp/com/ui/comments/b;

    new-instance v0, Lanimebestapp/com/ui/comments/b$d$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/comments/b$d$a;-><init>(Lanimebestapp/com/ui/comments/b$d;)V

    invoke-static {p1, v0}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.d.a (animebestapp.com.ui.comments.b$d$a)
.class final Lanimebestapp/com/ui/comments/b$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b$d;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/comments/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/comments/b$d;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/b$d;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$d$a;->a:Lanimebestapp/com/ui/comments/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/comments/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$d$a;->a:Lanimebestapp/com/ui/comments/b$d;

    iget-object v0, v0, Lanimebestapp/com/ui/comments/b$d;->a:Lanimebestapp/com/ui/comments/b;

    invoke-static {v0}, Lanimebestapp/com/ui/comments/b;->b(Lanimebestapp/com/ui/comments/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/comments/d;->d(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/comments/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$d$a;->a(Lanimebestapp/com/ui/comments/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.e (animebestapp.com.ui.comments.b$e)
.class final Lanimebestapp/com/ui/comments/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V
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
.field final synthetic a:Lanimebestapp/com/ui/comments/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$e;->a:Lanimebestapp/com/ui/comments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$e;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$e;->a:Lanimebestapp/com/ui/comments/b;

    invoke-virtual {v0}, Lanimebestapp/com/ui/comments/b;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$e;->a:Lanimebestapp/com/ui/comments/b;

    sget-object v1, Lanimebestapp/com/ui/comments/b$e$a;->a:Lanimebestapp/com/ui/comments/b$e$a;

    invoke-static {v0, v1}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;Lc/b/a/c/d$a;)V

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.e.a (animebestapp.com.ui.comments.b$e$a)
.class final Lanimebestapp/com/ui/comments/b$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b$e;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/comments/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/comments/b$e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/comments/b$e$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/comments/b$e$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/comments/b$e$a;->a:Lanimebestapp/com/ui/comments/b$e$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/comments/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/m/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/comments/d;->d(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/comments/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$e$a;->a(Lanimebestapp/com/ui/comments/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.f (animebestapp.com.ui.comments.b$f)
.class final Lanimebestapp/com/ui/comments/b$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b;->a(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/comments/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/comments/b$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/comments/b$f;

    invoke-direct {v0}, Lanimebestapp/com/ui/comments/b$f;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/comments/b$f;->a:Lanimebestapp/com/ui/comments/b$f;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/comments/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u0422\u0435\u043a\u0441\u0442 \u0412\u0430\u0448\u0435\u0433\u043e \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u044f \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439 \u0438 \u043f\u043e \u043c\u043d\u0435\u043d\u0438\u044e \u0430\u0434\u043c\u0438\u043d\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u0438 \u0441\u0430\u0439\u0442\u0430 \u043d\u0435 \u043d\u0435\u0441\u0451\u0442 \u043f\u043e\u043b\u0435\u0437\u043d\u043e\u0439 \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u0438."

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/a/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/comments/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$f;->a(Lanimebestapp/com/ui/comments/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.g (animebestapp.com.ui.comments.b$g)
.class final Lanimebestapp/com/ui/comments/b$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b;->a(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/comments/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$g;->a:Lanimebestapp/com/ui/comments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/l;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/comments/b$g;->a:Lanimebestapp/com/ui/comments/b;

    invoke-virtual {p1}, Lanimebestapp/com/ui/comments/b;->g()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lg/l;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$g;->a(Lg/l;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.h (animebestapp.com.ui.comments.b$h)
.class final Lanimebestapp/com/ui/comments/b$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b;->a(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/comments/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/comments/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$h;->a:Lanimebestapp/com/ui/comments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$h;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 5

    instance-of v0, p1, Lk/h;

    if-eqz v0, :cond_3c

    move-object v0, p1

    check-cast v0, Lk/h;

    invoke-virtual {v0}, Lk/h;->a()Lk/m;

    move-result-object v1

    invoke-virtual {v1}, Lk/m;->c()Lh/d0;

    move-result-object v1

    if-eqz v1, :cond_3c

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lk/h;->a()Lk/m;

    move-result-object v0

    invoke-virtual {v0}, Lk/m;->c()Lh/d0;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lh/d0;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const-string v0, ""

    :goto_29
    const-class v2, Lanimebestapp/com/e/c/j;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/e/c/j;

    iget-object v1, p0, Lanimebestapp/com/ui/comments/b$h;->a:Lanimebestapp/com/ui/comments/b;

    new-instance v2, Lanimebestapp/com/ui/comments/b$h$a;

    invoke-direct {v2, v0}, Lanimebestapp/com/ui/comments/b$h$a;-><init>(Lanimebestapp/com/e/c/j;)V

    invoke-static {v1, v2}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;Lc/b/a/c/d$a;)V

    goto :goto_46

    :cond_3c
    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$h;->a:Lanimebestapp/com/ui/comments/b;

    new-instance v1, Lanimebestapp/com/ui/comments/b$h$b;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/comments/b$h$b;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/comments/b;->a(Lanimebestapp/com/ui/comments/b;Lc/b/a/c/d$a;)V

    :goto_46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.h.a (animebestapp.com.ui.comments.b$h$a)
.class final Lanimebestapp/com/ui/comments/b$h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b$h;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/comments/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/e/c/j;


# direct methods
.method constructor <init>(Lanimebestapp/com/e/c/j;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$h$a;->a:Lanimebestapp/com/e/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/comments/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$h$a;->a:Lanimebestapp/com/e/c/j;

    invoke-virtual {v0}, Lanimebestapp/com/e/c/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const-string v0, ""

    :goto_10
    invoke-interface {p1, v0}, Lanimebestapp/com/ui/a/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/comments/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$h$a;->a(Lanimebestapp/com/ui/comments/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.comments.b.h.C0047b (animebestapp.com.ui.comments.b$h$b)
.class final Lanimebestapp/com/ui/comments/b$h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/comments/b$h;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/comments/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/comments/b$h$b;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/comments/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/comments/b$h$b;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const-string v0, ""

    :goto_10
    invoke-interface {p1, v0}, Lanimebestapp/com/ui/a/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/comments/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/comments/b$h$b;->a(Lanimebestapp/com/ui/comments/d;)V

    return-void
.end method
