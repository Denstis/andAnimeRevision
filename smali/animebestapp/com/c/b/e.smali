###### Class animebestapp.com.c.b.e (animebestapp.com.c.b.e)
.class public final Lanimebestapp/com/c/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/c/b<",
        "Lanimebestapp/com/e/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lanimebestapp/com/c/b/b;

.field private final b:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lanimebestapp/com/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanimebestapp/com/c/b/b;Lf/a/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/b/b;",
            "Lf/a/a<",
            "Lanimebestapp/com/e/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/c/b/e;->a:Lanimebestapp/com/c/b/b;

    iput-object p2, p0, Lanimebestapp/com/c/b/e;->b:Lf/a/a;

    return-void
.end method

.method public static a(Lanimebestapp/com/c/b/b;Lf/a/a;)Lanimebestapp/com/c/b/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/b/b;",
            "Lf/a/a<",
            "Lanimebestapp/com/e/a;",
            ">;)",
            "Lanimebestapp/com/c/b/e;"
        }
    .end annotation

    new-instance v0, Lanimebestapp/com/c/b/e;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/c/b/e;-><init>(Lanimebestapp/com/c/b/b;Lf/a/a;)V

    return-object v0
.end method

.method public static a(Lanimebestapp/com/c/b/b;Lanimebestapp/com/e/a;)Lanimebestapp/com/e/b;
    .registers 2

    invoke-virtual {p0, p1}, Lanimebestapp/com/c/b/b;->a(Lanimebestapp/com/e/a;)Lanimebestapp/com/e/b;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lanimebestapp/com/e/b;

    return-object p0
.end method

.method public static b(Lanimebestapp/com/c/b/b;Lf/a/a;)Lanimebestapp/com/e/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/b/b;",
            "Lf/a/a<",
            "Lanimebestapp/com/e/a;",
            ">;)",
            "Lanimebestapp/com/e/b;"
        }
    .end annotation

    invoke-interface {p1}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanimebestapp/com/e/a;

    invoke-static {p0, p1}, Lanimebestapp/com/c/b/e;->a(Lanimebestapp/com/c/b/b;Lanimebestapp/com/e/a;)Lanimebestapp/com/e/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lanimebestapp/com/e/b;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/b/e;->a:Lanimebestapp/com/c/b/b;

    iget-object v1, p0, Lanimebestapp/com/c/b/e;->b:Lf/a/a;

    invoke-static {v0, v1}, Lanimebestapp/com/c/b/e;->b(Lanimebestapp/com/c/b/b;Lf/a/a;)Lanimebestapp/com/e/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/b/e;->get()Lanimebestapp/com/e/b;

    move-result-object v0

    return-object v0
.end method
