###### Class k.q.a.c (k.q.a.c)
.class final Lk/q/a/c;
.super Le/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/q/a/c$a;
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

    iput-object p1, p0, Lk/q/a/c;->b:Lk/b;

    return-void
.end method


# virtual methods
.method protected b(Le/a/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-",
            "Lk/m<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk/q/a/c;->b:Lk/b;

    invoke-interface {v0}, Lk/b;->clone()Lk/b;

    move-result-object v0

    new-instance v1, Lk/q/a/c$a;

    invoke-direct {v1, v0}, Lk/q/a/c$a;-><init>(Lk/b;)V

    invoke-interface {p1, v1}, Le/a/m;->a(Le/a/v/b;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_10
    invoke-interface {v0}, Lk/b;->k()Lk/m;

    move-result-object v0

    invoke-virtual {v1}, Lk/q/a/c$a;->a()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-interface {p1, v0}, Le/a/m;->a(Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {v1}, Lk/q/a/c$a;->a()Z

    move-result v0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_2a

    if-nez v0, :cond_52

    :try_start_23
    invoke-interface {p1}, Le/a/m;->onComplete()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_52

    :catchall_27
    move-exception v0

    const/4 v4, 0x1

    goto :goto_2c

    :catchall_2a
    move-exception v0

    const/4 v4, 0x0

    :goto_2c
    invoke-static {v0}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    if-eqz v4, :cond_35

    invoke-static {v0}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    goto :goto_52

    :cond_35
    invoke-virtual {v1}, Lk/q/a/c$a;->a()Z

    move-result v1

    if-nez v1, :cond_52

    :try_start_3b
    invoke-interface {p1, v0}, Le/a/m;->a(Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_52

    :catchall_3f
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    new-instance v1, Le/a/w/a;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v3

    aput-object p1, v4, v2

    invoke-direct {v1, v4}, Le/a/w/a;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    return-void
.end method

###### Class k.q.a.c.a (k.q.a.c$a)
.class final Lk/q/a/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/q/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
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

.field private volatile c:Z


# direct methods
.method constructor <init>(Lk/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/q/a/c$a;->b:Lk/b;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lk/q/a/c$a;->c:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/q/a/c$a;->c:Z

    iget-object v0, p0, Lk/q/a/c$a;->b:Lk/b;

    invoke-interface {v0}, Lk/b;->cancel()V

    return-void
.end method
