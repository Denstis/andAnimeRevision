###### Class animebestapp.com.c.b.f (animebestapp.com.c.b.f)
.class public final Lanimebestapp/com/c/b/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/c/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/c/b/f$b;
    }
.end annotation


# instance fields
.field private a:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lanimebestapp/com/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lh/x;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lk/n;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lanimebestapp/com/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lanimebestapp/com/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lanimebestapp/com/c/b/f$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lanimebestapp/com/c/b/f;->a(Lanimebestapp/com/c/b/f$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lanimebestapp/com/c/b/f$b;Lanimebestapp/com/c/b/f$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lanimebestapp/com/c/b/f;-><init>(Lanimebestapp/com/c/b/f$b;)V

    return-void
.end method

.method private a(Lanimebestapp/com/c/b/f$b;)V
    .registers 5

    invoke-static {p1}, Lanimebestapp/com/c/b/f$b;->a(Lanimebestapp/com/c/b/f$b;)Lanimebestapp/com/c/b/b;

    move-result-object v0

    invoke-static {v0}, Lanimebestapp/com/c/b/c;->a(Lanimebestapp/com/c/b/b;)Lanimebestapp/com/c/b/c;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Lf/a/a;)Lf/a/a;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/c/b/f;->a:Lf/a/a;

    invoke-static {p1}, Lanimebestapp/com/c/b/f$b;->b(Lanimebestapp/com/c/b/f$b;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ld/c/c;->a(Ljava/lang/Object;)Ld/c/b;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/c/b/f;->b:Lf/a/a;

    invoke-static {p1}, Lanimebestapp/com/c/b/f$b;->a(Lanimebestapp/com/c/b/f$b;)Lanimebestapp/com/c/b/b;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/c/b/f;->b:Lf/a/a;

    invoke-static {v0, v1}, Lanimebestapp/com/c/b/d;->a(Lanimebestapp/com/c/b/b;Lf/a/a;)Lanimebestapp/com/c/b/d;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Lf/a/a;)Lf/a/a;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/c/b/f;->c:Lf/a/a;

    invoke-static {p1}, Lanimebestapp/com/c/b/f$b;->c(Lanimebestapp/com/c/b/f$b;)Lanimebestapp/com/c/b/g;

    move-result-object v0

    invoke-static {v0}, Lanimebestapp/com/c/b/i;->a(Lanimebestapp/com/c/b/g;)Lanimebestapp/com/c/b/i;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Lf/a/a;)Lf/a/a;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/c/b/f;->d:Lf/a/a;

    invoke-static {p1}, Lanimebestapp/com/c/b/f$b;->c(Lanimebestapp/com/c/b/f$b;)Lanimebestapp/com/c/b/g;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/c/b/f;->d:Lf/a/a;

    iget-object v2, p0, Lanimebestapp/com/c/b/f;->a:Lf/a/a;

    invoke-static {v0, v1, v2}, Lanimebestapp/com/c/b/j;->a(Lanimebestapp/com/c/b/g;Lf/a/a;Lf/a/a;)Lanimebestapp/com/c/b/j;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Lf/a/a;)Lf/a/a;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/c/b/f;->e:Lf/a/a;

    invoke-static {p1}, Lanimebestapp/com/c/b/f$b;->c(Lanimebestapp/com/c/b/f$b;)Lanimebestapp/com/c/b/g;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/c/b/f;->e:Lf/a/a;

    invoke-static {v0, v1}, Lanimebestapp/com/c/b/h;->a(Lanimebestapp/com/c/b/g;Lf/a/a;)Lanimebestapp/com/c/b/h;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Lf/a/a;)Lf/a/a;

    move-result-object v0

    iput-object v0, p0, Lanimebestapp/com/c/b/f;->f:Lf/a/a;

    invoke-static {p1}, Lanimebestapp/com/c/b/f$b;->a(Lanimebestapp/com/c/b/f$b;)Lanimebestapp/com/c/b/b;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/c/b/f;->f:Lf/a/a;

    invoke-static {p1, v0}, Lanimebestapp/com/c/b/e;->a(Lanimebestapp/com/c/b/b;Lf/a/a;)Lanimebestapp/com/c/b/e;

    move-result-object p1

    invoke-static {p1}, Ld/c/a;->a(Lf/a/a;)Lf/a/a;

    move-result-object p1

    iput-object p1, p0, Lanimebestapp/com/c/b/f;->g:Lf/a/a;

    return-void
.end method

.method public static d()Lanimebestapp/com/c/b/a$a;
    .registers 2

    new-instance v0, Lanimebestapp/com/c/b/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/c/b/f$b;-><init>(Lanimebestapp/com/c/b/f$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lanimebestapp/com/e/b;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/c/b/f;->g:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/e/b;

    return-object v0
.end method

.method public b()Lh/x;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/c/b/f;->d:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/x;

    return-object v0
.end method

.method public c()Lanimebestapp/com/b/b/a;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/c/b/f;->c:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanimebestapp/com/b/b/a;

    return-object v0
.end method

###### Class animebestapp.com.c.b.f.a (animebestapp.com.c.b.f$a)
.class synthetic Lanimebestapp/com/c/b/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/c/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class animebestapp.com.c.b.f.b (animebestapp.com.c.b.f$b)
.class final Lanimebestapp/com/c/b/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/c/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/c/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lanimebestapp/com/c/b/b;

.field private b:Lanimebestapp/com/c/b/g;

.field private c:Landroid/app/Application;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lanimebestapp/com/c/b/f$a;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/c/b/f$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lanimebestapp/com/c/b/f$b;)Lanimebestapp/com/c/b/b;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/c/b/f$b;->a:Lanimebestapp/com/c/b/b;

    return-object p0
.end method

.method static synthetic b(Lanimebestapp/com/c/b/f$b;)Landroid/app/Application;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/c/b/f$b;->c:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic c(Lanimebestapp/com/c/b/f$b;)Lanimebestapp/com/c/b/g;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/c/b/f$b;->b:Lanimebestapp/com/c/b/g;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Application;)Lanimebestapp/com/c/b/a$a;
    .registers 2

    invoke-virtual {p0, p1}, Lanimebestapp/com/c/b/f$b;->a(Landroid/app/Application;)Lanimebestapp/com/c/b/f$b;

    return-object p0
.end method

.method public a()Lanimebestapp/com/c/b/a;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/c/b/f$b;->a:Lanimebestapp/com/c/b/b;

    if-nez v0, :cond_b

    new-instance v0, Lanimebestapp/com/c/b/b;

    invoke-direct {v0}, Lanimebestapp/com/c/b/b;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/c/b/f$b;->a:Lanimebestapp/com/c/b/b;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/c/b/f$b;->b:Lanimebestapp/com/c/b/g;

    if-nez v0, :cond_16

    new-instance v0, Lanimebestapp/com/c/b/g;

    invoke-direct {v0}, Lanimebestapp/com/c/b/g;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/c/b/f$b;->b:Lanimebestapp/com/c/b/g;

    :cond_16
    iget-object v0, p0, Lanimebestapp/com/c/b/f$b;->c:Landroid/app/Application;

    if-eqz v0, :cond_21

    new-instance v0, Lanimebestapp/com/c/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lanimebestapp/com/c/b/f;-><init>(Lanimebestapp/com/c/b/f$b;Lanimebestapp/com/c/b/f$a;)V

    return-object v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/app/Application;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/app/Application;)Lanimebestapp/com/c/b/f$b;
    .registers 2

    invoke-static {p1}, Ld/c/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lanimebestapp/com/c/b/f$b;->c:Landroid/app/Application;

    return-object p0
.end method
