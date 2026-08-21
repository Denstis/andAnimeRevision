###### Class e.a.y.e.a.a (e.a.y.e.a.a)
.class abstract Le/a/y/e/a/a;
.super Le/a/e;
.source ""

# interfaces
.implements Le/a/y/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/e<",
        "TR;>;",
        "Le/a/y/c/c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Le/a/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/e;-><init>()V

    const-string v0, "source is null"

    invoke-static {p1, v0}, Le/a/y/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/e;

    return-void
.end method
