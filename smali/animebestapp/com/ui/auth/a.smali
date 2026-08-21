###### Class animebestapp.com.ui.auth.a (animebestapp.com.ui.auth.a)
.class public final Lanimebestapp/com/ui/auth/a;
.super Lanimebestapp/com/ui/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/c<",
        "Lanimebestapp/com/ui/auth/c;",
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

.method public static final synthetic a(Lanimebestapp/com/ui/auth/a;Lc/b/a/c/d$a;)V
    .registers 2

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void
.end method


# virtual methods
.method public a(Lanimebestapp/com/c/a/a;)V
    .registers 3

    const-string v0, "component"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lanimebestapp/com/c/a/a;->a(Lanimebestapp/com/ui/auth/a;)V

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

    sget-object p1, Lanimebestapp/com/ui/auth/a$a;->a:Lanimebestapp/com/ui/auth/a$a;

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

    sget-object p1, Lanimebestapp/com/ui/auth/a$b;->a:Lanimebestapp/com/ui/auth/a$b;

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void

    :cond_33
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    if-eqz v1, :cond_42

    sget-object p1, Lanimebestapp/com/ui/auth/a$c;->a:Lanimebestapp/com/ui/auth/a$c;

    invoke-virtual {p0, p1}, Lc/b/a/c/d;->a(Lc/b/a/c/d$a;)V

    return-void

    :cond_42
    iget-object v0, p0, Lanimebestapp/com/ui/auth/a;->d:Lanimebestapp/com/d/a;

    if-eqz v0, :cond_60

    invoke-virtual {v0, p1, p2, p3}, Lanimebestapp/com/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/o;

    move-result-object p1

    invoke-virtual {p0}, Lanimebestapp/com/ui/a/c;->b()Le/a/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/o;->a(Le/a/t;)Le/a/o;

    move-result-object p1

    new-instance p2, Lanimebestapp/com/ui/auth/a$d;

    invoke-direct {p2, p0}, Lanimebestapp/com/ui/auth/a$d;-><init>(Lanimebestapp/com/ui/auth/a;)V

    new-instance p3, Lanimebestapp/com/ui/auth/a$e;

    invoke-direct {p3, p0}, Lanimebestapp/com/ui/auth/a$e;-><init>(Lanimebestapp/com/ui/auth/a;)V

    invoke-virtual {p1, p2, p3}, Le/a/o;->a(Le/a/x/d;Le/a/x/d;)Le/a/v/b;

    return-void

    :cond_60
    const-string p1, "mainIteractor"

    invoke-static {p1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

###### Class animebestapp.com.ui.auth.a.C0039a (animebestapp.com.ui.auth.a$a)
.class final Lanimebestapp/com/ui/auth/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/auth/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/auth/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/auth/a$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/auth/a$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/auth/a$a;->a:Lanimebestapp/com/ui/auth/a$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/auth/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e004d

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/auth/c;->b(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/auth/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/a$a;->a(Lanimebestapp/com/ui/auth/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.auth.a.b (animebestapp.com.ui.auth.a$b)
.class final Lanimebestapp/com/ui/auth/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/auth/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/auth/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/auth/a$b;

    invoke-direct {v0}, Lanimebestapp/com/ui/auth/a$b;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/auth/a$b;->a:Lanimebestapp/com/ui/auth/a$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/auth/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e004e

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/auth/c;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/auth/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/a$b;->a(Lanimebestapp/com/ui/auth/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.auth.a.c (animebestapp.com.ui.auth.a$c)
.class final Lanimebestapp/com/ui/auth/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lanimebestapp/com/ui/auth/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/auth/a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/auth/a$c;

    invoke-direct {v0}, Lanimebestapp/com/ui/auth/a$c;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/auth/a$c;->a:Lanimebestapp/com/ui/auth/a$c;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/auth/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e004c

    invoke-interface {p1, v0}, Lanimebestapp/com/ui/auth/c;->c(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/auth/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/a$c;->a(Lanimebestapp/com/ui/auth/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.auth.a.d (animebestapp.com.ui.auth.a$d)
.class final Lanimebestapp/com/ui/auth/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/auth/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/auth/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/auth/a$d;->a:Lanimebestapp/com/ui/auth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/models/g;)V
    .registers 3

    iget-object p1, p0, Lanimebestapp/com/ui/auth/a$d;->a:Lanimebestapp/com/ui/auth/a;

    sget-object v0, Lanimebestapp/com/ui/auth/a$d$a;->a:Lanimebestapp/com/ui/auth/a$d$a;

    invoke-static {p1, v0}, Lanimebestapp/com/ui/auth/a;->a(Lanimebestapp/com/ui/auth/a;Lc/b/a/c/d$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/models/g;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/a$d;->a(Lanimebestapp/com/models/g;)V

    return-void
.end method

###### Class animebestapp.com.ui.auth.a.d.C0040a (animebestapp.com.ui.auth.a$d$a)
.class final Lanimebestapp/com/ui/auth/a$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/a$d;->a(Lanimebestapp/com/models/g;)V
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
        "Lanimebestapp/com/ui/auth/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/auth/a$d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/auth/a$d$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/auth/a$d$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/auth/a$d$a;->a:Lanimebestapp/com/ui/auth/a$d$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/auth/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lanimebestapp/com/ui/auth/c;->c()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lanimebestapp/com/ui/auth/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/a$d$a;->a(Lanimebestapp/com/ui/auth/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.auth.a.e (animebestapp.com.ui.auth.a$e)
.class final Lanimebestapp/com/ui/auth/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/x/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lanimebestapp/com/ui/auth/a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/auth/a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/auth/a$e;->a:Lanimebestapp/com/ui/auth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/a$e;->a(Ljava/lang/Throwable;)V

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

    iget-object v1, p0, Lanimebestapp/com/ui/auth/a$e;->a:Lanimebestapp/com/ui/auth/a;

    new-instance v2, Lanimebestapp/com/ui/auth/a$e$a;

    invoke-direct {v2, v0}, Lanimebestapp/com/ui/auth/a$e$a;-><init>(Lanimebestapp/com/e/c/j;)V

    invoke-static {v1, v2}, Lanimebestapp/com/ui/auth/a;->a(Lanimebestapp/com/ui/auth/a;Lc/b/a/c/d$a;)V

    goto :goto_46

    :cond_3c
    iget-object v0, p0, Lanimebestapp/com/ui/auth/a$e;->a:Lanimebestapp/com/ui/auth/a;

    new-instance v1, Lanimebestapp/com/ui/auth/a$e$b;

    invoke-direct {v1, p1}, Lanimebestapp/com/ui/auth/a$e$b;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lanimebestapp/com/ui/auth/a;->a(Lanimebestapp/com/ui/auth/a;Lc/b/a/c/d$a;)V

    :goto_46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class animebestapp.com.ui.auth.a.e.C0041a (animebestapp.com.ui.auth.a$e$a)
.class final Lanimebestapp/com/ui/auth/a$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/a$e;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/auth/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/e/c/j;


# direct methods
.method constructor <init>(Lanimebestapp/com/e/c/j;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/auth/a$e$a;->a:Lanimebestapp/com/e/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/auth/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/auth/a$e$a;->a:Lanimebestapp/com/e/c/j;

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

    check-cast p1, Lanimebestapp/com/ui/auth/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/a$e$a;->a(Lanimebestapp/com/ui/auth/c;)V

    return-void
.end method

###### Class animebestapp.com.ui.auth.a.e.b (animebestapp.com.ui.auth.a$e$b)
.class final Lanimebestapp/com/ui/auth/a$e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/auth/a$e;->a(Ljava/lang/Throwable;)V
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
        "Lanimebestapp/com/ui/auth/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/auth/a$e$b;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/ui/auth/c;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/ui/auth/a$e$b;->a:Ljava/lang/Throwable;

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

    check-cast p1, Lanimebestapp/com/ui/auth/c;

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/auth/a$e$b;->a(Lanimebestapp/com/ui/auth/c;)V

    return-void
.end method
