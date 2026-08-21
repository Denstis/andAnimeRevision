###### Class animebestapp.com.ui.nav.h.c.e.b (animebestapp.com.ui.nav.h.c.e.b)
.class public final Lanimebestapp/com/ui/nav/h/c/e/b;
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
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lanimebestapp/com/d/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanimebestapp/com/models/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/a/c;-><init>()V

    const v0, 0x2932e00

    iput v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/c/e/b;)I
    .registers 1

    iget p0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->f:I

    return p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/nav/h/c/e/b;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/nav/h/c/e/b;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic c(Lanimebestapp/com/ui/nav/h/c/e/b;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->g:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->e:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    if-eqz v0, :cond_50

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/models/e;

    invoke-virtual {p1}, Lanimebestapp/com/models/e;->a()J

    move-result-wide v2

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->g:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_27

    new-instance p1, Lanimebestapp/com/ui/nav/h/c/e/b$f;

    invoke-direct {p1, p0, v2, v3}, Lanimebestapp/com/ui/nav/h/c/e/b$f;-><init>(Lanimebestapp/com/ui/nav/h/c/e/b;J)V

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    goto :goto_49

    :cond_27
    sget-object p1, Lanimebestapp/com/ui/nav/h/c/e/b$g;->a:Lanimebestapp/com/ui/nav/h/c/e/b$g;

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->d:Lanimebestapp/com/d/a;

    if-eqz p1, :cond_4a

    invoke-virtual {p1, v2, v3}, Lanimebestapp/com/d/a;->a(J)Le/a/o;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object p1

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/b$h;

    invoke-direct {v0, p0, v2, v3}, Lanimebestapp/com/ui/nav/h/c/e/b$h;-><init>(Lanimebestapp/com/ui/nav/h/c/e/b;J)V

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/e/b$i;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/c/e/b$i;-><init>(Lanimebestapp/com/ui/nav/h/c/e/b;)V

    invoke-virtual {p1, v0, v1}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    :goto_49
    return-void

    :cond_4a
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_50
    invoke-static {}, Lg/p/b/f;->a()V

    throw v1
.end method

.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/nav/h/c/e/b;)V

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

    const-string v0, "items"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    const/4 p1, 0x0

    goto :goto_2d

    :pswitch_13
    const-string v0, "Sat"

    goto :goto_27

    :pswitch_16
    const-string v0, "Fri"

    goto :goto_27

    :pswitch_19
    const-string v0, "Thu"

    goto :goto_27

    :pswitch_1c
    const-string v0, "Wed"

    goto :goto_27

    :pswitch_1f
    const-string v0, "Tue"

    goto :goto_27

    :pswitch_22
    const-string v0, "Mon"

    goto :goto_27

    :pswitch_25
    const-string v0, "Sun"

    :goto_27
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_2d
    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->e:Ljava/util/List;

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->e:Ljava/util/List;

    if-eqz p1, :cond_3b

    new-instance p1, Lanimebestapp/com/ui/nav/h/c/e/b$a;

    invoke-direct {p1, p0}, Lanimebestapp/com/ui/nav/h/c/e/b$a;-><init>(Lanimebestapp/com/ui/nav/h/c/e/b;)V

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    :cond_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public final e()Lanimebestapp/com/d/a;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->k()V

    return-void

    :cond_8
    const-string v0, "mainIteractor"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()V
    .registers 6

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->d:Lanimebestapp/com/d/a;

    const/4 v1, 0x0

    const-string v2, "mainIteractor"

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->d()Le/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v0

    new-instance v3, Lanimebestapp/com/ui/nav/h/c/e/b$b;

    invoke-direct {v3, p0}, Lanimebestapp/com/ui/nav/h/c/e/b$b;-><init>(Lanimebestapp/com/ui/nav/h/c/e/b;)V

    sget-object v4, Lanimebestapp/com/ui/nav/h/c/e/b$c;->a:Lanimebestapp/com/ui/nav/h/c/e/b$c;

    invoke-virtual {v0, v3, v4}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->b()Le/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object v0

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/e/b$d;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/nav/h/c/e/b$d;-><init>(Lanimebestapp/com/ui/nav/h/c/e/b;)V

    sget-object v2, Lanimebestapp/com/ui/nav/h/c/e/b$e;->a:Lanimebestapp/com/ui/nav/h/c/e/b$e;

    invoke-virtual {v0, v1, v2}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_38
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1

    :cond_3c
    invoke-static {v2}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v1
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.a (animebestapp.com.ui.nav.h.c.e.b$a)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b;->a(Ljava/util/HashMap;)V
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
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/e/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$a;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/c/e/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$a;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/c/e/b;->b(Lanimebestapp/com/ui/nav/h/c/e/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/c/e/d;->c(Ljava/util/List;)V

    return-void

    :cond_11
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/e/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$a;->a(Lanimebestapp/com/ui/nav/h/c/e/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.C0079b (animebestapp.com.ui.nav.h.c.e.b$b)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b;->g()V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/e/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$b;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$b;->a(Ljava/util/HashMap;)V

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

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$b;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    const-string v1, "items"

    invoke-static {p1, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b;->a(Ljava/util/HashMap;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.c (animebestapp.com.ui.nav.h.c.e.b$c)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b;->g()V
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
.field public static final a:Lanimebestapp/com/ui/nav/h/c/e/b$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/b$c;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/c/e/b$c;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/c/e/b$c;->a:Lanimebestapp/com/ui/nav/h/c/e/b$c;

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

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.d (animebestapp.com.ui.nav.h.c.e.b$d)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b;->g()V
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
        "Lanimebestapp/com/models/BannerInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/e/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$d;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/BannerInfo;)V
    .registers 7

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$d;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-virtual {v0}, Lanimebestapp/com/ui/nav/h/c/e/b;->e()Lanimebestapp/com/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/d/a;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Lanimebestapp/com/models/BannerInfo;->getBtn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    if-eqz v2, :cond_52

    invoke-virtual {p1}, Lanimebestapp/com/models/BannerInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_52

    invoke-virtual {p1}, Lanimebestapp/com/models/BannerInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_52

    iget-object v2, p0, Lanimebestapp/com/ui/nav/h/c/e/b$d;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-static {v2}, Lanimebestapp/com/ui/nav/h/c/e/b;->a(Lanimebestapp/com/ui/nav/h/c/e/b;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_52

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$d;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/e/b$d$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$d$a;-><init>(Lanimebestapp/com/models/BannerInfo;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/c/e/b;->a(Lanimebestapp/com/ui/nav/h/c/e/b;Lc/b/a/c/d$a;)V

    :cond_52
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/models/BannerInfo;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$d;->a(Lanimebestapp/com/models/BannerInfo;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.d.a (animebestapp.com.ui.nav.h.c.e.b$d$a)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b$d;->a(Lanimebestapp/com/models/BannerInfo;)V
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
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/models/BannerInfo;


# direct methods
.method constructor <init>(Lanimebestapp/com/models/BannerInfo;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$d$a;->a:Lanimebestapp/com/models/BannerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/c/e/d;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$d$a;->a:Lanimebestapp/com/models/BannerInfo;

    const-string v1, "banner"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/c/e/d;->a(Lanimebestapp/com/models/BannerInfo;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/e/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$d$a;->a(Lanimebestapp/com/ui/nav/h/c/e/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.e (animebestapp.com.ui.nav.h.c.e.b$e)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b;->g()V
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
.field public static final a:Lanimebestapp/com/ui/nav/h/c/e/b$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/b$e;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/c/e/b$e;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/c/e/b$e;->a:Lanimebestapp/com/ui/nav/h/c/e/b$e;

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

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$e;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.f (animebestapp.com.ui.nav.h.c.e.b$f)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b;->a(I)V
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
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/e/b;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/b;J)V
    .registers 4

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$f;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    iput-wide p2, p0, Lanimebestapp/com/ui/nav/h/c/e/b$f;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/c/e/d;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$f;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/c/e/b;->c(Lanimebestapp/com/ui/nav/h/c/e/b;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$f;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "map[id]!!"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lanimebestapp/com/models/Anime;

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/c/e/d;->a(Lanimebestapp/com/models/Anime;)V

    return-void

    :cond_22
    invoke-static {}, Lg/p/b/f;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/e/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$f;->a(Lanimebestapp/com/ui/nav/h/c/e/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.g (animebestapp.com.ui.nav.h.c.e.b$g)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b;->a(I)V
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
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/c/e/b$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/b$g;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/c/e/b$g;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/c/e/b$g;->a:Lanimebestapp/com/ui/nav/h/c/e/b$g;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/c/e/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/c/e/d;->a()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/e/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$g;->a(Lanimebestapp/com/ui/nav/h/c/e/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.h (animebestapp.com.ui.nav.h.c.e.b$h)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b;->a(I)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/e/b;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/b;J)V
    .registers 4

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$h;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    iput-wide p2, p0, Lanimebestapp/com/ui/nav/h/c/e/b$h;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$h;->a(Ljava/util/List;)V

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

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$h;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-static {v0}, Lanimebestapp/com/ui/nav/h/c/e/b;->c(Lanimebestapp/com/ui/nav/h/c/e/b;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$h;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$h;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    new-instance v1, Lanimebestapp/com/ui/nav/h/c/e/b$h$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$h$a;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/c/e/b;->a(Lanimebestapp/com/ui/nav/h/c/e/b;Lc/b/a/c/d$a;)V

    iget-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$h;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    sget-object v0, Lanimebestapp/com/ui/nav/h/c/e/b$h$b;->a:Lanimebestapp/com/ui/nav/h/c/e/b$h$b;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/nav/h/c/e/b;->a(Lanimebestapp/com/ui/nav/h/c/e/b;Lc/b/a/c/d$a;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.h.a (animebestapp.com.ui.nav.h.c.e.b$h$a)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b$h;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$h$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/c/e/d;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$h$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/models/Anime;

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/nav/h/c/e/d;->a(Lanimebestapp/com/models/Anime;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/e/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$h$a;->a(Lanimebestapp/com/ui/nav/h/c/e/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.h.C0080b (animebestapp.com.ui.nav.h.c.e.b$h$b)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b$h;->a(Ljava/util/List;)V
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
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/c/e/b$h$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/b$h$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/c/e/b$h$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/c/e/b$h$b;->a:Lanimebestapp/com/ui/nav/h/c/e/b$h$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/c/e/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/c/e/d;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/e/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$h$b;->a(Lanimebestapp/com/ui/nav/h/c/e/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.i (animebestapp.com.ui.nav.h.c.e.b$i)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b;->a(I)V
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
.field final synthetic a:Lanimebestapp/com/ui/nav/h/c/e/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/nav/h/c/e/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/nav/h/c/e/b$i;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$i;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/nav/h/c/e/b$i;->a:Lanimebestapp/com/ui/nav/h/c/e/b;

    sget-object v1, Lanimebestapp/com/ui/nav/h/c/e/b$i$a;->a:Lanimebestapp/com/ui/nav/h/c/e/b$i$a;

    invoke-static {v0, v1}, Lanimebestapp/com/ui/nav/h/c/e/b;->a(Lanimebestapp/com/ui/nav/h/c/e/b;Lc/b/a/c/d$a;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.nav.h.c.e.b.i.a (animebestapp.com.ui.nav.h.c.e.b$i$a)
.class final Lanimebestapp/com/ui/nav/h/c/e/b$i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/nav/h/c/e/b$i;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/nav/h/c/e/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/nav/h/c/e/b$i$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/nav/h/c/e/b$i$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/nav/h/c/e/b$i$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/nav/h/c/e/b$i$a;->a:Lanimebestapp/com/ui/nav/h/c/e/b$i$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/nav/h/c/e/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/nav/h/c/e/d;->b()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/nav/h/c/e/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/nav/h/c/e/b$i$a;->a(Lanimebestapp/com/ui/nav/h/c/e/d;)V

    return-void
.end method
