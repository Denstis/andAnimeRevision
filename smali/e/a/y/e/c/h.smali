###### Class e.a.y.e.c.h (e.a.y.e.c.h)
.class public final Le/a/y/e/c/h;
.super Le/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/c/h$a;
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
.field final b:Le/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/s<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/s;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/s<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/h;-><init>()V

    iput-object p1, p0, Le/a/y/e/c/h;->b:Le/a/s;

    return-void
.end method

.method public static c(Le/a/m;)Le/a/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/m<",
            "-TT;>;)",
            "Le/a/q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Le/a/y/e/c/h$a;

    invoke-direct {v0, p0}, Le/a/y/e/c/h$a;-><init>(Le/a/m;)V

    return-object v0
.end method


# virtual methods
.method public b(Le/a/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/c/h;->b:Le/a/s;

    invoke-static {p1}, Le/a/y/e/c/h;->c(Le/a/m;)Le/a/q;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/s;->a(Le/a/q;)V

    return-void
.end method

###### Class e.a.y.e.c.h.a (e.a.y.e.c.h$a)
.class final Le/a/y/e/c/h$a;
.super Le/a/y/d/d;
.source ""

# interfaces
.implements Le/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/c/h;
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
        "Le/a/y/d/d<",
        "TT;>;",
        "Le/a/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field d:Le/a/v/b;


# direct methods
.method constructor <init>(Le/a/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/a/y/d/d;-><init>(Le/a/m;)V

    return-void
.end method


# virtual methods
.method public a(Le/a/v/b;)V
    .registers 3

    iget-object v0, p0, Le/a/y/e/c/h$a;->d:Le/a/v/b;

    invoke-static {v0, p1}, Le/a/y/a/b;->a(Le/a/v/b;Le/a/v/b;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Le/a/y/e/c/h$a;->d:Le/a/v/b;

    iget-object p1, p0, Le/a/y/d/d;->b:Le/a/m;

    invoke-interface {p1, p0}, Le/a/m;->a(Le/a/v/b;)V

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0, p1}, Le/a/y/d/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, Le/a/y/d/d;->b()V

    iget-object v0, p0, Le/a/y/e/c/h$a;->d:Le/a/v/b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le/a/y/d/d;->c(Ljava/lang/Object;)V

    return-void
.end method
