###### Class k.g (k.g)
.class final Lk/g;
.super Lk/c$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/g$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0}, Lk/c$a;-><init>()V

    iput-object p1, p0, Lk/g;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lk/n;)Lk/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lk/n;",
            ")",
            "Lk/c<",
            "**>;"
        }
    .end annotation

    invoke-static {p1}, Lk/c$a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lk/b;

    if-eq p2, p3, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    invoke-static {p1}, Lk/p;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance p2, Lk/g$a;

    invoke-direct {p2, p0, p1}, Lk/g$a;-><init>(Lk/g;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

###### Class k.g.a (k.g$a)
.class Lk/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/g;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lk/n;)Lk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/c<",
        "Ljava/lang/Object;",
        "Lk/b<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Lk/g;


# direct methods
.method constructor <init>(Lk/g;Ljava/lang/reflect/Type;)V
    .registers 3

    iput-object p1, p0, Lk/g$a;->b:Lk/g;

    iput-object p2, p0, Lk/g$a;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lk/b;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lk/g$a;->a(Lk/b;)Lk/b;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lk/g$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public a(Lk/b;)Lk/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "Ljava/lang/Object;",
            ">;)",
            "Lk/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lk/g$b;

    iget-object v1, p0, Lk/g$a;->b:Lk/g;

    iget-object v1, v1, Lk/g;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Lk/g$b;-><init>(Ljava/util/concurrent/Executor;Lk/b;)V

    return-object v0
.end method

###### Class k.g.b (k.g$b)
.class final Lk/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Executor;

.field final c:Lk/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lk/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lk/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/g$b;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lk/g$b;->c:Lk/b;

    return-void
.end method


# virtual methods
.method public a(Lk/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lk/p;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lk/g$b;->c:Lk/b;

    new-instance v1, Lk/g$b$a;

    invoke-direct {v1, p0, p1}, Lk/g$b$a;-><init>(Lk/g$b;Lk/d;)V

    invoke-interface {v0, v1}, Lk/b;->a(Lk/d;)V

    return-void
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lk/g$b;->c:Lk/b;

    invoke-interface {v0}, Lk/b;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lk/g$b;->clone()Lk/b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lk/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lk/g$b;

    iget-object v1, p0, Lk/g$b;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lk/g$b;->c:Lk/b;

    invoke-interface {v2}, Lk/b;->clone()Lk/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lk/g$b;-><init>(Ljava/util/concurrent/Executor;Lk/b;)V

    return-object v0
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lk/g$b;->c:Lk/b;

    invoke-interface {v0}, Lk/b;->j()Z

    move-result v0

    return v0
.end method

.method public k()Lk/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/m<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lk/g$b;->c:Lk/b;

    invoke-interface {v0}, Lk/b;->k()Lk/m;

    move-result-object v0

    return-object v0
.end method

###### Class k.g.b.a (k.g$b$a)
.class Lk/g$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/g$b;->a(Lk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lk/d;

.field final synthetic c:Lk/g$b;


# direct methods
.method constructor <init>(Lk/g$b;Lk/d;)V
    .registers 3

    iput-object p1, p0, Lk/g$b$a;->c:Lk/g$b;

    iput-object p2, p0, Lk/g$b$a;->b:Lk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lk/g$b$a;->c:Lk/g$b;

    iget-object p1, p1, Lk/g$b;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Lk/g$b$a$b;

    invoke-direct {v0, p0, p2}, Lk/g$b$a$b;-><init>(Lk/g$b$a;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lk/b;Lk/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "TT;>;",
            "Lk/m<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lk/g$b$a;->c:Lk/g$b;

    iget-object p1, p1, Lk/g$b;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Lk/g$b$a$a;

    invoke-direct {v0, p0, p2}, Lk/g$b$a$a;-><init>(Lk/g$b$a;Lk/m;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class k.g.b.a.RunnableC0195a (k.g$b$a$a)
.class Lk/g$b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/g$b$a;->a(Lk/b;Lk/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lk/m;

.field final synthetic c:Lk/g$b$a;


# direct methods
.method constructor <init>(Lk/g$b$a;Lk/m;)V
    .registers 3

    iput-object p1, p0, Lk/g$b$a$a;->c:Lk/g$b$a;

    iput-object p2, p0, Lk/g$b$a$a;->b:Lk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lk/g$b$a$a;->c:Lk/g$b$a;

    iget-object v0, v0, Lk/g$b$a;->c:Lk/g$b;

    iget-object v0, v0, Lk/g$b;->c:Lk/b;

    invoke-interface {v0}, Lk/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lk/g$b$a$a;->c:Lk/g$b$a;

    iget-object v1, v0, Lk/g$b$a;->b:Lk/d;

    iget-object v0, v0, Lk/g$b$a;->c:Lk/g$b;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lk/d;->a(Lk/b;Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_1d
    iget-object v0, p0, Lk/g$b$a$a;->c:Lk/g$b$a;

    iget-object v1, v0, Lk/g$b$a;->b:Lk/d;

    iget-object v0, v0, Lk/g$b$a;->c:Lk/g$b;

    iget-object v2, p0, Lk/g$b$a$a;->b:Lk/m;

    invoke-interface {v1, v0, v2}, Lk/d;->a(Lk/b;Lk/m;)V

    :goto_28
    return-void
.end method

###### Class k.g.b.a.RunnableC0196b (k.g$b$a$b)
.class Lk/g$b$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/g$b$a;->a(Lk/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lk/g$b$a;


# direct methods
.method constructor <init>(Lk/g$b$a;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lk/g$b$a$b;->c:Lk/g$b$a;

    iput-object p2, p0, Lk/g$b$a$b;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lk/g$b$a$b;->c:Lk/g$b$a;

    iget-object v1, v0, Lk/g$b$a;->b:Lk/d;

    iget-object v0, v0, Lk/g$b$a;->c:Lk/g$b;

    iget-object v2, p0, Lk/g$b$a$b;->b:Ljava/lang/Throwable;

    invoke-interface {v1, v0, v2}, Lk/d;->a(Lk/b;Ljava/lang/Throwable;)V

    return-void
.end method
