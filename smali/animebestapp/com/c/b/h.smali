###### Class animebestapp.com.c.b.h (animebestapp.com.c.b.h)
.class public final Lanimebestapp/com/c/b/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/c/b<",
        "Lanimebestapp/com/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lanimebestapp/com/c/b/g;

.field private final b:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lk/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanimebestapp/com/c/b/g;Lf/a/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/b/g;",
            "Lf/a/a<",
            "Lk/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/c/b/h;->a:Lanimebestapp/com/c/b/g;

    iput-object p2, p0, Lanimebestapp/com/c/b/h;->b:Lf/a/a;

    return-void
.end method

.method public static a(Lanimebestapp/com/c/b/g;Lf/a/a;)Lanimebestapp/com/c/b/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/b/g;",
            "Lf/a/a<",
            "Lk/n;",
            ">;)",
            "Lanimebestapp/com/c/b/h;"
        }
    .end annotation

    new-instance v0, Lanimebestapp/com/c/b/h;

    invoke-direct {v0, p0, p1}, Lanimebestapp/com/c/b/h;-><init>(Lanimebestapp/com/c/b/g;Lf/a/a;)V

    return-object v0
.end method

.method public static a(Lanimebestapp/com/c/b/g;Lk/n;)Lanimebestapp/com/e/a;
    .registers 2

    invoke-virtual {p0, p1}, Lanimebestapp/com/c/b/g;->a(Lk/n;)Lanimebestapp/com/e/a;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lanimebestapp/com/e/a;

    return-object p0
.end method

.method public static b(Lanimebestapp/com/c/b/g;Lf/a/a;)Lanimebestapp/com/e/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanimebestapp/com/c/b/g;",
            "Lf/a/a<",
            "Lk/n;",
            ">;)",
            "Lanimebestapp/com/e/a;"
        }
    .end annotation

    invoke-interface {p1}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/n;

    invoke-static {p0, p1}, Lanimebestapp/com/c/b/h;->a(Lanimebestapp/com/c/b/g;Lk/n;)Lanimebestapp/com/e/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lanimebestapp/com/e/a;
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/c/b/h;->a:Lanimebestapp/com/c/b/g;

    iget-object v1, p0, Lanimebestapp/com/c/b/h;->b:Lf/a/a;

    invoke-static {v0, v1}, Lanimebestapp/com/c/b/h;->b(Lanimebestapp/com/c/b/g;Lf/a/a;)Lanimebestapp/com/e/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/b/h;->get()Lanimebestapp/com/e/a;

    move-result-object v0

    return-object v0
.end method
