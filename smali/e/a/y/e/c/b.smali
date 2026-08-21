###### Class e.a.y.e.c.b (e.a.y.e.c.b)
.class public final Le/a/y/e/c/b;
.super Le/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Le/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Le/a/x/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/s;Le/a/x/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/s<",
            "TT;>;",
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/o;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/b;->a:Le/a/s;

    iput-object p2, p0, Le/a/y/e/c/b;->b:Le/a/x/d;

    return-void
.end method


# virtual methods
.method protected b(Le/a/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/c/b;->a:Le/a/s;

    new-instance v1, Le/a/y/e/c/b$a;

    iget-object v2, p0, Le/a/y/e/c/b;->b:Le/a/x/d;

    invoke-direct {v1, p1, v2}, Le/a/y/e/c/b$a;-><init>(Le/a/q;Le/a/x/d;)V

    invoke-interface {v0, v1}, Le/a/s;->a(Le/a/q;)V

    return-void
.end method

###### Class e.a.y.e.c.b.a (e.a.y.e.c.b$a)
.class final Le/a/y/e/c/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Le/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/q<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Le/a/x/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method constructor <init>(Le/a/q;Le/a/x/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TT;>;",
            "Le/a/x/d<",
            "-",
            "Le/a/v/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/b$a;->b:Le/a/q;

    iput-object p2, p0, Le/a/y/e/c/b$a;->c:Le/a/x/d;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Le/a/y/e/c/b$a;->c:Le/a/x/d;

    invoke-interface {v0, p1}, Le/a/x/d;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Le/a/y/e/c/b$a;->b:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->a(Le/a/v/b;)V

    return-void

    :catchall_b
    move-exception v0

    invoke-static {v0}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/a/y/e/c/b$a;->d:Z

    invoke-interface {p1}, Le/a/v/b;->b()V

    iget-object p1, p0, Le/a/y/e/c/b$a;->b:Le/a/q;

    invoke-static {v0, p1}, Le/a/y/a/c;->a(Ljava/lang/Throwable;Le/a/q;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Le/a/y/e/c/b$a;->d:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    iget-object v0, p0, Le/a/y/e/c/b$a;->b:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Le/a/y/e/c/b$a;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Le/a/y/e/c/b$a;->b:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
