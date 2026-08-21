###### Class e.a.y.e.b.i (e.a.y.e.b.i)
.class public final Le/a/y/e/b/i;
.super Le/a/b;
.source ""

# interfaces
.implements Le/a/y/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/b;",
        "Le/a/y/c/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Le/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/k<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/a/b;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/i;->a:Le/a/k;

    return-void
.end method


# virtual methods
.method public a()Le/a/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/h<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Le/a/y/e/b/h;

    iget-object v1, p0, Le/a/y/e/b/i;->a:Le/a/k;

    invoke-direct {v0, v1}, Le/a/y/e/b/h;-><init>(Le/a/k;)V

    invoke-static {v0}, Le/a/a0/a;->a(Le/a/h;)Le/a/h;

    move-result-object v0

    return-object v0
.end method
