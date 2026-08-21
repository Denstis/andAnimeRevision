###### Class c.a.a.o.o (c.a.a.o.o)
.class public Lc/a/a/o/o;
.super Lb/k/a/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/o$a;
    }
.end annotation


# instance fields
.field private final b:Lc/a/a/o/a;

.field private final c:Lc/a/a/o/m;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/a/o/o;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lc/a/a/o/o;

.field private f:Lc/a/a/k;

.field private g:Lb/k/a/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lc/a/a/o/a;

    invoke-direct {v0}, Lc/a/a/o/a;-><init>()V

    invoke-direct {p0, v0}, Lc/a/a/o/o;-><init>(Lc/a/a/o/a;)V

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/a;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Lb/k/a/d;-><init>()V

    new-instance v0, Lc/a/a/o/o$a;

    invoke-direct {v0, p0}, Lc/a/a/o/o$a;-><init>(Lc/a/a/o/o;)V

    iput-object v0, p0, Lc/a/a/o/o;->c:Lc/a/a/o/m;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/a/a/o/o;->d:Ljava/util/Set;

    iput-object p1, p0, Lc/a/a/o/o;->b:Lc/a/a/o/a;

    return-void
.end method

.method private a(Lb/k/a/e;)V
    .registers 3

    invoke-direct {p0}, Lc/a/a/o/o;->s()V

    invoke-static {p1}, Lc/a/a/c;->b(Landroid/content/Context;)Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/c;->h()Lc/a/a/o/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/o/l;->b(Lb/k/a/e;)Lc/a/a/o/o;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/o;->e:Lc/a/a/o/o;

    iget-object p1, p0, Lc/a/a/o/o;->e:Lc/a/a/o/o;

    invoke-virtual {p0, p1}, Lb/k/a/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lc/a/a/o/o;->e:Lc/a/a/o/o;

    invoke-direct {p1, p0}, Lc/a/a/o/o;->a(Lc/a/a/o/o;)V

    :cond_1e
    return-void
.end method

.method private a(Lc/a/a/o/o;)V
    .registers 3

    iget-object v0, p0, Lc/a/a/o/o;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lc/a/a/o/o;)V
    .registers 3

    iget-object v0, p0, Lc/a/a/o/o;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private r()Lb/k/a/d;
    .registers 2

    invoke-virtual {p0}, Lb/k/a/d;->getParentFragment()Lb/k/a/d;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lc/a/a/o/o;->g:Lb/k/a/d;

    :goto_9
    return-object v0
.end method

.method private s()V
    .registers 2

    iget-object v0, p0, Lc/a/a/o/o;->e:Lc/a/a/o/o;

    if-eqz v0, :cond_a

    invoke-direct {v0, p0}, Lc/a/a/o/o;->b(Lc/a/a/o/o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/o/o;->e:Lc/a/a/o/o;

    :cond_a
    return-void
.end method


# virtual methods
.method a(Lb/k/a/d;)V
    .registers 3

    iput-object p1, p0, Lc/a/a/o/o;->g:Lb/k/a/d;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/o/o;->a(Lb/k/a/e;)V

    :cond_11
    return-void
.end method

.method public a(Lc/a/a/k;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/o/o;->f:Lc/a/a/k;

    return-void
.end method

.method o()Lc/a/a/o/a;
    .registers 2

    iget-object v0, p0, Lc/a/a/o/o;->b:Lc/a/a/o/a;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    invoke-super {p0, p1}, Lb/k/a/d;->onAttach(Landroid/content/Context;)V

    :try_start_3
    invoke-virtual {p0}, Lb/k/a/d;->getActivity()Lb/k/a/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/o/o;->a(Lb/k/a/e;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_1a

    :catch_b
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Unable to register fragment with root"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lb/k/a/d;->onDestroy()V

    iget-object v0, p0, Lc/a/a/o/o;->b:Lc/a/a/o/a;

    invoke-virtual {v0}, Lc/a/a/o/a;->a()V

    invoke-direct {p0}, Lc/a/a/o/o;->s()V

    return-void
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Lb/k/a/d;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/o/o;->g:Lb/k/a/d;

    invoke-direct {p0}, Lc/a/a/o/o;->s()V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lb/k/a/d;->onStart()V

    iget-object v0, p0, Lc/a/a/o/o;->b:Lc/a/a/o/a;

    invoke-virtual {v0}, Lc/a/a/o/a;->b()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lb/k/a/d;->onStop()V

    iget-object v0, p0, Lc/a/a/o/o;->b:Lc/a/a/o/a;

    invoke-virtual {v0}, Lc/a/a/o/a;->c()V

    return-void
.end method

.method public p()Lc/a/a/k;
    .registers 2

    iget-object v0, p0, Lc/a/a/o/o;->f:Lc/a/a/k;

    return-object v0
.end method

.method public q()Lc/a/a/o/m;
    .registers 2

    iget-object v0, p0, Lc/a/a/o/o;->c:Lc/a/a/o/m;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lb/k/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/a/a/o/o;->r()Lb/k/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class c.a.a.o.o.a (c.a.a.o.o$a)
.class Lc/a/a/o/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/o/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/o/o;


# direct methods
.method constructor <init>(Lc/a/a/o/o;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/o/o$a;->a:Lc/a/a/o/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/o/o$a;->a:Lc/a/a/o/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
