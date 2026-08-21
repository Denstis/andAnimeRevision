###### Class c.a.a.o.k (c.a.a.o.k)
.class public Lc/a/a/o/k;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/k$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:Lc/a/a/o/a;

.field private final c:Lc/a/a/o/m;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/a/o/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lc/a/a/k;

.field private f:Lc/a/a/o/k;

.field private g:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lc/a/a/o/a;

    invoke-direct {v0}, Lc/a/a/o/a;-><init>()V

    invoke-direct {p0, v0}, Lc/a/a/o/k;-><init>(Lc/a/a/o/a;)V

    return-void
.end method

.method constructor <init>(Lc/a/a/o/a;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lc/a/a/o/k$a;

    invoke-direct {v0, p0}, Lc/a/a/o/k$a;-><init>(Lc/a/a/o/k;)V

    iput-object v0, p0, Lc/a/a/o/k;->c:Lc/a/a/o/m;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/a/a/o/k;->d:Ljava/util/Set;

    iput-object p1, p0, Lc/a/a/o/k;->b:Lc/a/a/o/a;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lc/a/a/o/k;->e()V

    invoke-static {p1}, Lc/a/a/c;->b(Landroid/content/Context;)Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/c;->h()Lc/a/a/o/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/o/l;->b(Landroid/app/Activity;)Lc/a/a/o/k;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/k;->f:Lc/a/a/o/k;

    iget-object p1, p0, Lc/a/a/o/k;->f:Lc/a/a/o/k;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lc/a/a/o/k;->f:Lc/a/a/o/k;

    invoke-direct {p1, p0}, Lc/a/a/o/k;->a(Lc/a/a/o/k;)V

    :cond_1e
    return-void
.end method

.method private a(Lc/a/a/o/k;)V
    .registers 3

    iget-object v0, p0, Lc/a/a/o/k;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lc/a/a/o/k;)V
    .registers 3

    iget-object v0, p0, Lc/a/a/o/k;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private d()Landroid/app/Fragment;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    iget-object v0, p0, Lc/a/a/o/k;->g:Landroid/app/Fragment;

    :goto_11
    return-object v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lc/a/a/o/k;->f:Lc/a/a/o/k;

    if-eqz v0, :cond_a

    invoke-direct {v0, p0}, Lc/a/a/o/k;->b(Lc/a/a/o/k;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/o/k;->f:Lc/a/a/o/k;

    :cond_a
    return-void
.end method


# virtual methods
.method a()Lc/a/a/o/a;
    .registers 2

    iget-object v0, p0, Lc/a/a/o/k;->b:Lc/a/a/o/a;

    return-object v0
.end method

.method a(Landroid/app/Fragment;)V
    .registers 3

    iput-object p1, p0, Lc/a/a/o/k;->g:Landroid/app/Fragment;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/o/k;->a(Landroid/app/Activity;)V

    :cond_11
    return-void
.end method

.method public a(Lc/a/a/k;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/o/k;->e:Lc/a/a/k;

    return-void
.end method

.method public b()Lc/a/a/k;
    .registers 2

    iget-object v0, p0, Lc/a/a/o/k;->e:Lc/a/a/k;

    return-object v0
.end method

.method public c()Lc/a/a/o/m;
    .registers 2

    iget-object v0, p0, Lc/a/a/o/k;->c:Lc/a/a/o/m;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_3
    invoke-direct {p0, p1}, Lc/a/a/o/k;->a(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_16

    :catch_7
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "RMFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Unable to register fragment with root"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lc/a/a/o/k;->b:Lc/a/a/o/a;

    invoke-virtual {v0}, Lc/a/a/o/a;->a()V

    invoke-direct {p0}, Lc/a/a/o/k;->e()V

    return-void
.end method

.method public onDetach()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    invoke-direct {p0}, Lc/a/a/o/k;->e()V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lc/a/a/o/k;->b:Lc/a/a/o/a;

    invoke-virtual {v0}, Lc/a/a/o/a;->b()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lc/a/a/o/k;->b:Lc/a/a/o/a;

    invoke-virtual {v0}, Lc/a/a/o/a;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc/a/a/o/k;->d()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class c.a.a.o.k.a (c.a.a.o.k$a)
.class Lc/a/a/o/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/o/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/o/k;


# direct methods
.method constructor <init>(Lc/a/a/o/k;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/o/k$a;->a:Lc/a/a/o/k;

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

    iget-object v1, p0, Lc/a/a/o/k$a;->a:Lc/a/a/o/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
