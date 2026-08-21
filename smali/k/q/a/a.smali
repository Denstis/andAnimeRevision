###### Class k.q.a.a (k.q.a.a)
.class final Lk/q/a/a;
.super Le/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/q/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Le/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/h<",
            "Lk/m<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/a/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h<",
            "Lk/m<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/h;-><init>()V

    iput-object p1, p0, Lk/q/a/a;->b:Le/a/h;

    return-void
.end method


# virtual methods
.method protected b(Le/a/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk/q/a/a;->b:Le/a/h;

    new-instance v1, Lk/q/a/a$a;

    invoke-direct {v1, p1}, Lk/q/a/a$a;-><init>(Le/a/m;)V

    invoke-virtual {v0, v1}, Le/a/h;->a(Le/a/m;)V

    return-void
.end method

###### Class k.q.a.a.C0199a (k.q.a.a$a)
.class Lk/q/a/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/q/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/m<",
        "Lk/m<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final b:Le/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/m<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Le/a/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/q/a/a$a;->b:Le/a/m;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Lk/q/a/a$a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Le/a/v/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lk/m;

    invoke-virtual {p0, p1}, Lk/q/a/a$a;->a(Lk/m;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4

    iget-boolean v0, p0, Lk/q/a/a$a;->c:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lk/q/a/a$a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_17

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should never happen! Report as a bug with the full stacktrace."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {v0}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_17
    return-void
.end method

.method public a(Lk/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/m<",
            "TR;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lk/m;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lk/q/a/a$a;->b:Le/a/m;

    invoke-virtual {p1}, Lk/m;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Object;)V

    goto :goto_32

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/q/a/a$a;->c:Z

    new-instance v1, Lk/q/a/d;

    invoke-direct {v1, p1}, Lk/q/a/d;-><init>(Lk/m;)V

    :try_start_18
    iget-object p1, p0, Lk/q/a/a$a;->b:Le/a/m;

    invoke-interface {p1, v1}, Le/a/m;->a(Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1e

    goto :goto_32

    :catchall_1e
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    new-instance v2, Le/a/w/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Le/a/w/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_32
    return-void
.end method

.method public onComplete()V
    .registers 2

    iget-boolean v0, p0, Lk/q/a/a$a;->c:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lk/q/a/a$a;->b:Le/a/m;

    invoke-interface {v0}, Le/a/m;->onComplete()V

    :cond_9
    return-void
.end method
