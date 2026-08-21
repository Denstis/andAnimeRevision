###### Class e.a.y.e.b.f (e.a.y.e.b.f)
.class public final Le/a/y/e/b/f;
.super Le/a/h;
.source ""

# interfaces
.implements Le/a/y/c/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/h<",
        "Ljava/lang/Object;",
        ">;",
        "Le/a/y/c/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Le/a/y/e/b/f;

    invoke-direct {v0}, Le/a/y/e/b/f;-><init>()V

    sput-object v0, Le/a/y/e/b/f;->b:Le/a/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Le/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Le/a/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Le/a/y/a/c;->a(Le/a/m;)V

    return-void
.end method

.method public call()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
