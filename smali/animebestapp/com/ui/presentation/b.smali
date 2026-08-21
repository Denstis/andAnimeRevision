###### Class animebestapp.com.ui.presentation.b (animebestapp.com.ui.presentation.b)
.class public final Lanimebestapp/com/ui/presentation/b;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/presentation/d;",
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

.method public static final synthetic a(Lanimebestapp/com/ui/presentation/b;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method


# virtual methods
.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/presentation/b;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "login"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_22

    sget-object p1, Lanimebestapp/com/ui/presentation/b$a;->a:Lanimebestapp/com/ui/presentation/b$a;

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void

    :cond_22
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-eqz v0, :cond_33

    sget-object p1, Lanimebestapp/com/ui/presentation/b$b;->a:Lanimebestapp/com/ui/presentation/b$b;

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void

    :cond_33
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    if-eqz v1, :cond_42

    sget-object p1, Lanimebestapp/com/ui/presentation/b$c;->a:Lanimebestapp/com/ui/presentation/b$c;

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void

    :cond_42
    iget-object v0, p0, Lanimebestapp/com/ui/presentation/b;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_60

    invoke-virtual {v0, p1, p2, p3}, Lanimebestapp/com/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/ui/presentation/b$d;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/presentation/b$d;-><init>(Lanimebestapp/com/ui/presentation/b;)V

    new-instance p3, Lanimebestapp/com/ui/presentation/b$e;

    invoke-direct {p3, p0}, Lanimebestapp/com/ui/presentation/b$e;-><init>(Lanimebestapp/com/ui/presentation/b;)V

    invoke-virtual {p1, p2, p3}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_60
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

###### Class animebestapp.com.ui.presentation.b.a (animebestapp.com.ui.presentation.b$a)
.class final Lanimebestapp/com/ui/presentation/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/presentation/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/presentation/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/presentation/b$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/presentation/b$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/presentation/b$a;->a:Lanimebestapp/com/ui/presentation/b$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/presentation/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e004d

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/presentation/d;->b(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/presentation/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/b$a;->a(Lanimebestapp/com/ui/presentation/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.b.C0088b (animebestapp.com.ui.presentation.b$b)
.class final Lanimebestapp/com/ui/presentation/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/presentation/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/presentation/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/presentation/b$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/presentation/b$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/presentation/b$b;->a:Lanimebestapp/com/ui/presentation/b$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/presentation/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e004e

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/presentation/d;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/presentation/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/b$b;->a(Lanimebestapp/com/ui/presentation/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.b.c (animebestapp.com.ui.presentation.b$c)
.class final Lanimebestapp/com/ui/presentation/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/presentation/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/presentation/b$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/presentation/b$c;

    invoke-direct {v0}, Lanimebestapp/com/ui/presentation/b$c;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/presentation/b$c;->a:Lanimebestapp/com/ui/presentation/b$c;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/presentation/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e004c

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/presentation/d;->c(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/presentation/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/b$c;->a(Lanimebestapp/com/ui/presentation/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.b.d (animebestapp.com.ui.presentation.b$d)
.class final Lanimebestapp/com/ui/presentation/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/presentation/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/presentation/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/b$d;->a:Lanimebestapp/com/ui/presentation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/g;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/presentation/b$d;->a:Lanimebestapp/com/ui/presentation/b;

    sget-object v0, Lanimebestapp/com/ui/presentation/b$d$a;->a:Lanimebestapp/com/ui/presentation/b$d$a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/presentation/b;->a(Lanimebestapp/com/ui/presentation/b;Lc/b/a/c/d$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/models/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/b$d;->a(Lanimebestapp/com/models/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.b.d.a (animebestapp.com.ui.presentation.b$d$a)
.class final Lanimebestapp/com/ui/presentation/b$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/b$d;->a(Lanimebestapp/com/models/g;)V
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
        "Lanimebestapp/com/ui/presentation/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/presentation/b$d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/presentation/b$d$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/presentation/b$d$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/presentation/b$d$a;->a:Lanimebestapp/com/ui/presentation/b$d$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/presentation/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/presentation/d;->c()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/presentation/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/b$d$a;->a(Lanimebestapp/com/ui/presentation/d;)V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.b.e (animebestapp.com.ui.presentation.b$e)
.class final Lanimebestapp/com/ui/presentation/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/presentation/b;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/presentation/b;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/b$e;->a:Lanimebestapp/com/ui/presentation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/b$e;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/b$e;->a:Lanimebestapp/com/ui/presentation/b;

    new-instance v1, Lanimebestapp/com/ui/presentation/b$e$a;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/presentation/b$e$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/presentation/b;->a(Lanimebestapp/com/ui/presentation/b;Lc/b/a/c/d$a;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.presentation.b.e.a (animebestapp.com.ui.presentation.b$e$a)
.class final Lanimebestapp/com/ui/presentation/b$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/presentation/b$e;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/presentation/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/presentation/b$e$a;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/presentation/d;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/presentation/b$e$a;->a:Ljava/lang/Throwable;

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

    check-cast p1, Lanimebestapp/com/ui/presentation/d;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/presentation/b$e$a;->a(Lanimebestapp/com/ui/presentation/d;)V

    return-void
.end method
