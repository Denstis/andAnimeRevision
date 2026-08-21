###### Class k.q.a.b (k.q.a.b)
.class final Lk/q/a/b;
.super Le/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/q/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/h<",
        "Lk/m<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final b:Lk/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lk/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/h;-><init>()V

    iput-object p1, p0, Lk/q/a/b;->b:Lk/b;

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
            "Lk/m<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk/q/a/b;->b:Lk/b;

    invoke-interface {v0}, Lk/b;->clone()Lk/b;

    move-result-object v0

    new-instance v1, Lk/q/a/b$a;

    invoke-direct {v1, v0, p1}, Lk/q/a/b$a;-><init>(Lk/b;Le/a/m;)V

    invoke-interface {p1, v1}, Le/a/m;->a(Le/a/v/b;)V

    invoke-interface {v0, v1}, Lk/b;->a(Lk/d;)V

    return-void
.end method

###### Class k.q.a.b.a (k.q.a.b$a)
.class final Lk/q/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/v/b;
.implements Lk/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/q/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/v/b;",
        "Lk/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lk/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Le/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/m<",
            "-",
            "Lk/m<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field e:Z


# direct methods
.method constructor <init>(Lk/b;Le/a/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "*>;",
            "Le/a/m<",
            "-",
            "Lk/m<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk/q/a/b$a;->e:Z

    iput-object p1, p0, Lk/q/a/b$a;->b:Lk/b;

    iput-object p2, p0, Lk/q/a/b$a;->c:Le/a/m;

    return-void
.end method


# virtual methods
.method public a(Lk/b;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lk/b;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object p1, p0, Lk/q/a/b$a;->c:Le/a/m;

    invoke-interface {p1, p2}, Le/a/m;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_22

    :catchall_d
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    new-instance v0, Le/a/w/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-direct {v0, v1}, Le/a/w/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_22
    return-void
.end method

.method public a(Lk/b;Lk/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "TT;>;",
            "Lk/m<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lk/q/a/b$a;->d:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    :try_start_6
    iget-object v0, p0, Lk/q/a/b$a;->c:Le/a/m;

    invoke-interface {v0, p2}, Le/a/m;->a(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lk/q/a/b$a;->d:Z

    if-nez p2, :cond_3e

    iput-boolean p1, p0, Lk/q/a/b$a;->e:Z

    iget-object p2, p0, Lk/q/a/b$a;->c:Le/a/m;

    invoke-interface {p2}, Le/a/m;->onComplete()V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    goto :goto_3e

    :catchall_17
    move-exception p2

    iget-boolean v0, p0, Lk/q/a/b$a;->e:Z

    if-eqz v0, :cond_20

    invoke-static {p2}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    goto :goto_3e

    :cond_20
    iget-boolean v0, p0, Lk/q/a/b$a;->d:Z

    if-nez v0, :cond_3e

    :try_start_24
    iget-object v0, p0, Lk/q/a/b$a;->c:Le/a/m;

    invoke-interface {v0, p2}, Le/a/m;->a(Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    goto :goto_3e

    :catchall_2a
    move-exception v0

    invoke-static {v0}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    new-instance v1, Le/a/w/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Le/a/w/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lk/q/a/b$a;->d:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/q/a/b$a;->d:Z

    iget-object v0, p0, Lk/q/a/b$a;->b:Lk/b;

    invoke-interface {v0}, Lk/b;->cancel()V

    return-void
.end method
