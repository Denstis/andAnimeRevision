###### Class e.a.y.e.b.g (e.a.y.e.b.g)
.class public final Le/a/y/e/b/g;
.super Le/a/h;
.source ""


# annotations
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
.field final b:Le/a/k;
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

    invoke-direct {p0}, Le/a/h;-><init>()V

    iput-object p1, p0, Le/a/y/e/b/g;->b:Le/a/k;

    return-void
.end method


# virtual methods
.method protected b(Le/a/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/b/g;->b:Le/a/k;

    invoke-interface {v0, p1}, Le/a/k;->a(Le/a/m;)V

    return-void
.end method
