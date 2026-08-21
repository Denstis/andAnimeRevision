###### Class c.b.a.c.d (c.b.a.c.d)
.class public Lc/b/a/c/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lc/b/a/c/e;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/b/a/c/d$a<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc/b/a/c/d;->a:Ljava/util/Queue;

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lc/b/a/c/d;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/e;

    :goto_c
    if-eqz v0, :cond_22

    :goto_e
    iget-object v1, p0, Lc/b/a/c/d;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lc/b/a/c/d;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/c/d$a;

    invoke-interface {v1, v0}, Lc/b/a/c/d$a;->a(Ljava/lang/Object;)V

    goto :goto_e

    :cond_22
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lc/b/a/c/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method protected final a(Lc/b/a/c/d$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/d$a<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/b/a/c/d;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lc/b/a/c/d;->b()V

    return-void
.end method

.method public a(Lc/b/a/c/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/b/a/c/d;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lc/b/a/c/d;->b()V

    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lc/b/a/c/d;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

###### Class c.b.a.c.d.a (c.b.a.c.d$a)
.class public interface abstract Lc/b/a/c/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method
