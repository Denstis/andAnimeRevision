###### Class animebestapp.com.ui.nav.e (animebestapp.com.ui.nav.e)
.class public final Lanimebestapp/com/ui/nav/e;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/b/b/a;

.field public e:Lanimebestapp/com/d/a;

.field private f:Z

.field private g:Z

.field private final h:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .registers 8

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lanimebestapp/com/ui/nav/e;->f:Z

    new-instance v0, Lanimebestapp/com/ui/nav/e$m;

    const-wide/32 v3, 0x116520

    const-wide/32 v5, 0x116520

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lanimebestapp/com/ui/nav/e$m;-><init>(Lanimebestapp/com/ui/nav/e;JJ)V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/e;->h:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/e;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/e;Z)V
    .registers 2

    iput-boolean p1, p0, Lanimebestapp/com/ui/nav/e;->g:Z

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/e;)Z
    .registers 1

    iget-boolean p0, p0, Lanimebestapp/com/ui/nav/e;->f:Z

    return p0
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    invoke-static {p1}, Landroidx/appcompat/app/f;->d(I)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->e:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lanimebestapp/com/d/a;->b(I)V

    return-void

    :cond_b
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/nav/e;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/ui/nav/e$l;

    invoke-direct {v0, p1}, Lanimebestapp/com/ui/nav/e$l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "login"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_1c

    sget-object v0, Lanimebestapp/com/ui/nav/e$b;->a:Lanimebestapp/com/ui/nav/e$b;

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    :cond_1c
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_23

    const/4 v1, 0x1

    :cond_23
    if-eqz v1, :cond_2a

    sget-object v0, Lanimebestapp/com/ui/nav/e$c;->a:Lanimebestapp/com/ui/nav/e$c;

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    :cond_2a
    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->e:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_48

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/ui/nav/e$d;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/nav/e$d;-><init>(Lanimebestapp/com/ui/nav/e;)V

    new-instance v0, Lanimebestapp/com/ui/nav/e$e;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/nav/e$e;-><init>(Lanimebestapp/com/ui/nav/e;)V

    invoke-virtual {p1, p2, v0}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_48
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Lanimebestapp/com/ui/nav/e;->g:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lanimebestapp/com/ui/nav/e$a;->a:Lanimebestapp/com/ui/nav/e$a;

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->e:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lanimebestapp/com/ui/nav/e;->g:Z

    goto :goto_1b

    :cond_14
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1b
    :goto_1b
    iput-boolean p1, p0, Lanimebestapp/com/ui/nav/e;->f:Z

    return-void
.end method

.method public final b(Z)V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->d:Lanimebestapp/com/b/b/a;

    if-eqz v0, :cond_a

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/b/a;->a(I)V

    return-void

    :cond_a
    const-string p1, "mRepository"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-super {p0}, Lc/b/a/c/d;->destroy()V

    return-void
.end method

.method public final e()Lanimebestapp/com/d/a;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->e:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->e:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->c()Le/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/nav/e$f;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/e$f;-><init>(Lanimebestapp/com/ui/nav/e;)V

    new-instance v2, Lanimebestapp/com/ui/nav/e$g;

    invoke-direct {v2, p0}, Lanimebestapp/com/ui/nav/e$g;-><init>(Lanimebestapp/com/ui/nav/e;)V

    invoke-virtual {v0, v1, v2}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_1e
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()V
    .registers 7

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->e:Lanimebestapp/com/d/a;

    const/4 v1, 0x0

    const-string v2, "mainIteractor"

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->f()Lanimebestapp/com/models/g;

    move-result-object v0

    if-eqz v0, :cond_45

    :try_start_d
    sget-object v3, Lg/g;->b:Lg/g$a;

    iget-object v3, p0, Lanimebestapp/com/ui/nav/e;->e:Lanimebestapp/com/d/a;

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lanimebestapp/com/d/a;->g()Le/a/o;

    move-result-object v3

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v3

    new-instance v4, Lanimebestapp/com/ui/nav/e$h;

    invoke-direct {v4, p0}, Lanimebestapp/com/ui/nav/e$h;-><init>(Lanimebestapp/com/ui/nav/e;)V

    sget-object v5, Lanimebestapp/com/ui/nav/e$i;->a:Lanimebestapp/com/ui/nav/e$i;

    invoke-virtual {v3, v4, v5}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    move-result-object v3

    invoke-static {v3}, Lg/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_2e
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_32

    throw v1

    :catchall_32
    move-exception v3

    sget-object v4, Lg/g;->b:Lg/g$a;

    invoke-static {v3}, Lg/h;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lg/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3c
    new-instance v3, Lanimebestapp/com/ui/nav/e$j;

    invoke-direct {v3, v0}, Lanimebestapp/com/ui/nav/e$j;-><init>(Lanimebestapp/com/models/g;)V

    invoke-virtual {p0, v3}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    goto :goto_4a

    :cond_45
    sget-object v0, Lanimebestapp/com/ui/nav/e$k;->a:Lanimebestapp/com/ui/nav/e$k;

    invoke-virtual {p0, v0}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    :goto_4a
    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->e:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->h()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_59
    return-void

    :cond_5a
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_5e
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->d:Lanimebestapp/com/b/b/a;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lanimebestapp/com/b/b/a;->a()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const-string v0, "mRepository"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e;->e:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->i()V

    return-void

    :cond_8
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

###### Class animebestapp.com.ui.nav.e.a (animebestapp.com.ui.nav.e$a)
.class final Lanimebestapp/com/ui/nav/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->a(Z)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/e$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/e$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/e$a;->a:Lanimebestapp/com/ui/nav/e$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/g;->g()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$a;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.b (animebestapp.com.ui.nav.e$b)
.class final Lanimebestapp/com/ui/nav/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->a(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/e$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/e$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/e$b;->a:Lanimebestapp/com/ui/nav/e$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e004d

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/g;->b(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$b;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.c (animebestapp.com.ui.nav.e$c)
.class final Lanimebestapp/com/ui/nav/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->a(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/e$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/e$c;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/e$c;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/e$c;->a:Lanimebestapp/com/ui/nav/e$c;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e004e

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/g;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$c;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.d (animebestapp.com.ui.nav.e$d)
.class final Lanimebestapp/com/ui/nav/e$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->a(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/models/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/e;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/e;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$d;->a:Lanimebestapp/com/ui/nav/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/g;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$d;->a:Lanimebestapp/com/ui/nav/e;

    new-instance v1, Lanimebestapp/com/ui/nav/e$d$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/e$d$a;-><init>(Lanimebestapp/com/models/g;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/e;->a(Lanimebestapp/com/ui/nav/e;Lc/b/a/c/d$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/models/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$d;->a(Lanimebestapp/com/models/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.d.a (animebestapp.com.ui.nav.e$d$a)
.class final Lanimebestapp/com/ui/nav/e$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e$d;->a(Lanimebestapp/com/models/g;)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/models/g;


# direct methods
.method constructor <init>(Lanimebestapp/com/models/g;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$d$a;->a:Lanimebestapp/com/models/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$d$a;->a:Lanimebestapp/com/models/g;

    const-string v1, "user"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/g;->a(Lanimebestapp/com/models/g;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$d$a;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.C0065e (animebestapp.com.ui.nav.e$e)
.class final Lanimebestapp/com/ui/nav/e$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->a(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/e;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/e;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$e;->a:Lanimebestapp/com/ui/nav/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$e;->a(Ljava/lang/Throwable;)V

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

    iget-object v1, p0, Lanimebestapp/com/ui/nav/e$e;->a:Lanimebestapp/com/ui/nav/e;

    new-instance v2, Lanimebestapp/com/ui/nav/e$e$a;

    invoke-direct {v2, v0}, Lanimebestapp/com/ui/nav/e$e$a;-><init>(Lanimebestapp/com/e/c/j;)V

    invoke-static {v1, v2}, Lanimebestapp/com/ui/nav/e;->a(Lanimebestapp/com/ui/nav/e;Lc/b/a/c/d$a;)V

    goto :goto_46

    :cond_3c
    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$e;->a:Lanimebestapp/com/ui/nav/e;

    new-instance v1, Lanimebestapp/com/ui/nav/e$e$b;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/e$e$b;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/e;->a(Lanimebestapp/com/ui/nav/e;Lc/b/a/c/d$a;)V

    :goto_46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.C0065e.a (animebestapp.com.ui.nav.e$e$a)
.class final Lanimebestapp/com/ui/nav/e$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e$e;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/e/c/j;


# direct methods
.method constructor <init>(Lanimebestapp/com/e/c/j;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$e$a;->a:Lanimebestapp/com/e/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$e$a;->a:Lanimebestapp/com/e/c/j;

    invoke-virtual {v0}, Lanimebestapp/com/e/c/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const-string v0, ""

    :goto_10
    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$e$a;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.C0065e.b (animebestapp.com.ui.nav.e$e$b)
.class final Lanimebestapp/com/ui/nav/e$e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e$e;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$e$b;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$e$b;->a:Ljava/lang/Throwable;

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

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$e$b;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.f (animebestapp.com.ui.nav.e$f)
.class final Lanimebestapp/com/ui/nav/e$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->f()V
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
        "Lanimebestapp/com/ui/nav/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/e;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/e;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$f;->a:Lanimebestapp/com/ui/nav/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/d;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$f;->a:Lanimebestapp/com/ui/nav/e;

    new-instance v1, Lanimebestapp/com/ui/nav/e$f$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/e$f$a;-><init>(Lanimebestapp/com/ui/nav/d;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/e;->a(Lanimebestapp/com/ui/nav/e;Lc/b/a/c/d$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$f;->a(Lanimebestapp/com/ui/nav/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.f.a (animebestapp.com.ui.nav.e$f$a)
.class final Lanimebestapp/com/ui/nav/e$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e$f;->a(Lanimebestapp/com/ui/nav/d;)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/d;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/d;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$f$a;->a:Lanimebestapp/com/ui/nav/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$f$a;->a:Lanimebestapp/com/ui/nav/d;

    const-string v1, "info"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/g;->a(Lanimebestapp/com/ui/nav/d;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$f$a;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.g (animebestapp.com.ui.nav.e$g)
.class final Lanimebestapp/com/ui/nav/e$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->f()V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/e;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/e;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$g;->a:Lanimebestapp/com/ui/nav/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/nav/e$g;->a:Lanimebestapp/com/ui/nav/e;

    sget-object v0, Lanimebestapp/com/ui/nav/e$g$a;->a:Lanimebestapp/com/ui/nav/e$g$a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/e;->a(Lanimebestapp/com/ui/nav/e;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.g.a (animebestapp.com.ui.nav.e$g$a)
.class final Lanimebestapp/com/ui/nav/e$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e$g;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/e$g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/e$g$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/e$g$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/e$g$a;->a:Lanimebestapp/com/ui/nav/e$g$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/g;->e()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$g$a;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.h (animebestapp.com.ui.nav.e$h)
.class final Lanimebestapp/com/ui/nav/e$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->g()V
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
        "Lanimebestapp/com/models/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/e;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/e;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$h;->a:Lanimebestapp/com/ui/nav/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/g;)V
    .registers 4

    const-string v0, "NAvPresenter"

    const-string v1, "Success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$h;->a:Lanimebestapp/com/ui/nav/e;

    new-instance v1, Lanimebestapp/com/ui/nav/e$h$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/e$h$a;-><init>(Lanimebestapp/com/models/g;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/e;->a(Lanimebestapp/com/ui/nav/e;Lc/b/a/c/d$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/models/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$h;->a(Lanimebestapp/com/models/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.h.a (animebestapp.com.ui.nav.e$h$a)
.class final Lanimebestapp/com/ui/nav/e$h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e$h;->a(Lanimebestapp/com/models/g;)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/models/g;


# direct methods
.method constructor <init>(Lanimebestapp/com/models/g;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$h$a;->a:Lanimebestapp/com/models/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$h$a;->a:Lanimebestapp/com/models/g;

    const-string v1, "user"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/g;->a(Lanimebestapp/com/models/g;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$h$a;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.i (animebestapp.com.ui.nav.e$i)
.class final Lanimebestapp/com/ui/nav/e$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->g()V
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
.field public static final a:Lanimebestapp/com/ui/nav/e$i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/e$i;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/e$i;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/e$i;->a:Lanimebestapp/com/ui/nav/e$i;

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

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$i;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NAvPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.j (animebestapp.com.ui.nav.e$j)
.class final Lanimebestapp/com/ui/nav/e$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->g()V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/models/g;


# direct methods
.method constructor <init>(Lanimebestapp/com/models/g;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$j;->a:Lanimebestapp/com/models/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$j;->a:Lanimebestapp/com/models/g;

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/g;->a(Lanimebestapp/com/models/g;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$j;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.k (animebestapp.com.ui.nav.e$k)
.class final Lanimebestapp/com/ui/nav/e$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->g()V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/e$k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/e$k;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/e$k;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/e$k;->a:Lanimebestapp/com/ui/nav/e$k;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/g;->k()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$k;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.l (animebestapp.com.ui.nav.e$l)
.class final Lanimebestapp/com/ui/nav/e$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;->a(Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$l;->a:Ljava/lang/String;

    const-string v1, "genre"

    invoke-interface {p1, v1, v0}, Lanimebestapp/com/ui/nav/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$l;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.m (animebestapp.com.ui.nav.e$m)
.class public final Lanimebestapp/com/ui/nav/e$m;
.super Landroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/e;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/e;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/nav/e$m;->a:Lanimebestapp/com/ui/nav/e;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$m;->a:Lanimebestapp/com/ui/nav/e;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/e;->a(Lanimebestapp/com/ui/nav/e;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$m;->a:Lanimebestapp/com/ui/nav/e;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/e;->e()Lanimebestapp/com/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->j()V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$m;->a:Lanimebestapp/com/ui/nav/e;

    sget-object v1, Lanimebestapp/com/ui/nav/e$m$a;->a:Lanimebestapp/com/ui/nav/e$m$a;

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/e;->a(Lanimebestapp/com/ui/nav/e;Lc/b/a/c/d$a;)V

    goto :goto_1f

    :cond_19
    iget-object v0, p0, Lanimebestapp/com/ui/nav/e$m;->a:Lanimebestapp/com/ui/nav/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/e;->a(Lanimebestapp/com/ui/nav/e;Z)V

    :goto_1f
    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method

###### Class animebestapp.com.ui.nav.e.m.a (animebestapp.com.ui.nav.e$m$a)
.class final Lanimebestapp/com/ui/nav/e$m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/e$m;->onFinish()V
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
        "Lanimebestapp/com/ui/nav/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/e$m$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/e$m$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/e$m$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/e$m$a;->a:Lanimebestapp/com/ui/nav/e$m$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/g;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/g;->g()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/e$m$a;->a(Lanimebestapp/com/ui/nav/g;)V

    return-void
.end method
