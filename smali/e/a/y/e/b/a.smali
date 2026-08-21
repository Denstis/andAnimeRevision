###### Class e.a.y.e.b.a (e.a.y.e.b.a)
.class abstract Le/a/y/e/b/a;
.super Le/a/h;
.source ""

# interfaces
.implements Le/a/y/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/h<",
        "TU;>;",
        "Le/a/y/c/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final b:Le/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/k<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/a/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/h;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/a;->b:Le/a/k;

    return-void
.end method
