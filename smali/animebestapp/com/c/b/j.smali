###### Class animebestapp.com.c.b.j (animebestapp.com.c.b.j)
.class public final Lanimebestapp/com/c/b/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/c/b<",
        "Lk/n;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lanimebestapp/com/c/b/g;

.field private final b:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lh/x;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanimebestapp/com/c/b/g;Lf/a/a;Lf/a/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/b/g;",
            "Lf/a/a<",
            "Lh/x;",
            ">;",
            "Lf/a/a<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/c/b/j;->a:Lanimebestapp/com/c/b/g;

    iput-object p2, p0, Lanimebestapp/com/c/b/j;->b:Lf/a/a;

    iput-object p3, p0, Lanimebestapp/com/c/b/j;->c:Lf/a/a;

    return-void
.end method

.method public static a(Lanimebestapp/com/c/b/g;Lf/a/a;Lf/a/a;)Lanimebestapp/com/c/b/j;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/b/g;",
            "Lf/a/a<",
            "Lh/x;",
            ">;",
            "Lf/a/a<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lanimebestapp/com/c/b/j;"
        }
    .end annotation

    new-instance v0, Lanimebestapp/com/c/b/j;

    invoke-direct {v0, p0, p1, p2}, Lanimebestapp/com/c/b/j;-><init>(Lanimebestapp/com/c/b/g;Lf/a/a;Lf/a/a;)V

    return-object v0
.end method

.method public static a(Lanimebestapp/com/c/b/g;Lh/x;Lcom/google/gson/Gson;)Lk/n;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/c/b/g;->a(Lh/x;Lcom/google/gson/Gson;)Lk/n;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lk/n;

    return-object p0
.end method

.method public static b(Lanimebestapp/com/c/b/g;Lf/a/a;Lf/a/a;)Lk/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/b/g;",
            "Lf/a/a<",
            "Lh/x;",
            ">;",
            "Lf/a/a<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lk/n;"
        }
    .end annotation

    invoke-interface {p1}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh/x;

    invoke-interface {p2}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/Gson;

    invoke-static {p0, p1, p2}, Lanimebestapp/com/c/b/j;->a(Lanimebestapp/com/c/b/g;Lh/x;Lcom/google/gson/Gson;)Lk/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/b/j;->get()Lk/n;

    move-result-object v0

    return-object v0
.end method

.method public get()Lk/n;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/c/b/j;->a:Lanimebestapp/com/c/b/g;

    iget-object v1, p0, Lanimebestapp/com/c/b/j;->b:Lf/a/a;

    iget-object v2, p0, Lanimebestapp/com/c/b/j;->c:Lf/a/a;

    invoke-static {v0, v1, v2}, Lanimebestapp/com/c/b/j;->b(Lanimebestapp/com/c/b/g;Lf/a/a;Lf/a/a;)Lk/n;

    move-result-object v0

    return-object v0
.end method
