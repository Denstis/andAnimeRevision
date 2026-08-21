###### Class animebestapp.com.c.b.i (animebestapp.com.c.b.i)
.class public final Lanimebestapp/com/c/b/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/c/b<",
        "Lh/x;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lanimebestapp/com/c/b/g;


# direct methods
.method public constructor <init>(Lanimebestapp/com/c/b/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/c/b/i;->a:Lanimebestapp/com/c/b/g;

    return-void
.end method

.method public static a(Lanimebestapp/com/c/b/g;)Lanimebestapp/com/c/b/i;
    .registers 2

    new-instance v0, Lanimebestapp/com/c/b/i;

    invoke-direct {v0, p0}, Lanimebestapp/com/c/b/i;-><init>(Lanimebestapp/com/c/b/g;)V

    return-object v0
.end method

.method public static b(Lanimebestapp/com/c/b/g;)Lh/x;
    .registers 1

    invoke-static {p0}, Lanimebestapp/com/c/b/i;->c(Lanimebestapp/com/c/b/g;)Lh/x;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lanimebestapp/com/c/b/g;)Lh/x;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/b/g;->a()Lh/x;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lh/x;

    return-object p0
.end method


# virtual methods
.method public get()Lh/x;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/c/b/i;->a:Lanimebestapp/com/c/b/g;

    invoke-static {v0}, Lanimebestapp/com/c/b/i;->b(Lanimebestapp/com/c/b/g;)Lh/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/b/i;->get()Lh/x;

    move-result-object v0

    return-object v0
.end method
