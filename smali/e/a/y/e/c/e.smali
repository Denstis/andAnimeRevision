###### Class e.a.y.e.c.e (e.a.y.e.c.e)
.class public final Le/a/y/e/c/e;
.super Le/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/o<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Le/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/s<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/s;Le/a/x/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/s<",
            "+TT;>;",
            "Le/a/x/e<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/o;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/e;->a:Le/a/s;

    iput-object p2, p0, Le/a/y/e/c/e;->b:Le/a/x/e;

    return-void
.end method


# virtual methods
.method protected b(Le/a/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/c/e;->a:Le/a/s;

    new-instance v1, Le/a/y/e/c/e$a;

    iget-object v2, p0, Le/a/y/e/c/e;->b:Le/a/x/e;

    invoke-direct {v1, p1, v2}, Le/a/y/e/c/e$a;-><init>(Le/a/q;Le/a/x/e;)V

    invoke-interface {v0, v1}, Le/a/s;->a(Le/a/q;)V

    return-void
.end method

###### Class e.a.y.e.c.e.a (e.a.y.e.c.e$a)
.class final Le/a/y/e/c/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
            "-TR;>;"
        }
    .end annotation
.end field

.field final c:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/a/q;Le/a/x/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q<",
            "-TR;>;",
            "Le/a/x/e<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/e$a;->b:Le/a/q;

    iput-object p2, p0, Le/a/y/e/c/e$a;->c:Le/a/x/e;

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/c/e$a;->b:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->a(Le/a/v/b;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/c/e$a;->b:Le/a/q;

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

    :try_start_0
    iget-object v0, p0, Le/a/y/e/c/e$a;->c:Le/a/x/e;

    invoke-interface {v0, p1}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_11

    iget-object v0, p0, Le/a/y/e/c/e$a;->b:Le/a/q;

    invoke-interface {v0, p1}, Le/a/q;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_11
    move-exception p1

    invoke-static {p1}, Le/a/w/b;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Le/a/y/e/c/e$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
