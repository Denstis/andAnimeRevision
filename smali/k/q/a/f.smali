###### Class k.q.a.f (k.q.a.f)
.class final Lk/q/a/f;
.super Le/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/q/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/h<",
        "Lk/q/a/e<",
        "TT;>;>;"
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

    iput-object p1, p0, Lk/q/a/f;->b:Le/a/h;

    return-void
.end method


# virtual methods
.method protected b(Le/a/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-",
            "Lk/q/a/e<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk/q/a/f;->b:Le/a/h;

    new-instance v1, Lk/q/a/f$a;

    invoke-direct {v1, p1}, Lk/q/a/f$a;-><init>(Le/a/m;)V

    invoke-virtual {v0, v1}, Le/a/h;->a(Le/a/m;)V

    return-void
.end method

###### Class k.q.a.f.a (k.q.a.f$a)
.class Lk/q/a/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/q/a/f;
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
            "-",
            "Lk/q/a/e<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/a/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-",
            "Lk/q/a/e<",
            "TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/q/a/f$a;->b:Le/a/m;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Lk/q/a/f$a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Le/a/v/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lk/m;

    invoke-virtual {p0, p1}, Lk/q/a/f$a;->a(Lk/m;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lk/q/a/f$a;->b:Le/a/m;

    invoke-static {p1}, Lk/q/a/e;->a(Ljava/lang/Throwable;)Lk/q/a/e;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_f

    iget-object p1, p0, Lk/q/a/f$a;->b:Le/a/m;

    invoke-interface {p1}, Le/a/m;->onComplete()V

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    iget-object v0, p0, Lk/q/a/f$a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_2b

    :catchall_16
    move-exception v0

    invoke-static {v0}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    new-instance v1, Le/a/w/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Le/a/w/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_2b
    return-void
.end method

.method public a(Lk/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/m<",
            "TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk/q/a/f$a;->b:Le/a/m;

    invoke-static {p1}, Lk/q/a/e;->a(Lk/m;)Lk/q/a/e;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .registers 2

    iget-object v0, p0, Lk/q/a/f$a;->b:Le/a/m;

    invoke-interface {v0}, Le/a/m;->onComplete()V

    return-void
.end method
