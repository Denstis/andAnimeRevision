###### Class animebestapp.com.c.a.d (animebestapp.com.c.a.d)
.class public final Lanimebestapp/com/c/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/c/b<",
        "Lanimebestapp/com/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lanimebestapp/com/c/a/c;

.field private final b:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lanimebestapp/com/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lanimebestapp/com/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanimebestapp/com/c/a/c;Lf/a/a;Lf/a/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/a/c;",
            "Lf/a/a<",
            "Lanimebestapp/com/b/b/a;",
            ">;",
            "Lf/a/a<",
            "Lanimebestapp/com/e/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/c/a/d;->a:Lanimebestapp/com/c/a/c;

    iput-object p2, p0, Lanimebestapp/com/c/a/d;->b:Lf/a/a;

    iput-object p3, p0, Lanimebestapp/com/c/a/d;->c:Lf/a/a;

    return-void
.end method

.method public static a(Lanimebestapp/com/c/a/c;Lf/a/a;Lf/a/a;)Lanimebestapp/com/c/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/a/c;",
            "Lf/a/a<",
            "Lanimebestapp/com/b/b/a;",
            ">;",
            "Lf/a/a<",
            "Lanimebestapp/com/e/b;",
            ">;)",
            "Lanimebestapp/com/c/a/d;"
        }
    .end annotation

    new-instance v0, Lanimebestapp/com/c/a/d;

    invoke-direct {v0, p0, p1, p2}, Lanimebestapp/com/c/a/d;-><init>(Lanimebestapp/com/c/a/c;Lf/a/a;Lf/a/a;)V

    return-object v0
.end method

.method public static a(Lanimebestapp/com/c/a/c;Lanimebestapp/com/b/b/a;Lanimebestapp/com/e/b;)Lanimebestapp/com/d/a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/c/a/c;->a(Lanimebestapp/com/b/b/a;Lanimebestapp/com/e/b;)Lanimebestapp/com/d/a;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lanimebestapp/com/d/a;

    return-object p0
.end method

.method public static b(Lanimebestapp/com/c/a/c;Lf/a/a;Lf/a/a;)Lanimebestapp/com/d/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/a/c;",
            "Lf/a/a<",
            "Lanimebestapp/com/b/b/a;",
            ">;",
            "Lf/a/a<",
            "Lanimebestapp/com/e/b;",
            ">;)",
            "Lanimebestapp/com/d/a;"
        }
    .end annotation

    invoke-interface {p1}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/b/b/a;

    invoke-interface {p2}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lanimebestapp/com/e/b;

    invoke-static {p0, p1, p2}, Lanimebestapp/com/c/a/d;->a(Lanimebestapp/com/c/a/c;Lanimebestapp/com/b/b/a;Lanimebestapp/com/e/b;)Lanimebestapp/com/d/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lanimebestapp/com/d/a;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/c/a/d;->a:Lanimebestapp/com/c/a/c;

    iget-object v1, p0, Lanimebestapp/com/c/a/d;->b:Lf/a/a;

    iget-object v2, p0, Lanimebestapp/com/c/a/d;->c:Lf/a/a;

    invoke-static {v0, v1, v2}, Lanimebestapp/com/c/a/d;->b(Lanimebestapp/com/c/a/c;Lf/a/a;Lf/a/a;)Lanimebestapp/com/d/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/a/d;->get()Lanimebestapp/com/d/a;

    move-result-object v0

    return-object v0
.end method
